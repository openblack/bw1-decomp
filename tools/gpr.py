#!/usr/bin/env python3
"""gpr.py - integer/GPR algebra tracer: turn integer asm into algebra.

The sibling of fpu.py (which does x87 floats). Many B&W formulas are integer: table
indexing (`lea edi+edi*4; shl 3` = the goal-dispatch stride 0x28), struct-offset math,
counts, the decision-tree candidate setup (0x4d68f0 has *no* float ops). This simulates
the general-purpose registers SYMBOLICALLY and prints what each memory store / compare /
call computes, plus the final value in each register - with `lea` address arithmetic
folded (`edi + edi*4 << 3` -> `edi * 0x28`), constants resolved via rdata, and esp-locals
substituted. Shares the expression engine (exprlib) with fpu.py.

Usage:
  sed -n 'A,Bp' file.asm | python3 tools/gpr.py        # pipe an asm block (or lift.py | gpr.py)
  python3 tools/gpr.py block.asm
  python3 tools/gpr.py --fn 0x4d68f0                    # extract+trace a function body
  python3 tools/gpr.py --self-test

Honest limits: linear (branches/loops not modelled - trace one path); no flags-precise
modelling (cmp/test recorded symbolically); push/pop don't update a modelled stack
(esp-relative *locals* written by `mov [esp+N],r` are tracked); partial-register writes
(al/ax) are approximated as the 32-bit parent.

Width/signedness caveats (value-level, deliberate):
  * `shr` (logical) and `sar` (arithmetic) are BOTH rendered as the C `>>`, because the
    shared exprlib has only one right-shift operator; the logical-vs-arithmetic (sign)
    distinction is therefore lost in the output. Read a `>>` on a value known to be signed
    as an `sar`.
  * `movzx` (zero-extend) and `movsx` (sign-extend) both copy the source value unchanged;
    the extension width/sign is not modelled, so a sign-extended negative byte reads the
    same as a zero-extended one.
  * Forms whose result can't be expressed are marked UNKNOWN (a `?` leaf) rather than left
    stale: single-operand `imul reg` (edx:eax = eax*reg) clobbers eax+edx to `?`, and a
    read-modify-write of *tracked* esp-local memory (`inc/dec/neg/not dword ptr [esp+N]`)
    invalidates that local. This avoids a confidently-wrong trace from a silently-skipped op.
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from exprlib import Expr, leaf, const, binop, unop, render
try:
    from rdata import RData; _RD = RData()
except Exception:
    _RD = None
try:
    from symbols import Symbols; _SY = Symbols()
except Exception:
    _SY = None

REG32 = ['eax', 'ebx', 'ecx', 'edx', 'esi', 'edi', 'ebp', 'esp']
ALIAS = {'al': 'eax', 'ax': 'eax', 'bl': 'ebx', 'bx': 'ebx', 'cl': 'ecx', 'cx': 'ecx',
         'dl': 'edx', 'dx': 'edx', 'si': 'esi', 'di': 'edi', 'bp': 'ebp',
         'ah': 'eax', 'bh': 'ebx', 'ch': 'ecx', 'dh': 'edx'}
def _norm(r):
    """Collapse a sub-register name to its 32-bit parent (e.g. `al`/`ax`/`ah` -> `eax`).

    Partial-register writes are approximated as the full 32-bit register (see module doc),
    so every register slot in the simulator is keyed by its 32-bit name.
    """
    return ALIAS.get(r, r)
def _isreg(t):
    """True iff `t` names a GP register (32-bit or one of its 8/16-bit aliases)."""
    return t in REG32 or t in ALIAS

def parse(raw):
    """Tokenize one disassembly line into `(mnemonic, operand_text)` (or `(None, None)`).

    Handles the src/asm dump shape: strip the trailing `// 0xADDR ...` comment, skip `.byte`
    data lines, drop a leading `label:` (mangled/dotted/`@`/`$` forms), and remove any
    `{...}` raw-machine-code blob the disassembler emits. The mnemonic is lower-cased and its
    `.s` (short-form) suffix removed so callers can match on the bare opcode.
    """
    s = raw.split('//', 1)[0]                    # drop the trailing "// 0xADDR <bytes>" comment
    if '.byte' in s: return (None, None)         # data emission, not an instruction
    s = re.sub(r'^\s*[.\w@?$]+:\s', ' ', s)      # strip a leading "label:" (incl. mangled ?names, .locals)
    s = re.sub(r'\{[^}]*\}', ' ', s)             # strip "{ ...raw bytes... }" machine-code blobs
    s = s.strip()
    if not s: return (None, None)
    p = s.split(None, 1)
    return (re.sub(r'\.s$', '', p[0].lower()), p[1].strip() if len(p) > 1 else '')

def _bracket(opnd):
    """Return the text inside the first `[...]` memory operand, or None if there is none."""
    m = re.search(r'\[([^\]]+)\]', opnd)
    return m.group(1).strip() if m else None

# Immediate operand: optional sign, then hex (0x..., upper- or lower-case) or decimal.
IMM = re.compile(r'-?0x[0-9a-fA-F]+$|-?\d+$')
def _imm(t):
    """Parse an immediate token to int. `int(t, 0)` auto-detects the 0x hex prefix (any case)."""
    return int(t, 0)

def val_expr(opnd, regs, locals_):
    """value of a source operand (register / immediate / memory LOAD)."""
    opnd = opnd.strip()
    if IMM.match(opnd): return const(_imm(opnd))
    if _isreg(opnd): return regs[_norm(opnd)]
    if '[' in opnd:
        # Resolve a load from a named .rdata/.data slot (`[rdata_bytes + 0xNN]`) to its concrete
        # u32 constant via rdata.py. Only these symbolized section tokens are looked up; a raw
        # absolute address is left symbolic (we don't know which section it belongs to).
        m = re.search(r'(rdata_bytes|data_bytes)\s*\+\s*0x([0-9a-fA-F]+)', opnd)
        if m and _RD:
            v = _RD.u32(int(m.group(2), 16), 'data' if m.group(1) == 'data_bytes' else 'rdata')
            if v is not None: return const(v)
        br = _bracket(opnd)
        if br in locals_: return locals_[br]
        return leaf('[%s]' % br)
    return leaf(opnd)

def addr_expr(opnd, regs):
    """address arithmetic for lea: [base + idx*scale + disp] -> base + idx*scale + disp."""
    br = _bracket(opnd)
    if br is None: return leaf(opnd)
    e = None
    for part in br.split('+'):
        part = part.strip()
        if '*' in part:
            r, s = [x.strip() for x in part.split('*', 1)]
            term = binop('*', regs[_norm(r)] if _isreg(r) else leaf(r), const(_imm(s)))
        elif IMM.match(part):
            term = const(_imm(part))
        elif _isreg(part):
            term = regs[_norm(part)]
        else:
            term = leaf(part)
        e = term if e is None else binop('+', e, term)
    return e

def _calltarget(opnd):
    """Render a `call` operand as a readable callee name.

    Prefers a symbolized `Class::Method()` (via symbols.py); falls back to `sub_<addr>()`
    for a label-less `_jmp_addr_0x...` thunk target, else echoes the raw operand as `op()`.
    """
    if _SY:
        f = _SY.resolve(opnd.strip())
        if f: return '%s::%s()' % (f.cls, f.method)
    m = re.search(r'_jmp_addr_0x([0-9a-f]+)', opnd)
    if m: return 'sub_%s()' % m.group(1)
    return '%s()' % opnd.strip()

def trace(lines):
    """Symbolically execute a straight-line asm block; return `(events, regs)`.

    State model:
      * `regs`   - one Expr per 32-bit GP register, seeded to its own-name leaf (`eax`=leaf
                   'eax'); each instruction rewrites the destination's Expr.
      * `locals_`- esp-relative stack slots written by `mov [esp+N], r`, keyed by the bracket
                   text, so a later `mov r, [esp+N]` reads the stored Expr back (round-trip).
      * `ev`     - ordered list of `(kind, text)` side-effect events for memory STOREs, CMP/
                   TEST compares, and CALLs (the things worth printing besides final regs).

    A destination whose new value cannot be expressed is set to an UNKNOWN `?` leaf (see the
    width/signedness caveats in the module docstring) rather than left holding a stale Expr.
    """
    regs = {r: leaf(r) for r in REG32}
    locals_ = {}
    ev = []
    unknown = lambda: leaf('?')                       # marker for an unmodellable result
    for raw in lines:
        mn, opnd = parse(raw)
        if mn is None: continue
        two = [x.strip() for x in opnd.split(',')] if opnd else []
        if mn == 'mov' and len(two) == 2:
            d, s = two
            if _isreg(d):
                regs[_norm(d)] = val_expr(s, regs, locals_)
            elif '[' in d:
                br = _bracket(d); e = val_expr(s, regs, locals_)
                ev.append(('store', '[%s] = %s' % (br, render(e))))
                if br and br.startswith('esp'): locals_[br] = e
        elif mn in ('movzx', 'movsx') and len(two) == 2:
            # Both extensions copy the value through unchanged; the zero-vs-sign extension
            # width is NOT modelled (see module doc), so movsx of a negative byte looks like movzx.
            regs[_norm(two[0])] = val_expr(two[1], regs, locals_)
        elif mn == 'lea' and len(two) == 2:
            regs[_norm(two[0])] = addr_expr(two[1], regs)
        elif mn in ('add', 'sub', 'and', 'or', 'xor', 'imul') and len(two) == 2:
            d, s = two
            if mn == 'xor' and d == s:
                regs[_norm(d)] = const(0)                          # `xor r,r` is the zero-idiom
            elif _isreg(d):
                op = {'add': '+', 'sub': '-', 'and': '&', 'or': '|', 'xor': '^', 'imul': '*'}[mn]
                regs[_norm(d)] = binop(op, regs[_norm(d)], val_expr(s, regs, locals_))
        elif mn == 'imul' and len(two) == 3:                       # imul r, src, imm
            regs[_norm(two[0])] = binop('*', val_expr(two[1], regs, locals_), const(_imm(two[2])))
        elif mn == 'imul' and len(two) == 1:
            # Single-operand form: edx:eax = eax * operand. The 64-bit product across the
            # edx:eax pair isn't expressible here, so mark both halves UNKNOWN (not stale).
            regs['eax'] = unknown(); regs['edx'] = unknown()
        elif mn in ('shl', 'shr', 'sar') and len(two) == 2:
            d, s = two
            # NOTE: shr (logical) and sar (arithmetic) both map to C `>>` - the sign distinction
            # is lost because exprlib has a single right-shift operator (see module doc).
            op = '<<' if mn == 'shl' else '>>'
            cnt = val_expr(s, regs, locals_)
            regs[_norm(d)] = binop(op, regs[_norm(d)], cnt)
        elif mn in ('neg', 'not', 'inc', 'dec') and _isreg(opnd):
            r = _norm(opnd)
            regs[r] = {'neg': lambda e: unop('neg', e), 'not': lambda e: unop('~', e),
                       'inc': lambda e: binop('+', e, const(1)),
                       'dec': lambda e: binop('-', e, const(1))}[mn](regs[r])
        elif mn in ('neg', 'not', 'inc', 'dec') and opnd and '[' in opnd:
            # Read-modify-write of a memory operand. If it targets a tracked esp-local, its
            # stored value is now stale, so invalidate that local (mark UNKNOWN) instead of
            # silently keeping the old Expr.
            br = _bracket(opnd)
            if br in locals_: locals_[br] = unknown()
        elif mn in ('cmp', 'test') and len(two) == 2:
            a = val_expr(two[0], regs, locals_); b = val_expr(two[1], regs, locals_)
            ev.append(('cmp', 'compare  %s  vs  %s' % (render(a), render(b))))
        elif mn == 'call':
            regs['eax'] = leaf(_calltarget(opnd))
            ev.append(('call', 'eax = ' + render(regs['eax'])))
    return ev, regs

def trace_text(text, cls=None):
    """Trace an asm block (string) and format it for printing.

    Emits each store/cmp/call event (`# ` prefix for comparisons & calls, plain indent for
    stores), then a `--- registers ---` section listing every register whose value changed
    from its initial own-name leaf. If `cls` is given, `[reg+0xN]` operands are annotated
    with the matching struct field names via structmap (best-effort; silent if unavailable).
    """
    ev, regs = trace(text.splitlines())
    out = [('  ' if k == 'store' else '  # ') + t for k, t in ev]
    changed = [r for r in REG32 if not (regs[r].op == 'leaf' and regs[r].text == r)]
    if changed:
        out.append('  --- registers ---')
        for r in changed:
            out.append('  %s = %s' % (r, render(regs[r])))
    if cls:                                          # annotate [reg+0xN] with struct field names
        try:
            from structmap import annotate_mem
            out = [annotate_mem(l, cls) for l in out]
        except Exception: pass
    return '\n'.join(out) if out else '(no integer activity)'

def extract_fn(addr):
    """Find a function body in src/asm by its `// 0x<addr>` marker; return its lines or None.

    Scans every `src/asm/**/*.asm` (skipping rdata/data dumps), locates the line whose
    address comment matches `addr`, then collects forward up to the first `ret` (cap 200
    lines) as a single straight-line body for `trace` to simulate.
    """
    import glob
    # Match the disassembler's "// 0x0049abcd" address comment (8-digit, lower-case hex).
    needle = re.compile(r'//\s*0x%08x(?:\s|$)' % addr)
    for f in glob.glob(os.path.join(ROOT, 'src/asm/**/*.asm'), recursive=True):
        if os.path.basename(f).startswith(('rdata', 'data')): continue
        with open(f, encoding='latin-1') as fh:        # `with` so the handle is closed each iter
            lines = fh.read().split('\n')
        for i, l in enumerate(lines):
            if needle.search(l):
                body = []; j = i
                while j < len(lines) and len(body) < 200:
                    body.append(lines[j])
                    if re.search(r'\bret\b', lines[j]): break   # straight-line body ends at first ret
                    j += 1
                return body
    return None

def _self_test():
    """Verify the tracer on representative B&W index/stride/offset idioms. Returns 0/1."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c
        print(("  PASS " if c else "  FAIL ") + n + ("" if c else "   got: %r" % (got,)))
    def regs_of(t):
        _, r = trace(t.splitlines()); return {k: render(v) for k, v in r.items()}
    def stores_of(t):
        ev, _ = trace(t.splitlines()); return [x for k, x in ev if k == 'store']

    # 1) goal-dispatch index math: lea edi+edi*4 ; shl 3  ->  edi * 0x28 (=40)
    chk(regs_of("lea eax, [edi + edi * 0x4]\nshl eax, 0x3")['eax'] == 'edi * 0x28',
        "lea+shl dispatch stride edi*0x28", regs_of("lea eax, [edi + edi * 0x4]\nshl eax, 0x3")['eax'])
    # 2) mov chain to a table base (GetBaseInfo style)
    chk(regs_of("mov eax, dword ptr [esp + 0x04]\nmov eax, 0x00c6c490")['eax'] == '0xc6c490',
        "mov reg, imm table base")
    # 3) imul 3-op: ecx * 0x110 (CreatureActionInfo stride)
    chk(regs_of("mov eax, ecx\nimul eax, eax, 0x110")['eax'] == 'ecx * 0x110', "imul stride 0x110")
    # 4) add disp
    chk(regs_of("mov eax, esi\nadd eax, 0x68")['eax'] == 'esi + 0x68', "add disp")
    # 5) xor self -> 0
    chk(regs_of("xor eax, eax")['eax'] == '0', "xor self -> 0")
    # 6) esp-local round trip
    chk(regs_of("mov dword ptr [esp + 0x4], ecx\nmov eax, dword ptr [esp + 0x4]")['eax'] == 'ecx',
        "esp-local substitution")
    # 7) lea with index+disp (no fold)
    chk(regs_of("lea eax, [esi + ecx * 0x4 + 0x68]")['eax'] == 'esi + ecx * 4 + 0x68',
        "lea base+idx*scale+disp", regs_of("lea eax, [esi + ecx * 0x4 + 0x68]")['eax'])
    # 8) shl-as-mul fold with add: edx*4 + edx -> edx*5
    chk(regs_of("mov eax, edx\nshl eax, 0x2\nadd eax, edx")['eax'] == 'edx * 5',
        "shl+add fold edx*5", regs_of("mov eax, edx\nshl eax, 0x2\nadd eax, edx")['eax'])
    # 9) store event
    chk(stores_of("mov eax, 0x148\nmov dword ptr [edx], eax") == ['[edx] = 0x148'], "store event")
    # 10) table indexed load: mov edx,[eax + 0x00c87850] after eax=type*0x28
    s = regs_of("lea eax, [edi + edi * 0x4]\nshl eax, 0x3\nmov edx, dword ptr [eax + 0x00c87850]")
    chk(s['edx'] == '[eax + 0x00c87850]', "indexed table load (symbolic)", s['edx'])
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _opt_value(args, opt):
    """Return the token following `opt`, or exit with a usage error if it is missing.

    Guards the bare `args[args.index(opt)+1]` pattern against an IndexError when the option
    is given as the final argument (no value follows it).
    """
    i = args.index(opt) + 1
    if i >= len(args):
        sys.exit('error: %s requires a value' % opt)
    return args[i]

if __name__ == '__main__':
    a = sys.argv[1:]
    if '--self-test' in a: sys.exit(_self_test())
    cls = _opt_value(a, '--struct') if '--struct' in a else None
    # Indices of tokens that are OPTION VALUES (not positional input files); excluded below so a
    # value like the struct name or a function address isn't mistaken for an input asm file.
    consumed = set()
    for opt in ('--struct', '--fn'):
        if opt in a: consumed.add(a.index(opt) + 1)
    if '--fn' in a:
        addr_tok = _opt_value(a, '--fn')
        try:
            addr = int(addr_tok, 16)                   # --fn takes a hex address (any case)
        except ValueError:
            sys.exit('error: --fn expects a hex address, got %r' % addr_tok)
        body = extract_fn(addr)
        print(trace_text('\n'.join(body), cls) if body else '(no body found)'); sys.exit()
    files = [x for i, x in enumerate(a) if not x.startswith('-') and i not in consumed]
    if files:
        with open(files[0], encoding='latin-1') as fh:
            print(trace_text(fh.read(), cls))
        sys.exit()
    print(trace_text(sys.stdin.read(), cls))
