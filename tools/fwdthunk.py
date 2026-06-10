#!/usr/bin/env python3
"""fwdthunk.py - bank FORWARDING-THUNK functions whose target is a bare forward to an unlabeled
`_jmp_addr_` helper (the "helper" blocker class the fan-out agents couldn't solve).

Proven (IsOnFire@Object 0%->100%): a function whose target is `call _jmp_addr_0xADDR; ret N` (or
`jmp _jmp_addr_0xADDR`) is a forwarding thunk to a COMDAT-folded/unlabeled implementation. It can NOT
be written as clean C (no symbol callable), but it IS byte-exact as a NAKED inline-asm forward in the
staging .cpp:
    extern "C" void jmp_addr_0xADDR(void);                 // -> the symbol _jmp_addr_0xADDR
    __declspec(naked) RT Class::Method(args) {
        __asm { call jmp_addr_0xADDR }   __asm { ret N }   // or  __asm { jmp jmp_addr_0xADDR }
    }
The naked attribute drops the prologue so it matches the no-frame thunk; the extern "C" name (MSVC
prepends `_`) resolves to the asm symbol; objdiff matches the call reloc by symbol name.

Gated: apply -> recompile -> keep iff 100% with no regression, else git-checkout the staging file.

Usage:
  python tools/fwdthunk.py --survey [MINPCT]     # forwarding-thunk near-misses
  python tools/fwdthunk.py --one <Name@Class> [--apply]
  python tools/fwdthunk.py --sweep [MINPCT] [--apply]
  python tools/fwdthunk.py --self-test
"""
import os, re, sys, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def target_fwd(fn):
    """Detect whether ``fn``'s call target is a bare forwarding thunk to an unlabeled helper.

    A forwarding thunk is a function whose entire body simply hands control to a
    COMDAT-folded / unlabeled implementation that the disassembler could only name as
    ``_jmp_addr_0x<ADDR>`` (no real symbol). Only two body shapes qualify:

      * ``jmp _jmp_addr_0xADDR``                 (tail-call forward; exactly 1 instruction)
      * ``call _jmp_addr_0xADDR`` then ``ret N`` (call-then-return; exactly 2 instructions)

    Anything with extra instructions is real logic (not a pure forward) and is rejected,
    so the resulting naked-asm stub is guaranteed byte-identical to the thunk.

    Args:
        fn: function key in ``Method@Class`` form (passed through to retwidth).

    Returns:
        ``(addr_hex, retN_or_None, is_jmp)`` describing the recognized thunk, or ``None``
        when ``fn`` is not one of the two forwarding-thunk shapes. ``retN_or_None`` is the
        raw ``ret`` stack-cleanup operand (e.g. ``"0x4"``) or ``None`` for a bare ``ret``.
    """
    import retwidth
    ti = retwidth.target_instrs(fn)
    if not ti: return None
    # The forwarded-to target must be exactly an unlabeled `_jmp_addr_0x<hex>` helper.
    # Accept both upper- and lower-case hex digits in the address.
    m = re.match(r"^_jmp_addr_0x([0-9a-fA-F]+)$", (ti[0][1] or "").strip())
    if not m: return None
    addr = m.group(1)
    # Shape 1: a lone `jmp` (tail-call). The whole body is one instruction.
    if ti[0][0] == "jmp" and len(ti) == 1:
        return (addr, None, True)
    # Shape 2: `call` immediately followed by `ret [N]`. Exactly two instructions.
    if ti[0][0] == "call" and len(ti) == 2 and ti[1][0] == "ret":
        return (addr, (ti[1][1] or "").strip() or None, False)
    return None

def _fwd_body(addr, retn, is_jmp):
    """Build the naked inline-asm body that reproduces the forwarding thunk byte-for-byte.

    Args:
        addr:   the helper address hex (no ``0x``), as returned by :func:`target_fwd`.
        retn:   the raw ``ret`` stack-cleanup operand (e.g. ``"0x4"``) or ``None``.
        is_jmp: True for a tail-call (``jmp``) thunk, False for a ``call``/``ret`` thunk.

    The forwarded symbol is emitted *without* the leading underscore (``jmp_addr_0xADDR``);
    MSVC re-adds the ``_`` for ``extern "C"`` names so it resolves to the asm label
    ``_jmp_addr_0xADDR`` (see :func:`apply_fwd`).

    Returns:
        ``(sym, body)`` where ``sym`` is the extern-C symbol name and ``body`` is the
        ``__asm`` block.
    """
    sym = "jmp_addr_0x%s" % addr
    if is_jmp:
        return sym, "__asm { jmp %s }" % sym
    # A zero-byte stdcall cleanup (`ret 0`) is identical to a bare `ret`; emit the plain
    # form so the codegen matches what MSVC produces for a no-cleanup return.
    tail = ("ret %s" % retn) if (retn and retn not in ("0x0", "0")) else "ret"
    return sym, "__asm { call %s }\n__asm { %s }" % (sym, tail)

