#!/usr/bin/env python3
"""idioms.py - decode the small branchless code idioms MSVC emits after a call,
so a function whose body is `r = <call>; <idiom>` can be lifted to a faithful
C expression in terms of the call result `r`.

The classic one is the carry/`sbb` boolean trick. After a call leaves a 0/non-zero
value in eax, the compiler turns it into a bool or a 2-way constant select WITHOUT
a branch:

  neg eax ; sbb eax,eax ; neg eax            ->  r != 0            (normalise to bool)
  neg eax ; sbb eax,eax ; inc eax            ->  r == 0            (logical NOT)
  sub eax,K ; neg eax ; sbb eax,eax ; inc eax->  r == K            (equality test)
  neg eax ; sbb eax,eax ; and eax,M ; add eax,N -> r ? (M+N) : N   (2-way select)

`decode_tail(post)` takes the instruction tuples AFTER the call (up to, not
including, the `ret`; stack cleanup / nops are ignored) and returns a small tag
describing how the return value relates to `r`:

  ('plain', None)   -> return r;                 (forward the result unchanged)
  ('plain', '1a')   -> ...; return 0x1a;         (call for side effect, return const)
  ('ne',   None)    -> return r != 0;
  ('eqz',  None)    -> return r == 0;
  ('eq',   'K')     -> return r == 0xK;
  ('sel',  'A','B') -> return r ? 0xA : 0xB;
  None              -> not a recognised idiom (caller should REVIEW, not lift)

It is deliberately strict: every operand must be exactly `eax` (the call result),
so anything mixing in other registers (e.g. `sub eax,esi`) returns None.

`apply(expr, tail)` renders the C statement for a given call-expression string.
Used by lift_thunks.py; reusable by autolift.py for field-sourced conditions.
"""
import re

def _norm(post):
    """Normalise the post-call instruction tuples for pattern matching.

    Takes the raw `(op, arg, ...)` tuples that follow a call and returns a clean
    list of `(op_base, arg)` pairs, up to (not including) the first `ret`. The
    opcode is reduced to its base mnemonic (`sbb.s` -> `sbb`) so size-suffix
    variants compare equal. Pure-noise instructions that an idiom may interleave
    are dropped: `nop`, register `pop`s that restore callee-saved regs, and the
    `add/sub esp, N` stack cleanup of a stdcall/thiscall caller.

    A `pop` of the eax value register (the call result) is NOT dropped -- it would
    clobber the value we are about to describe, so it is kept in the output where
    it makes every idiom template fail to match (the strict-fail-to-None contract).
    """
    out = []
    for t in post:
        op, arg = t[0], t[1]
        base = op.split(".")[0]                 # sbb.s -> sbb, mov.s -> mov
        if base.startswith("ret"): break        # stop at the return (ignore any bleed past it)
        # drop nops; drop a `pop` ONLY when it does not restore the eax value reg
        # (a `pop eax`/`pop al` would overwrite the call result -> keep it so the
        # template match fails rather than silently lifting a wrong expression).
        if base == "nop": continue
        if base == "pop" and arg.strip() not in ("eax", "al"): continue
        if base in ("add", "sub") and re.match(r"esp\b", arg): continue
        out.append((base, arg))
    return out

