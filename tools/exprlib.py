#!/usr/bin/env python3
"""exprlib.py - shared symbolic-expression model for the asm tracers.

Used by fpu.py (x87 float) and gpr.py (integer/GPR). One model + one renderer + one
(integer-exact) simplifier, so both tracers print algebra the same way. C-like precedence.

What it provides
  * `Expr` nodes built via `leaf(text)`, `const(v)`, `binop(op,a,b)`, `unop(op,a)`.
  * `binop`/`unop` apply integer-exact constant folding and algebraic identities while
    building (e.g. `x*1 -> x`, `x+x -> x*2`, `(x*c1)*c2 -> x*(c1*c2)`, `x<<n -> x*2**n`),
    so the tracers stay readable without a separate simplify pass.
  * `render(e)` -> a C-like string with correct precedence/parenthesization.

Inputs/outputs
  Pure in-memory: callers pass register/memory leaves and integer constants; the renderer
  emits a `str`. No file or network access.

Example
    >>> from exprlib import leaf, const, binop, render
    >>> render(binop('+', leaf('x'), binop('*', leaf('x'), const(3))))
    'x * 4'

Self-test
    python3 tools/exprlib.py --self-test     # verifies fold/identity/render pure logic
"""
try:
    from rdata import _fmt_float
except Exception:
    def _fmt_float(v): return repr(v)

# C precedence (higher binds tighter); unary = 8
PREC = {'|': 1, '^': 2, '&': 3, '==': 4, '!=': 4, '<<': 5, '>>': 5,
        '+': 6, '-': 6, '*': 7, '/': 7, '%': 7}
NONCOMM = {'-', '/', '%', '<<', '>>'}      # right child needs parens at equal precedence

class Expr:
    __slots__ = ('op', 'kids', 'text', 'val', 'prec')
    def __init__(self, op, kids=(), text=None, val=None, prec=99):
        self.op = op; self.kids = kids; self.text = text; self.val = val; self.prec = prec

def leaf(text):
    """An opaque atom rendered verbatim (a register, memory operand, or symbol name)."""
    return Expr('leaf', text=text)
def const(v):
    """A constant operand. `v` may be int (foldable/identity-eligible) or float (rendered only)."""
    return Expr('const', val=v)
def is_const(e, v=None):
    """True iff `e` is an *integer* constant (optionally equal to `v`).

    The `isinstance(e.val, int)` guard is the core design premise of this module: only
    integer constants participate in folding/identities, because the simplifier is
    integer-exact. Float constants build `const` nodes but are deliberately treated as
    non-constant here, so no identity ever rewrites a float (which could lose precision).
    """
    return e.op == 'const' and isinstance(e.val, int) and (v is None or e.val == v)

def fmt_int(v):
    """Format an integer constant the way the asm reads: small values in decimal, the rest in hex.

    Tiny magnitudes (|v| < 10) are typically multipliers/loop counts and read better in
    decimal; larger values are usually struct strides/field offsets and are printed in hex
    to match the disassembly. Negatives keep the sign outside the `0x` (e.g. `-0x10`).
    """
    v = int(v)
    if -10 < v < 10: return str(v)          # tiny multipliers/counts read better in decimal
    return ('-0x%x' % -v) if v < 0 else ('0x%x' % v)   # strides/offsets in hex (match the asm)

def render(e):
    """Render an Expr tree to a C-like string with minimal, correct parenthesization.

    Leaves print verbatim; int constants via `fmt_int`, float constants via `_fmt_float`.
    `neg`/`~` are tight prefix unaries; any other single-kid op prints function-style
    `op(child)`. Binary ops print `a OP b`, wrapping each child only when its precedence
    is lower than the context requires (see `_wrap`).
    """
    if e.op == 'leaf':  return e.text
    if e.op == 'const': return fmt_int(e.val) if isinstance(e.val, int) else _fmt_float(e.val)
    if e.op == 'neg':   return '-' + _wrap(e.kids[0], 8)
    if e.op == '~':     return '~' + _wrap(e.kids[0], 8)
    if len(e.kids) == 1:  # any other unary op renders function-style: op(child)
        return '%s(%s)' % (e.op, render(e.kids[0]))
    a, b = e.kids
    # The right child is required at prec+1 for non-commutative ops so that an equal-precedence
    # right subtree is parenthesized: `a - (b - c)` must keep its parens, while `a - b - c`
    # (left-associative) needs none. Commutative ops use the plain precedence (no extra parens).
    return '%s %s %s' % (_wrap(a, e.prec), e.op, _wrap(b, e.prec + (1 if e.op in NONCOMM else 0)))

