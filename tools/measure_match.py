#!/usr/bin/env python3
r"""measure_match.py - reliably count byte-exact functions across OUR ported TUs.

WHY: dtk's objdiff report names units inconsistently (e.g. `runblack-decrypted/auto_..`, and our TUs
without a `.cpp` suffix). An ad-hoc regex like `/Black/(Bank_|Abode\.|...)` matched `Bank_*` but DROPPED
the class TUs (their name has no literal `.`), silently undercounting by ~380 and creating phantom
"losses". This tool matches report units to our `src/Black/*.cpp` by BASENAME (suffix-agnostic) -- the
only reliable key. Always measure with this.

Usage:
  build/tools/objdiff-cli.exe report generate -p . -o rep.json
  python3 tools/measure_match.py [rep.json]
"""
import json, os, glob, sys

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
PATTERNS = ("Bank_*", "Tile_*", "Abode", "Villager_*", "GGame_*", "SpellIcon_*", "GameThingWithPos_*", "AsmBank_*")

def our_tus():
    s = set()
    for p in PATTERNS:
        for f in glob.glob(os.path.join(DTK, "src", "Black", p + ".cpp")):
            s.add(os.path.basename(f)[:-4])
    return s

def measure(rep="rep.json"):
    ours = our_tus()
    d = json.load(open(rep)); full = tot = mt = 0
    for u in d.get("units", []):
        b = os.path.basename(u.get("name") or "")
        if b.endswith(".cpp"):
            b = b[:-4]
        if b in ours:
            mt += 1
            for x in u.get("functions", []):
                tot += 1
                if (x.get("fuzzy_match_percent") or 0) >= 100:
                    full += 1
    return full, tot, mt, len(ours)

if __name__ == "__main__":
    if len(sys.argv) > 1 and sys.argv[1] in ("-h","--help"):
        sys.exit("usage: measure_match.py [report.json] -- counts byte-exact game TUs; prefer bytecount.py for global/any-TU counts")
    rep = sys.argv[1] if len(sys.argv) > 1 else "rep.json"
    f, t, mt, n = measure(rep)
    print("byte-exact: %d / %d functions  |  TUs matched: %d / %d" % (f, t, mt, n))
