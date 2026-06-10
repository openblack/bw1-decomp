#!/usr/bin/env python3
"""forge.py - the unified matching pipeline (synthesizes the whole toolkit).

Two modes:
  triage : classify EVERY near-miss into an ACTIONABLE bucket, so we always know what each function
           needs (already-correct vs a specific fix) instead of guessing. Combines effmatch
           (output-equivalence) + iterate.diff_cause (instruction-diff cause) + boundary detection.
  run    : drive ONE function: propose a seed -> show the diff -> classify -> permute -> gate.

Buckets (priority order):
  effective-match      = already functionally correct (consistent reg-rename / commutative / jcc-flip)
                          sub: 'return-width(al/eax) -> #134' | 'regalloc -> permute'
  boundary-artifact    = correct C; target symbol over-includes the next fn's instr past a clean ret
  reloc                = hardcoded .data/.rdata addr vs symbol (iterate.reloc_fix)
  multi-block          = candidate is a fragment of a larger fn (needs seed+permute / CFG)
  instr-form / other   = genuine codegen difference

Usage:
  python tools/forge.py --triage [MINPCT] [LIMIT]
  python tools/forge.py run <Name@Class>
  python tools/forge.py --self-test
"""
import os, re, sys, collections
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def bucket(fn):
    """classify one near-miss into (bucket, detail). Cheap-ish: one objdiff diff via iterate."""
    import effmatch, iterate
    eff = effmatch.classify(fn)
    if eff.get("effective"):
        rm = eff.get("reg_map", {})
        # return-width: a 1-byte<->4-byte alias (al/eax, etc.) is the bool #134 class
        if any((t in ("al", "ah", "bl", "cl", "dl") or b in ("al", "ah", "bl", "cl", "dl")) for t, b in rm.items()):
            return ("effective-match", "return-width(al/eax) -> #134")
        return ("effective-match", "regalloc/commutative -> permute")
    p, cause, lr, rr = iterate.diff_cause(fn)
    if not lr and not rr:
        return ("unknown", cause or "")
    # boundary artifact: base prefix matches; only TRAILING DELETE(s), and the deleted instr looks
    # like a neighbor (import call / after a clean ret).
    # lr/rr are the left/right diff columns (target text+kind / base text+kind), row-aligned.
    # `tagged`  = indices of rows carrying ANY diff marker (on either side), with their text/kind.
    # `matched` = indices of rows with NO diff marker on either side (clean, identical rows).
    tagged = [(i, t, k) for i, ((t, k), (b, bk)) in enumerate(zip(lr, rr)) if k or bk]
    matched = [i for i, ((t, k), _) in enumerate(zip(lr, rr)) if not (k or _[1])]
    # All diffs come strictly AFTER all clean rows (first tagged index > last matched index)
    # => the whole common prefix matches and only the tail differs.
    if tagged and matched and min(i for i, _, _ in tagged) > max(matched):
        # ...and that differing tail is a DELETE of an import/call instruction => the target
        # symbol simply over-includes the next function's leading instruction past a clean ret.
        if any("DELETE" in (k or "") and ("__imp__" in t or "call" in t) for _, t, k in tagged):
            return ("boundary-artifact", "target over-sized past clean ret")
    # reloc: the diff is in an arg/reloc position AND a diffed target operand references a
    # hardcoded .data/.rdata address (the `[data_bytes...` / `[rdata_bytes...` operand form)
    # where the original used a symbol -> fixable by relocating to the symbol.
    if "arg/reloc" in cause and any(re.search(r"\[(data|rdata)_bytes", t) for (t, k) in lr if k):
        return ("reloc", "hardcoded addr vs symbol")
    if "extra/missing" in cause:
        return ("multi-block", "fragment of a larger function")
    return ("other", cause)

