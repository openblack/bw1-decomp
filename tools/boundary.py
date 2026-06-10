#!/usr/bin/env python3
"""boundary.py - find boundary-artifact near-misses: correct C scored <100% because the TARGET symbol
is over-sized (the reassembly missed a label, so a symbol absorbs the *next* function's code past a
clean `ret`). These are "free" wins -- fixing the asm label (split) ends the symbol at the ret.

Two independent detectors:

1. Static scan (no build needed) -- `candidates()` / `scan_asm()`:
   Scans the reassembled `.asm` for a labeled symbol whose body contains a `ret` followed (after
   inter-function padding such as `nop`/`int3`) by MORE real code -- typically the next function's
   prologue -- before the next label, i.e. an unlabeled function glued onto the end. Cross-references
   the objdiff report so we only flag actual near-misses (verified/whole functions are skipped). Cheap
   but can false-fire on intra-function layout that merely looks like a boundary.

2. Diff-based scan (needs an objdiff report) -- `diff_scan()`:
   Uses the objdiff row alignment to confirm that our base is a clean `ret`-terminated PREFIX of the
   over-sized target and the target then continues into another function. More reliable than the
   static scan because it does not guess at function boundaries from raw asm.

The recommended fix for any hit is the same: add the missing label in the `.asm` so the symbol ends at
its `ret` (an "asm split"); the formerly over-sized function then verifies at 100%.

Usage:
  python tools/boundary.py [MINPCT]              # static-scan candidates (default: near-misses >0% & <100%)
  python tools/boundary.py --diff-scan [MINPCT] [LIMIT]   # diff-based candidates (default MINPCT=40)
  python tools/boundary.py --self-test
"""
import os, re, sys, glob
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# A whole-line asm label, e.g. `?Foo@Bar@@QAEXXZ:` (MSVC-mangled), `@Func@4:` (decorated), or a local
# `LAB__123:`. Group 1 captures the bare name (without the trailing ':'). Shape: an identifier start
# char [A-Za-z_?] then any run of [word / ? / @ / $] chars, then a ':' that is the whole rest of line.
_LABEL = re.compile(r"^([A-Za-z_?][\w?@$]*):$")
# Inter-function padding mnemonics the linker inserts between functions; seeing one after a `ret` (and
# then real code before the next label) is the tell-tale of an unlabeled function glued onto the end.
_PAD = ("nop", "int3")

def _parse_minpct(tok, default=0.0):
    """Parse an optional positional MINPCT/threshold CLI token into a float.

    Returns `default` when `tok` is None or is not a well-formed number (e.g. a flag, '', or a malformed
    '1.2.3'/'.'). This avoids the crash that a naive `float(tok)` would raise on garbage args -- the old
    `tok.replace('.','').isdigit()` guard wrongly accepted '1.2.3' and then blew up inside float()."""
    if tok is None:
        return default
    try:
        return float(tok)
    except (TypeError, ValueError):
        return default

def _instr(line):
    """Return the executable instruction text of an asm line, or None.

    Strips any trailing `// ...` comment (the .asm dumps carry `// 0xADDR <hexbytes>` annotations) and
    surrounding whitespace; returns None for blank lines and pure label lines (text ending in ':')."""
    code = line.split("//", 1)[0].strip()
    return code if code and not code.endswith(":") else None

def scan_asm(path):
    """yield (symbol, lineno_of_ret) for a symbol whose body has `ret` then PADDING then more code
    before the next label -- i.e. an unlabeled function glued on past a clean function boundary.
    (Any label, incl. a local `LAB__`, resets tracking, so mid-function jump targets don't false-fire;
    the padding gap is what distinguishes a function boundary from in-line code.)"""
    # latin-1: the .asm dumps are byte-ish (lossless single-byte round-trip; never raises on odd bytes).
    with open(path, encoding="latin-1") as fh:
        L = fh.read().split("\n")
    cur = None; seen_ret = False; seen_pad = False
    for i, line in enumerate(L):
        s = line.strip()
        m = _LABEL.match(s)
        if m:
            # Only TRACK real (mangled '?...' or decorated '@...') symbols; a local label such as
            # `LAB__123:` is a mid-function jump target, so we reset to cur=None there. That makes a
            # local label end the current symbol's tracking without itself being reportable -- which is
            # exactly what prevents an intra-function jump target from looking like a function boundary.
            cur = m.group(1) if (m.group(1).startswith("?") or "@" in m.group(1)) else None
            seen_ret = seen_pad = False
            continue
        if not cur: continue
        ins = _instr(line)
        if not ins: continue
        # mnemonic = first token, with any size/condition suffix after a '.' stripped (e.g. `ret.n`->`ret`).
        mn = ins.split(None, 1)[0].split(".")[0]
        low = ins.lower()
        if mn == "ret":
            seen_ret = True; seen_pad = False; ret_line = i; continue
        if seen_ret:
            if any(low.startswith(p) for p in _PAD):
                seen_pad = True; continue                              # inter-fn padding gap
            if seen_pad:                                              # real code after ret+pad, no label
                yield (cur, ret_line)
            seen_ret = seen_pad = False

