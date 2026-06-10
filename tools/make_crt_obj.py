#!/usr/bin/env python3
r"""make_crt_obj.py - extract + patch a CRT object from the original MSVC 6.0 SP5
static libs (LIBCMT.LIB / LIBCPMT.LIB) into lib/crt_obj/<name>.obj, ready to be
copied into the build by the project.py `copy_obj` rule ("libcmt linking").

This is the DTK port of bw1-decomp's CMake `add_patched_static_lib_object`:
  1. llvm-ar  --format=coff x <LIB> <name>.obj      (extract)
  2. patch_coff_object_file.py [--no-pad] [--remove-associative-flags]
  3. llvm-objcopy [--weaken-symbol=S ...] [--remove-section=S ...]

Usage:
  python tools/make_crt_obj.py memchr.obj
  python tools/make_crt_obj.py rtti.obj --lib LIBCMT --remove-associative-flags \
      --weaken-symbol "??_R0?AVexception@@@8"

Then add to splits.txt + configure.py and reconfigure. See PORT_NOTES / report.

Paths to the llvm tools + libs default to the sibling bw1-decomp clone; override
with --decomp if it lives elsewhere.
"""
import argparse
import subprocess
import sys
from pathlib import Path

DTK = Path(__file__).resolve().parent.parent


def main() -> int:
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("obj", help="object file name inside the lib, e.g. memchr.obj")
    ap.add_argument("--lib", default="LIBCMT", choices=["LIBCMT", "LIBCPMT"], help="source static lib (default LIBCMT)")
    ap.add_argument("--no-pad", action="store_true", help="patcher: set IMAGE_SCN_TYPE_NO_PAD on first section")
    ap.add_argument("--remove-associative-flags", action="store_true", help="patcher: ASSOCIATIVE -> ANY comdat selection")
    ap.add_argument("--weaken-symbol", action="append", default=[], help="objcopy: weaken this symbol (repeatable)")
    ap.add_argument("--remove-section", action="append", default=[], help="objcopy: remove this section (repeatable)")
    ap.add_argument("--decomp", type=Path, default=DTK.parent / "bw1-decomp", help="path to bw1-decomp clone")
    ap.add_argument("--out-dir", type=Path, default=DTK / "lib" / "crt_obj", help="output dir (default lib/crt_obj)")
    args = ap.parse_args()

    decomp = args.decomp
    llvm_bin = decomp / "cmake-build-presets" / "objdiff" / "_deps" / "llvm_binaries-src" / "bin"
    ar = llvm_bin / "llvm-ar.exe"
    objcopy = llvm_bin / "llvm-objcopy.exe"
    patcher = decomp / "scripts" / "source_code" / "patch_coff_object_file.py"
    lib = decomp / "src" / "lib" / f"{args.lib}.LIB"
    for p in (ar, objcopy, patcher, lib):
        if not p.exists():
            sys.exit(f"missing tool/lib: {p}")

    extract_dir = args.out_dir / "_extract"
    extract_dir.mkdir(parents=True, exist_ok=True)
    args.out_dir.mkdir(parents=True, exist_ok=True)

    raw = extract_dir / args.obj
    tmp = args.out_dir / f"{args.obj}.tmp"
    out = args.out_dir / args.obj

    # 1. extract
    subprocess.run([str(ar), "--format=coff", "--output", str(extract_dir), "x", str(lib), args.obj], check=True)
    # 2. patch
    patch_cmd = [sys.executable, str(patcher), str(raw), str(tmp)]
    if args.no_pad:
        patch_cmd.append("--no-pad")
    if args.remove_associative_flags:
        patch_cmd.append("--remove-associative-flags")
    subprocess.run(patch_cmd, check=True)
    # 3. objcopy
    objcopy_cmd = [str(objcopy)]
    for s in args.weaken_symbol:
        objcopy_cmd.append(f"--weaken-symbol={s}")
    for s in args.remove_section:
        objcopy_cmd.append(f"--remove-section={s}")
    objcopy_cmd += [str(tmp), str(out)]
    subprocess.run(objcopy_cmd, check=True)
    tmp.unlink(missing_ok=True)

    print(f"wrote {out}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
