#!/usr/bin/env python3
"""tile_drafts.py - mine the UNASSIGNED asm-tier drafts into NEW TUs, robustly (the bulk-draft gate).

The earlier ad-hoc batches died on the dtk split-tiling wall (new-TU ranges overlapping/misaligning).
Fix: tile by FUNCTION BOUNDARIES (symbols.txt), not by reassemble files. Group CONSECUTIVE unbanked-draft
functions into capped runs; each TU's range is [run_start .. next_function_start], which is provably
boundary-aligned and non-overlapping (the runs are disjoint stretches of the sorted symbol list, and they
live only in space no existing TU claims). Then build, DROP any TU that won't compile (remove it from
splits.txt + configure.py so `dtk split`/`objdiff report` stay valid), and measure.

Usage: python3 tools/tile_drafts.py            # measure the yield (clutter left in surviving TUs)
       python3 tools/tile_drafts.py --prune     # also prune each TU to byte-exact drafts only
"""
import json, re, os, sys, glob, subprocess, bisect
DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
NINJA = os.path.join(os.path.dirname(DTK), "bw1-decomp", ".venv", "Scripts", "ninja.exe")
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")
sys.path.insert(0, os.path.join(DTK, "tools"))
import port_banks as pb, measure_match
SP = os.path.join(DTK, "config", VERSION, "splits.txt"); CF = os.path.join(DTK, "configure.py")
CAP = 24   # max functions per new TU: granular drop-failures, limits compile-poison blast radius

def _eranges():
    out = []
    for line in open(SP, encoding="latin-1"):
        m = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if m: out.append((int(m.group(1), 16), int(m.group(2), 16)))
    return out

def _name2a():
    d = {}
    for line in open(os.path.join(DTK, "config", VERSION, "symbols.txt"), encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)", line)
        if m: d[m.group(1)] = int(m.group(2), 16)
    return d

def _targets():
    t = []
    for p in ("Bank_*", "Tile_*", "Abode", "Villager_*", "GGame_*", "SpellIcon_*", "GameThingWithPos_*", "AsmBank_*"):
        for f in glob.glob(os.path.join(DTK, "src", "Black", p + ".cpp")):
            t.append("build/%s/src/Black/%s.o" % (VERSION, os.path.basename(f)[:-4]))
    return t

def _ninja_batched(targets):
    for i in range(0, len(targets), 120):
        subprocess.run([NINJA, "-k", "0"] + targets[i:i + 120], cwd=DTK, capture_output=True)

def _build():
    # split the original binary into target objs first (report dies if config.json is stale)
    subprocess.run([NINJA, "build/%s/config.json" % VERSION], cwd=DTK, capture_output=True)
    for o in glob.glob(os.path.join(DTK, "build", VERSION, "src", "Black", "*.o")): os.remove(o)
    subprocess.run([NINJA, "-k", "0"] + _targets(), cwd=DTK, capture_output=True)
    # CRITICAL: also compile every OTHER base obj objdiff will read (Gen_*, crt_merge_*, strcspn, ...).
    # The old _build only made the pattern TUs, so any other configured TU's base obj went missing and
    # `report generate` aborted ("a configured TU still lacks an object"). Rebuild them all.
    o = json.load(open(os.path.join(DTK, "objdiff.json")))
    want = []
    for u in o.get("units", []):
        bp = u.get("base_path")
        if bp and not os.path.exists(os.path.join(DTK, bp)):
            want.append(bp.replace("\\", "/"))
    if want:
        _ninja_batched(sorted(set(want)))

def _heal_missing():
    """Drop any TU whose base obj is still missing (compile-failed), so the report can't die. Only our
    Tile_*/Gen_* TUs are eligible to drop -- never CRT/game (those are rebuilt by _build, not dropped)."""
    o = json.load(open(os.path.join(DTK, "objdiff.json")))
    bad = []
    for u in o.get("units", []):
        bp = u.get("base_path"); nm = os.path.basename(u.get("name") or "")
        b = nm[:-4] if nm.endswith(".cpp") else nm
        if bp and not os.path.exists(os.path.join(DTK, bp)) and (b.startswith("Tile_") or b.startswith("Gen_")):
            bad.append(b)
    if bad:
        print("heal: dropping %d TUs with missing base obj" % len(bad))
        _remove_tus(bad); _build()
    return bad

def _o(name): return os.path.exists(os.path.join(DTK, "build", VERSION, "src", "Black", name + ".o"))

