#!/usr/bin/env python3
"""lift_targets.py - rank MULTI_BLOCK lift candidates for the lift phase (the step-3 picker).

The 55% frontier is ~11.7k MULTI_BLOCK functions; lifting them in a vacuum is slow. The best targets sit in
WELL-MAPPED classes (structmap resolves `[reg+0xN]` -> a named field, so the asm is READABLE) and are SMALL
(fewer instructions to match). And lifting a class's methods together compounds: the struct map + the shared
context pay off across the whole cluster. So rank by:  struct-field-coverage(class) x cluster-size x smallness.

This is a PICKER over the static census (klass/class/size are reliable; the census `banked` flag is the OLD
staging ratchet, so "candidate" here = census-unbanked MULTI_BLOCK with a Method@Class -- confirm the live
byte-exact status against a fresh `objdiff-cli report` before lifting). Leaf-ness / fan-in (find_xrefs) is a
future v2 signal; v1 ranks on readability + clustering, which is what makes the asm tractable to read.

Usage:
  python3 tools/lift_targets.py [--top N] [--class C] [--maxsize 0xNN]
"""
import json, os, sys
DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(DTK, "tools"))
from structmap import StructMap
from collections import defaultdict

def _size(f):
    s = f.get("size")
    return int(s, 16) if isinstance(s, str) else (s or 0)

def rank(top=25, only=None, maxsize=0x80):
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    sm = StructMap()
    by_class = defaultdict(list)
    for f in census:
        if f.get("klass") != "MULTI_BLOCK" or f.get("banked"):
            continue
        mc = f.get("mc") or ""
        if "@" not in mc:
            continue
        cls = mc.split("@")[1]
        by_class[cls].append(f)
    rows = []
    for cls, fns in by_class.items():
        cov = len(sm.structs.get(cls, []))      # structmap field coverage = readability of this class's asm
        small = [f for f in fns if _size(f) <= maxsize]
        # score: readable classes first, then big clusters, then how many are small/easy
        score = cov * 1000 + len(fns) * 2 + len(small) * 5
        rows.append((score, cls, cov, len(fns), small))
    rows.sort(reverse=True)
    if only:
        rows = [r for r in rows if r[1] == only]
    out = []
    for score, cls, cov, n, small in rows[:top]:
        smkeys = sorted(small, key=_size)[:6]
        out.append({"class": cls, "struct_fields": cov, "unbanked_mb": n, "small": len(small),
                    "score": score, "leaf_candidates": [(f["addr"], _size(f), f["mc"]) for f in smkeys]})
    return out

if __name__ == "__main__":
    a = sys.argv[1:]
    top = int(a[a.index("--top") + 1]) if "--top" in a else 25
    only = a[a.index("--class") + 1] if "--class" in a else None
    ms = a[a.index("--maxsize") + 1] if "--maxsize" in a else "0x80"
    maxsize = int(ms, 16)
    res = rank(top, only, maxsize)
    print("rank  class                 struct_fields  unbanked_MB  small(<=0x%x)" % maxsize)
    for r in res:
        print("  %-22s %5d        %5d        %4d" % (r["class"], r["struct_fields"], r["unbanked_mb"], r["small"]))
    if only or top <= 6:
        print("\nleaf candidates (addr size mc):")
        for r in res:
            for addr, sz, mc in r["leaf_candidates"]:
                print("  %s  0x%-4x  %s" % (addr, sz, mc))
    json.dump(res, open(os.path.join(DTK, "lift_targets.json"), "w"), indent=1)
