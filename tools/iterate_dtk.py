#!/usr/bin/env python3
r"""iterate_dtk.py - dtk-native near-miss closer (edit -> ninja one .o -> objdiff one symbol).

WHY (the dtk-path sharpening): the shared `iterate.py`/`verify.py`/`permute.py` are wired to
bw1-decomp's cmake-build-presets + objdiff-cli-on-PATH flow. In dtk the build is ninja
(`bw1-decomp/.venv/Scripts/ninja.exe`) producing `build/<VER>/src/Black/<TU>.o`, and objdiff-cli
lives at `build/tools/objdiff-cli.exe`, driven by `-p . -u runblack-decrypted/Black/<TU> <symbol>`
(objdiff.json at repo root). This tool implements the SAME edit->build->score->keep loop natively.

In the objdiff diff JSON: left=TARGET (the binary), right=BASE (ours).

Usage:
  python tools/iterate_dtk.py diff  <TU> <MangledSymbol>            # per-instruction diff (T vs ours)
  python tools/iterate_dtk.py score <TU> <MangledSymbol>            # current match_percent
  python tools/iterate_dtk.py try   <TU> <MangledSymbol> --old "C" --new "C"
                                                                    # edit, rebuild, rescore; revert unless better
Notes:
  * --try edits src/Black/<TU>.cpp (exact substring), rebuilds ONLY that .o, rescores the one
    symbol, and reverts the edit if the score did not strictly improve (KEEP only if it reaches
    100 OR strictly improves -- caller commits real wins). Use git to verify nothing else changed.
"""
import os, sys, json, subprocess, argparse
DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
NINJA = os.path.join(os.path.dirname(DTK), "bw1-decomp", ".venv", "Scripts", "ninja.exe")
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")

def obj_target(tu):
    return "build/%s/src/Black/%s.o" % (VER, tu)

def unit_name(tu):
    return "runblack-decrypted/Black/%s" % tu

def build_obj(tu):
    r = subprocess.run([NINJA, obj_target(tu)], cwd=DTK, capture_output=True, text=True)
    return r.returncode == 0, (r.stdout + r.stderr)

def diff_json(tu, sym):
    out = os.path.join(DTK, "_iter_diff.json")
    subprocess.run([OBJDIFF, "diff", "-p", ".", "-u", unit_name(tu), "-o", out, "--format", "json", sym],
                   cwd=DTK, capture_output=True, text=True)
    if not os.path.exists(out):
        return None
    d = json.load(open(out))
    os.remove(out)
    return d

def find_sym(d, side, sym):
    for s in d[side]["symbols"]:
        if s["name"] == sym:
            return s
    return None

def score(tu, sym):
    # AUTHORITATIVE = the objdiff REPORT's fuzzy_match_percent (== measures.matched_functions,
    # == tools/bytecount.py). The `diff` command's match_percent DIVERGES (it dings some
    # byte-exact thunks ~0.5%), so it is NOT a valid byte-exact gate. See 09-audit-synthesis.md.
    rep = os.path.join(DTK, "_iter_report.json")
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", rep],
                   cwd=DTK, capture_output=True, text=True)
    if not os.path.exists(rep):
        return None
    d = json.load(open(rep)); os.remove(rep)
    for u in d.get("units", []):
        for fn in u.get("functions", []):
            if fn.get("name") == sym:
                return fn.get("fuzzy_match_percent")
    return None

def show_diff(tu, sym):
    d = diff_json(tu, sym)
    if not d:
        print("no diff json"); return
    for side in ("left", "right"):
        s = find_sym(d, side, sym)
        tag = "TARGET" if side == "left" else "OURS"
        print("== %s  %s  %.2f%%" % (tag, sym, (s.get("match_percent") if s else 0) or 0))
        if not s:
            continue
        for ins in s.get("instructions", []):
            dk = ins.get("diff_kind", "")
            f = ins.get("instruction", {}).get("formatted")
            print("   %-12s | %s" % (dk, f))

def try_edit(tu, sym, old, new):
    path = os.path.join(DTK, "src", "Black", tu + ".cpp")
    src = open(path, encoding="latin-1").read()
    if old not in src:
        print("OLD not found in", path); return 2
    if src.count(old) != 1:
        print("OLD not unique (%d matches)" % src.count(old)); return 2
    before = score(tu, sym)
    open(path, "w", encoding="latin-1", newline="\n").write(src.replace(old, new, 1))
    ok, log = build_obj(tu)
    if not ok:
        open(path, "w", encoding="latin-1", newline="\n").write(src)
        print("COMPILE FAIL -> reverted\n", log[-800:]); return 1
    after = score(tu, sym)
    print("score: %s -> %s" % (before, after))
    if (after or 0) >= 100 or (after or 0) > (before or 0):
        print("KEPT (improved/exact). Symbol now %.2f%%" % (after or 0)); return 0
    open(path, "w", encoding="latin-1", newline="\n").write(src)
    build_obj(tu)
    print("no improvement -> reverted"); return 1

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("mode", choices=["diff", "score", "try"])
    ap.add_argument("tu"); ap.add_argument("sym")
    ap.add_argument("--old"); ap.add_argument("--new")
    a = ap.parse_args()
    if a.mode == "diff":
        show_diff(a.tu, a.sym)
    elif a.mode == "score":
        print(score(a.tu, a.sym))
    else:
        sys.exit(try_edit(a.tu, a.sym, a.old, a.new))

if __name__ == "__main__":
    main()