def diff_scan(min_pct=40.0, limit=None):
    """RELIABLE (diff-based) boundary detector: a near-miss is a boundary artifact when our base is a
    clean `ret`-terminated PREFIX of the target and the target then continues into ANOTHER function
    (the reassembly mislabeled two adjacent functions as one). Unlike the static scan, this uses the
    objdiff alignment, so it doesn't false-fire on in-function layout. Reports the function + the
    target's first trailing instruction (the split point to label)."""
    import verify, propose, iterate
    rep = verify.load_report(); H = propose._syms(); out = []; checked = 0
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        try: p, cause, lr, rr = iterate.diff_cause(name)
        except Exception: continue
        if not lr: continue
        checked += 1
        # last row where base has a real instruction
        be = max((i for i, (b, bk) in enumerate(rr) if b and b != "?"), default=-1)
        if be < 1: continue
        base_last = rr[be][0]
        # Decide "base is a clean ret-terminated prefix that the target overruns" from the alignment:
        #   - head_ok: rows 0..be each have a real BASE instruction present (text not empty / not "?").
        #             NOTE: this is a presence check only -- it does NOT prove every head row is a
        #             byte-exact match (an aligned-but-different row, e.g. an arg/reg diff, still passes).
        #             It is intentionally lenient so arg-level diffs in the shared prefix don't hide a
        #             genuine boundary artifact; the strict 100% confirmation happens after the asm split.
        #   - base ends in `ret` (base_last), and
        #   - tail_alone: EVERY row after be is target-only (base text "?"/empty) = a trailing function.
        head_ok = all((rr[i][0] and rr[i][0] != "?") for i in range(be + 1))
        # trailing rows: base INSTRUCTION TEXT must be absent ("?"/empty) while the target has a real
        # instruction (rr[i][0] is the base text, NOT the diff-kind -- that was the bug)
        tail_alone = be + 1 < len(lr) and all((not rr[i][0] or rr[i][0] == "?") and lr[i][0]
                                              for i in range(be + 1, len(lr)))
        if head_ok and tail_alone and base_last.split()[0].split(".")[0] == "ret":
            split_instr = lr[be + 1][0]
            out.append((name, pct, split_instr, be + 1))   # be+1 = base (true function) instruction count
            if limit and len(out) >= limit: break
    return out, checked

def candidates(min_pct=0.0):
    """Static-scan boundary-artifact candidates: symbols flagged by scan_asm() that are ALSO objdiff
    near-misses (`min_pct < pct < 100`).

    Cross-references the cheap raw-asm scan against the objdiff report so we only surface real near-misses
    (a fully-verified or wholly-broken symbol is not a "free win"). Returns a list of
    (symbol, pct, asm_basename, ret_lineno). `min_pct` is an INCLUSIVE lower bound EXCEPT that an exact
    0.0% score (a complete non-match) is never a near-miss and is always excluded -- this matches the
    documented "near-misses (>0% & <100%)" default and fixes the old behavior where min_pct=0.0 let
    complete non-matches leak in."""
    import verify, propose
    rep = verify.load_report(); H = propose._syms()
    nearmiss = {}
    for u, fn, pct, dem in verify.iter_functions(rep):
        # pct > 0.0 keeps out complete non-matches (0%): a boundary artifact is, by definition, a
        # function that ALMOST matched -- the over-sized symbol shares a correct prefix with the target.
        if pct is not None and (min_pct <= pct < 100.0) and pct > 0.0: nearmiss[fn] = pct
    out = []
    for asm in glob.glob(os.path.join(ROOT, "src/asm/unprocessed", "*.asm")):
        for sym, ln in scan_asm(asm):
            if sym in nearmiss:
                out.append((sym, nearmiss[sym], os.path.basename(asm), ln))
    return out

def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    import tempfile
    asm = "?A@@QAEXXZ:\n  mov al, 1   // 0x1 b001\n  ret   // 0x3 c3\n  nop  // 0x4 90\n  push ebp  // 0x5 55\n?B@@QAEXXZ:\n  ret  // 0x6 c3\n"
    f = tempfile.NamedTemporaryFile("w", suffix=".asm", delete=False); f.write(asm); f.close()
    hits = list(scan_asm(f.name))
    chk(hits == [("?A@@QAEXXZ", 2)], "detects ret+pad+prologue glued fn  got=%r" % hits)
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--diff-scan" in a:
        # Positional args AFTER --diff-scan: [MINPCT] [LIMIT]. Both are sniffed defensively so a missing
        # or malformed value falls back to the default instead of crashing (e.g. '1.2.3', '.', a flag).
        i = a.index("--diff-scan")
        nxt = a[i + 1] if i + 1 < len(a) else None
        mp = _parse_minpct(nxt, 40.0)
        lim_tok = a[i + 2] if i + 2 < len(a) else None
        lim = int(lim_tok) if (lim_tok and lim_tok.isdigit()) else None   # isdigit() = digits only, no sign/dot
        cands, checked = diff_scan(mp, lim)
        print("DIFF-BASED boundary artifacts (base = clean ret-terminated prefix; target continues into another fn):")
        for name, pct, split, bc in sorted(cands, key=lambda x: -x[1]):
            print("  %5.1f%%  %-40s  trailing fn starts: %s" % (pct, name[:40], split[:30]))
        print("\nchecked %d near-misses (>=%.0f%%); %d boundary artifacts -> fix by labeling the trailing fn in the .asm" % (checked, mp, len(cands)))
        sys.exit()
    # Plain positional form: an optional MINPCT as the first arg. Defaults to 0.0 (candidates() still
    # excludes exact-0% complete non-matches, so the effective floor is "near-misses >0% & <100%").
    mp = _parse_minpct(a[0] if a else None, 0.0)
    c = candidates(mp)
    print("boundary-artifact candidates (over-sized target symbol, near-miss): %d" % len(c))
    for sym, pct, f, ln in sorted(c, key=lambda x: -x[1])[:40]:
        print("  %5.1f%%  %-44s (%s)" % (pct, sym[:44], f))
    print("\nFix: add the missing label so the symbol ends at its `ret` (asm split) -> these verify.")
