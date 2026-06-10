#!/usr/bin/env python3
r"""bytecount.py - THE reliable byte-exact function counter for bw1-dtk.

Establishes the single trustworthy answer to "how many functions are byte-exact
right now", globally and per-TU, by parsing objdiff-cli's `report generate` JSON.

WHY THIS IS RELIABLE (proven 2026-06-09, objdiff-cli 3.7.2):
  * `report generate` does NOT require every base obj built; it runs over all
    12899 units in ~1.2s and silently handles units whose objs are absent.
  * In the report JSON, "byte-exact" == a function whose `fuzzy_match_percent`
    is >= 100.0. Empirically the top-level `measures.matched_functions` field
    EQUALS exactly that count (2952 == #funcs with fuzzy==100), so it is the
    authoritative GLOBAL byte-exact number. (Functions with 0<fuzzy<100 have a
    `fuzzy_match_percent` field but are NOT counted in matched_functions.)
  * Only the 224 real source TUs (units with a `base_path` in objdiff.json,
    metadata.auto_generated == false) contribute; the 12675 auto-generated
    single-symbol units contribute 0 (no base to diff against). So global ==
    sum over real TUs, no double counting.

REPORT JSON SHAPE (report generate -o rep.json):
  {
    "measures": {                      # GLOBAL totals
        "matched_functions": 2952,     # <-- GLOBAL byte-exact count (== fuzzy>=100)
        "total_functions": 25981,      # includes auto-unit duplicates
        "matched_code": "102061", "total_code": "4716506",
        "complete_units": 10, "total_units": 12899, ...
    },
    "categories": [                    # per progress_category (e.g. "game")
        {"id":"game","name":"Game Code","measures":{"matched_functions":2952,
         "total_functions":10404, ...}}],
    "units": [
        {"name":"runblack-decrypted/Black/Abode",
         "measures":{"matched_functions":443,"total_functions":608, ...},
         "metadata":{"source_path":"src/Black/Abode.cpp","auto_generated":false,
                     "complete":false,"progress_categories":["game"]},
         "functions":[{"name":"?ToBeDeleted@Base@@UAEXH@Z","size":"8",
                       "fuzzy_match_percent":100.0,            # absent if unmatched
                       "address":"464","metadata":{"demangled_name":"..."}}, ...]}]}

DIFF JSON SHAPE (diff -u <unit> -o f.json), for completeness - NOT used for
counting (it lists CRT/folded symbols too, undercounts match):
  {"left":{"symbols":[{"name","demangled_name","size","flags","kind":
   "SYMBOL_FUNCTION","match_percent":100.0(if matched),"instructions":[...]}],
   "sections":[...]}, "right":{...}}  # left=our target build, right=orig base

USAGE:
  # 1. (Re)build the report - the one command that gives the global number:
  build/tools/objdiff-cli.exe report generate -p . -o rep.json
  # 2. Read counts:
  python3 tools/bytecount.py                 # global + every game TU
  python3 tools/bytecount.py Abode           # single TU (substring match)
  python3 tools/bytecount.py --global        # just the global number
  python3 tools/bytecount.py -r myrep.json   # use a different report file
  python3 tools/bytecount.py --gen           # run report generate first, then count
"""
import json, os, sys, subprocess, argparse

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")


def gen_report(rep):
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", rep],
                   cwd=DTK, check=True)


def load(rep):
    with open(rep) as f:
        return json.load(f)


def unit_exact(u):
    """byte-exact, total for one unit (recomputed from functions = ground truth)."""
    fns = u.get("functions", [])
    exact = sum(1 for x in fns if x.get("fuzzy_match_percent", 0) >= 100.0)
    return exact, len(fns)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("tu", nargs="?", help="TU name substring (e.g. Abode)")
    ap.add_argument("-r", "--report", default=os.path.join(DTK, "rep.json"))
    ap.add_argument("--gen", action="store_true", help="run report generate first")
    ap.add_argument("--global", dest="g", action="store_true", help="print only global count")
    args = ap.parse_args()

    if args.gen or not os.path.exists(args.report):
        gen_report(args.report)
    d = load(args.report)

    g = d["measures"]["matched_functions"]   # authoritative global byte-exact
    gtot = d["measures"]["total_functions"]

    if args.g:
        print(g)
        return

    if args.tu:
        hits = [u for u in d["units"]
                if args.tu.lower() in u["name"].lower()
                and not u.get("metadata", {}).get("auto_generated")]
        if not hits:
            print("No real (non-auto) TU matching %r" % args.tu)
            sys.exit(1)
        for u in hits:
            e, t = unit_exact(u)
            print("%-45s  byte-exact: %d / %d functions" % (u["name"], e, t))
        return

    # default: global + all real game TUs, sorted by exact count
    real = [u for u in d["units"] if not u.get("metadata", {}).get("auto_generated")]
    print("GLOBAL byte-exact: %d / %d functions  (real TUs: %d)"
          % (g, gtot, len(real)))
    print("-" * 70)
    rows = sorted(((unit_exact(u), u["name"]) for u in real),
                  key=lambda r: -r[0][0])
    for (e, t), name in rows:
        print("%-45s  %d / %d" % (name, e, t))


if __name__ == "__main__":
    main()