def apply_fwd(fn, addr, retn, is_jmp):
    """Rewrite the staging definition of ``fn`` as a naked asm-forward and insert the extern decl.

    This is the destructive file edit. It (1) splices the ``__asm`` forwarding body into the
    function, (2) prepends an ``extern "C" void jmp_addr_0xADDR(void);`` forward declaration,
    and (3) marks the function ``__declspec(naked)`` so MSVC emits no prologue/epilogue and the
    body matches the frameless thunk exactly.

    Args:
        fn: function key in ``Method@Class`` form.
        addr, retn, is_jmp: thunk descriptor as returned by :func:`target_fwd`.

    Returns:
        The staging source path that was rewritten, or ``None`` if the function could not be
        located/rewritten (so the caller can skip without an exception).
    """
    import verify, liftgate
    loc = verify.unit_for_function(fn)
    if not loc or not loc[1]: return None
    # Guard the key split: a malformed key without '@' must fail softly (like the other
    # failure paths) instead of raising IndexError.
    parts = fn.split("@")
    if len(parts) < 2: return None
    src, cls, meth = loc[1], parts[1], parts[0]
    with open(src, encoding="latin-1") as f:
        text = f.read()
    sym, body = _fwd_body(addr, retn, is_jmp)
    new = liftgate.splice_body(text, cls, meth, body)
    if new is None: return None
    # Locate the signature line `<ret> Class::Method(args)`. `[^\n/]*` for the prefix excludes
    # commented-out lines (a `//` before the signature), and `\s*$` anchors to a full line so we
    # match the definition's opening line, not a call site or declaration elsewhere.
    pat = re.compile(r"(?m)^([^\n/]*\b%s::%s\s*\([^\n]*\))\s*$" % (re.escape(cls), re.escape(meth)))
    m = pat.search(new)
    if not m or "__declspec(naked)" in m.group(1): return None
    # String surgery: insert the extern-C forward decl on its own line, then prefix the captured
    # signature with `__declspec(naked) `. The extern-C name `jmp_addr_0x..` resolves (with MSVC's
    # leading underscore) to the asm label `_jmp_addr_0x..`; naked drops the frame so the call/jmp
    # reloc matches the original thunk byte-for-byte.
    new = new[:m.start()] + ('extern "C" void %s(void);\n' % sym) + "__declspec(naked) " + m.group(1) + new[m.end():]
    with open(src, "w", encoding="latin-1") as f:
        f.write(new)
    return src

def gated_one(fn, apply=False):
    """Survey or gate-apply the forwarding-thunk rewrite for a single function.

    The gate contract guarantees no regression: the edit is kept only if the function
    recompiles AND reaches 100% byte match; otherwise the staging file is reverted with
    ``git checkout``.

    Args:
        fn:    function key in ``Method@Class`` form.
        apply: False -> describe the detected thunk only (no edit). True -> rewrite,
               recompile, and keep-or-revert.

    Returns:
        A result dict. In survey mode: ``{fn, forward, ret, jmp}``. In apply mode:
        ``{fn, before, after, kept, msg}`` (or ``{fn, msg}`` on a non-thunk / rewrite
        failure).
    """
    import verify
    fw = target_fwd(fn)
    if not fw: return {"fn": fn, "msg": "not a _jmp_addr_ forwarding thunk"}
    addr, retn, is_jmp = fw
    if not apply:
        return {"fn": fn, "forward": "_jmp_addr_0x%s" % addr, "ret": retn, "jmp": is_jmp}
    # Read the pre-edit match% from the already-generated report (refresh=False) instead of
    # regenerating it: nothing has changed yet, so a fresh report would be identical and waste
    # ~0.4s per candidate. Ensure a report exists first (generates only if missing).
    verify.load_report()
    before = verify.function_match(fn, refresh=False)
    src = apply_fwd(fn, addr, retn, is_jmp)
    if not src: return {"fn": fn, "msg": "could not rewrite def"}
    rc = verify.recompile_unit(src)
    # After a successful recompile the report IS stale, so refresh=True here is required.
    after = verify.function_match(fn, refresh=True) if rc is True else None
    keep = after is not None and after >= 100.0
    if not keep:
        subprocess.run(["git", "checkout", "--", src], cwd=ROOT, capture_output=True)
    return {"fn": fn, "before": before, "after": after, "kept": keep,
            "msg": ("KEEP 100%%" if keep else "REVERT: %s" % (after if rc is True else str(rc)[:80]))}

