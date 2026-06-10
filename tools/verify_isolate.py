#!/usr/bin/env python3
r"""verify_isolate.py - companion to verify_defs.py that recovers the GOOD defs from a TU that fails to
compile when ALL its candidate defs are injected at once.

verify_defs reverts a compile-failing TU WHOLE -> if one bad def (e.g. a header that can't see a type, a
const/return mismatch) is among 60 good ones, all 60 are lost. This isolates per-TU: starting from the
committed .cpp, it greedily appends each candidate def and rebuilds JUST that one obj; a def that breaks
the build is dropped (the .cpp is rolled back to the last-good text), the rest continue. Output: a
filtered defs.json containing only the defs that COMPILE (still must pass verify_defs' byte-exact gate).

Per-def single-obj rebuild is cheap (one cl.exe invocation), so even 60 defs in a TU cost ~60 compiles.

Usage:
  python tools/verify_isolate.py defs.json --out defs.compiles.json
"""
import json, re, os, sys, glob, subprocess

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
NINJA = os.path.join(os.path.dirname(DTK), "bw1-decomp", ".venv", "Scripts", "ninja.exe")
sys.path.insert(0, os.path.join(DTK, "tools"))
import verify_defs as vd


def obj_path(tu):
    return os.path.join(DTK, "build", VERSION, "src", "Black", tu + ".o")


def build_one(tu):
    p = obj_path(tu)
    if os.path.exists(p):
        os.remove(p)
    subprocess.run([NINJA, "-k", "0", "build/%s/src/Black/%s.o" % (VERSION, tu)], cwd=DTK, capture_output=True)
    return os.path.exists(p)


def main():
    args = sys.argv[1:]
    path = next((a for a in args if not a.startswith("--")), None)
    if path is None:
        sys.exit("usage: %s <file.cpp> [--opts]" % __file__)
    outp = args[args.index("--out") + 1] if "--out" in args else path.replace(".json", ".compiles.json")
    defs = json.load(open(path))
    rng = vd._ranges()

    def tu_for(a):
        ai = int(a, 16)
        return next((n for n, (lo, hi) in rng.items() if lo <= ai < hi), None)

    bytu = {}
    for a, r in defs.items():
        tu = tu_for(a)
        if tu:
            bytu.setdefault(tu, []).append((a, r))

    # ensure a clean baseline build so single-obj rebuilds have their deps
    vd._git("checkout", "HEAD", "--", "src/Black/")
    vd._build()

    good = {}
    for tu, recs in bytu.items():
        cpp = os.path.join(DTK, "src", "Black", tu + ".cpp")
        base = open(cpp, encoding="latin-1").read()
        # idempotent: a def already present in the committed text is a no-op here (it's already counted);
        # keep it in `good` (so verify_defs re-confirms it) but DON'T re-inject (a dup breaks compile).
        present = [(a, r) for a, r in recs if r["def"].split("\n", 1)[0] in base]
        for a, r in present:
            good[a] = r
        recs = [(a, r) for a, r in recs if r["def"].split("\n", 1)[0] not in base]
        if not recs:
            continue
        # fast path: inject ALL, if compiles keep all
        incs = "".join('#include "%s"\n' % r["inc"] for a, r in recs
                       if r.get("inc") and ('#include "%s"' % r["inc"]) not in base)
        allbody = "\n\n".join(r["def"] for a, r in recs)
        open(cpp, "w", encoding="latin-1").write(incs + base + "\n\n" + allbody + "\n")
        if build_one(tu):
            for a, r in recs:
                good[a] = r
            open(cpp, "w", encoding="latin-1").write(base)  # restore; verify_defs re-injects later
            continue
        # slow path: greedily add one at a time
        cur = base
        kept = []
        for a, r in recs:
            inc = ('#include "%s"\n' % r["inc"]) if (r.get("inc") and ('#include "%s"' % r["inc"]) not in cur) else ""
            trial = inc + cur + "\n\n" + r["def"] + "\n"
            open(cpp, "w", encoding="latin-1").write(trial)
            if build_one(tu):
                cur = trial
                kept.append(a)
                good[a] = r
        open(cpp, "w", encoding="latin-1").write(base)  # restore committed text
        print("  %-22s kept %d / %d compile-clean" % (tu, len(kept), len(recs)))

    vd._git("checkout", "HEAD", "--", "src/Black/")
    json.dump(good, open(os.path.join(DTK, outp), "w"))
    print("compile-clean defs: %d / %d -> %s" % (len(good), len(defs), outp))


if __name__ == "__main__":
    main()