def _remove_tus(names):
    names = set(names)
    L = open(SP, encoding="latin-1").read().split("\n"); out = []; i = 0
    while i < len(L):
        m = re.match(r"Black/(\w+)\.cpp:", L[i])
        if m and m.group(1) in names:
            i += 2; continue                                  # skip the 2-line splits block
        out.append(L[i]); i += 1
    open(SP, "w", encoding="latin-1").write("\n".join(out))
    cl = open(CF, encoding="latin-1").read().split("\n")
    open(CF, "w", encoding="latin-1").write("\n".join(
        l for l in cl if not any('"Black/%s.cpp"' % n in l for n in names)))
    for n in names:
        p = os.path.join(DTK, "src", "Black", n + ".cpp")
        if os.path.exists(p): os.remove(p)

def _matching(want):
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", "rep.json"], cwd=DTK, capture_output=True)
    p = os.path.join(DTK, "rep.json")
    if not os.path.exists(p): return None
    d = json.load(open(p)); n2a = _name2a(); hit = set()
    for u in d.get("units", []):
        for f in u.get("functions", []):
            nm = f.get("name", "") or ""
            if nm in n2a and n2a[nm] in want and (f.get("fuzzy_match_percent") or 0) >= 100: hit.add(n2a[nm])
    return hit

def main():
    prune = "--prune" in sys.argv[1:]
    starts = sorted(set(pb._symbols().values()))
    E = _eranges(); inE = lambda a: any(lo <= a < hi for lo, hi in E)
    allu = pb.all_units(); banked = set(pb.banked_units())
    drafts = set(a for a in allu if a not in banked and not inE(a))
    def nxt(a):
        i = bisect.bisect_right(starts, a); return starts[i] if i < len(starts) else a + 16
    runs = []; cur = []
    for s in starts:
        if s in drafts:
            cur.append(s)
            if len(cur) >= CAP: runs.append(cur); cur = []
        elif cur:
            runs.append(cur); cur = []
    if cur: runs.append(cur)
    addr_file = {a: allu[a] for a in drafts}
    sp_add = []; cf_add = []; names = []
    for run in runs:
        lo, hi = run[0], nxt(run[-1]); name = "Tile_%06x" % lo
        funcs, inc, dec = pb.gather_range(lo, hi, addr_file)
        if not funcs: continue
        pb.write_tu(name + ".cpp", funcs, inc, dec)
        sp_add.append("\nBlack/%s.cpp:\n\t.text       start:0x%08X end:0x%08X\n" % (name, lo, hi))
        cf_add.append('            Object(NonMatching, "Black/%s.cpp"),\n' % name)
        names.append(name)
    open(SP, "a", encoding="latin-1").write("".join(sp_add))
    t = open(CF, encoding="latin-1").read(); anchor = '            Object(NonMatching, "Black/Abode.cpp"),\n'
    open(CF, "w", encoding="latin-1").write(t.replace(anchor, anchor + "".join(cf_add), 1))
    print("tiled %d new TUs from %d unassigned drafts" % (len(names), len(drafts)))
    _build()
    failed = [n for n in names if not _o(n)]
    print("compile-failed TUs dropped:", len(failed))
    if failed:
        _remove_tus(failed); names = [n for n in names if n not in set(failed)]; _build()
    _heal_missing()  # never let the report die on a missing base obj
    hit = _matching(drafts)
    if hit is None:
        print("ERROR: report failed (a configured TU still lacks an object)"); return
    if prune:
        keep = {a: allu[a] for a in hit}
        newset = set(names)  # SAFETY: only prune TUs THIS run created; never touch pre-committed Tile_ TUs
        rng = {}; cur = None
        for line in open(SP, encoding="latin-1"):
            m = re.match(r"Black/(Tile_\w+)\.cpp:", line)
            if m: cur = m.group(1)
            m2 = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
            if m2 and cur:
                if cur in newset: rng[cur] = (int(m2.group(1), 16), int(m2.group(2), 16))
                cur = None
        empty = []
        for name, (lo, hi) in rng.items():
            funcs, inc, dec = pb.gather_range(lo, hi, keep)
            if funcs: pb.write_tu(name + ".cpp", funcs, inc, dec)
            else: empty.append(name)
        if empty: _remove_tus(empty)
        _build(); _heal_missing(); _matching(drafts)
    rep = os.path.join(DTK, "rep.json")
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", "rep.json"], cwd=DTK, capture_output=True)
    f, tt, mt, n = measure_match.measure(rep)
    print("byte-exact: %d / %d (TUs %d) | new matching drafts: %d" % (f, tt, mt, len(hit)))
    if os.path.exists(rep): os.remove(rep)

if __name__ == "__main__":
    main()
