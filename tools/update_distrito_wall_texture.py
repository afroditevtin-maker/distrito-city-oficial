#!/usr/bin/env python3
"""Replace only the pixels of the existing, unique wood-wall texture in GTA SA DATA.

This script is for an already patched DATA tree. It verifies that `distrito001`
exists in ETC metadata, is the sole DFF binding at rio_int_pravo_08.dff material
18, and occurs once in the ETC thumbnail archive. It changes only the RGBA pixels
for that texture in txd.etc.dat and txd.etc.tmb; names, indexes, DFFs, offsets,
other materials, and other map locations remain unchanged.
"""
from __future__ import annotations

import argparse
import os
import re
import struct
import tempfile
from pathlib import Path

from PIL import Image

TEXTURE = "distrito001"
TEXTURE_BYTES = TEXTURE.encode("ascii")
TARGET_MODEL = b"rio_int_pravo_08.dff"
TARGET_DFF_OFFSET = 3136
IMG_SECTOR_SIZE = 2048
ENC_RGBA8888 = 0x1401
HEADER = struct.Struct("<HHHHII")


def hash16(name: str) -> int:
    h = 0
    for byte in name.encode("utf-8"):
        h = (h + (h << 5) + byte) & 0xFFFFFFFF
    h = (h + (h >> 5)) & 0xFFFFFFFF
    return h & 0xFFFF


