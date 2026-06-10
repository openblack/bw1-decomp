#!/usr/bin/env python3
"""verify_defs.py - the forward-decomp VERIFY HARNESS (KISS/DRY for add->compile->objdiff->measure).

Given written C definitions {addr: {"def": <C>, "inc": <header.h>}}, this:
  1. injects each definition into its committed TU (the TU whose splits.txt range owns the address),
     prepending the needed #include(s);
  2. clean-builds the ported TUs;
  3. REVERTS (git checkout) any TU that fails to compile -> verified banks are NEVER lost;
  4. objdiff + measure -> reports which definitions are byte-exact and the new total;
  5. with --keep, prunes each TU to banked + ONLY the byte-exact definitions and leaves it ready to commit.

This replaces the ~dozen hand-rolled add/compile/measure runs done this session (whose ad-hoc measurement
regex hid a 380-function counting bug -- see docs/port-banks/03). Always verify additions through this.

Usage:
  python3 tools/verify_defs.py defs.json            # measure only (reverts everything after)
  python3 tools/verify_defs.py defs.json --keep      # keep the byte-exact ones injected (ready to commit)
"""
import json, re, os, sys, glob, subprocess

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
NINJA = os.path.join(os.path.dirname(DTK), "bw1-decomp", ".venv", "Scripts", "ninja.exe")
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")
sys.path.insert(0, os.path.join(DTK, "tools"))
import measure_match

def _ranges():
    out = {}; cur = None
    for line in open(os.path.join(DTK, "config", VERSION, "splits.txt"), encoding="latin-1"):
        m = re.match(r"Black/([\w]+)\.cpp:", line)
        if m: cur = m.group(1)
        m2 = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if m2 and cur: out[cur] = (int(m2.group(1), 16), int(m2.group(2), 16)); cur = None
    return out

def _sym():
    s = {}
    for line in open(os.path.join(DTK, "config", VERSION, "symbols.txt"), encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)", line)
        if m: s[m.group(1)] = int(m.group(2), 16)
    return s

def _targets():
    pats = ("Bank_*", "Abode", "Villager_*", "GGame_*", "SpellIcon_*", "GameThingWithPos_*", "AsmBank_*")
    t = []
    for p in pats:
        for f in glob.glob(os.path.join(DTK, "src", "Black", p + ".cpp")):
            t.append("build/%s/src/Black/%s.o" % (VERSION, os.path.basename(f)[:-4]))
    return t

def _git(*a): subprocess.run(["git", "-C", DTK] + list(a), capture_output=True)
def _all_base_objs():
    """Every base obj objdiff.json references -- the report DIES if any is missing, so a build that only
    rebuilds OUR pattern TUs (after rm-ing all objs) leaves committed Gen_*/Tile_* base objs absent and the
    report aborts. Rebuild the complete set (KISS: this is what gen_targeted.build does)."""
    o = json.load(open(os.path.join(DTK, "objdiff.json")))
    s = set(_targets())
    for u in o.get("units", []):
        bp = u.get("base_path")
        if bp:
            s.add(bp.replace("\\", "/"))
    return sorted(s)
def _build():
    for o in glob.glob(os.path.join(DTK, "build", VERSION, "src", "Black", "*.o")): os.remove(o)
    # split the binary first (target objs) so a freshly-tiled config has its obj/ side too
    subprocess.run([NINJA, "build/%s/config.json" % VERSION], cwd=DTK, capture_output=True)
    want = _all_base_objs()
    for i in range(0, len(want), 120):
        subprocess.run([NINJA, "-k", "0"] + want[i:i + 120], cwd=DTK, capture_output=True)
def _report():
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", "rep.json"], cwd=DTK, capture_output=True)

def inject(defs, only=None):
    """Append each def (in `only`, or all) to its TU's committed .cpp, prepending its #include."""
    rng = _ranges(); bytu = {}
    for a, rec in defs.items():
        if only is not None and a not in only: continue
        ai = int(a, 16)
        tu = next((n for n, (lo, hi) in rng.items() if lo <= ai < hi), None)
        if tu: bytu.setdefault(tu, []).append(rec)
    _git("checkout", "HEAD", "--", "src/Black/")
    for tu, recs in bytu.items():
        p = os.path.join(DTK, "src", "Black", tu + ".cpp"); txt = open(p, encoding="latin-1").read()
        recs = [r for r in recs if r["def"].split("\n", 1)[0] not in txt]   # idempotent: skip already-present
        if not recs:
            continue
        incs = "".join('#include "%s"\n' % r["inc"] for r in recs if r.get("inc") and ('#include "%s"' % r["inc"]) not in txt)
        body = "\n\n".join(r["def"] for r in recs)
        open(p, "w", encoding="latin-1").write(incs + txt + "\n\n" + body + "\n")
    return bytu

def matching(defs):
    """Return the set of addrs whose definition is byte-exact in the current build's report."""
    _report(); sym = _sym()
    d = json.load(open(os.path.join(DTK, "rep.json"))); want = {int(a, 16) for a in defs}
    hit = set()
    for u in d.get("units", []):
        for f in u.get("functions", []):
            n = f.get("name", "") or ""
            if n in sym and sym[n] in want and (f.get("fuzzy_match_percent") or 0) >= 100: hit.add(sym[n])
    return hit

def main():
    args = sys.argv[1:]; keep = "--keep" in args
    path = next((a for a in args if not a.startswith("--")), None)
    if path is None:
        sys.exit("usage: %s <file.cpp> [--opts]" % __file__)
    defs = json.load(open(path))
    bytu = inject(defs); _build()
    # revert any TU that failed to compile (banks preserved)
    failed = [tu for tu in bytu if not os.path.exists(os.path.join(DTK, "build", VERSION, "src", "Black", tu + ".o"))]
    for tu in failed: _git("checkout", "HEAD", "--", "src/Black/%s.cpp" % tu)
    if failed: _build()
    hit = matching(defs)
    f, t, mt, n = measure_match.measure(os.path.join(DTK, "rep.json"))
    print("definitions: %d | byte-exact: %d | compile-failed TUs reverted: %d" % (len(defs), len(hit), len(failed)))
    print("TOTAL byte-exact: %d / %d  (TUs %d)" % (f, t, mt))
    if keep:
        inject(defs, only={("0x%08x" % a) for a in hit}); _build()
        print("kept %d byte-exact definitions injected (ready to commit)" % len(hit))
    else:
        _git("checkout", "HEAD", "--", "src/Black/")
    for cleanup in ("rep.json",):
        p = os.path.join(DTK, cleanup)
        if os.path.exists(p): os.remove(p)

if __name__ == "__main__":
    main()
