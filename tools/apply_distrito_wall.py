#!/usr/bin/env python3
"""Apply the Distrito City wall overlay to a GTA SA Android DATA tree.

Only these runtime resources are changed:
- texdb/gta3.img: the single rio_int_pravo_08.dff entry's texture name
- texdb/txd/txd.txt, txd.etc.dat, txd.etc.toc, txd.etc.tmb: one unique texture

The source DATA tree is modified in place, so pass a working copy.
"""
from __future__ import annotations

import argparse
import os
import re
import shutil
import struct
import tempfile
from pathlib import Path

from PIL import Image

OLD_TEXTURE = b"r_pr_logo11"
NEW_TEXTURE = "distrito001"
MODEL_ENTRY = b"rio_int_pravo_08.dff"
IMG_SECTOR_SIZE = 2048
ENC_RGBA8888 = 0x1401


def hash16(name: str) -> int:
    h = 0
    for byte in name.encode("utf-8"):
        h = (h + (h << 5) + byte) & 0xFFFFFFFF
    h = (h + (h >> 5)) & 0xFFFFFFFF
    return h & 0xFFFF


def atomic_write(path: Path, data: bytes) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    fd, temp_name = tempfile.mkstemp(prefix=path.name + ".", suffix=".tmp", dir=path.parent)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(data)
            f.flush()
            os.fsync(f.fileno())
        if path.exists():
            os.chmod(temp_name, path.stat().st_mode)
        os.replace(temp_name, path)
    except Exception:
        try:
            os.unlink(temp_name)
        except FileNotFoundError:
            pass
        raise


def append_atomic(path: Path, suffix: bytes) -> None:
    fd, temp_name = tempfile.mkstemp(prefix=path.name + ".", suffix=".tmp", dir=path.parent)
    try:
        with path.open("rb") as src, os.fdopen(fd, "wb") as dst:
            shutil.copyfileobj(src, dst, length=8 * 1024 * 1024)
            dst.write(suffix)
            dst.flush()
            os.fsync(dst.fileno())
        os.chmod(temp_name, path.stat().st_mode)
        os.replace(temp_name, path)
    except Exception:
        try:
            os.unlink(temp_name)
        except FileNotFoundError:
            pass
        raise


def parse_txt(txt: bytes) -> tuple[list[str], list[str]]:
    text = txt.decode("utf-8", errors="strict")
    lines = text.splitlines()
    names: list[str] = []
    texture_lines: list[str] = []
    for line in lines:
        m = re.match(r'^"([^"]+)"', line)
        if m:
            names.append(m.group(1))
            texture_lines.append(line)
    return names, texture_lines


