#!/usr/bin/env python3
r"""auto_harvest.py - batch-lift the TRIVIAL + NAME-CLEAN undecompiled methods in a TU, with a
verify-keep-revert loop, so the easy wins can be banked many-per-build on the way to a coverage target.

A target qualifies when lift_scan classifies its body as CONST / EMPTY(void) / GETTER AND mangle_check
says the header decl mangles to its symbol (name-clean). For each, the obvious def is generated:
  CONST   -> return (<ret>)<value>;
  EMPTY   -> {}              (void only)
  GETTER  -> return *(<ret>*)((char*)this + <off>);
All defs are appended (each behind a `// AUTOHARVEST <sym>` marker), the TU .o is built, and ONLY the
byte-exact ones are kept -- compile failures and < 100% scores are removed and the TU rebuilt. This bakes
the lessons learned by hand: home-TU only (lift_scan scans one TU), name-clean only (mangle_check gate),
and the build is the final arbiter (so an over-optimistic pattern simply gets reverted, never committed).

Usage:
  python tools/auto_harvest.py <TU>            # dry-run: list what it would lift
  python tools/auto_harvest.py <TU> --apply    # lift, build, keep only byte-exact
  python tools/auto_harvest.py --self-test
"""
import os, re, sys, json, subprocess
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import lift_scan, mangle_check as mc

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
REP = os.path.join(DTK, "rep.json")
NINJA = os.environ.get("NINJA", "ninja")
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")

def _src(tu):
    return os.path.join(DTK, "src", "Black", tu + ".cpp")
def _obj(tu):
    return os.path.join(DTK, "build", VER, "src", "Black", tu + ".o")

def full_class(sym):
    """`?Method@Inner@Outer@@..` -> `Outer::Inner` (handles nested classes; the win1.41-comment class in
    mangle_check.DECLS is only the innermost, so use the symbol's full scope for the C++ definition)."""
    m = re.match(r'\?[A-Za-z_]\w*@((?:[A-Za-z_]\w*@)+)@', sym)
    if not m:
        return None
    return "::".join(reversed(m.group(1).rstrip('@').split('@')))

def gen_def(cls, method, ret, params, kind, detail):
    ret = ret.strip()
    sig = "%s %s::%s(%s)" % (ret, cls, method, params)
    if kind == "CONST":
        val = ("0x%x" % detail) if detail else "0"
        return "%s\n{\n    return (%s)%s;\n}" % (sig, ret, val)
    if kind == "EMPTY":
        return "%s\n{\n}" % sig if ret == "void" else None
    if kind == "GETTER":
        acc = ("*(%s*)this" % ret) if detail == 0 else ("*(%s*)((char*)this + 0x%x)" % (ret, detail))
        return "%s\n{\n    return %s;\n}" % (sig, acc)
    return None

def gather(tu):
    mc._load_decls(); syma = mc.addr_of_syms(); sz = lift_scan.sym_addrs()
    rep = json.load(open(REP))
    out = []
    for u in rep.get("units", []):
        if not u.get("name", "").endswith("/" + tu):
            continue
        for f in u.get("functions", []):
            s = f.get("name", "")
            if f.get("fuzzy_match_percent", 0) >= 5 or not s.startswith("?"):
                continue
            a = syma.get(s)
            if a is None or a not in mc.DECLS:
                continue
            cls, ret, params = mc.DECLS[a]
            v, _ = mc.compare(s, ret, params, cls)
            if v != "MATCH" or s not in sz:
                continue
            kind, detail = lift_scan.classify(lift_scan.disasm(*sz[s]))
            m = re.match(r'\?([A-Za-z_]\w*)@', s)
            if not m:
                continue
            d = gen_def(full_class(s) or cls, m.group(1), ret, params, kind, detail)
            if d:
                out.append((s, kind, d))
        break
    return out

def _build(tu):
    r = subprocess.run([NINJA, os.path.relpath(_obj(tu), DTK).replace("\\", "/")],
                       cwd=DTK, capture_output=True, text=True)
    return r.returncode == 0, (r.stdout + r.stderr)

def _scores(tu):
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", "rep.json"], cwd=DTK, capture_output=True)
    rep = json.load(open(REP)); sc = {}
    for u in rep.get("units", []):
        if u.get("name", "").endswith("/" + tu):
            for f in u.get("functions", []):
                sc[f.get("name", "")] = f.get("fuzzy_match_percent", 0)
    return sc, rep.get("measures", {}).get("matched_functions")

def _write_block(tu, defs):
    """rewrite the AUTOHARVEST block at the end of the .cpp with exactly `defs` (list of (sym, code))."""
    t = open(_src(tu), encoding="latin-1").read()
    t = re.sub(r'\n*// ==== AUTOHARVEST ====.*$', '', t, flags=re.S).rstrip() + "\n"
    if defs:
        t += "\n// ==== AUTOHARVEST ====\n"
        for sym, code in defs:
            t += "// AUTOHARVEST %s\n%s\n\n" % (sym, code)
    open(_src(tu), encoding="latin-1", mode="w", newline="\n").write(t)

def _build_keeping(tu, defs):
    """Return the subset of `defs` that COMPILE together, isolating offenders by bisection (so one bad def
    no longer reverts the whole TU)."""
    if not defs:
        return []
    _write_block(tu, defs)
    if _build(tu)[0]:
        return defs
    if len(defs) == 1:
        return []                                  # this single def doesn't compile
    mid = len(defs) // 2
    left = _build_keeping(tu, defs[:mid])
    right = _build_keeping(tu, defs[mid:])
    both = left + right
    _write_block(tu, both)
    if _build(tu)[0]:
        return both
    return left if len(left) >= len(right) else right   # rare cross-conflict: keep the larger half

def harvest(tu, apply=False):
    cands = gather(tu)
    print("%s: %d trivial+clean candidates" % (tu, len(cands)))
    for s, k, _ in cands:
        print("   %-7s %s" % (k, s[:60]))
    if not apply or not cands:
        return
    defs = [(s, code) for s, k, code in cands]
    n0 = len(defs)
    defs = _build_keeping(tu, defs)        # bisection: keep the largest subset that compiles together
    if len(defs) < n0:
        print("dropped %d on compile error (kept %d that compile)" % (n0 - len(defs), len(defs)))
    # score, keep only byte-exact
    sc, _ = _scores(tu)
    keep = [(s, c) for s, c in defs if sc.get(s, 0) >= 100]
    drop = [s for s, c in defs if sc.get(s, 0) < 100]
    _write_block(tu, keep)
    ok, _ = _build(tu)
    _, g = _scores(tu)
    print("KEPT %d byte-exact, dropped %d (<100%%). global now %s" % (len(keep), len(drop), g))
    for s, _c in keep:
        print("   OK  %s" % s[:60])

def self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(gen_def("C", "M", "uint32_t", "", "CONST", 15) == "uint32_t C::M()\n{\n    return (uint32_t)0xf;\n}", "CONST gen")
    chk(gen_def("C", "M", "void", "int p", "EMPTY", "0x4") == "void C::M(int p)\n{\n}", "EMPTY void gen")
    chk(gen_def("C", "M", "bool32_t", "", "EMPTY", "0") is None, "EMPTY non-void -> skip")
    chk("(char*)this + 0x78" in gen_def("C", "M", "GPlayer*", "", "GETTER", 0x78), "GETTER gen")
    chk(gen_def("C", "M", "int", "", "CONST", 0) == "int C::M()\n{\n    return (int)0;\n}", "CONST 0")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(self_test())
    if not a:
        print(__doc__); sys.exit()
    harvest(a[0], apply="--apply" in a)
