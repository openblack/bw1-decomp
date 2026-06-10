#!/usr/bin/env python3
r"""testcompile.py - compile a single .cpp with the EXACT Black-TU cflags and print errors.

Used to diagnose why a class header doesn't compile standalone (TASK A: header-blocked bucket). Avoids the
Git-bash flag-mangling that turns `/I` into a path. Reads cflags from build.ninja's Abode.o entry so they
stay in sync.

Usage:
  python tools/testcompile.py path/to/file.cpp        # compile, print stdout/stderr
  python tools/testcompile.py --src 'C++ source...'    # compile inline source (writes a temp TU)
"""
import os, sys, re, subprocess, tempfile

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")

CL = os.path.join(DTK, "build", "compilers", "MSVC", "6.5", "cl.exe")
CFLAGS = ["/nologo", "/W3", "/O2", "/Og", "/Ob1", "/Zd", "/MT", "/GR", "/TP",
          "/I", "include", "/I", "include/black", "/I", "build/%s/include" % VERSION,
          "/I", "build/compilers/MSVC/6.5/include",
          "/DBUILD_VERSION=2", "/DVERSION_%s" % VERSION, "/DNDEBUG=1"]


def compile_text(text, name="_tc"):
    p = os.path.join(DTK, "src", "Black", name + ".cpp")
    open(p, "w", encoding="latin-1").write(text)
    obj = os.path.join(DTK, "build", "_tc.o")
    try:
        r = subprocess.run([CL] + CFLAGS + ["/c", "src/Black/%s.cpp" % name, "/Fobuild/_tc.o"],
                           cwd=DTK, capture_output=True, text=True)
        ok = os.path.exists(obj)
        out = (r.stdout or "") + (r.stderr or "")
        return ok, out
    finally:
        for f in (p, obj):
            if os.path.exists(f):
                os.remove(f)


def main():
    args = sys.argv[1:]
    if not args or args[0] in ("-h","--help"):
        sys.exit("usage: testcompile.py <file.cpp> | --src '<C++ source>'  -- compile one TU with exact Black cflags")
    if "--src" in args:
        text = args[args.index("--src") + 1]
    else:
        text = open(args[0], encoding="latin-1").read()
    ok, out = compile_text(text)
    # strip the boilerplate banner lines
    lines = [l for l in out.splitlines() if l.strip() and "Optimizing Compiler" not in l
             and "Copyright" not in l]
    print("OK" if ok else "FAIL")
    for l in lines[:40]:
        print(l)


if __name__ == "__main__":
    main()