def candidates(min_pct=0.0):
    """Enumerate near-miss functions that are forwarding-thunk candidates.

    Walks the objdiff report for functions whose match% is in ``[min_pct, 100)`` (i.e. not
    yet byte-exact), resolves each mangled name to ``Method@Class`` via the symbol DB, and
    keeps only those whose body is a recognized ``_jmp_addr_`` forwarding thunk.

    Args:
        min_pct: lower bound (inclusive) on current match% to consider.

    Returns:
        List of ``(name, pct)`` tuples, ``name`` in ``Method@Class`` form.
    """
    import verify, propose
    rep = verify.load_report(); H = propose._syms(); out = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        if target_fwd(name): out.append((name, pct))
    return out

def sweep(min_pct=0.0, apply=False):
    """Survey or batch-apply the forwarding-thunk rewrite across all candidates.

    Args:
        min_pct: lower bound passed to :func:`candidates`.
        apply:   False -> print what would be done (dry run). True -> gate-apply each
                 candidate via :func:`gated_one` (keep-or-revert per function).

    Returns:
        The number of functions banked (rewrites kept at 100%); always 0 on a dry run.
    """
    cands = candidates(min_pct)
    print("%d forwarding-thunk candidates" % len(cands))
    banked = 0
    for name, pct in cands:
        if not apply:
            fw = target_fwd(name); print("  WOULD %-44s -> _jmp_addr_0x%s" % (name[:44], fw[0])); continue
        r = gated_one(name, apply=True)
        if r.get("kept"): banked += 1
        print("  %-44s %s" % (name[:44], r.get("msg", "")))
    print("\n%s: %d candidates, %d banked" % ("SWEEP" if apply else "DRY", len(cands), banked))
    return banked

def _self_test():
    """Pure-logic self-test of thunk detection and body emission (no build/objdiff needed).

    Stubs ``retwidth.target_instrs`` with synthetic instruction streams so the
    detection/emission logic can be checked without a disassembly. Returns 0 on success,
    1 on any failure.
    """
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    # detection via a fake retwidth.target_instrs
    import retwidth
    orig = retwidth.target_instrs
    retwidth.target_instrs = lambda fn: {"C": [("call", "_jmp_addr_0x00637cc0"), ("ret", "0x4")],
                                          "J": [("jmp", "_jmp_addr_0x00730360")],
                                          "N": [("mov", "eax, [ecx+0x10]"), ("ret", "")]}.get(fn)
    try:
        chk(target_fwd("C") == ("00637cc0", "0x4", False), "call+ret forward", target_fwd("C"))
        chk(target_fwd("J") == ("00730360", None, True), "jmp tail-forward", target_fwd("J"))
        chk(target_fwd("N") is None, "plain getter -> not a forward")
        s, b = _fwd_body("00637cc0", "0x4", False)
        chk(s == "jmp_addr_0x00637cc0" and "call jmp_addr_0x00637cc0" in b and "ret 0x4" in b, "call body", b)
        s, b = _fwd_body("00730360", None, True)
        chk("jmp jmp_addr_0x00730360" in b, "jmp body", b)
    finally:
        retwidth.target_instrs = orig
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    # Optional MINPCT positional: pick the first bare numeric token (a flag like "--sweep"
    # contains non-digits so it is skipped). `.replace(".", "").isdigit()` accepts a plain
    # decimal like "40" or "40.5"; defaults to 0.0 when no numeric arg is present.
    mp = next((float(x) for x in a if x.replace(".", "").isdigit()), 0.0)
    import json
    if "--one" in a: print(json.dumps(gated_one(a[a.index("--one") + 1], apply="--apply" in a), indent=2, default=str))
    elif "--survey" in a: sweep(mp, apply=False)
    elif "--sweep" in a: sweep(mp, apply="--apply" in a)
    else: print(__doc__)
