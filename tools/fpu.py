#!/usr/bin/env python3
"""fpu.py - x87 FPU expression tracer: turn a function's float asm into algebra.

The recurring wall when lifting B&W formulas (GetTribalPower, fish-food, the belief
sigmoid, desire decay, decision-tree info-gain) is reading x87 code: the stack machine
(fld/fxch/faddp/fstp over st0..st7) hides what algebra is computed. `symbolize.annotate`
resolves the *constants*; this resolves the *expression*.

It simulates the x87 register stack SYMBOLICALLY and prints the algebraic expression that
each fst/fstp stores (and what's left in st0). Memory constants are resolved via rdata.py
(__real@ / rdata_bytes / data_bytes); esp-locals written by an earlier fstp are substituted.

Usage:
  sed -n 'A,Bp' file.asm | python3 tools/fpu.py        # pipe an asm block (e.g. from lift.py)
  python3 tools/fpu.py block.asm                        # ...or a file
  python3 tools/fpu.py --fn 0x4dc310                    # extract a function body and trace it
  python3 tools/fpu.py --struct ClassName ...           # annotate [reg+0xN] with struct fields
  python3 tools/fpu.py --self-test                      # exit 0/1

Output: each fst/fstp-to-memory store prints as `<dest> = <algebra>`, each fcom-family
comparison as a `# compare A vs B` comment, and the residual top-of-stack as
`st0 (result) = ...`. `(no FPU activity)` means the block had no x87 effect.

Constant widths ARE handled: a `qword ptr [rdata_bytes + N]` operand is read as an f64
double (vs f32 for dword), and an `__real@<hex>` MSVC literal decodes to single/double/x87
-extended automatically from the width encoded in its symbol name (see rdata.real_literal).

Honest limits: intra-block-ish (it walks instructions in order; branches/loops are not
modelled - a value re-loaded after a branch is shown symbolically, which is what you want
for reading the formula). Integer<->float spills via plain `mov` are not tracked (only
fst/fstp esp-locals are substituted on reload).
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
try:
    from rdata import RData, real_literal
    _RD = RData()
except Exception:
    _RD = None; real_literal = None
from exprlib import Expr, leaf, const, binop, unop, render   # shared expression engine

# ---- asm parsing ------------------------------------------------------------------------
def parse(raw):
    """Tokenize one raw asm line into (mnemonic, operand-string), or (None, None) to skip it.

    Returns the lowercased mnemonic (with any `.s` short-encoding suffix removed) and the
    rest of the line as the operand string. (None, None) is returned for lines with no FPU
    effect: a `.byte`-encoded instruction (a disassembler fallback we can't model) and
    blank/label-only lines. `trace()` dispatches on the returned mnemonic string directly.
    """
    s = raw.split('//', 1)[0]                          # drop the trailing `// addr bytes` annotation
    if '.byte' in s: return (None, None)               # disasm-encoded branch; no FPU effect
    s = re.sub(r'^\s*[.\w@?$]+:\s', ' ', s)            # strip a leading "label:" (mangled/local/numeric)
    s = re.sub(r'\{[^}]*\}', ' ', s)                   # strip {disp8}/{disp32} encoding-hint markers
    s = s.strip()
    if not s: return (None, None)
    parts = s.split(None, 1)                           # first whitespace splits mnemonic from operands
    mn = re.sub(r'\.s$', '', parts[0].lower())         # drop a `.s` (short-form) encoding suffix
    opnd = parts[1].strip() if len(parts) > 1 else ''
    return (mn, opnd)

def _bracket(opnd):
    """Return the bracketed memory operand `[...]` (whitespace-normalized) or None.

    Used as the canonical key for an esp-local: the same `[esp + 0xN]` text produced by an
    fstp store is matched on a later reload, so the substitution map (`locals_`) lines up.
    """
    m = re.search(r'\[([^\]]+)\]', opnd)
    return '[%s]' % m.group(1).strip() if m else None

def mem_expr(opnd, locals_):
    """Resolve a memory/immediate float operand to an Expr (a constant where possible).

    Order of attempts:
      1. `__real@<hex>` MSVC float-literal symbol -> decoded via real_literal(). The constant's
         width (single/double/x87-extended) is encoded in the symbol name itself, so this
         branch needs no `qword`/`dword` hint - real_literal reads the right width from the hex.
      2. `rdata_bytes`/`data_bytes + 0xN` -> looked up in the resolved .rdata/.data image.
      3. a plain `[mem]` operand -> substituted from `locals_` if it names an esp-local set by a
         prior fstp, else left as an opaque leaf.
      4. anything else -> an opaque leaf (rendered verbatim).
    """
    if '__real@' in opnd and real_literal:
        sym = re.search(r'__real@[0-9a-fA-F@]+', opnd).group(0)
        v = real_literal(sym)                          # width is inferred from the symbol name
        return const(v) if v is not None else leaf(sym)
    m = re.search(r'(rdata_bytes|data_bytes)\s*\+\s*0x([0-9a-fA-F]+)', opnd)
    if m and _RD:
        off = int(m.group(2), 16); sec = 'data' if m.group(1) == 'data_bytes' else 'rdata'
        # The operand size keyword picks the read width: `qword ptr` -> f64 double, else f32 single.
        v = _RD.f64(off, sec) if 'qword' in opnd else _RD.f32(off, sec)
        if v is not None: return const(v)
    br = _bracket(opnd)
    if br is not None:
        if br in locals_: return locals_[br]           # substitute an esp-local set by a prior fstp
        return leaf(br)
    return leaf(opnd)

def _stidx(tok):
    """Parse an `st(N)` register-stack reference, returning N (0 = top), or None if not one."""
    m = re.match(r'st\((\d+)\)', tok.strip())
    return int(m.group(1)) if m else None

# ---- the simulator ----------------------------------------------------------------------
def trace(lines):
    """Symbolically execute a sequence of x87 asm lines, returning (events, final_stack).

    The x87 register file is modelled as a Python list `st` of Expr nodes where `st[-1]` is
    st0 (the top of the stack); fld pushes (append) and fstp pops. Each instruction rewrites
    the affected slot(s) with an algebraic Expr instead of a number, so the trace reads out
    the *formula* being computed rather than any concrete value. Constants (`fld1`, `__real@`,
    rdata slots) become const() leaves; everything else stays symbolic.

    Returns:
      events: a list of (kind, text) pairs - kind 'store' (an fst/fstp to memory) or 'cmp'
              (an fcom-family comparison), already rendered to C-like algebra.
      st:     the final register stack; st[-1] is the residual st0 ("the result").

    Locals: an fstp to `[esp + 0xN]` records the stored Expr in `locals_`; a later load of the
    same slot substitutes it back, so a value spilled and reloaded reads as one expression.
    Honest limits: instructions are walked in order; branches/loops are NOT modelled (a value
    reloaded after a branch shows symbolically, which is what you want for reading a formula).
    """
    st = []                 # st[-1] == st0 (top of FPU stack); append = push, pop = pop
    locals_ = {}            # "[esp + 0xN]" -> Expr (value spilled by a prior fstp)
    ev = []                 # emitted (kind, text) events: 'store' / 'cmp'
    def top(): return st[-1] if st else leaf('?underflow')   # st0, or a marker on empty stack
    def get(i):  # st(i): 0 == top, 1 == one below top, ...
        return st[-1 - i] if len(st) > i else leaf('?st(%d)' % i)
    def setst(i, e):
        if len(st) > i: st[-1 - i] = e
    def combine(base, a, b):  # base in {+,-,*,/,subr,divr}; a=dest (st-slot), b=source operand
        # x87 reverse forms compute source-minus/over-dest, so swap the operands for subr/divr:
        # fsubr/fdivr give `src - dst` / `src / dst` (the opposite of fsub/fdiv).
        if base == 'subr': return binop('-', b, a)
        if base == 'divr': return binop('/', b, a)
        return binop(base, a, b)

    for raw in lines:
        mn, opnd = parse(raw)
        if mn is None:
            continue
        if mn in ('fld', 'fild'):
            i = _stidx(opnd)
            e = get(i) if i is not None else mem_expr(opnd, locals_)
            if mn == 'fild': e = unop('int', e)
            st.append(e)
        elif mn == 'fld1': st.append(const(1.0))
        elif mn == 'fldz': st.append(const(0.0))
        elif mn == 'fldpi': st.append(const(3.14159265358979))
        elif mn == 'fldlg2': st.append(const(0.30102999566398))   # log10(2)
        elif mn == 'fldln2': st.append(const(0.69314718055995))   # ln(2)
        elif mn == 'fldl2e': st.append(const(1.44269504088896))   # log2(e)
        elif mn == 'fldl2t': st.append(const(3.32192809488736))   # log2(10)
        elif mn == 'fyl2x':       # st1 * log2(st0); pop -> one value
            x = top(); y = get(1);
            if st: st.pop()
            setst(0, binop('*', y, unop('log2', x)))
        elif mn == 'fyl2xp1':     # st1 * log2(st0 + 1); pop
            x = top(); y = get(1)
            if st: st.pop()
            setst(0, binop('*', y, unop('log2', binop('+', x, const(1.0)))))
        elif mn == 'f2xm1': setst(0, binop('-', unop('exp2', top()), const(1.0)))  # 2^st0 - 1
        elif mn in ('fsin', 'fcos'):
            setst(0, unop('sin' if mn == 'fsin' else 'cos', top()))
        elif mn in ('fst', 'fstp', 'fist', 'fistp'):
            # fst/fstp store st0; fist/fistp store st0 truncated to an integer.
            # `e` is the value actually written (int-cast for the integer stores), and
            # is used uniformly for the register slot, the store event, and the esp-local
            # substitution map so the truncation is never dropped.
            e = top()
            if mn in ('fist', 'fistp'): e = unop('int', e)
            i = _stidx(opnd)
            if i is not None:
                setst(i, e)
            else:
                br = _bracket(opnd) or opnd
                ev.append(('store', '%s = %s' % (br, render(e))))
                if br and br.startswith('[esp'):
                    locals_[br] = e        # reloads of this local pick up the stored value
            if mn in ('fstp', 'fistp') and st: st.pop()
        elif mn == 'fchs': setst(0, unop('neg', top()))
        elif mn == 'fabs': setst(0, unop('abs', top()))
        elif mn == 'fsqrt': setst(0, unop('sqrt', top()))
        elif mn == 'fxch':
            i = _stidx(opnd) if opnd else 1
            if i is None: i = 1
            if len(st) > i: st[-1], st[-1 - i] = st[-1 - i], st[-1]
        elif mn in ('fcom', 'fcomp', 'fcompp', 'fucom', 'fucomp', 'fucompp', 'fcomi', 'fcomip', 'ftst'):
            other = const(0.0) if mn == 'ftst' else (mem_expr(opnd, locals_) if opnd and 'st(' not in opnd
                     else get(_stidx(opnd) if opnd else 1))
            ev.append(('cmp', 'compare  %s  vs  %s' % (render(top()), render(other))))
            if mn in ('fcomp', 'fucomp', 'fcomip') and st: st.pop()
            if mn in ('fcompp', 'fucompp'):
                if st: st.pop()
                if st: st.pop()
        elif mn in ('fnstsw', 'fstsw'):
            continue
        else:
            # arithmetic family: f{add,sub,subr,mul,div,divr}[p].  `key` peels the base
            # operation off the front of the mnemonic; `subr`/`divr` keep their reverse
            # tag (handled by combine()), the trailing 'p' (pop form) is read separately
            # below. Order matters: 'subr' is tried before 'sub', 'divr' before 'div'.
            base = {'add': '+', 'sub': '-', 'subr': 'subr', 'mul': '*', 'div': '/', 'divr': 'divr'}
            key = re.match(r'f(add|subr|sub|mul|divr|div)', mn)
            if not key:
                continue
            op = base[key.group(1)]
            ispop = mn.endswith('p')
            if ',' in opnd:                                  # two-operand: "dst, src"
                d, s = [x.strip() for x in opnd.split(',', 1)]
                di, si = _stidx(d), _stidx(s)
                a = get(di) if di is not None else top()
                b = get(si) if si is not None else mem_expr(s, locals_)
                res = combine(op, a, b)
                if di is not None: setst(di, res)
                else: setst(0, res)
                if ispop and st: st.pop()
            elif opnd and ('[' in opnd or '__real@' in opnd):  # st0 = st0 OP mem
                setst(0, combine(op, top(), mem_expr(opnd, locals_)))
            else:                                            # pop-form (no operand): st1 = st1 OP st0; pop
                # The no-operand `faddp`/`fsubp`/etc. implicitly takes dest=st1, source=st0.
                # Compute st1 OP st0, pop st0, and leave the result as the new top (st0).
                b = top(); a = get(1)
                res = combine(op, a, b)
                if st: st.pop()
                setst(0, res)
    return ev, st

def trace_text(text, cls=None):
    """Trace a block of asm text and format the result as a printable multi-line report.

    Each store event prints as `  <dest> = <algebra>`; each comparison as a `  # compare ...`
    comment; the residual st0 (if any) prints as `  st0 (result) = ...`. When `cls` is given,
    `structmap.annotate_mem` rewrites `[reg + 0xN]` field accesses with the struct field names
    of that class (best-effort: silently skipped if structmap is unavailable). Returns the
    formatted string, or '(no FPU activity)' when the block produced no events or result.
    """
    ev, st = trace(text.splitlines())
    out = []
    for kind, t in ev:
        out.append(('  ' if kind == 'store' else '  # ') + t)
    if st:
        out.append('  st0 (result) = ' + render(st[-1]))
    if cls:                                          # annotate [reg+0xN] with struct field names
        try:
            from structmap import annotate_mem
            out = [annotate_mem(l, cls) for l in out]
        except Exception: pass
    return '\n'.join(out) if out else '(no FPU activity)'

# ---- function-body extraction (for --fn) ------------------------------------------------
def extract_fn(addr):
    """Find and return the asm body of the function at VA `addr` as a list of lines, or None.

    Scans every `src/asm/**/*.asm` dump (skipping rdata/data constant dumps) for the line
    whose trailing `// 0x<8-digit addr>` annotation marks the function entry, then collects
    forward up to the first `ret` (or 200 lines, whichever comes first - a guard against an
    unterminated run). This is a heuristic suited to single-block leaf functions; multi-block
    functions stop at their first ret, which is fine for reading the leading float formula.
    """
    import glob
    needle = re.compile(r'//\s*0x%08x(?:\s|$)' % addr)   # the `// 0x........` entry annotation
    for f in glob.glob(os.path.join(ROOT, 'src/asm/**/*.asm'), recursive=True):
        if os.path.basename(f).startswith(('rdata', 'data')): continue   # skip constant dumps
        with open(f, encoding='latin-1') as fh:          # latin-1: lossless byte passthrough
            lines = fh.read().split('\n')
        for i, l in enumerate(lines):
            if needle.search(l):
                body = []
                j = i
                while j < len(lines) and len(body) < 200:   # 200-line guard against runaway
                    cur = lines[j]
                    if re.search(r'\bret\b', cur):
                        body.append(cur); break
                    body.append(cur); j += 1
                return body
    return None

# ---- self-test --------------------------------------------------------------------------
def _self_test():
    ok = True
    def chk(cond, name, got=None):
        nonlocal ok
        ok = ok and cond
        print(("  PASS " if cond else "  FAIL ") + name + ("" if cond else "   got: %r" % (got,)))
    def store_of(text):
        ev, _ = trace(text.splitlines())
        return [t for k, t in ev if k == 'store']
    def res_of(text):
        _, st = trace(text.splitlines())
        return render(st[-1]) if st else None

    # 1) desire decay: [esi] = decayMult * [esi]
    r = store_of("fld dword ptr [esi + 0x140]\nfmul dword ptr [esi]\nfstp dword ptr [esi]")
    chk(r == ['[esi + 0x140] = ...'] or r == ['[esi] = [esi + 0x140] * [esi]'],
        "decay: [esi] = [esi + 0x140] * [esi]", r)
    # 2) esp-local substitution: spill [edx] to a local, reload it later -> substituted
    r = store_of("fld dword ptr [edx]\nfstp dword ptr [esp + 0x14]\n"
                 "fld dword ptr [esi]\nfadd dword ptr [esp + 0x14]\nfstp dword ptr [esi]")
    chk(r == ['[esp + 0x14] = [edx]', '[esi] = [esi] + [edx]'], "esp-local substitution", r)
    # 3) constant resolution via __real@ (1.0)
    chk(res_of("fld dword ptr [__real@3f800000]") == '1', "__real@3f800000 -> 1", res_of("fld dword ptr [__real@3f800000]"))
    # 4) a*b + c using pop-forms:  fld a; fld b; fmulp; fld c; faddp; fstp d
    r = store_of("fld dword ptr [a]\nfld dword ptr [b]\nfmulp st(1), st(0)\n"
                 "fld dword ptr [c]\nfaddp st(1), st(0)\nfstp dword ptr [d]")
    chk(r == ['[d] = [a] * [b] + [c]'], "a*b+c (pop-forms)", r)
    # 5) precedence: (a + b) * c
    r = store_of("fld dword ptr [a]\nfadd dword ptr [b]\nfmul dword ptr [c]\nfstp dword ptr [d]")
    chk(r == ['[d] = ([a] + [b]) * [c]'], "precedence (a+b)*c", r)
    # 6) fsubr (reverse): st0 = mem - st0  ->  [d] = [b] - [a]
    r = store_of("fld dword ptr [a]\nfsubr dword ptr [b]\nfstp dword ptr [d]")
    chk(r == ['[d] = [b] - [a]'], "fsubr reverse", r)
    # 7) fdivr reverse: [d] = [b] / [a]
    r = store_of("fld dword ptr [a]\nfdivr dword ptr [b]\nfstp dword ptr [d]")
    chk(r == ['[d] = [b] / [a]'], "fdivr reverse", r)
    # 8) sqrt + chs
    chk(res_of("fld dword ptr [a]\nfsqrt\nfchs") == '-sqrt([a])', "sqrt+chs",
        res_of("fld dword ptr [a]\nfsqrt\nfchs"))
    # 9) fxch then non-commutative sub:  a, b on stack; fxch; fsubrp -> ?
    r = store_of("fld dword ptr [a]\nfld dword ptr [b]\nfxch st(1)\nfsubp st(1), st(0)\nfstp dword ptr [d]")
    chk(r == ['[d] = [b] - [a]'], "fxch + fsubp", r)
    # 10) right-assoc parens: a - (b + c)  via  fld a; fld b; fadd c; fsubp
    r = store_of("fld dword ptr [a]\nfld dword ptr [b]\nfadd dword ptr [c]\nfsubp st(1), st(0)\nfstp dword ptr [d]")
    chk(r == ['[d] = [a] - ([b] + [c])'], "right operand parens", r)
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _opt_value(args, opt):
    """Return the argument following `opt`, or exit with a usage error if it is missing.

    Guards the common `args[args.index(opt) + 1]` pattern against an IndexError when the
    option is given as the final token with no value (e.g. a bare trailing `--fn`).
    """
    i = args.index(opt)
    if i + 1 >= len(args):
        sys.exit('error: %s requires a value' % opt)
    return args[i + 1]

if __name__ == '__main__':
    a = sys.argv[1:]
    if '--self-test' in a:
        sys.exit(_self_test())
    cls = _opt_value(a, '--struct') if '--struct' in a else None
    consumed = set()                           # indices of option VALUES, so they aren't read as files
    for opt in ('--struct', '--fn'):
        if opt in a: consumed.add(a.index(opt) + 1)
    if '--fn' in a:
        raw_addr = _opt_value(a, '--fn')
        try:
            addr = int(raw_addr, 16)           # accept hex with/without 0x, upper or lower case
        except ValueError:
            sys.exit('error: --fn expects a hex address (e.g. 0x4dc310), got %r' % raw_addr)
        body = extract_fn(addr)
        if not body:
            print('(no body found at 0x%x)' % addr); sys.exit(1)
        print(trace_text('\n'.join(body), cls)); sys.exit()
    files = [x for i, x in enumerate(a) if not x.startswith('-') and i not in consumed]
    if files:
        with open(files[0], encoding='latin-1') as fh:   # close the handle (Windows file-lock safe)
            print(trace_text(fh.read(), cls))
        sys.exit()
    print(trace_text(sys.stdin.read(), cls))
