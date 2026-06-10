#!/usr/bin/env python3
"""nmdiag.py - near-miss DIAGNOSIS: classify WHY a 1-99% function isn't byte-exact, and whether it's worth trying.

The single biggest time-sink in matching decomp is staring at a near-miss with no idea whether it's a
five-minute fix or a structural dead end. This tool reads the objdiff target-vs-staging instruction diff
and classifies the blocker into one actionable CLASS, so a weaker LLM (or a human) can decide INSTANTLY:
finish it, route it to the right tool, or skip it. It is the triage layer for the 40-99% band.

THE CLASSES (and what to do):
  PERFECT          already byte-exact (100%); nothing to do.
  INTRA_OBJ_CALL   every diff is a call/jmp whose target makes a DIRECT intra-object call (no reloc) while
                   staging emits an external `_jmp_addr_` reloc. objdiff compares the branch_dest
                   ABSOLUTELY (layout-bound), so this is NOT fixable per-function in staging -- proven by
                   experiment (a locally-defined thunk and a whole-function `_emit` both stay 98.3%). The
                   asm reassembly already renders the whole unit byte-exact. ACTION: SKIP in staging.
  ENCODING         the instruction streams MATCH (same mnemonics+operands) but the bytes differ -- MSVC's
                   inline assembler picks a different encoding than the original codegen. ACTION: if the
                   function has NO call, `asmwrap` `_emit` (exact bytes) banks it; call-bearing is hard
                   (`_emit` mis-frames bytes after a reloc).
  LARGE_FRAGMENT   the target is much larger than the staging body -- the candidate reconstructed only one
                   block of a multi-block function. ACTION: full-function reconstruction (seed+permute),
                   not a body tweak.
  BODY_DIFF        a handful of off instructions on regular (non-call) ops. ACTION: read the listed diffs
                   and adjust the body; the cheapest class to finish by hand.

Usage:
  python tools/nmdiag.py <Name@Class>        # classify one near-miss (+ show its diff)
  python tools/nmdiag.py --ledger            # classify every seed in the near-miss ledger
  python tools/nmdiag.py --sweep [MINPCT]    # census: classify every near-miss (MINPCT<=pct<100) in the report
  python tools/nmdiag.py --self-test

Library:  from nmdiag import classify, diag
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# objdiff diff_kind values that mean "this instruction differs" (anything else = a clean match).
REAL_DIFFS = {"DIFF_ARG_MISMATCH", "DIFF_INSERT", "DIFF_DELETE", "DIFF_REPLACE"}
_CALL = {"call", "jmp"}
# A named DATA global (`_GSpellSeedInfo_ARRAY`, `_gameThing`, ...) or an absolute .data/.rdata address
# (`0x00d9d678`) in an operand -- the signature of a relocation the staging hardcodes/mismatches.
_GLOBAL = re.compile(r"\b_[A-Za-z]\w*|\b0x00[0-9a-fA-F]{6}\b")


def _split(formatted):
    """'mov eax, [ecx+0x4]' -> ('mov', 'eax, [ecx+0x4]'); mnemonic size/suffix (e.g. 'xor.s') dropped."""
    p = formatted.strip().split(None, 1)
    return (p[0].split(".")[0], p[1].strip() if len(p) > 1 else "")


def _instrs(side):
    """Report symbol side -> [(diff_kind, mnemonic, operands)] for each instruction."""
    out = []
    for w in side.get("instructions", []):
        ins = w.get("instruction", w)
        f = (ins.get("formatted") or "").strip()
        if not f:
            continue
        mn, ops = _split(f)
        out.append((w.get("diff_kind") or "DIFF_NONE", mn, ops))
    return out


def classify(left, right, pct=None):
    """Classify a near-miss from its diff. left/right are [(diff_kind, mnemonic, operands)] for the TARGET
    and STAGING respectively; pct is the current match% (optional, only used to short-circuit PERFECT).
    Returns {klass, fixable, action}. Pure -- unit-testable without a build."""
    if pct is not None and pct >= 100.0:
        return {"klass": "PERFECT", "fixable": True, "action": "already byte-exact"}
    ldiff = [(k, mn, ops) for k, mn, ops in left if k in REAL_DIFFS]
    rdiff = [(k, mn, ops) for k, mn, ops in right if k in REAL_DIFFS]
    diffs = ldiff + rdiff

    # 1. INTRA_OBJ_CALL: every differing instruction is a call/jmp, and staging names a `_jmp_addr_` thunk.
    #    (target shows a raw branch_dest -- a direct intra-object call -- vs staging's external reloc.)
    if diffs and all(mn in _CALL for _, mn, _ in diffs) and any("_jmp_addr_" in ops for _, _, ops in rdiff):
        return {"klass": "INTRA_OBJ_CALL", "fixable": False,
                "action": "SKIP in staging: target makes direct intra-object calls (no reloc), staging emits "
                          "external _jmp_addr_ relocs; objdiff compares the branch_dest absolutely "
                          "(layout-bound) so it is not fixable per-function. The asm reassembly is byte-exact."}

    # 2. DATA_RELOC: arg-mismatches on non-call instructions whose TARGET operand names a data global (or
    #    an absolute .data/.rdata address). Staging hardcoded/mismatched the address. FIXABLE NOW with the
    #    existing reloc_fix/dataglobals tools: declare the global (extern "C" char SYM[];) and reference it
    #    so MSVC emits a DIR32 relocation -> byte-exact (proven class, e.g. GetCurrentActiveBox 97.5->100).
    larg = [(k, mn, ops) for k, mn, ops in ldiff if k == "DIFF_ARG_MISMATCH" and mn not in _CALL]
    if larg and len(larg) == len(ldiff) and all(_GLOBAL.search(ops) and "_jmp_addr_" not in ops for _, _, ops in larg):
        return {"klass": "DATA_RELOC", "fixable": True,
                "action": "iterate.reloc_fix / dataglobals: the operand references a data global; declare it "
                          "(extern \"C\" char SYM[];) and reference &SYM+off so MSVC emits a DIR32 reloc."}

    # 3. LARGE_FRAGMENT: the target is much bigger -- staging reconstructed only a fragment of a bigger fn.
    nl, nr = len(left), len(right)
    if nl >= 2 * max(nr, 1) and (nl - nr) >= 4:
        return {"klass": "LARGE_FRAGMENT", "fixable": "hard",
                "action": "Full-function reconstruction needed: staging has %d of the target's %d instrs "
                          "(only one block). Use seed+permute, not a body tweak." % (nr, nl)}

    # 4. ENCODING: instruction streams match (mnemonic+operands) but bytes differ -> MSVC encoding wall.
    lseq = [(mn, ops) for _, mn, ops in left if mn not in ("nop", "int3")]
    rseq = [(mn, ops) for _, mn, ops in right if mn not in ("nop", "int3")]
    if lseq and lseq == rseq:
        has_call = any(mn == "call" for mn, _ in lseq)
        return {"klass": "ENCODING", "fixable": (not has_call),
                "action": ("asmwrap `_emit` (exact bytes) banks it -- no call, no reloc boundary."
                           if not has_call else
                           "Call-bearing: `_emit` mis-frames bytes after the reloc; hard. Leave as near-miss.")}

    # 5. BODY_DIFF: a few off instructions on regular ops -- the cheapest class to finish by hand.
    return {"klass": "BODY_DIFF", "fixable": "maybe",
            "action": "Inspect + adjust the body. %d diff instr(s): %s" % (
                len(diffs),
                "; ".join("%s[%s %s]" % (k.replace("DIFF_", ""), mn, ops[:22]) for k, mn, ops in diffs[:5]))}


def diag(fn, pct=None):
    """Diagnose one function by name (Name@Class). Returns the classify() dict plus the left/right instr lists."""
    import iterate, verify
    loc = verify.unit_for_function(fn)
    if not loc:
        return {"fn": fn, "klass": "NO_UNIT", "fixable": False, "action": "function not found in any unit"}
    mg = iterate._mangled_of(fn)
    obj = iterate._diff_json(loc[0], mg)
    L = iterate._sym(obj, "left", mg) if obj else None
    R = iterate._sym(obj, "right", mg) if obj else None
    if not L or not R:
        return {"fn": fn, "klass": "NO_DIFF", "fixable": False, "action": "no objdiff symbol pair (folded?)"}
    left, right = _instrs(L), _instrs(R)
    res = classify(left, right, pct)
    res["fn"] = fn
    res["left"], res["right"] = left, right
    return res


def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    # intra-obj call: both calls DIFF_ARG_MISMATCH, staging names a _jmp_addr_ thunk
    L = [("DIFF_NONE", "push", "0xffffffff"), ("DIFF_ARG_MISMATCH", "call", "0x960"),
         ("DIFF_NONE", "ret", "0x4")]
    R = [("DIFF_NONE", "push", "0xffffffff"), ("DIFF_ARG_MISMATCH", "call", "_jmp_addr_0x0072a5f0"),
         ("DIFF_NONE", "ret", "0x4")]
    chk(classify(L, R)["klass"] == "INTRA_OBJ_CALL", "intra-obj call -> INTRA_OBJ_CALL")
    chk(classify(L, R)["fixable"] is False, "intra-obj call -> not fixable")
    # data reloc: arg mismatch on a non-call instr referencing a named data global
    Ld = [("DIFF_ARG_MISMATCH", "sub", "ecx, _GSpellSeedInfo_ARRAY"), ("DIFF_NONE", "ret", "")]
    Rd = [("DIFF_ARG_MISMATCH", "sub", "ecx, 0x00d9d678"), ("DIFF_NONE", "ret", "")]
    chk(classify(Ld, Rd)["klass"] == "DATA_RELOC", "global-symbol arg mismatch -> DATA_RELOC")
    chk(classify(Ld, Rd)["fixable"] is True, "data reloc -> fixable (reloc_fix)")
    # encoding: identical mnemonic+ops streams, sub-100 (bytes differ), no call
    E = [("DIFF_NONE", "mov", "eax, [ecx+0x4]"), ("DIFF_NONE", "ret", "")]
    chk(classify(E, E, 98.3)["klass"] == "ENCODING", "matching streams sub-100 -> ENCODING")
    chk(classify(E, E, 98.3)["fixable"] is True, "encoding no-call -> fixable (_emit)")
    Ec = [("DIFF_NONE", "call", "_jmp_addr_0x1"), ("DIFF_NONE", "ret", "")]
    chk(classify(Ec, Ec, 98.0)["fixable"] is False, "encoding with call -> not fixable")
    # large fragment: target 12 instrs, staging 3
    big = [("DIFF_INSERT", "mov", "e%d" % i) for i in range(12)]
    sml = [("DIFF_NONE", "mov", "e%d" % i) for i in range(3)]
    chk(classify(big, sml)["klass"] == "LARGE_FRAGMENT", "target>>staging -> LARGE_FRAGMENT")
    # body diff: one off regular instruction
    Lb = [("DIFF_NONE", "mov", "eax, 1"), ("DIFF_NONE", "ret", "")]
    Rb = [("DIFF_REPLACE", "mov", "eax, 2"), ("DIFF_NONE", "ret", "")]
    chk(classify(Lb, Rb)["klass"] == "BODY_DIFF", "one off op -> BODY_DIFF")
    chk(classify(E, E, 100.0)["klass"] == "PERFECT", "100% -> PERFECT")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


def _census(rows):
    """Print a per-class tally + a fixable/skip breakdown for a list of diag() results."""
    from collections import Counter
    c = Counter(r["klass"] for r in rows)
    print("\n=== near-miss census (%d functions) ===" % len(rows))
    for k, n in c.most_common():
        print("  %-16s %4d" % (k, n))
    fixable = sum(1 for r in rows if r.get("fixable") is True)
    print("  -> %d cleanly fixable now, %d need work/skip" % (fixable, len(rows) - fixable))


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if "--ledger" in a:
        import nearmiss
        rows = []
        for r in nearmiss.read_ledger():
            d = diag(r["fn"], r.get("after"))
            rows.append(d)
            print("  %-44s %-16s %s" % (r["fn"][:44], d["klass"], d["action"][:70]))
        _census(rows)
    elif "--sweep" in a:
        import verify
        mp = next((float(x) for x in a if x.replace(".", "").isdigit()), 80.0)
        rep = verify.load_report()
        rows = []
        for u, fn, pct, dem in verify.iter_functions(rep):
            if pct is None or not (mp <= pct < 100.0):
                continue
            name = dem  # iter_functions yields the demangled/display name; diag resolves it
            try:
                rows.append(diag(fn if "@" not in (dem or "") else dem, pct))
            except Exception:
                continue
        _census(rows)
    elif a and not a[0].startswith("--"):
        d = diag(a[0])
        print("\n%s  ->  %s  (fixable=%s)" % (d["fn"], d["klass"], d.get("fixable")))
        print("ACTION:", d["action"])
    else:
        print(__doc__)