def decode_tail(post):
    """Decode the post-call instruction tail into a small idiom tag (or None).

    Args:
        post: the instruction tuples that follow the call, each `(op, arg, ...)`
              (only the first two fields are read). Anything from the `ret`
              onward, plus nops / stack cleanup, is ignored by `_norm`.

    Returns one of the tags documented in the module docstring -- describing how the
    function's return value relates to the call result `r` (in eax) -- or None when
    the tail is not a recognised branchless idiom (the caller should REVIEW, not lift):

        ('plain', None)      -> return r;                  (forward unchanged)
        ('plain', '1a')      -> ...; return 0x1a;          (side effect, const return)
        ('ne',   None)       -> return r != 0;
        ('eqz',  None)       -> return r == 0;
        ('eq',   'K')        -> return r == 0xK;
        ('sel',  'A', 'B')   -> return r ? 0xA : 0xB;
        ('cmp', op, sign, K) -> return [(cast)]r op 0xK;   (setcc comparison)

    Strictness: every operand must be exactly eax (the call result); anything that
    mixes in another register returns None so a wrong lift is never emitted.
    """
    ops = _norm(post)
    if not ops:
        return ("plain", None)                  # body is just `ret` -> forward r
    seq = [o for o, a in ops]
    args = [a for o, a in ops]

    # constant return: mov eax, IMM ; ret   (call made for side effects)
    # hex is matched case-insensitively, then re-rendered lowercase via %x so the
    # tag is canonical regardless of the disassembler's hex casing.
    if len(ops) == 1 and seq[0] == "mov":
        m = re.fullmatch(r"eax, 0x([0-9a-fA-F]+)", args[0])
        if m: return ("plain", "%x" % int(m.group(1), 16))
        return None

    # The carry/sbb idioms below pattern-match against these exact (op, arg) pairs;
    # `o` is the list of normalised (op, arg) tuples we compare the templates to.
    NEG = ("neg", "eax"); SBB = ("sbb", "eax, eax"); INC = ("inc", "eax")
    o = list(zip(seq, args))
    # r != 0  : neg; sbb eax,eax; neg
    if o == [NEG, SBB, NEG]:
        return ("ne", None)
    # r == 0  (logical NOT) : neg; sbb eax,eax; inc
    if o == [NEG, SBB, INC]:
        return ("eqz", None)
    # r == K  : sub eax,K; neg; sbb eax,eax; inc
    if len(o) == 4 and o[1:] == [NEG, SBB, INC]:
        m = re.fullmatch(r"eax, 0x([0-9a-fA-F]+)", args[0])
        if seq[0] == "sub" and m: return ("eq", "%x" % int(m.group(1), 16))
    # mask = r ? -1 : 0  (neg; sbb eax,eax), then a select tail:
    # `sbb eax,eax` after `neg eax` leaves eax = (r != 0) ? 0xFFFFFFFF : 0 (all-ones
    # mask or zero). The arithmetic below exploits that mask:
    #   and M ; add N  ->  (mask & M) + N   = r ? (M+N) : N      (mask&M = M or 0)
    #   add N          ->  mask + N         = r ? (N-1) : N      (0xFFFFFFFF == -1)
    #   and M          ->  mask & M         = r ? M : 0
    if len(o) >= 2 and o[0] == NEG and o[1] == SBB:
        tail = o[2:]
        def _imm(a):
            m = re.fullmatch(r"eax, 0x([0-9a-fA-F]+)", a); return int(m.group(1), 16) if m else None
        if len(tail) == 2 and tail[0][0] == "and" and tail[1][0] == "add":   # and M; add N -> r?(M+N):N
            M, N = _imm(tail[0][1]), _imm(tail[1][1])
            if M is not None and N is not None: return ("sel", "%x" % ((M + N) & 0xFFFFFFFF), "%x" % N)
        if len(tail) == 1 and tail[0][0] == "add":                            # add N -> r?(N-1):N
            N = _imm(tail[0][1])
            if N is not None: return ("sel", "%x" % ((N - 1) & 0xFFFFFFFF), "%x" % N)
        if len(tail) == 1 and tail[0][0] == "and":                            # and M -> r?M:0
            M = _imm(tail[0][1])
            if M is not None: return ("sel", "%x" % M, "0")
    # setcc materialisation of a comparison of eax
    cc = decode_compare_bool(ops, "eax")
    if cc: return cc
    return None

# setcc mnemonic -> (C operator, signedness); s=signed, u=unsigned, x=sign-agnostic eq/ne.
# The signedness is the load-bearing x86 detail: setg/setge/setl/setle test the SIGNED
# flags (SF/OF), so they decode to a signed (int) comparison; seta/setae/setb/setbe test
# the UNSIGNED flag (CF, "above/below"), so they decode to an unsigned comparison.
# sete/setne/setz/setnz test ZF only and are sign-agnostic ('x').
_SETCC = {
    "sete": ("==", "x"), "setz": ("==", "x"), "setne": ("!=", "x"), "setnz": ("!=", "x"),
    "setg": (">", "s"), "setge": (">=", "s"), "setl": ("<", "s"), "setle": ("<=", "s"),
    "seta": (">", "u"), "setae": (">=", "u"), "setb": ("<", "u"), "setbe": ("<=", "u"),
}

_CONT = {"al": "eax", "cl": "ecx", "dl": "edx", "bl": "ebx"}   # 8-bit setcc dest -> 32-bit container

# The decoded boolean must end up in the function's return register, eax (or its
# low byte al). `_VALDST` is the set of accepted destinations for any move/zero-extend
# that routes the setcc result onward; if the result is routed into some OTHER register
# it never lands in eax, so the lift would be wrong -> we reject (see _setcc_tail).
_VALDST = ("eax", "al")

