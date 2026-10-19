#!/usr/bin/env python3

"""Capture and compare the IL that MSVC6's front end hands to c2.dll.

See docs/msvc6_passes.md for how cl.exe runs its passes and what the IL files hold.

cl.exe runs c1xx.dll (front end) and c2.dll (back end) one after the other. They
share nothing but a set of IL files with a common temporary prefix. This tool
makes cl.exe run a batch file in place of c2.dll (`/B2`) that copies those files
away, so a unit's IL can be kept and compared without changing the compiler.

Comparing IL answers whether two sources are the same to the compiler, which
object comparison cannot always show:

  identical      every IL file matches (the line-number fields of the code IL are
                 ignored): the objects are certain to be identical, including
                 COMDAT order and every inline budget in every function.
  same code      the code IL matches but the symbol files differ (names, paths,
                 declarations): same instructions, but section and COMDAT order
                 can move, which matters only for linked units.
  different      the code IL differs: the compiler sees a different program, even
                 where this unit's bytes happen not to change (an IL size that
                 moves the inline budget of another caller, for example).

Usage:
  # Compare the unit's current source with a variant (same command line)
  python tools/c2-il.py compare --source src/Black/Tree.cpp --file variant.cpp

  # Compare two variants of the unit
  python tools/c2-il.py compare --source src/Black/Tree.cpp --file a.cpp --file b.cpp

  # Keep the IL files of the unit (or of a variant) in a directory
  python tools/c2-il.py capture --source src/Black/Tree.cpp --out build/probe-il/tree

  # Replay kept IL through the real c2.dll into an object
  python tools/c2-il.py replay --source src/Black/Tree.cpp --il build/probe-il/tree --obj out.obj

The /Zi debug-information flags are dropped for captures: they add a per-run
signature to the IL and do not change code.
"""

import argparse
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

sys.dont_write_bytecode = True

import msvc_probe as mp
from decomp_common import ROOT

WORK = "build/probe-il"

# IL files, by the two-letter suffix after the temporary prefix.
CODE = "ex"  # code (expression tuples), with source line markers
SYMBOLS = ("gl", "sy", "in")  # globals, symbols, and a small index; names and paths live here
DEBUG = "db"  # written only with /Zi; holds a per-run signature
SUFFIXES = (CODE,) + SYMBOLS + (DEBUG,)

# A source line marker in the code IL: 0x4f 0x01 0x80 followed by the 16-bit line.
LINE_MARKER = re.compile(rb"\x4f\x01\x80..", re.S)


def batch(path, copies):
    """Write a pass batch file. copies: [(source, destination)] with %P for the IL prefix."""
    lines = ["@echo off", 'for /f "tokens=2" %%P in ("%MSC_CMD_FLAGS%") do (']
    for src, dst in copies:
        src, dst = src.replace("%P", "%%P"), dst.replace("%P", "%%P")
        lines.append(f'  if exist "{src}" copy /y "{src}" "{dst}" >nul')
    lines += [")", "exit /b 0", ""]
    path.write_text("\r\n".join(lines), newline="")


def sync_tree():
    """Mirror src/ into the work directory (copying changed files only); return its root."""
    root = Path(ROOT) / WORK / "tree"
    for path in (Path(ROOT) / "src").rglob("*"):
        if not path.is_file():
            continue
        copy = root / path.relative_to(ROOT)
        st = path.stat()
        if not copy.exists() or copy.stat().st_size != st.st_size or copy.stat().st_mtime != st.st_mtime:
            copy.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(path, copy)
    return root


def command(unit, compiled, obj, src_root=None):
    argv, source, _ = mp.compile_command(unit)
    index = next(i for i, a in enumerate(argv) if os.path.basename(a).lower() == "cl.exe")
    argv = list(argv)
    argv[index] = str(Path(ROOT) / argv[index])
    argv = [a for a in argv if a not in ("/Zi", "/Z7", "/ZI") and not a.startswith("/Fd")]
    return mp.retarget(argv, source, compiled, obj, src_root)


def run(cmd, store, work):
    tmp = work / "tmp"
    tmp.mkdir(exist_ok=True)
    env = dict(os.environ, IL_STORE=str(store), TMP=str(tmp), TEMP=str(tmp))
    proc = subprocess.run(cmd, cwd=ROOT, env=env, capture_output=True, text=True, errors="replace")
    if proc.returncode:
        log = (proc.stdout + proc.stderr).splitlines()
        errors = [l for l in log if " error " in l or "fatal error" in l]
        raise RuntimeError("compile failed:\n" + "\n".join(errors or log[-5:]))