def _wrap(e, p):
    """Render `e`, adding parentheses iff its precedence is strictly below the required level `p`."""
    s = render(e)
    return '(%s)' % s if e.prec < p else s

def _fold(op, x, y):
    """Evaluate `x op y` for two integers, returning the int result (or None for unknown ops).

    `/` uses C division semantics: `int(x / y)` truncates toward zero (unlike Python's `//`
    which floors), matching how the asm's `idiv` rounds. `/` and `%` silently return 0 on a
    zero divisor rather than raising, so constant folding can never crash on a degenerate
    operand pair (the same guard `binop` applies to non-constant `x / 0 -> x`).
    """
    if op == '+': return x + y
    if op == '-': return x - y
    if op == '*': return x * y
    if op == '<<': return x << y
    if op == '>>': return x >> y
    if op == '&': return x & y
    if op == '|': return x | y
    if op == '^': return x ^ y
    if op == '/': return int(x / y) if y else 0    # C truncation toward zero; guard div-by-0 -> 0
    if op == '%': return (x % y) if y else 0        # guard mod-by-0 -> 0
    return None

def binop(op, a, b):
    """build a binary node with integer-exact simplification (folding + identities)."""
    # constant folding
    if is_const(a) and is_const(b):
        f = _fold(op, a.val, b.val)
        if f is not None: return const(f)
    # convert shift-by-const to multiply-by-2^n so it folds with other muls (exact mod 2^32)
    if op == '<<' and is_const(b):
        return binop('*', a, const(1 << b.val))
    if op in ('+', '*'):
        if is_const(b) and op == '*' and b.val == 1: return a
        if is_const(a) and op == '*' and a.val == 1: return b
        if op == '*' and (is_const(b, 0) or is_const(a, 0)): return const(0)
        if is_const(b, 0) and op == '+': return a
        if is_const(a, 0) and op == '+': return b
        # (x * c1) * c2  ->  x * (c1*c2).  Only the canonical form (constant as the RIGHT
        # child) is recognized; const-on-left products like (c1 * x) * c2 are not normalized,
        # because every constant this module builds already lands on the right (see callers).
        if op == '*' and is_const(b) and a.op == '*' and is_const(a.kids[1]):
            return binop('*', a.kids[0], const(a.kids[1].val * b.val))
        # x + x  ->  x * 2 ;  x + x*c -> x*(c+1) ;  x*c + x -> x*(c+1)
        if op == '+' and _same(a, b):
            return binop('*', a, const(2))
        if op == '+' and b.op == '*' and is_const(b.kids[1]) and _same(a, b.kids[0]):
            return binop('*', a, const(b.kids[1].val + 1))
        if op == '+' and a.op == '*' and is_const(a.kids[1]) and _same(b, a.kids[0]):
            return binop('*', b, const(a.kids[1].val + 1))
        # (x + c1) + c2  ->  x + (c1+c2)   (additive constant coalescing)
        if op == '+' and is_const(b) and a.op == '+' and is_const(a.kids[1]):
            return binop('+', a.kids[0], const(a.kids[1].val + b.val))
    # NB: all-ones is matched as both -1 and 0xffffffff because a 32-bit ~0 may arrive either
    # as a signed int (-1) or as its unsigned bit pattern (0xffffffff) depending on the caller.
    if op == '|':                                       # x | ~0 = ~0 ;  x | 0 = x
        if (is_const(b) and b.val in (-1, 0xffffffff)) or (is_const(a) and a.val in (-1, 0xffffffff)):
            return const(-1)
        if is_const(b, 0): return a
        if is_const(a, 0): return b
    if op == '&':                                       # x & 0 = 0 ;  x & ~0 = x
        if is_const(b, 0) or is_const(a, 0): return const(0)
        if is_const(b) and b.val in (-1, 0xffffffff): return a
        if is_const(a) and a.val in (-1, 0xffffffff): return b
    if op == '-':
        if is_const(b, 0): return a
        if a.op == '*' and is_const(a.kids[1]) and _same(b, a.kids[0]):   # x*c - x -> x*(c-1)
            return binop('*', b, const(a.kids[1].val - 1))
        if a.op == '+' and is_const(a.kids[1]) and is_const(b):          # (x + c1) - c2 -> x + (c1-c2)
            return binop('+', a.kids[0], const(a.kids[1].val - b.val))
    if op == '/' and is_const(b, 0):
        return a
    return Expr(op, (a, b), prec=PREC[op])

