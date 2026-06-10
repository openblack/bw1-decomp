#!/usr/bin/env python3
"""triage.py - one-call diagnosis for the fan-out agents: given a function, return the RECOMMENDED
ACTION (an exact ready-to-gate C/__asm body, or a vtable.raw_call recipe) or the BLOCKER category,
so an agent gets the answer BEFORE hand-writing (and guessing wrong).

It composes the proven, folding-aware matchers — retwidth (constant al-return via the report fallback,
so it sees COMDAT-folded targets), bitfield (byte/word predicates), vforward (virtual forwards),
sigfix (return-width route + missing-param signature) — plus unlabeled-helper detection. Run this FIRST;
only hand-write control flow when it says WRITE_C.

Usage:
  python tools/triage.py <Name@Class>      # JSON recommendation
  python tools/triage.py --self-test
"""
import os, re, sys, json
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def _has_helper(ti):
    """True if any instruction references an unnamed helper (`_jmp_addr_0xADDR`).

    A `_jmp_addr_` token marks a call/jump into a label-less function (one the
    decomp hasn't named yet). It can surface in EITHER the mnemonic field (rare,
    when the disassembler glued it on) or, normally, the operand field -- so we
    scan both `m` (mnemonic) and `ops` (operands) of every (mnemonic, operands)
    pair. Such functions can't be banked as a plain C body without upstream
    naming or naked-__asm transcription, so triage routes them to a BLOCKER.
    """
    return any("_jmp_addr_" in (m or "") or "_jmp_addr_" in (ops or "") for m, ops in ti)

def _float_getter(ti):
    """`[mov eax,[reg+..]]* ; fld dword ptr [reg+OFF] ; ret` -> a float chain getter body, else None."""
    if not ti or ti[-1][0] != "ret": return None
    body = ti[:-1]
    if not body or body[-1][0] != "fld": return None
    # Deref-offset operand: `[ecx + 0xNN]`. Restricted to eax/ebx/ecx/edx
    # ([a-d]x) because pointer-chain getters only ever walk through those four
    # GP scratch regs (ecx=this on entry, eax holds each loaded pointer hop);
    # esi/edi/ebp would imply a saved-reg/frame access this simple matcher
    # deliberately won't handle (-> WRITE_C instead).
    m = re.search(r"\[(?:e[a-d]x)\s*\+\s*(0x[0-9a-fA-F]+)\]", body[-1][1])
    if not m: return None
    hops = [b for b in body[:-1] if b[0] == "mov"]
    if len(hops) > 2: return None                          # cap chain depth: >2 pointer hops -> too complex, WRITE_C
    expr = "this"
    for h in hops:
        mm = re.search(r"\[(?:e[a-d]x)\s*\+\s*(0x[0-9a-fA-F]+)\]", h[1])
        if not mm: return None
        expr = "*(void**)((char*)%s + %s)" % (expr, mm.group(1))
    return "return *(float*)((char*)%s + %s);" % (expr, m.group(1))

_norm = lambda s: (s or "").replace(" ", "")

def _const_ret(ti):
    """`mov eax, IMM ; ret` (4-byte const) -> `return IMM;` (al-constants are handled by retwidth).

    Only matches a non-negative hex/decimal immediate written to the full eax;
    the body is emitted verbatim (the raw token, with no signed cast). It will
    NOT fire on a `mov eax, -1`-style (negative / signed) rendering -- such
    constants fall through to the next matcher / WRITE_C. al-width constant
    returns (a bool `return true/false`) are intentionally left to retwidth,
    which knows the al-vs-eax codegen distinction.
    """
    if len(ti) == 2 and ti[1][0] == "ret" and ti[0][0] == "mov":
        m = re.match(r"^eax,(0x[0-9a-fA-F]+|\d+)$", _norm(ti[0][1]))
        if m: return "return %s;" % m.group(1)
    return None