def _setcc_tail(ops, i, zreg):
    """Validate `setCC <d8> ; <bool-shuffle>` starting at ops[i], consuming through the end.

    Args:
        ops:  the (op_base, arg) instruction list (already `_norm`-ed; `ret`/cleanup gone).
        i:    index of the expected `setCC` instruction.
        zreg: the register zeroed by an optional leading `xor R,R` (or None).

    The setCC writes an 8-bit destination (al/cl/dl/bl). The optional <bool-shuffle>
    that follows is only register moves / zero-extension that route that 8-bit result
    into eax (the return register), e.g. `mov al,<d8>`, `mov eax,<container>` (when the
    container was the xor-zeroed reg), `movzx eax,<d8>`, `and eax,0xff`. CRUCIALLY the
    shuffle's DESTINATION must be eax/al; a move into any other register means the
    boolean never reaches eax and we must NOT lift it.

    Returns (C-operator, signedness) or None if the tail is not a clean bool-into-eax.
    """
    n = len(ops)
    if i >= n or ops[i][0] not in _SETCC: return None
    cop, sign = _SETCC[ops[i][0]]; setdst = ops[i][1].strip(); i += 1
    cont = _CONT.get(setdst)                           # 32-bit container of the setcc byte dest
    if i < n and ops[i][0] == "mov":
        # `mov <dst>, <src>` routing the bool onward. Accept only when it lands in
        # eax/al AND the source is the setcc result (the byte dest, or its container
        # iff that container is the xor-zeroed reg = a clean zero-extended value).
        m = re.fullmatch(r"(\w+), (\w+)", ops[i][1])
        if m and m.group(1) in _VALDST and \
           (m.group(2) == setdst or (m.group(2) == cont and cont == zreg)): i += 1
    # `movzx eax, <d8>` zero-extends the byte result into eax (dest must be eax/al).
    if i < n and ops[i][0] == "movzx" and re.fullmatch(rf"(?:{'|'.join(_VALDST)}), {re.escape(setdst)}", ops[i][1]): i += 1
    # `and eax, 0xff` masks off the upper (garbage) bytes of the byte result.
    elif i < n and ops[i][0] == "and" and re.fullmatch(rf"(?:{'|'.join(_VALDST)}), 0xff", ops[i][1]): i += 1
    if i != n: return None                            # leftover ops -> not a clean bool
    return (cop, sign)

def _lead_xor(ops):
    """Consume an optional leading `xor R,R`; return (index_after, zeroed_reg|None)."""
    if ops and ops[0][0] == "xor":
        m = re.fullmatch(r"(\w+), (\w+)", ops[0][1])
        if m and m.group(1) == m.group(2): return 1, m.group(1)
    return 0, None

def decode_compare_bool(ops, vreg):
    """Decode `[xor R,R;] (test vreg,vreg | cmp vreg,K) ; setCC d8 ; <bool-shuffle>`
    -> ('cmp', op, signedness, Khex) or None. `vreg` holds the value ('eax' for a call
    result, or any reg a caller loaded into)."""
    i, zreg = _lead_xor(ops)
    if zreg == vreg: return None                      # would zero the value before comparing
    if i >= len(ops): return None
    op, arg = ops[i]; k = None
    if op == "test" and arg == f"{vreg}, {vreg}": k = 0   # test r,r -> compare against 0
    elif op == "cmp":
        m = re.fullmatch(rf"{re.escape(vreg)}, 0x([0-9a-fA-F]+)", arg)   # hex, any case
        if m: k = int(m.group(1), 16)
    if k is None: return None
    t = _setcc_tail(ops, i + 1, zreg)
    return ("cmp", t[0], t[1], "%x" % k) if t else None

def decode_compare2(ops):
    """Decode `[xor R,R;] cmp L,Rr ; setCC d8 ; <bool-shuffle>` where BOTH operands are
    registers -> ('cmp2', op, signedness, regL, regRr) or None. The caller resolves regL
    and regRr to value expressions (e.g. a field and a param)."""
    i, zreg = _lead_xor(ops)
    if i >= len(ops) or ops[i][0] != "cmp": return None
    m = re.fullmatch(r"(\w+), (\w+)", ops[i][1])
    if not m: return None
    L, R = m.group(1), m.group(2)
    # Need two DISTINCT value registers, so reject when:
    #   R.startswith("0x") -> RHS is an immediate (that's the decode_compare_bool case, not cmp2)
    #   L == R             -> compares a reg with itself (degenerate)
    #   L == zreg / R==zreg-> an operand is the just-xor-zeroed reg (a zero, not a value)
    if R.startswith("0x") or L == R or L == zreg or R == zreg: return None
    t = _setcc_tail(ops, i + 1, zreg)
    return ("cmp2", t[0], t[1], L, R) if t else None

def apply(expr, tail, rt):
    """Render the C return/statement for call-expression `expr` with return type `rt`."""
    kind = tail[0]
    if kind == "plain":
        const = tail[1]
        if rt == "void":      return f"{expr};"
        if const is not None: return f"{expr};\n    return 0x{const};"
        return f"return {expr};"
    if rt == "void":          return None        # a value idiom on a void function makes no sense
    if kind == "ne":  return f"return {expr} != 0;"
    if kind == "eqz": return f"return {expr} == 0;"
    if kind == "eq":  return f"return {expr} == 0x{tail[1]};"
    if kind == "sel": return f"return {expr} ? 0x{tail[1]} : 0x{tail[2]};"
    if kind == "cmp":
        op, sign, k = tail[1], tail[2], tail[3]
        cast = "(int)" if sign == "s" else ("(uint32_t)" if sign == "u" else "")
        rhs = "0" if k == "0" else f"0x{k}"
        return f"return {cast}{expr} {op} {rhs};"
    return None

