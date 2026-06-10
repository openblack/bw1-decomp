#!/usr/bin/env python3
"""effmatch.py - "effective match" classifier: is a near-miss SEMANTICALLY equivalent to the target?

WHAT IT DOES
------------
This works ABOVE the source AST -- at output (instruction) equivalence. objdiff is byte/operand-strict,
so it scores <100% for diffs that are semantically FREE: a consistent register renaming (the compiler
chose `ecx` where we got `eax`), commutative-operand swaps, and branch-condition flips. reccmp
formalizes this as "effective match (100%*)". Here we detect it over our own objdiff per-instruction
diff: if EVERY mismatch is explained by ONE consistent register bijection (+ commutative swaps + paired
cmp/jcc inversions), the C is already correct -- the "regalloc wall" was an illusion.

A function is reported `effective` only when, after walking the per-instruction objdiff:
  * every differing row is one of: a consistent register rename, a commutative-operand swap, or a
    cmp-operand swap that is IMMEDIATELY paired with an inverted conditional jump to the same label;
  * the accumulated target-reg -> base-reg map is a true bijection (1:1, injective both ways);
  * there are no inserted/deleted instructions on EITHER side (those change behavior, never free).

WHY THIS IS USEFUL
------------------
A function flagged "effective" is already functionally correct -- no source change can raise objdiff's
byte score (the diff is pure register allocation / operand ordering), so it should be marked
non-matching-but-equivalent rather than chased further.

Usage:
  python tools/effmatch.py <Name@Class>      # classify one function, print the verdict as JSON
  python tools/effmatch.py --scan [MINPCT]   # scan near-misses >= MINPCT% (default 40), report eff. matches
  python tools/effmatch.py --self-test       # run the pure-logic self-checks (no objdiff needed)
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Matches every x86-32 register token we care about so we can mask them out (structural skeleton)
# and recover them in order. Covered classes:
#   e?[abcd]x   -> 32/16-bit general regs eax/ebx/ecx/edx and their ax/bx/cx/dx 16-bit forms
#   e?[sd]i     -> esi/edi (and si/di), e?bp -> ebp/bp, e?sp -> esp/sp (index/base/stack pointers)
#   [abcd][lh]  -> 8-bit byte regs al/ah/bl/bh/cl/ch/dl/dh
#   st\d?       -> x87 FPU stack slots st, st0..st9 (operands are written `st(N)`; this catches `stN`)
#   xmm\d+      -> SSE registers xmm0.. (present in a few SSE-emitting functions)
# Note: a couple of alternatives overlap (e.g. `[abcd]x` is also reachable via `e?[abcd]x`); this is
# harmless for masking/recovery since findall returns one match per token. MMX (mm0-7) and x86-64
# r8d-style names are intentionally absent -- this is a 32-bit target.
_REG = re.compile(r"\b(e?[abcd]x|e?[sd]i|e?bp|e?sp|[abcd][lh]|[abcd]x|st\d?|xmm\d+)\b")
def _parse(text):
    """instruction text -> (mnemonic, normalized-with-reg-placeholders, [registers-in-order])."""
    text = text.strip()
    if not text: return (None, None, [])
    mn = text.split(None, 1)[0]
    regs = _REG.findall(text)
    norm = _REG.sub("<r>", text)                       # mask registers -> structural skeleton
    return (mn, norm, regs)

_COMM = ("add", "imul", "and", "or", "xor", "lea",                 # integer commutative
         "fadd", "fmul", "faddp", "fmulp", "fadds", "fmuls")       # x87 commutative
def _commutative_equal(ta, ba):
    """do two instrs match if we swap a commutative operand pair? (integer add/imul/.../lea or x87
       fadd/fmul — our C-level a+b vs b+a often shows as swapped source operands of the same op)."""
    mn_t, _, _ = _parse(ta); mn_b, _, _ = _parse(ba)
    if mn_t != mn_b or mn_t not in _COMM: return False
    ops_t = ta.split(None, 1)[1].split(",") if " " in ta else []
    ops_b = ba.split(None, 1)[1].split(",") if " " in ba else []
    return len(ops_t) == 2 and sorted(o.strip() for o in ops_t) == sorted(o.strip() for o in ops_b)

# inverse conditional-jump pairs: a swapped `cmp A,B`+`cmp B,A` flips the sense, so the jcc inverts
# to the SAME target -> semantically identical branch (reccmp's ALLOWED_JUMP_SWAPS idea).
_JINV = {"jl": "jg", "jg": "jl", "jle": "jge", "jge": "jle", "jb": "ja", "ja": "jb",
         "jbe": "jae", "jae": "jbe", "je": "je", "jne": "jne", "jz": "jz", "jnz": "jnz"}
def _jump_swap_equal(ta, ba):
    """target `jCC L` vs base `j(inverse CC) L` (same label) — free when the paired cmp was swapped."""
    pt, pb = ta.split(), ba.split()
    if len(pt) >= 2 and len(pb) >= 2 and _JINV.get(pt[0]) == pb[0] and pt[-1] == pb[-1]:
        return True
    return False

def classify(fn):
    """Classify one function ("Method@Class") against its objdiff per-instruction diff.

    Returns a dict: {effective: bool, reason: str, reg_map?, n_diffs?, pct?}. `effective` is True when
    the function is a non-byte-match BUT every differing instruction is functionally FREE, i.e. each
    diff is one of: a consistent register rename, a commutative-operand swap, or a swapped-cmp that is
    immediately paired with an inverted conditional jump to the same label -- AND the accumulated
    register map is a true bijection. Any inserted/deleted instruction, genuine opcode/operand change,
    non-bijective register map, or unpaired cmp-swap/jcc-flip yields effective=False with a `reason`.
    Early-out reasons (no objdiff produced): no-unit, diff-failed, symbol-not-found."""
    import iterate, verify
    loc = verify.unit_for_function(fn)
    if not loc: return {"effective": False, "reason": "no-unit"}
    mg = iterate._mangled_of(fn)
    obj = iterate._diff_json(loc[0])
    if not obj: return {"effective": False, "reason": "diff-failed"}
    L, R = iterate._sym(obj, "left", mg), iterate._sym(obj, "right", mg)
    if not L or not R: return {"effective": False, "reason": "symbol-not-found"}
    lr, rr = iterate._rows(L), iterate._rows(R)
    pct = L.get("match_percent")
    # regmap: accumulated target-reg -> base-reg mapping (must end up a bijection).
    # cmpswap/jccinv: ordered lists of the DIFF-row index (didx) at which we saw a swapped-cmp /
    # an inverted-jcc, so we can prove each cmp-swap is PAIRED with (immediately followed by) its
    # jcc inversion -- a balanced count alone does not establish pairing (see the balance gate below).
    regmap = {}; ndiff = 0; cmpswap = []; jccinv = []
    didx = -1                                          # index among DIFFERING rows only (0-based)
    for (t, tk), (b, bk) in zip(lr, rr):
        if not (tk or bk): continue                    # both sides agree -> matching row, skip
        ndiff += 1; didx += 1
        # An inserted/deleted instruction is never free: it changes the instruction stream. The marker
        # may sit on EITHER side -- DELETE on the target (left) row, INSERT on the base (right) row --
        # so we must inspect both tk and bk for both markers (a non-empty other tag must not mask it).
        if "DELETE" in (tk or "") or "DELETE" in (bk or "") or \
           "INSERT" in (tk or "") or "INSERT" in (bk or ""):
            return {"effective": False, "reason": "extra/missing-instr (not free)", "pct": pct, "n_diffs": ndiff}
        mt, nt, rt = _parse(t); mb, nb, rb = _parse(b)
        if nt == nb and len(rt) == len(rb) and mt == mb:
            # Same skeleton + mnemonic + reg count: the only difference can be the register names.
            # regmap.get(a, c) defaults the lookup to `c`, so a first-seen target reg `a` always
            # "agrees" (and we record a->c); a previously-seen `a` must still map to the same `c`.
            ok = True
            for a, c in zip(rt, rb):                    # build/check the register bijection
                if regmap.get(a, c) != c: ok = False; break
                regmap[a] = c
            if ok: continue
        if _commutative_equal(t, b): continue
        if mt == mb == "cmp" and " " in t and " " in b and \
           sorted(o.strip() for o in t.split(None, 1)[1].split(",")) == sorted(o.strip() for o in b.split(None, 1)[1].split(",")):
            cmpswap.append(didx); continue             # swapped cmp operands (free IFF paired w/ jcc inversion)
        if _jump_swap_equal(t, b): jccinv.append(didx); continue
        return {"effective": False, "reason": "genuine diff: TGT[%s] BASE[%s]" % (t[:24], b[:24]),
                "pct": pct, "n_diffs": ndiff}
    # Branch-swap soundness: a swapped cmp is only free when the dependent conditional jump is inverted
    # to compensate. We require equal counts AND that each cmp-swap is immediately followed (next
    # differing row) by a jcc inversion -- this PROVES pairing. An unrelated free cmp-swap in one place
    # plus an unrelated jcc-flip elsewhere would balance in count but fail this adjacency check.
    if len(cmpswap) != len(jccinv) or any(j != c + 1 for c, j in zip(cmpswap, jccinv)):
        return {"effective": False, "reason": "unpaired cmp-swap/jcc-flip (real branch diff)", "pct": pct}
    # consistent bijection? Each base reg `c` must come from exactly one target reg `a` (injective the
    # other way too). inv.get(c, a) defaults to `a`, so the first time we see `c` it always agrees and
    # we record c->a; a second target reg mapping to the same `c` fails (not 1:1).
    inv = {}
    for a, c in regmap.items():
        if inv.get(c, a) != a: return {"effective": False, "reason": "reg-map not a bijection", "pct": pct}
        inv[c] = a
    return {"effective": ndiff > 0, "reason": "register-rename/commutative only" if ndiff else "exact",
            "reg_map": regmap, "n_diffs": ndiff, "pct": pct}

def _try_float(s):
    """Parse `s` as a float, returning None (instead of raising) if it is not a valid number.

    Used for the optional MINPCT positional after --scan: a token like '4.0.0' must be REJECTED, not
    crash float(). (The old `.replace('.','').isdigit()` test wrongly accepted such strings.)"""
    try:
        return float(s)
    except (TypeError, ValueError):
        return None

def _self_test():
    """Run the pure-logic self-checks (parsing, commutativity, jump inversion). No objdiff/build
    needed. Prints PASS/FAIL per check and returns a process exit code (0 = all pass, 1 = failure)."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    chk(_parse("mov eax, [edi+0x4]") == ("mov", "mov <r>, [<r>+0x4]", ["eax", "edi"]), "parse+mask")
    chk(_parse("mov eax, [edi+0x4]")[1] == _parse("mov ecx, [edi+0x4]")[1], "reg-masked skeletons equal")
    chk(_commutative_equal("add eax, ebx", "add ebx, eax"), "commutative add swap")
    chk(not _commutative_equal("sub eax, ebx", "sub ebx, eax"), "sub not commutative")
    chk(_commutative_equal("fmul st(1), st(0)", "fmul st(0), st(1)"), "x87 fmul commutative")
    chk(_jump_swap_equal("jl 0x123", "jg 0x123"), "jl<->jg inverse to same target")
    chk(not _jump_swap_equal("jl 0x123", "jg 0x999"), "inverse jcc but different target -> not free")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--scan" in a:
        import verify, propose
        # Optional MINPCT positional: the token right after --scan, IF it parses as a number.
        # Anything non-numeric (or a missing/last-position --scan) falls back to 40.0. _try_float
        # rejects malformed tokens like '4.0.0' safely instead of crashing.
        i = a.index("--scan") + 1
        mp = (_try_float(a[i]) if i < len(a) else None)
        if mp is None: mp = 40.0
        rep = verify.load_report(); H = propose._syms()
        eff = 0; checked = 0
        for u, fn, pct, dem in verify.iter_functions(rep):
            # Only near-misses: at or above the threshold but not already a byte-exact 100%.
            if pct is None or not (mp <= pct < 100.0): continue
            f = H.by_mangled.get(fn)
            if not (f and f.cls and f.method): continue       # need a resolvable Method@Class to diff
            r = classify("%s@%s" % (f.method, f.cls)); checked += 1
            if r.get("effective"):
                eff += 1; print("  EFFECTIVE MATCH  %-40s %.1f%%  regmap=%s" % (fn[:40], pct, r.get("reg_map")))
            if checked >= 400: break                           # cap work per run (each classify spawns objdiff)
        print("\nscanned %d near-misses (>=%.0f%%); EFFECTIVE (already-correct) = %d" % (checked, mp, eff))
        sys.exit()
    if not a: print(__doc__); sys.exit(2)                      # no args -> show usage
    import json; print(json.dumps(classify(a[0]), indent=2, default=str))   # classify a single Method@Class