def _int_getter(ti):
    """`[mov eax,[reg+a]]{0,3} ; <mov|movzx|movsx> {reg}, [reg+OFF] ; ret` -> typed getter, else None.
    Handles mov(eax/ax/al) + movzx/movsx(byte/word) so byte/word fields get the right (zero/sign) width."""
    if not ti or ti[-1][0] != "ret": return None
    body = ti[:-1]
    if not body or body[-1][0] not in ("mov", "movzx", "movsx"): return None
    term = body[-1]; t = _norm(term[1]); width = off = None
    # The terminal load that reads the actual field. Two shapes:
    #  (a) plain `mov <eax|ax|al>, [reg+OFF]` -- the destination sub-register
    #      tells us the field width directly: eax=32-bit, ax=16-bit, al=8-bit.
    #      A plain mov never sign-extends, so every plain-mov width is UNSIGNED.
    tm = re.match(r"^(eax|ax|al),\[e[a-d]x\+(0x[0-9a-fA-F]+)\]$", t)
    if term[0] == "mov" and tm:
        width = {"eax": "uint32_t", "ax": "uint16_t", "al": "uint8_t"}[tm.group(1)]; off = tm.group(2)
    else:
        #  (b) `movzx/movsx eax, <byte|word> ptr [reg+OFF]` -- here the operand
        #      size keyword gives the width and the opcode gives the SIGN:
        #      movsx = sign-extend (signed field), movzx = zero-extend (unsigned).
        em = re.match(r"^eax,(byte|word)ptr\[e[a-d]x\+(0x[0-9a-fA-F]+)\]$", t)
        if not em or term[0] not in ("movzx", "movsx"): return None
        sgn = term[0] == "movsx"
        width = {"byte": "int8_t" if sgn else "uint8_t", "word": "int16_t" if sgn else "uint16_t"}[em.group(1)]; off = em.group(2)
    hops = body[:-1]
    if any(h[0] != "mov" for h in hops) or len(hops) > 3: return None  # cap chain depth at 3 pointer hops; deeper -> WRITE_C
    expr = "this"
    for h in hops:
        hm = re.match(r"^eax,\[e[a-d]x\+(0x[0-9a-fA-F]+)\]$", _norm(h[1]))
        if not hm: return None
        expr = "*(void**)((char*)%s + %s)" % (expr, hm.group(1))
    return "return *(%s*)((char*)%s + %s);" % (width, expr, off)

def triage(fn):
    """Diagnose `fn` (a `Method@Class` name) and return the RECOMMENDED ACTION.

    Runs the proven matchers in priority order (a decision ladder) and returns
    the FIRST one that fires, so an agent gets a ready answer before hand-writing
    (and guessing wrong). The return is always a dict `{"fn", "action", "why", ...}`
    where `action` is one of:
      - INSPECT          : no asm available -> run lift.py and write C manually.
      - BLOCKER          : not hand-writable; `blocker` says why:
                             'transcribe' (straight-line w/ call/helper; the
                             orchestrator banks it via asmwrap naked __asm),
                             'helper'    (branchy unnamed _jmp_addr_ helper), or
                             'signature' (ret N vs declared params disagree).
      - USE_BODY         : `body` is an exact, ready-to-gate C/__asm body
                             (const return, bitfield predicate, int/float getter).
      - VIRTUAL_FORWARD  : a vtable forward; `slot` is the offset to try via
                             this->Method() or vtable.raw_call(...).
      - WRITE_C          : real control flow -> write it from lift.py output.
    """
    import retwidth, bitfield, vforward
    ti = retwidth.target_instrs(fn)                        # folding-aware (report fallback)
    if not ti:
        return {"fn": fn, "action": "INSPECT", "why": "no target instrs (run lift.py + write C manually)"}
    n = len(ti)
    try:
        import asmwrap
        transcribable = bool(asmwrap.transcribe(ti))
    except Exception:
        transcribable = False
    # asmwrap.transcribe strips trailing inter-function padding (nop/int3) before
    # judging a function, so a body ending `ret; nop` IS transcribable even though
    # its raw last instr is `nop`. Mirror that here: do the `ret`-terminated checks
    # against a padding-stripped view (`tj`) so such a function isn't misrouted to
    # WRITE_C. (`ti` stays raw for everything else.)
    tj = ti
    while tj and tj[-1][0] in ("nop", "int3"): tj = tj[:-1]
    if transcribable and (_has_helper(ti) or (tj and tj[-1][0] == "ret")):
        # straight-line (incl _jmp_addr_ forward / embedded-helper) -> the orchestrator banks it via
        # asmwrap (naked __asm transcription, byte-exact). You CANNOT hand-write it as a C body.
        # Only call it a 'transcribe' BLOCKER when it actually has a call/helper: a pure
        # getter/const has no call and is better served by the typed-body matchers below
        # (so we fall through to them here rather than returning), which is the intended
        # gap between the outer `if` and this inner one.
        if _has_helper(ti) or any(m == "call" for m, _ in ti):
            return {"fn": fn, "action": "BLOCKER", "blocker": "transcribe",
                    "why": "straight-line with a call/_jmp_addr_ helper -> orchestrator asmwrap.py transcribes it to naked __asm (byte-exact). Not a hand-written C body -> report blocker='transcribe'"}
    if _has_helper(ti):
        return {"fn": fn, "action": "BLOCKER", "blocker": "helper",
                "why": "branchy/complex _jmp_addr_ helper (needs label handling or upstream naming) -> hard; report blocker='helper'"}
    ib = retwidth.inline_body(ti)
    if ib:
        return {"fn": fn, "action": "USE_BODY", "body": ib,
                "why": "CONSTANT al-return (return-width) -> use this __asm; do NOT write return true/false (emits eax)"}
    bf = bitfield.match(ti)
    if bf:
        return {"fn": fn, "action": "USE_BODY", "body": bf, "why": "byte/word bitfield predicate"}
    cr = _const_ret(ti)
    if cr:
        return {"fn": fn, "action": "USE_BODY", "body": cr, "why": "constant 4-byte (eax) return"}
    ig = _int_getter(ti)
    if ig:
        return {"fn": fn, "action": "USE_BODY", "body": ig, "why": "integer/chain field getter (check width al/ax/eax)"}
    slot = vforward.slot_of(ti)
    if slot is not None:
        cls = fn.split("@", 1)[1] if "@" in fn else "?"
        return {"fn": fn, "action": "VIRTUAL_FORWARD", "slot": hex(slot),
                "why": "mov eax,[ecx]; jmp/call [eax+slot]. Try this->Method(); if wrong slot use "
                       "vtable.raw_call('%s', %s, RET, argtypes, argexprs)" % (cls, hex(slot))}
    fg = _float_getter(ti)
    if fg:
        return {"fn": fn, "action": "USE_BODY", "body": fg, "why": "float (fld) chain getter"}
    # Signature check: a `ret N` cleans N bytes of args off the stack (callee
    # cleanup, thiscall/stdcall). If N exceeds what the declared parameters
    # account for, the decl is dropping one or more params -- a signature bug
    # that no body edit can fix (sigfix adds them; virtual/mangle mismatches
    # are upstream). `ret_op` is the byte count N (empty if not ret-terminated).
    # Use the padding-stripped `tj` so trailing nop/int3 doesn't hide the ret.
    ret_op = tj[-1][1] if (tj and tj[-1][0] == "ret") else ""
    if ret_op:
        try:
            import sigfix
            ct, dp, miss = sigfix.detect_params(fn)
            if miss:
                return {"fn": fn, "action": "BLOCKER", "blocker": "signature",
                        "why": "ret %s but decl drops %d param(s) %s -> add param(s) (sigfix --params if "
                               "non-virtual; virtual/mangle-mismatch = upstream). NOT body-fixable." % (ret_op, len(miss), miss)}
        except Exception:
            pass
    return {"fn": fn, "action": "WRITE_C",
            "why": "multi-block/getter (%d instrs) -> write the control flow from lift.py; check al/eax widths" % n}