def unop(op, a):
    """Build a unary node (`neg`, `~`, or a function-style op), folding it if `a` is an int const.

    `neg`/`~` over an integer constant fold immediately; otherwise a unary node at unary
    precedence (8) is returned for the renderer to wrap as needed.
    """
    if op == 'neg' and is_const(a): return const(-a.val)
    if op == '~'   and is_const(a): return const(~a.val)
    return Expr(op, (a,), prec=8)

def _same(a, b):
    """structural equality (enough for the x+x / x+x*c folds)."""
    if a.op != b.op: return False
    if a.op == 'leaf':  return a.text == b.text
    if a.op == 'const': return a.val == b.val
    return len(a.kids) == len(b.kids) and all(_same(x, y) for x, y in zip(a.kids, b.kids))


def _self_test():
    """Verify the pure fold/identity/render logic. No I/O, no build."""
    ok = True
    def chk(cond, name):
        nonlocal ok
        ok &= bool(cond)
        print(("  PASS " if cond else "  FAIL ") + name)

    x = leaf('x')

    # --- constant folding (binop) ---
    chk(render(binop('+', const(2), const(3))) == '5', "fold 2 + 3 -> 5")
    chk(render(binop('*', const(4), const(5))) == fmt_int(20), "fold 4 * 5 -> 20")
    chk(render(binop('<<', const(1), const(4))) == fmt_int(16), "fold 1 << 4 -> 16")
    chk(render(binop('/', const(7), const(2))) == '3', "fold 7 / 2 -> 3 (int)")
    chk(render(binop('/', x, const(0))) == 'x', "x / 0 guarded -> lhs")

    # --- identities ---
    chk(render(binop('*', x, const(1))) == 'x', "x * 1 -> x")
    chk(render(binop('+', x, const(0))) == 'x', "x + 0 -> x")
    chk(render(binop('*', x, const(0))) == '0', "x * 0 -> 0")
    chk(render(binop('&', x, const(0))) == '0', "x & 0 -> 0")
    chk(render(binop('&', x, const(0xffffffff))) == 'x', "x & ~0 -> x")
    chk(render(binop('|', x, const(0))) == 'x', "x | 0 -> x")

    # --- algebraic rewrites ---
    chk(render(binop('+', x, x)) == 'x * 2', "x + x -> x * 2")
    chk(render(binop('+', x, binop('*', x, const(3)))) == 'x * 4', "x + x*3 -> x * 4")
    chk(render(binop('*', binop('*', x, const(3)), const(5))) == 'x * ' + fmt_int(15),
        "(x*3)*5 -> x * 15")
    chk(render(binop('-', binop('*', x, const(3)), x)) == 'x * 2', "x*3 - x -> x * 2")
    # shift-to-multiply normalization, then fold with another mul
    chk(render(binop('<<', x, const(3))) == 'x * 8', "x << 3 -> x * 8")
    # additive constant coalescing
    chk(render(binop('+', binop('+', x, const(2)), const(3))) == 'x + 5', "(x+2)+3 -> x + 5")

    # --- unop folding ---
    chk(render(unop('neg', const(5))) == fmt_int(-5), "neg 5 -> -5")
    chk(render(unop('~', const(0))) == fmt_int(~0), "~0 -> -1")
    chk(render(unop('neg', x)) == '-x', "neg x -> -x")

    # --- renderer precedence / parenthesization ---
    chk(render(binop('*', binop('+', x, leaf('y')), const(2))) == '(x + y) * 2',
        "precedence: (x + y) * 2 parenthesized")
    chk(render(binop('-', leaf('a'), binop('-', leaf('b'), leaf('c')))) == 'a - (b - c)',
        "non-commutative right child parenthesized: a - (b - c)")
    chk(render(binop('+', leaf('a'), binop('+', leaf('b'), leaf('c')))) == 'a + b + c',
        "commutative: no spurious parens a + b + c")

    # --- leaf/const basics ---
    chk(render(leaf('eax')) == 'eax', "leaf renders verbatim")
    chk(is_const(const(7), 7) and not is_const(leaf('x')), "is_const predicate")

    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    import sys
    if "--self-test" in sys.argv:
        sys.exit(_self_test())
    print(__doc__)