def capture(unit, text, store):
    """Run the front end on text (source code) as the unit's source; keep its IL files in store.

    Every capture compiles the same path in a private copy of src/, so file names
    recorded in the IL are the same whichever variant is captured.
    """
    work = mp.make_workdir(WORK)
    root = sync_tree()
    _, source, _ = mp.compile_command(unit)
    compiled = root / source
    compiled.write_bytes(text)
    try:
        store.mkdir(parents=True, exist_ok=True)
        for suffix in SUFFIXES:
            (store / f"il.{suffix}").unlink(missing_ok=True)
        bat = work / "capture.bat"
        batch(bat, [(f"%P{s}", str(store / f"il.{s}")) for s in SUFFIXES])
        cmd = command(unit, os.path.relpath(compiled, ROOT), str(work / "capture.obj"), os.path.relpath(root, ROOT))
        run(cmd + ["/B2", str(bat)], store, work)
    finally:
        shutil.copy2(Path(ROOT) / source, compiled)
    if not (store / f"il.{CODE}").exists():
        raise RuntimeError("the front end wrote no code IL")
    return {s: (store / f"il.{s}").read_bytes() for s in SUFFIXES if (store / f"il.{s}").exists()}


def replay(unit, store, obj):
    """Run the real back end on kept IL files."""
    work = mp.make_workdir(WORK)
    bat = work / "replay.bat"
    batch(bat, [(str(store / f"il.{s}"), f"%P{s}") for s in SUFFIXES])
    _, source, _ = mp.compile_command(unit)
    run(command(unit, source, obj) + ["/B1", str(bat)], store, work)


def masked(code):
    return LINE_MARKER.sub(b"\x4f\x01\x80\0\0", code)


def verdict(a, b):
    if masked(a[CODE]) != masked(b[CODE]):
        return "different", "the code IL differs: the compiler sees a different program"
    if all(a.get(s) == b.get(s) for s in SYMBOLS):
        if a[CODE] == b[CODE]:
            return "identical", "every IL file matches"
        return "identical", "every IL file matches except source line numbers"
    return "same code", "the code IL matches; symbol files differ, so section and COMDAT order may move"


def main(argv=None):
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sub = ap.add_subparsers(dest="cmd", required=True)
    for name in ("capture", "compare", "replay"):
        p = sub.add_parser(name)
        p.add_argument("--source", help="source file of the unit (e.g. src/Black/Tree.cpp)")
        p.add_argument("--unit", help="objdiff unit name instead of --source")
    sub.choices["capture"].add_argument("--file", help="capture this file instead of the unit's source")
    sub.choices["capture"].add_argument("--out", required=True, help="directory for the IL files")
    sub.choices["compare"].add_argument("--file", action="append", default=[],
                                        help="variant to compare (once: against the unit's source; twice: with each other)")
    sub.choices["replay"].add_argument("--il", required=True, help="directory of kept IL files")
    sub.choices["replay"].add_argument("--obj", required=True, help="object to write")
    args = ap.parse_args(argv)

    try:
        unit = mp.unit_for(source=args.source, unit=args.unit)
        _, source, _ = mp.compile_command(unit)
        if args.cmd == "capture":
            files = capture(unit, Path(args.file or source).read_bytes(), Path(args.out))
            for suffix, data in files.items():
                print(f"il.{suffix}  {len(data)} bytes")
        elif args.cmd == "replay":
            replay(unit, Path(args.il).resolve(), args.obj)
            print(f"wrote {args.obj}")
        else:
            if not 1 <= len(args.file) <= 2:
                ap.error("compare takes one or two --file")
            left, right = ([source] + args.file)[-2:]
            a = capture(unit, Path(left).read_bytes(), Path(ROOT) / WORK / "left")
            b = capture(unit, Path(right).read_bytes(), Path(ROOT) / WORK / "right")
            kind, why = verdict(a, b)
            print(f"{kind}: {why}")
            return 0 if kind == "identical" else 2 if kind == "same code" else 3
    except (OSError, ValueError, RuntimeError, subprocess.CalledProcessError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