def _self_test():
    """Pure-logic regression checks for the standalone matchers (no asm/report I/O).

    Exercises _has_helper / _float_getter / _const_ret / _int_getter against
    hand-built instruction lists so the emitted C bodies stay byte-for-byte
    stable. Returns 0 if every check passes, 1 otherwise (process exit code).
    """
    ok = True
    def chk(c, n, got=None):
        """Record one named assertion: AND `c` into the running `ok`, print PASS/FAIL (with `got` on failure)."""
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    chk(_has_helper([("call", "_jmp_addr_0x00730360"), ("ret", "0x4")]), "detects _jmp_addr_ helper")
    chk(not _has_helper([("mov", "eax, [ecx+0x10]"), ("ret", "")]), "no false helper")
    chk(_float_getter([("fld", "dword ptr [ecx + 0x1b8]"), ("ret", "")]) == "return *(float*)((char*)this + 0x1b8);", "float direct getter")
    chk(_float_getter([("mov", "eax, [ecx + 0x28]"), ("fld", "dword ptr [eax + 0x120]"), ("ret", "")])
        == "return *(float*)((char*)*(void**)((char*)this + 0x28) + 0x120);", "float chain getter")
    chk(_float_getter([("mov", "eax, [ecx]"), ("ret", "")]) is None, "non-float -> None")
    chk(_const_ret([("mov", "eax, 0x1"), ("ret", "")]) == "return 0x1;", "const 4-byte return")
    chk(_int_getter([("mov", "eax, [ecx + 0x10]"), ("ret", "")]) == "return *(uint32_t*)((char*)this + 0x10);", "int direct getter")
    chk(_int_getter([("movzx", "eax, byte ptr [ecx + 0x24]"), ("ret", "")]) == "return *(uint8_t*)((char*)this + 0x24);", "movzx byte getter -> unsigned")
    chk(_int_getter([("movsx", "eax, word ptr [ecx + 0x8]"), ("ret", "")]) == "return *(int16_t*)((char*)this + 0x8);", "movsx word getter -> signed")
    chk(_int_getter([("mov", "eax, [ecx + 0x4]"), ("mov", "al, [eax + 0x2]"), ("ret", "")]) == "return *(uint8_t*)((char*)*(void**)((char*)this + 0x4) + 0x2);", "chain byte getter")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if not a or a[0].startswith("-"): print(__doc__); sys.exit(0)
    print(json.dumps(triage(a[0]), indent=2, default=str))