def _self_test():
    cases = [
        ([("neg","eax","_"),("sbb.s","eax, eax","_"),("neg","eax","_")], ("ne", None)),
        ([("neg","eax","_"),("sbb.s","eax, eax","_"),("inc","eax","_")], ("eqz", None)),
        ([("sub","eax, 0x18f","_"),("neg","eax","_"),("sbb.s","eax, eax","_"),("inc","eax","_")], ("eq", "18f")),
        ([("neg","eax","_"),("sbb.s","eax, eax","_"),("and","eax, 0xfffffff9","_"),("add","eax, 0x13","_")], ("sel","c","13")),
        ([("neg","eax","_"),("sbb.s","eax, eax","_"),("add","eax, 0x00000efe","_")], ("sel","efd","efe")),  # add-only
        ([("neg","eax","_"),("sbb.s","eax, eax","_"),("and","eax, 0x05","_")], ("sel","5","0")),            # and-only
        ([("mov","eax, 0x1","_")], ("plain", "1")),
        ([], ("plain", None)),
        ([("pop","esi","_")], ("plain", None)),
        # setcc of eax (call result): test eax,eax ; setne al -> r != 0
        ([("test","eax, eax","_"),("setne","al","_")], ("cmp","!=","x","0")),
        ([("test","eax, eax","_"),("setg","al","_")], ("cmp",">","s","0")),
        ([("cmp","eax, 0x6","_"),("sete","al","_")], ("cmp","==","x","6")),
        ([("xor.s","ecx, ecx","_"),("cmp","eax, 0x6","_"),("setne","cl","_"),("mov.s","al, cl","_")], ("cmp","!=","x","6")),
        # must NOT decode: mixes in esi
        ([("sub","eax, esi","_"),("neg","eax","_"),("sbb.s","eax, eax","_"),("inc","eax","_")], None),
        ([("imul","eax, 0x3","_")], None),
        ([("mov","edx, dword ptr [eax + 0x38]","_"),("cmp","edx, 0x1","_"),("sete","al","_")], None),  # compares a FIELD, not eax
    ]
    ok = True
    for post, want in cases:
        got = decode_tail(post)
        good = got == want
        ok &= good
        print(f"  {'PASS' if good else 'FAIL'}  {[p[0]+' '+p[1] for p in post]} -> {got} (want {want})")
    # decode_compare_bool with a non-eax value reg (the standalone / autolift case)
    cb = decode_compare_bool([("xor","eax, eax"),("test","edx, edx"),("sete","al")], "edx")
    print(f"  {'PASS' if cb==('cmp','==','x','0') else 'FAIL'}  decode_compare_bool(edx) -> {cb}")
    ok &= cb == ("cmp","==","x","0")
    cb2 = decode_compare_bool([("xor","ecx, ecx"),("cmp","edx, 0x6"),("sete","cl"),("mov","eax, ecx")], "edx")
    print(f"  {'PASS' if cb2==('cmp','==','x','6') else 'FAIL'}  decode_compare_bool(mov eax,ecx form) -> {cb2}")
    ok &= cb2 == ("cmp","==","x","6")
    # decode_compare2 (two register operands)
    c2 = decode_compare2([("xor","eax, eax"),("cmp","ecx, edx"),("sete","al")])
    print(f"  {'PASS' if c2==('cmp2','==','x','ecx','edx') else 'FAIL'}  decode_compare2 -> {c2}")
    ok &= c2 == ("cmp2","==","x","ecx","edx")
    c2n = decode_compare2([("cmp","ecx, 0x5"),("sete","al")])   # RHS immediate -> not a 2-operand cmp
    print(f"  {'PASS' if c2n is None else 'FAIL'}  decode_compare2(immediate RHS) -> {c2n}")
    ok &= c2n is None
    # apply() rendering
    checks = [
        (apply("this->IsDead()", ("eqz", None), "bool32_t"),       "return this->IsDead() == 0;"),
        (apply("this->IsQueryIcon()", ("sel","c","13"), "uint32_t"),"return this->IsQueryIcon() ? 0xc : 0x13;"),
        (apply("param_1", ("cmp","==","x","18"), "bool32_t"),       "return param_1 == 0x18;"),
        (apply("this->GetX()", ("cmp",">","s","0"), "bool32_t"),    "return (int)this->GetX() > 0;"),
    ]
    for got, want in checks:
        good = got == want; ok &= good
        print(f"  {'PASS' if good else 'FAIL'}  apply -> {got!r}")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    import sys
    sys.exit(_self_test())