def atomic_write(path: Path, data: bytes) -> None:
    fd, temp_name = tempfile.mkstemp(prefix=path.name + ".", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(data)
            f.flush()
            os.fsync(f.fileno())
        os.chmod(temp_name, path.stat().st_mode)
        os.replace(temp_name, path)
    except Exception:
        try:
            os.unlink(temp_name)
        except FileNotFoundError:
            pass
        raise


def texture_index_and_offset(txt_path: Path, toc_path: Path, dat_path: Path) -> tuple[int, int]:
    text = txt_path.read_text(encoding="utf-8", errors="strict")
    names: list[str] = []
    for line in text.splitlines():
        match = re.match(r'^"([^"]+)"', line)
        if match:
            names.append(match.group(1))
    indices = [i for i, name in enumerate(names) if name == TEXTURE]
    if len(indices) != 1:
        raise ValueError(f"Expected one {TEXTURE} entry in txd.txt; found {len(indices)}")

    toc = toc_path.read_bytes()
    if len(toc) < 4 or (len(toc) - 4) % 4:
        raise ValueError("Malformed ETC TOC")
    declared_size = struct.unpack_from("<I", toc, 0)[0]
    count = (len(toc) - 4) // 4
    if declared_size != dat_path.stat().st_size or count != len(names):
        raise ValueError("ETC TOC size or record count does not match DAT/TXT")
    offsets = struct.unpack_from(f"<{count}i", toc, 4)
    index = indices[0]
    offset = offsets[index]
    if offset < 0 or offset + HEADER.size > declared_size:
        raise ValueError(f"Invalid ETC offset for {TEXTURE}: {offset}")
    return index, offset


def validate_target_binding(img_path: Path) -> None:
    img = img_path.read_bytes()
    if len(img) < 8 or img[:4] != b"VER2":
        raise ValueError("Unexpected GTA3 IMG format")
    count = struct.unpack_from("<I", img, 4)[0]
    table_end = 8 + count * 32
    if table_end > len(img):
        raise ValueError("GTA3 IMG directory table is truncated")

    refs: list[tuple[bytes, int]] = []
    target_model: bytes | None = None
    for i in range(count):
        pos = 8 + i * 32
        offset_sectors, size_sectors = struct.unpack_from("<II", img, pos)
        name = img[pos + 8:pos + 32].split(b"\0", 1)[0]
        start = offset_sectors * IMG_SECTOR_SIZE
        end = start + size_sectors * IMG_SECTOR_SIZE
        if end > len(img):
            raise ValueError(f"IMG entry overruns archive: {name!r}")
        if not name.lower().endswith(b".dff"):
            continue
        model = img[start:end]
        for match in re.finditer(re.escape(TEXTURE_BYTES), model):
            refs.append((name, match.start()))
        if name == TARGET_MODEL:
            target_model = model

    if target_model is None:
        raise ValueError(f"Target DFF {TARGET_MODEL.decode()} is missing")
    if len(refs) != 1 or refs[0] != (TARGET_MODEL, TARGET_DFF_OFFSET):
        raise ValueError(f"Expected one exclusive binding at material 18; found {refs}")
    if b"r_pr_logo11" in target_model:
        raise ValueError("Target DFF still contains the old shared texture name")


def patch_tmb(tmb_path: Path, pixels: bytes) -> bytes:
    original = tmb_path.read_bytes()
    pos = 0
    matches: list[int] = []
    while pos < len(original):
        if len(original) - pos < HEADER.size:
            raise ValueError(f"Truncated TMB header at {pos}")
        name_hash, encoding, width, height, stored_size, _ = HEADER.unpack_from(original, pos)
        if stored_size < 4:
            raise ValueError(f"Invalid TMB stored size at {pos}")
        span = 12 + stored_size
        if pos + span > len(original):
            raise ValueError(f"TMB record overruns archive at {pos}")
        if name_hash == hash16(TEXTURE) and encoding == ENC_RGBA8888 and width == 256 and height == 256:
            if stored_size != len(pixels) + 4:
                raise ValueError("TMB texture record has unexpected size")
            matches.append(pos)
        pos += span
    if pos != len(original) or len(matches) != 1:
        raise ValueError(f"Expected one matching thumbnail record; found {matches}")
    updated = bytearray(original)
    start = matches[0] + HEADER.size
    updated[start:start + len(pixels)] = pixels
    return bytes(updated)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--data-root", type=Path, required=True, help="Root of an already patched DATA tree")
    parser.add_argument("--image", type=Path, required=True, help="Logo-free 256x256 RGBA wall texture")
    args = parser.parse_args()
    root = args.data_root.resolve()
    txd = root / "texdb/txd"
    img_path = root / "texdb/gta3.img"
    txt_path = txd / "txd.txt"
    toc_path = txd / "txd.etc.toc"
    dat_path = txd / "txd.etc.dat"
    tmb_path = txd / "txd.etc.tmb"
    for path in (img_path, txt_path, toc_path, dat_path, tmb_path, args.image):
        if not path.is_file():
            raise FileNotFoundError(path)

    image = Image.open(args.image).convert("RGBA")
    if image.size != (256, 256):
        raise ValueError(f"Texture must be 256x256; got {image.size}")
    pixels = image.tobytes()
    if len(pixels) != 256 * 256 * 4:
        raise ValueError("Unexpected RGBA pixel payload length")

    texture_index, offset = texture_index_and_offset(txt_path, toc_path, dat_path)
    dat_original = dat_path.read_bytes()
    name_hash, encoding, width, height, stored_size, rle = HEADER.unpack_from(dat_original, offset)
    if (name_hash, encoding, width, height, stored_size, rle) != (
        hash16(TEXTURE), ENC_RGBA8888, 256, 256, len(pixels) + 4, 0
    ):
        raise ValueError("Existing ETC texture record does not match expected RGBA8888 metadata")
    validate_target_binding(img_path)
    tmb_updated = patch_tmb(tmb_path, pixels)

    dat_updated = bytearray(dat_original)
    dat_start = offset + HEADER.size
    dat_updated[dat_start:dat_start + len(pixels)] = pixels
    dat_result = bytes(dat_updated)
    dat_path_after = dat_path.with_suffix(dat_path.suffix + ".tmp-check")
    # Validate the replacement before changing the runtime files.
    verify_header = HEADER.unpack_from(dat_result, offset)
    if verify_header[0] != hash16(TEXTURE) or dat_result[dat_start:dat_start + len(pixels)] != pixels:
        raise RuntimeError("Prepared DAT replacement failed verification")
    dat_path_after.unlink(missing_ok=True)

    atomic_write(dat_path, dat_result)
    atomic_write(tmb_path, tmb_updated)
    if dat_path.stat().st_size != len(dat_original) or tmb_path.stat().st_size != len(tmb_updated):
        raise RuntimeError("Texture update unexpectedly changed a runtime archive size")
    with dat_path.open("rb") as f:
        f.seek(dat_start)
        if f.read(len(pixels)) != pixels:
            raise RuntimeError("Post-write DAT payload verification failed")
    print(f"Updated exclusive texture {TEXTURE} (TXD index {texture_index}, ETC offset {offset})")
    print("DFF binding verified: rio_int_pravo_08.dff material 18 at offset 3136")
    print("Modified runtime files only: texdb/txd/txd.etc.dat and texdb/txd/txd.etc.tmb")


if __name__ == "__main__":
    main()