def triage(min_pct=90.0, limit=None):
    """Classify EVERY near-miss (min_pct <= match% < 100) into an actionable bucket and
    print a histogram (count per bucket, plus per-detail sub-rows with an example name)
    followed by the recommended ACTION per bucket. Returns the bucket Counter.

    This is the survey entry point: it answers "what does each not-yet-matching function
    need?" in one pass, instead of guessing function-by-function. min_pct is the lower
    percentage bound (default 90); limit, if set, caps how many near-misses are examined.
    """
    import verify, propose
    rep = verify.load_report(); H = propose._syms()
    nm = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        # Keep only ordinary mangled C++ symbols: those start with a single '?'. Drop
        # the '??'-prefixed MSVC "special" names (operators, ctors/dtors, vtables, etc.)
        # which we don't triage here. (`not startswith("?")` skips C/plain symbols too.)
        if not fn.startswith("?") or fn.startswith("??"): continue
        f = H.by_mangled.get(fn)
        if f and f.cls and f.method: nm.append(("%s@%s" % (f.method, f.cls), pct))
    if limit: nm = nm[:limit]
    cnt = collections.Counter(); detail = collections.Counter(); ex = {}
    for name, pct in nm:
        try: bk, dt = bucket(name)
        except Exception as e: bk, dt = ("err", str(e)[:30])
        cnt[bk] += 1; detail[(bk, dt)] += 1; ex.setdefault((bk, dt), name)
    print("=== FORGE TRIAGE: %d near-misses at %.0f-99%% ===" % (len(nm), min_pct))
    for bk, n in cnt.most_common():
        print("  %4d  %s" % (n, bk))
        for (b2, dt), n2 in sorted(detail.items(), key=lambda x: -x[1]):
            if b2 == bk: print("          %4d  %-38s e.g. %s" % (n2, dt, ex[(b2, dt)]))
    print("\nACTIONS: effective-match=already correct (return-width->#134, regalloc->permute) | "
          "reloc->iterate.batch_reloc | boundary->asm split/label | multi-block->seed+permute")
    return cnt

def run(fn):
    """Drive ONE function end-to-end: report its current match %, classify it into a
    bucket, and for the only currently auto-driveable bucket (an effective-match whose
    diff is pure register-allocation noise) attempt to permute it to a strict 100% match.

    fn is "Method@Class". For every other bucket we just print the recommended manual
    ACTION (see triage()'s ACTIONS line); those are not yet auto-driven.
    """
    import iterate, effmatch, permute, verify
    print("[forge] %s  current=%s%%" % (fn, verify.function_match(fn)))
    bk, dt = bucket(fn); print("[forge] bucket: %s (%s)" % (bk, dt))
    if bk == "effective-match" and "regalloc" in dt:
        # unit_for_function returns (unit_name, staging_src) or None; guard against None
        # (and a malformed short tuple) so a missing/unknown unit prints a clean message
        # instead of crashing with TypeError/IndexError on the l[1] index below.
        loc = verify.unit_for_function(fn)
        src = loc[1] if loc and len(loc) > 1 else None
        # _current_body(src, cls, method): fn is "Method@Class", so split -> [method, class].
        parts = fn.split("@")
        if src and len(parts) > 1:
            method, cls = parts[0], parts[1]
            seed = iterate._current_body(src, cls, method)
            if seed:
                print("[forge] permuting to force the strict register match ...")
                r = permute.climb(fn, seed, rounds=8)
                print("[forge] permute: %s pct=%s" % ("KEPT 100%" if r["kept"] else "best", r["pct"]))
                return
    print("[forge] (see ACTIONS for this bucket; not auto-driveable yet)")

def _self_test():
    """Smoke check: assert the three entry points (bucket, triage, run) are defined and
    callable, then print PASS/FAIL. Returns 0 on success, 1 on failure.

    Note: this is intentionally a lightweight import/define check; it does NOT exercise
    bucket/triage/run against real objdiff data (that requires a built tree and the
    effmatch/iterate/permute pipeline), so it won't catch behavioral regressions.
    """
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(callable(bucket) and callable(triage) and callable(run), "entry points defined")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _opt_float(tok):
    """Parse tok as a non-negative float, or None if it is not a clean number.

    Used to sniff the optional positional MINPCT arg. Unlike the old
    `tok.replace('.','').isdigit()` test, this rejects malformed inputs such as
    '90.5.5' (which that test wrongly accepted, then crashed on float()) by relying
    on float() itself and a single-dot / non-negative check.
    """
    try:
        v = float(tok)
    except (TypeError, ValueError):
        return None
    # tok is e.g. "90" or "90.5"; reject negatives (those are not valid percentages).
    return v if v >= 0 else None

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--triage" in a:
        # Optional positional MINPCT then LIMIT follow the --triage flag:
        #   --triage [MINPCT] [LIMIT]
        # MINPCT is a (possibly fractional) percent; LIMIT is an integer cap on how
        # many near-misses to classify. Both are sniffed by shape so flags can't be
        # mistaken for numbers, and malformed numbers fall back to the defaults.
        i = a.index("--triage")
        mp = _opt_float(a[i + 1]) if i + 1 < len(a) else None
        if mp is None: mp = 90.0
        lim = int(a[i + 2]) if i + 2 < len(a) and a[i + 2].isdigit() else None
        triage(mp, lim); sys.exit()
    if a and a[0] == "run" and len(a) > 1: run(a[1]); sys.exit()
    print(__doc__)
