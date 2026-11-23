#!/usr/bin/env python3
"""Regenerate the launcher's protected-file integrity index for a DATA tree.

The path allow-list mirrors DataIntegrity.protectedPath() in the recovered APK.
The first-line identity is the SHA-256 of the source DATA ZIP, matching the
ArchiveDataInstaller and GameIntegrity flow.
"""
from __future__ import annotations

import argparse
import hashlib
import os
import tempfile
from pathlib import Path

ALLOWED_ROOTS = {"anim", "audio", "data", "models", "texdb", "samp", "text", "fonts"}
SAMP_EXACT_EXCLUDES = {
    "settings.ini",
    "server.ini",
    "settings.json",
    "favorites.json",
    "native-exit-trace.txt",
}
MODEL_EXACT_EXCLUDES = {
    "cinfo.bin",
    "minfo.bin",
    "angra21032-minfo.bin",
    "angra21064-minfo.bin",
}


def protected(rel: str) -> bool:
    parts = rel.split("/")
    top = parts[0].lower()
    if top not in ALLOWED_ROOTS:
        return False
    base = parts[-1].lower()
    if top == "samp":
        if base in SAMP_EXACT_EXCLUDES or base.endswith(".log") or "log.txt" in base:
            return False
    if top == "data" and (base.startswith("touch") or base.startswith("360default")):
        return False
    if top == "models" and base in MODEL_EXACT_EXCLUDES:
        return False
    return True


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--data-root", type=Path, required=True)
    ap.add_argument("--package-sha256", required=True)
    ap.add_argument("--output", type=Path, required=True)
    ap.add_argument("--expected-path-list", type=Path, help="Optional TSV whose data rows define the required path set")
    args = ap.parse_args()
    if len(args.package_sha256) != 64 or any(c not in "0123456789abcdefABCDEF" for c in args.package_sha256):
        raise SystemExit("package-sha256 must contain exactly 64 hexadecimal characters")
    root = args.data_root.resolve()
    if not root.is_dir():
        raise SystemExit(f"DATA root is not a directory: {root}")
    files = sorted((p for p in root.rglob("*") if p.is_file() and protected(p.relative_to(root).as_posix())),
                   key=lambda p: p.relative_to(root).as_posix())
    rels = [p.relative_to(root).as_posix() for p in files]
    if len(rels) != len(set(rels)):
        raise SystemExit("Duplicate relative file paths in DATA tree")
    if args.expected_path_list:
        lines = args.expected_path_list.read_text(encoding="utf-8").splitlines()
        expected = {line.split("\t", 1)[0] for line in lines[1:] if line}
        actual = set(rels)
        missing = expected - actual
        if missing:
            raise SystemExit(f"Expected paths missing from DATA: {len(missing)}; examples={sorted(missing)[:10]}")
        print(f"Preserved {len(expected)} paths from the previous index; added {len(actual-expected)} protected paths.")

    rows = [f"ANGRA-INTEGRITY-1\t{args.package_sha256.lower()}"]
    for path, rel in zip(files, rels):
        rows.append(f"{rel}\t{path.stat().st_size}\t{sha256(path)}")
    payload = ("\n".join(rows) + "\n").encode("utf-8")
    output = args.output.resolve()
    output.parent.mkdir(parents=True, exist_ok=True)
    fd, tmp_name = tempfile.mkstemp(prefix=output.name + ".", suffix=".tmp", dir=output.parent)
    try:
        with os.fdopen(fd, "wb") as f:
            f.write(payload)
            f.flush()
            os.fsync(f.fileno())
        os.replace(tmp_name, output)
    except Exception:
        try:
            os.unlink(tmp_name)
        except FileNotFoundError:
            pass
        raise
    print(f"Wrote {len(files)} protected file records to {output}")
    print(f"Header identity: {args.package_sha256.lower()}")
    print(f"Manifest SHA-256: {sha256(output)}")


if __name__ == "__main__":
    main()