def parse_img_entry(img_path: Path) -> tuple[int, int, int, bytes]:
    """Return (entry index, byte offset, byte size, full IMG bytes)."""
    data = img_path.read_bytes()
    if len(data) < 8 or data[:4] != b"VER2":
        raise ValueError(f"Unexpected IMG format: {img_path}")
    count = struct.unpack_from("<I", data, 4)[0]
    table_end = 8 + count * 32
    if table_end > len(data):
        raise ValueError("IMG directory table is truncated")
    found = []
    for index in range(count):
        pos = 8 + index * 32
        offset_sectors, size_sectors = struct.unpack_from("<II", data, pos)
        entry_name = data[pos + 8:pos + 32].split(b"\0", 1)[0]
        if entry_name == MODEL_ENTRY:
            found.append((index, offset_sectors * IMG_SECTOR_SIZE, size_sectors * IMG_SECTOR_SIZE))
    if len(found) != 1:
        raise ValueError(f"Expected one {MODEL_ENTRY.decode()} entry, found {len(found)}")
    index, offset, size = found[0]
    if offset + size > len(data):
        raise ValueError("Target DFF entry extends past the IMG file")
    return index, offset, size, data


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--data-root", type=Path, required=True, help="Root of a disposable DATA working copy")
    ap.add_argument("--image", type=Path, required=True, help="Prepared 256x256 RGBA PNG")
    args = ap.parse_args()
    root = args.data_root.resolve()

    img_path = root / "texdb/gta3.img"
    txd_dir = root / "texdb/txd"
    txt_path = txd_dir / "txd.txt"
    dat_path = txd_dir / "txd.etc.dat"
    toc_path = txd_dir / "txd.etc.toc"
    tmb_path = txd_dir / "txd.etc.tmb"
    for p in (img_path, txt_path, dat_path, toc_path, tmb_path, args.image):
        if not p.is_file():
            raise FileNotFoundError(p)

    image = Image.open(args.image).convert("RGBA")
    if image.size != (256, 256):
        raise ValueError(f"Image must be 256x256, got {image.size}")
    pixels = image.tobytes()
    if len(pixels) != 256 * 256 * 4:
        raise ValueError("RGBA pixel payload has unexpected length")

    txt_original = txt_path.read_bytes()
    names, _ = parse_txt(txt_original)
    if NEW_TEXTURE in names:
        raise ValueError(f"Texture name {NEW_TEXTURE} already exists")

    dat_original = dat_path.read_bytes()
    toc_original = toc_path.read_bytes()
    if len(toc_original) < 4 or (len(toc_original) - 4) % 4:
        raise ValueError("Malformed ETC TOC")
    declared_size = struct.unpack_from("<I", toc_original, 0)[0]
    offset_count = (len(toc_original) - 4) // 4
    if declared_size != len(dat_original):
        raise ValueError("ETC TOC does not match the original DAT size")
    if offset_count != len(names):
        raise ValueError("ETC TOC and txd.txt entry counts differ")
    offsets = list(struct.unpack_from(f"<{offset_count}i", toc_original, 4))

    # Validate every non-affiliate record's name hash before adding anything.
    txt_text = txt_original.decode("utf-8", errors="strict")
    texture_index = -1
    for i, line in enumerate(txt_text.splitlines()):
        match = re.match(r'^"([^"]+)"', line)
        if not match:
            continue
        texture_index += 1
        name = match.group(1)
        offset = offsets[texture_index]
        if "affiliate=" in line:
            continue
        if offset < 0 or offset + 16 > len(dat_original):
            raise ValueError(f"Invalid ETC offset for {name} at index {texture_index}")
        header_hash = struct.unpack_from("<H", dat_original, offset)[0]
        if header_hash != hash16(name):
            raise ValueError(f"DAT hash mismatch for {name} at index {texture_index}")

    # Patch exactly one material string in the target DFF, in-place at its IMG payload offset.
    entry_index, model_offset, model_size, img_original = parse_img_entry(img_path)
    model = img_original[model_offset:model_offset + model_size]
    occurrences = [m.start() for m in re.finditer(re.escape(OLD_TEXTURE), model)]
    if len(occurrences) != 1 or occurrences[0] != 3136:
        raise ValueError(f"Expected the single target material at DFF offset 3136; found {occurrences}")
    new_bytes = NEW_TEXTURE.encode("ascii")
    if len(new_bytes) != len(OLD_TEXTURE):
        raise ValueError("New DFF texture name must have the same byte length as the original")
    if new_bytes in model:
        raise ValueError("New texture name already appears in the target DFF")
    img_updated = bytearray(img_original)
    absolute_name_offset = model_offset + occurrences[0]
    img_updated[absolute_name_offset:absolute_name_offset + len(OLD_TEXTURE)] = new_bytes

    # A mobile texture record uses a 16-byte header; storedSize includes the 4-byte RLE field.
    stored_size = len(pixels) + 4
    record = struct.pack(
        "<HHHHII",
        hash16(NEW_TEXTURE),
        ENC_RGBA8888,
        256,
        256,
        stored_size,
        0,
    ) + pixels
    dat_updated = dat_original + record
    new_offset = len(dat_original)
    toc_updated = struct.pack("<I", len(dat_updated)) + struct.pack(
        f"<{offset_count + 1}i", *offsets, new_offset
    )

    line = f'"{NEW_TEXTURE}" width=256 height=256 img=00000000 mipmode=0 alphamode=2'
    newline = b"\r\n" if b"\r\n" in txt_original else b"\n"
    txt_updated = txt_original
    if not txt_updated.endswith((b"\n", b"\r")):
        txt_updated += newline
    txt_updated += line.encode("ascii") + newline

    # Append a matching entry to the ETC thumbnail archive, preserving all prior bytes.
    tmb_original = tmb_path.read_bytes()
    tmb_pos = 0
    tmb_count = 0
    while tmb_pos < len(tmb_original):
        if len(tmb_original) - tmb_pos < 16:
            raise ValueError("Truncated ETC TMB header")
        _, _, _, _, tmb_stored, _ = struct.unpack_from("<HHHHII", tmb_original, tmb_pos)
        if tmb_stored < 4:
            raise ValueError(f"Invalid TMB stored size at {tmb_pos}")
        span = 12 + tmb_stored
        if tmb_pos + span > len(tmb_original):
            raise ValueError(f"TMB record overruns archive at {tmb_pos}")
        tmb_pos += span
        tmb_count += 1
    if tmb_pos != len(tmb_original):
        raise ValueError("TMB records do not end at the file boundary")
    tmb_updated = tmb_original + record

    # All source validations completed; apply only the five intended runtime-file edits.
    append_atomic(dat_path, record)
    atomic_write(toc_path, toc_updated)
    atomic_write(txt_path, txt_updated)
    append_atomic(tmb_path, record)
    atomic_write(img_path, bytes(img_updated))

    # Post-write consistency checks.
    new_txt_names, _ = parse_txt(txt_path.read_bytes())
    new_toc = toc_path.read_bytes()
    new_dat_size = struct.unpack_from("<I", new_toc, 0)[0]
    new_offsets = struct.unpack_from(f"<{len(new_txt_names)}i", new_toc, 4)
    if len(new_txt_names) != len(names) + 1 or new_txt_names[-1] != NEW_TEXTURE:
        raise RuntimeError("Post-write TXT verification failed")
    if new_dat_size != dat_path.stat().st_size or new_offsets[-1] != new_offset:
        raise RuntimeError("Post-write TOC/DAT verification failed")
    with dat_path.open("rb") as f:
        f.seek(new_offset)
        written_header = f.read(16)
        written_pixels = f.read(len(pixels))
    if written_header != record[:16] or written_pixels != pixels:
        raise RuntimeError("Post-write texture record verification failed")
    model_after = img_path.read_bytes()[model_offset:model_offset + model_size]
    if model_after.count(new_bytes) != 1 or OLD_TEXTURE in model_after:
        raise RuntimeError("Post-write DFF material verification failed")
    if tmb_path.read_bytes() != tmb_updated:
        raise RuntimeError("Post-write TMB verification failed")

    print(f"Patched model entry {MODEL_ENTRY.decode()} (IMG entry {entry_index}, DFF offset {occurrences[0]})")
    print(f"Added unique RGBA8888 texture {NEW_TEXTURE} at ETC DAT offset {new_offset}")
    print(f"ETC texture entries: {len(names)} -> {len(new_txt_names)}; TMB records: {tmb_count} -> {tmb_count + 1}")
    print("Modified runtime files: texdb/gta3.img, texdb/txd/txd.txt, txd.etc.dat, txd.etc.toc, txd.etc.tmb")
    print("The original DATA path must not be used as --data-root; pass an independent working copy.")


if __name__ == "__main__":
    main()
