#!/usr/bin/env python3
"""propose.py - trace-driven candidate C bodies (the tier autolift can't reach).

autolift pattern-matches fixed asm shapes (getters/consts). propose *simulates* a straight-line
function with gpr.py (integer) / fpu.py (float), then translates the returned expression tree into
C - this-relative field derefs, constants, and ARITHMETIC (`return *(float*)(this+0x10) *
*(float*)(this+0x14);`). It is deliberately conservative (bails on branches, calls, indexed memory,
non-`this` bases, transcendentals) and **gate-protected**: pair with liftgate so only byte-exact
proposals are ever kept.

Usage:
  python tools/propose.py <Name@Class>            # print the candidate body
  python tools/propose.py <Name@Class> --gate     # propose AND verify-gate it (keep iff byte-exact)
  python tools/propose.py --sweep [--limit N]     # batch: splice every staging stub's proposal,
                                                  #   per-file gate (keep iff byte-match rises, no
                                                  #   regression). REBUILDS the project (mutates
                                                  #   files + objdiff state); --limit caps files.
  python tools/propose.py --self-test             # translator self-test (no build)
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gpr, fpu
from exprlib import fmt_int

THIS = "ecx"   # __thiscall: this is in ecx

# --- translate an exprlib Expr tree -> C (or None to bail) -----------------------------------
_MEM = re.compile(r"\[([a-z]{2,3})(?:\s*\+\s*0x([0-9a-fA-F]+))?\]$")
# Symbolic section names (emitted by the disassembler) -> their PE section base VA in
# win1.41. A `[data_bytes + OFF]` operand thus resolves to the absolute address
# base + OFF. These MUST track the target binary's section layout: a wrong base here
# silently produces wrong addresses in the emitted C (the gate would then reject it).
_SECT = {"rdata_bytes": 0x8a9000, "data_bytes": 0x9c6000}   # section bases -> absolute VA
def _leaf_c(text, deref_t):
    """Translate an integer-domain expr leaf to a C value, or None to bail.

    Recognized leaves: `this`/`ecx` -> "this"; a `[section_bytes + OFF]` global read ->
    `*(T*)0xVA`; a this-relative load `[ecx]`/`[ecx + 0xN]` -> `*(T*)((char*)this + N)`;
    an integer constant -> itself. Anything else (non-`this` base register, indexed
    memory) returns None so the translator refuses to emit an unverified body.
    `deref_t` is the C type the memory load is cast through.
    """
    t = text.strip()
    if t in (THIS, "this"): return "this"
    g = re.match(r"\[(rdata_bytes|data_bytes)\s*\+\s*0x([0-9a-fA-F]+)\]$", t)
    if g:                                             # global read: mov eax,[data_bytes+OFF] -> *(T*)0xVA
        return "*(%s*)0x%x" % (deref_t, _SECT[g.group(1)] + int(g.group(2), 16))
    m = _MEM.match(t)                                  # [base] or [base + 0xN]  (no index!)
    if m:
        base, off = m.group(1), m.group(2)
        if base != THIS: return None                  # only this-relative loads are safe to emit
        o = int(off, 16) if off else 0
        return "*(%s*)((char*)this + 0x%x)" % (deref_t, o) if o else "*(%s*)this" % deref_t
    if re.fullmatch(r"-?0x[0-9a-fA-F]+|-?\d+", t): return t
    return None

def _fc(v):
    """Render a constant as a C literal.

    A float gets a round-trippable `repr()` plus an `f` suffix (e.g. 1.5 -> "1.5f");
    an int is emitted verbatim. Non-finite floats (inf/nan) have no valid C literal
    form -- `repr()` would yield "inff"/"nanf", which will not compile -- so we
    return None to make the caller bail rather than emit uncompilable output.
    """
    if isinstance(v, float):
        # math.isfinite guards against inf/nan, whose repr ("inf"/"nan") + "f"
        # is not a legal C floating literal.
        import math
        if not math.isfinite(v): return None
        return repr(v) + "f"
    return str(v)

def _gpr_param_map(body, pnames):
    """leading `mov R, [esp+P]` loads -> {R: c_param_expr}. Lets fpu fld-addresses resolve a
       GPR index (e.g. GBelief::GetBeliefInPlayer: mov eax,[esp+4]; fld [ecx+eax*4+8])."""
    pm = {}
    if not pnames: return pm
    for l in body:
        mn, o = gpr.parse(l)
        if mn != "mov": continue
        g = re.match(r"([a-z]+), (?:dword|byte|word) ptr \[esp\s*\+\s*0x([0-9a-fA-F]+)\]$", o or "")
        if not g: continue
        pidx = (int(g.group(2), 16) // 4) - 1
        if 0 <= pidx < len(pnames) and pnames[pidx]: pm[g.group(1)] = pnames[pidx]
    return pm

def _fmem_c(inner, deref_t, pmap):
    """fpu memory leaf (bracket CONTENT, e.g. 'ecx + eax * 0x4 + 0x8') -> *(T*)(...).
       this-relative only; a GPR index must resolve via pmap (a known param)."""
    base = idx = None; scale = 1; disp = 0; pmap = pmap or {}
    inner = inner.strip()
    if inner.startswith("[") and inner.endswith("]"): inner = inner[1:-1].strip()
    if inner in (THIS, "this"): return "*(%s*)this" % deref_t
    for part in inner.split("+"):
        part = part.strip()
        if not part: continue
        if "*" in part:
            r, s = (x.strip() for x in part.split("*", 1))
            if idx is not None: return None
            idx, scale = r, int(s, 0)
        elif re.fullmatch(r"-?0x[0-9a-fA-F]+|-?\d+", part):
            disp += int(part, 0)
        elif base is None:
            base = part
        else:
            return None                               # two non-scaled regs -> bail
    if base not in (THIS, "this"): return None        # this-relative loads only
    if idx is None and disp == 0: return "*(%s*)this" % deref_t
    parts = ["(char*)this"]
    if idx is not None:
        if idx not in pmap: return None
        parts.append("%s * %d" % (pmap[idx], scale) if scale != 1 else pmap[idx])
    if disp: parts.append("0x%x" % disp)
    return "*(%s*)(%s)" % (deref_t, " + ".join(parts))

from exprlib import PREC, NONCOMM
def _c(e, deref_t, isflt, pmap=None):
    """returns (c_string, precedence) or None to bail. precedence 99 = atomic (leaf/const/deref)."""
    if e is None: return None
    if e.op == "leaf":
        s = _fmem_c(e.text, deref_t, pmap) if isflt else _leaf_c(e.text, deref_t)
        return (s, 99) if s else None
    if e.op == "const":
        if isflt:
            fc = _fc(e.val)                            # None for non-finite (inf/nan) -> bail
            return (fc, 99) if fc is not None else None
        return (fmt_int(e.val), 99)
    if e.op in ("neg", "~"):
        r = _c(e.kids[0], deref_t, isflt, pmap)
        if not r: return None
        return ("%s%s" % ("-" if e.op == "neg" else "~", r[0] if r[1] >= 8 else "(%s)" % r[0]), 8)
    if e.op in PREC:                                   # +,-,*,/,&,|,^,<<,>>
        ra = _c(e.kids[0], deref_t, isflt, pmap); rb = _c(e.kids[1], deref_t, isflt, pmap)
        if not ra or not rb: return None
        p = PREC[e.op]
        a = ra[0] if ra[1] >= p else "(%s)" % ra[0]
        b = rb[0] if (rb[1] > p or (rb[1] == p and e.op not in NONCOMM)) else "(%s)" % rb[0]
        return ("%s %s %s" % (a, e.op, b), p)
    return None                                       # abs/sqrt/log2/sin/int/... -> bail

def expr_to_c(e, deref_t, isflt, pmap=None):
    """Public translator: render an exprlib Expr tree as a C expression string, or None.

    Thin wrapper over `_c` that discards the precedence component of its (string, prec)
    result. `deref_t` is the C type memory leaves load through; `isflt` selects the
    float (`_fmem_c`) vs integer (`_leaf_c`) leaf translator; `pmap` maps GPR names to
    C param expressions for index resolution. Returns None whenever any subtree bails.
    """
    r = _c(e, deref_t, isflt, pmap)
    return r[0] if r else None

# --- function plumbing ---------------------------------------------------------------------
import functools as _ft
@_ft.lru_cache(maxsize=1)
def _syms():
    from symbols import Symbols; return Symbols()
def _addr(name):
    """Resolve a function NAME to its start VA (int), or None if unknown.

    Tries four lookups in order so callers can pass any name form: the symbolizer's
    `resolve()`, the by-cname table, the by-mangled table, and finally a manual
    `Method@Class` scan (split on the first '@') for names that none of the tables
    index directly. Returns None on any miss or lookup error.
    """
    try:
        H = _syms()
        f = H.resolve(name) or H.by_cname.get(name) or H.by_mangled.get(name)
        if not f and "@" in name and not name.startswith(("?", "@")):
            meth, cls = name.split("@", 1)[0], name.split("@", 1)[1]
            f = next((x for x in H.by_cname.values() if x.cls == cls and x.method == meth), None)
        return int(f.addr, 16) if f and f.addr else None
    except Exception:
        return None

_M_THISLD = re.compile(r"([a-z]+), (?:dword|byte|word) ptr \[ecx(?:\s*\+\s*0x([0-9a-fA-F]+))?\]$")
_M_ARGLD  = re.compile(r"([a-z]+), (?:dword|byte|word) ptr \[esp\s*\+\s*0x([0-9a-fA-F]+)\]$")
def _indexed_getter(body, rt, pnames):
    """mov R1,[this+A]; mov R2,[esp+P]; mov eax,[R1+R2*S+D]; ret -> param-indexed array getter.
       e.g. Animal::GetDetailMesh: return *(int*)(*(char**)((char*)this+0x28) + param_1*4 + 0x1fc);"""
    if not pnames or not rt or rt == "void": return None
    ins = [(m, o) for m, o in (gpr.parse(l) for l in body) if m]
    if len(ins) < 4 or ins[3][0] != "ret": return None
    if not (ins[0][0] == ins[1][0] == ins[2][0] == "mov"): return None
    g0, g1 = _M_THISLD.match(ins[0][1]), _M_ARGLD.match(ins[1][1])
    if not g0 or not g1: return None
    R1, A = g0.group(1), int(g0.group(2) or "0", 16)   # R1 = array base reg, A = field offset on this
    R2, P = g1.group(1), int(g1.group(2), 16)           # R2 = index reg, P = its [esp+P] arg slot
    if R1 == R2 or R1 == "ecx": return None
    # Terminal scaled-index load `eax, <sz> ptr [R1 + R2*S + D]`: S = element scale,
    # D = optional trailing displacement. R1/R2 are %-interpolated from the two prior movs.
    g2 = re.match(r"eax, (?:dword|byte|word) ptr \[%s\s*\+\s*%s\s*\*\s*0x([0-9a-fA-F]+)"
                  r"(?:\s*\+\s*0x([0-9a-fA-F]+))?\]$" % (R1, R2), ins[2][1])
    if not g2: return None
    S, D = int(g2.group(1), 16), int(g2.group(2) or "0", 16)
    pidx = (P // 4) - 1                                 # thiscall: arg1 @ [esp+4], arg2 @ [esp+8]...
    if pidx < 0 or pidx >= len(pnames) or not pnames[pidx]: return None
    pn = pnames[pidx]
    base = "*(char**)((char*)this + 0x%x)" % A if A else "*(char**)this"
    inner = base + (" + %s * %d" % (pn, S) if S != 1 else " + %s" % pn) + (" + 0x%x" % D if D else "")
    return "return *(%s*)(%s);" % (rt, inner)

def _chain_getter(body, rt):
    """multi-hop this-relative chain gpr can't follow: mov R,[ecx+A0]; mov R,[R+A1]; ...; mov eax,[R+An]; ret
       -> return *(T*)((char*)*(void**)((char*)...this+A0)..+An);  (>=2 hops; 1-hop is the generic path)"""
    if not rt or rt == "void": return None
    ins = [(m, o) for m, o in (gpr.parse(l) for l in body) if m]
    if len(ins) < 3 or ins[-1][0] != "ret": return None
    movs = ins[:-1]
    if any(m != "mov" for m, _ in movs): return None
    g = re.match(r"([a-z]+), (?:dword|byte|word) ptr \[ecx(?:\s*\+\s*0x([0-9a-fA-F]+))?\]$", movs[0][1])
    if not g: return None
    reg, offs = g.group(1), [int(g.group(2) or "0", 16)]
    for _, o in movs[1:]:
        g = re.match(r"%s, (?:dword|byte|word) ptr \[%s(?:\s*\+\s*0x([0-9a-fA-F]+))?\]$" % (reg, reg), o)
        if not g: return None
        offs.append(int(g.group(1) or "0", 16))
    if len(offs) < 2: return None                      # 1-hop -> generic path
    expr = "this"
    for off in offs[:-1]:
        expr = "*(void**)((char*)%s%s)" % (expr, " + 0x%x" % off if off else "")
    last = offs[-1]
    return "return *(%s*)((char*)%s%s);" % (rt, expr, " + 0x%x" % last if last else "")

def _baseinfo_getter(body, rt, pnames, ptypes):
    """GetBaseInfo family: mov R,[esp+P]; mov [R],IMM; mov eax,OFFSET sym_<addr>; ret
       -> writes the out-param count, returns the static array. e.g. GCitadelInfo::GetBaseInfo:
          param_1 = 0x1; return (GBaseInfo*)0xc5e270;  (param is uint32_t& -> plain assign)."""
    if not rt.endswith("*") or not pnames or not ptypes: return None
    ins = [(m, o) for m, o in (gpr.parse(l) for l in body) if m]
    if len(ins) != 4 or ins[3][0] != "ret" or not (ins[0][0] == ins[1][0] == ins[2][0] == "mov"):
        return None
    g0 = re.match(r"([a-z]+), (?:dword) ptr \[esp\s*\+\s*0x([0-9a-fA-F]+)\]$", ins[0][1])
    if not g0: return None
    R, P = g0.group(1), int(g0.group(2), 16)
    g1 = re.match(r"(?:dword|word|byte) ptr \[%s\], (0x[0-9a-fA-F]+|\d+)$" % R, ins[1][1])
    g2 = re.match(r"eax, OFFSET \S*?_([0-9a-fA-F]{8})$", ins[2][1])
    if not g1 or not g2: return None
    imm, addr = int(g1.group(1), 0), int(g2.group(1), 16)
    pidx = (P // 4) - 1
    if not (0 <= pidx < len(pnames) and pnames[pidx]): return None
    pn = pnames[pidx]; pt = (ptypes[pidx] if pidx < len(ptypes) else "") or ""
    write = "*%s = 0x%x;" % (pn, imm) if pt.rstrip().endswith("*") else "%s = 0x%x;" % (pn, imm)
    return "%s return (%s)0x%x;" % (write, rt, addr)

# setcc suffix -> C comparison operator. The signed (l/g/le/ge) and unsigned (b/a/be/ae)
# forms collapse to the SAME C operator: the signedness of the resulting comparison is
# whatever the emitted operands' declared type implies. We translate both as the field's
# declared signedness rather than preserving the asm flag distinction (a known assumption).
_SETCC = {"e": "==", "ne": "!=", "l": "<", "g": ">", "le": "<=", "ge": ">=",
          "b": "<", "a": ">", "be": "<=", "ae": ">="}
def _operand_c(opnd, deref_t):
    """a cmp/test operand -> C: this-relative mem (*(T*)((char*)this+N)) or an integer const."""
    t = re.sub(r"^(?:dword|word|byte) ptr ", "", opnd.strip())
    if re.fullmatch(r"-?0x[0-9a-fA-F]+|-?\d+", t): return fmt_int(int(t, 0))
    return _leaf_c(t if t.startswith("[") else "[%s]" % t, deref_t) if "[" in t or t == THIS else None

def _setcc_bool(body, rt):
    """cmp/test A,B; setcc; ret -> return A <op> B;  (e.g. IsPoisoned: this->field == 0xd398c4)."""
    if rt not in ("bool32_t", "bool", "uint32_t", "int"): return None
    ins = [(m, o) for m, o in (gpr.parse(l) for l in body) if m]
    if len(ins) != 3 or ins[2][0] != "ret": return None
    cc = ins[0][0]
    if cc not in ("cmp", "test"): return None
    sm = re.fullmatch(r"set(e|ne|l|g|le|ge|b|a|be|ae)", ins[1][0])
    if not sm or "," not in ins[0][1]: return None
    op = _SETCC[sm.group(1)]
    L, R = (x.strip() for x in ins[0][1].split(",", 1))
    if cc == "test":                                   # test X,X -> X (==/!=) 0
        if L != R: return None
        lc = _operand_c(L, "uint32_t")
        return "return %s %s 0;" % (lc, op) if lc else None
    lc, rc = _operand_c(L, "uint32_t"), _operand_c(R, "uint32_t")
    return "return %s %s %s;" % (lc, op, rc) if lc and rc else None

def _indexed_direct(body, rt, pnames):
    """mov R,[esp+P]; mov eax,[ecx + R*S + D]; ret -> param-indexed getter with base = this directly
       (e.g. GPlayer::GetRealInterface -> return *(GInterface**)((char*)this + param_1*4 + 0x14);)."""
    if not pnames or not rt or rt == "void": return None
    ins = [(m, o) for m, o in (gpr.parse(l) for l in body) if m]
    if len(ins) != 3 or ins[2][0] != "ret" or ins[0][0] != "mov" or ins[1][0] != "mov": return None
    g0 = _M_ARGLD.match(ins[0][1])
    if not g0: return None
    R, P = g0.group(1), int(g0.group(2), 16)
    g1 = re.match(r"eax, (?:dword|byte|word) ptr \[ecx\s*\+\s*%s\s*\*\s*0x([0-9a-fA-F]+)"
                  r"(?:\s*\+\s*0x([0-9a-fA-F]+))?\]$" % R, ins[1][1])
    if not g1: return None
    S, D = int(g1.group(1), 16), int(g1.group(2) or "0", 16)
    pidx = (P // 4) - 1
    if not (0 <= pidx < len(pnames) and pnames[pidx]): return None
    pn = pnames[pidx]
    idx = "%s * %d" % (pn, S) if S != 1 else pn
    inner = "(char*)this + %s" % idx + (" + 0x%x" % D if D else "")
    return "return *(%s*)(%s);" % (rt, inner)

def _resolve_call(target):
    """direct call operand -> 'Class::Method' (non-virtual dispatch), or None for indirect/virtual."""
    t = target.strip()
    if "[" in t: return None                           # vtable / indirect call -> not a direct forward
    t = re.sub(r"\s*\+\s*\d+$", "", t)                 # 'Name +9' adjusted-call form
    try:
        f = _syms().resolve(t)
        if f and f.cls and f.method: return "%s::%s" % (f.cls, f.method)
    except Exception:
        pass
    return None

def _callee_ptypes(target):
    """the called method's param TYPES (so forwarded args can be cast to satisfy C++:
       e.g. GetRawDesire takes TOWN_DESIRE_INFO -> cast 0xf to (TOWN_DESIRE_INFO)). [] on failure."""
    t = re.sub(r"\s*\+\s*\d+$", "", target.strip())
    try:
        f = _syms().resolve(t)
        out = []
        for p in (getattr(f, "params", None) or []):
            ty = re.sub(r"\b(enum|struct|class)\s+", "", p).strip()
            ty = re.sub(r"\s+[A-Za-z_]\w*\s*$", "", ty).strip()    # drop the param name
            out.append(ty)
        return out
    except Exception:
        return []

def _forward_call(body, rt, pnames):
    """thiscall forward: load params, push args (right-to-left), call a DIRECT method on `this`,
       return its result. esp is tracked through pushes so [esp+P]->param stays correct for >=2 args.
       e.g. Creature::NumGameTurns... -> Living::NumGameTurns...(param_1, param_2, param_3)."""
    if not rt or rt == "void": return None
    ins = [(m, o) for m, o in (gpr.parse(l) for l in body) if m]
    calls = [i for i, (m, o) in enumerate(ins) if m == "call"]
    if len(calls) == 1 and calls[0] == len(ins) - 2 and ins[-1][0] == "ret":
        ci = calls[0]                                  # call immediately before ret
    elif not calls and ins and ins[-1][0] == "jmp" and "jmp_addr" not in ins[-1][1]:
        ci = len(ins) - 1                              # tail-call jmp (no ret)
    else:
        return None
    sym = _resolve_call(ins[ci][1])
    if not sym: return None
    # Simulate the call setup. espd tracks how far esp has dropped from function entry
    # (each `push` lowers it by 4); regs holds the C value currently in each GPR; pushes
    # collects the pushed args in source order (which is right-to-left for cdecl/thiscall).
    espd = [0]; regs = {}; pushes = []
    def param_of(P):
        # A `[esp+P]` load names a param, but P is measured from the CURRENT esp. Undo the
        # push shift (espd) to get the entry-relative offset, then convert to a 1-based
        # param index: entry [esp+0]=return addr, [esp+4]=arg1, [esp+8]=arg2, ...
        idx = (P - espd[0]) // 4 - 1
        return pnames[idx] if (pnames and 0 <= idx < len(pnames) and pnames[idx]) else None
    def memval(t):                                     # an operand -> C value, or None
        t = re.sub(r"^(?:dword|byte|word) ptr ", "", t.strip())
        if t in regs: return regs[t]
        if re.fullmatch(r"-?0x[0-9a-fA-F]+|-?\d+", t): return fmt_int(int(t, 0))
        if t == THIS: return "this"
        g = re.fullmatch(r"\[esp\s*\+\s*0x([0-9a-fA-F]+)\]", t)
        if g: return param_of(int(g.group(1), 16))
        return None
    for m, o in ins[:ci]:
        if m == "push":
            pushes.append(memval(o)); espd[0] += 4
        elif m == "mov" and "," in o:
            d, s = (x.strip() for x in o.split(",", 1))
            if d == THIS: return None                  # `this` reassigned -> not a plain forward
            if d not in gpr.REG32: return None         # a store (mov [..],x) -> bail
            regs[d] = memval(s)
        else:
            return None                                # unexpected prep instruction -> bail
    if any(a is None for a in pushes): return None     # an argument we couldn't name
    args = list(reversed(pushes))                       # left-to-right call order
    pty = _callee_ptypes(ins[ci][1])                   # cast each arg to the callee's param type
    if len(pty) == len(args):
        args = ["(%s)%s" % (pty[i], a) for i, a in enumerate(args)]
    return "return (%s)%s(%s);" % (rt, sym, ", ".join(args))

def _translate(body, rt, pnames=None, ptypes=None):
    """asm body + return type -> a `return ...;` C body, or None to bail. (pure of name lookup)"""
    if not rt or rt == "void" or not body: return None
    fc = _forward_call(body, rt, pnames)               # call-modeling: runs before the straightline gate
    if fc: return fc
    if not _straightline(body): return None
    cg = _chain_getter(body, rt)
    if cg: return cg
    bi = _baseinfo_getter(body, rt, pnames, ptypes)
    if bi: return bi
    sc = _setcc_bool(body, rt)
    if sc: return sc
    ig = _indexed_getter(body, rt, pnames) or _indexed_direct(body, rt, pnames)
    if ig: return ig
    if rt in ("float", "double"):
        _, st = fpu.trace(body)
        if not st: return None
        c = expr_to_c(st[-1], "float", True, _gpr_param_map(body, pnames))
        return ("return %s;" % c) if c else None
    _, regs = gpr.trace(body)
    e = regs.get("eax")
    if e is None or (e.op == "leaf" and e.text == "eax"): return None   # eax untouched
    if rt.endswith("*"):                               # pointer return: lea = ADDRESS-of (not a load)
        # A `lea`-derived pointer is `this` itself, or `this + const` (interior pointer).
        # gpr models lea as a value (not a deref), so eax holds the ADDRESS expression
        # directly: a bare `this` leaf, or a (this + const) `+` tree -> emit &-style C.
        if e.op == "leaf" and e.text in (THIS, "this"): return "return (%s)this;" % rt
        if e.op == "+" and e.kids[0].op == "leaf" and e.kids[0].text in (THIS, "this") and e.kids[1].op == "const":
            return "return (%s)((char*)this + 0x%x);" % (rt, e.kids[1].val)
    # Deref width = the FULL return type so a pointer field loads as *(T**), not *(T*).
    # Only a plain (optionally one-'*') scalar/struct type name is usable as the cast
    # type; bool and any multi-word/templated/reference type fall back to uint32_t.
    deref = rt if re.fullmatch(r"[A-Za-z_][\w:]*\s*\*?", rt) and rt != "bool" else "uint32_t"
    c = expr_to_c(e, deref, False)
    if not c: return None
    needs_cast = not (e.op == "leaf" and "*(%s*)" % deref in c)   # a bare same-type load needs no cast
    return "return (%s)(%s);" % (rt, c) if needs_cast else "return %s;" % c

def _bodies_for_addrs(addrs):
    """ONE pass over the asm tier -> {addr: body_lines} for the requested function-start addrs."""
    import glob
    want = {a: ("%08x" % a) for a in addrs if a}     # addr -> 8-digit lowercase hex key
    rmap = {v: k for k, v in want.items()}            # hex key -> addr (reverse map)
    # Each function start is tagged with a `// 0x<8 hex>` comment in the asm dump; this
    # finds that exact marker (whitespace- or EOL-terminated so a longer hex isn't matched).
    pat = re.compile(r"//\s*0x([0-9a-f]{8})(?:\s|$)")
    found = {}
    for f in glob.glob(os.path.join(ROOT, "src/asm/unprocessed/**/*.asm"), recursive=True):
        if os.path.basename(f).startswith(("rdata", "data")): continue
        with open(f, encoding="latin-1") as fh: lines = fh.read().split("\n")
        for i, l in enumerate(lines):
            m = pat.search(l)
            if m and m.group(1) in rmap and rmap[m.group(1)] not in found:
                # Capture from the marker line to the first `ret`, capped at 200 lines so a
                # mislabelled/never-returning region can't run away over the whole file.
                body = []; j = i
                while j < len(lines) and len(body) < 200:
                    body.append(lines[j])
                    if re.search(r"\bret\b", lines[j]): break
                    j += 1
                found[rmap[m.group(1)]] = body
        if len(found) == len(rmap): break
    return found

def _staging_sig(name):
    """(return_type, [param_names], [param_types]) of the staging function, or (None, [], [])."""
    try:
        import verify
        loc = verify.unit_for_function(name)
        if not loc or not loc[1]: return None, [], []
        cls, meth = name.split("@", 1)[1], name.split("@", 1)[0]
        with open(loc[1], encoding="latin-1") as fh: txt = fh.read()
        m = re.search(r"(?:^|\n)\s*([A-Za-z_][\w:\*&<> ]*?)\s+%s\s*::\s*%s\s*\(([^;{]*)\)"
                      % (re.escape(cls), re.escape(meth)), txt)
        if not m: return None, [], []
        return re.sub(r"\s+", " ", m.group(1).strip()), _param_names(m.group(2)), _param_types(m.group(2))
    except Exception:
        return None, [], []
def _staging_rettype(name):
    """return type of the staging function (read its signature), or None."""
    return _staging_sig(name)[0]

_BRANCH = re.compile(r"\b(j[a-z]{1,3}|call|loop|rep)\b")   # jmp/jcc, call, loop, rep prefixes
def _straightline(body):
    """True iff `body` is a single straight-line basic block (no control flow).

    The trace-to-C translators model only fall-through, register/memory data flow, so any
    branch, call, loop, or rep-prefixed instruction makes the body untranslatable -> bail.
    Exempt: `ret` (the normal terminator) and `jmp_addr_...` labels (a data reference the
    disassembler emits, not a real jump). Per line, comments are stripped, a leading
    `label:` and `{...}` machine-code blob are blanked, and a `.byte` (hand-encoded branch)
    is rejected outright before the mnemonic is matched against _BRANCH.
    """
    for ln in body:
        ins = ln.split("//", 1)[0]                     # drop the trailing // comment
        ins = re.sub(r"^\s*[.\w@?$]+:\s", " ", ins)    # blank a leading `label:` token
        ins = re.sub(r"\{[^}]*\}", " ", ins)           # blank the {machine-code} blob
        if ".byte" in ins: return False                # encoded branch
        m = re.match(r"\s*([a-z][a-z0-9.]+)", ins)
        if m and _BRANCH.match(m.group(1)) and not m.group(1).startswith("jmp_addr"):
            # a real ret is fine; jmp/jcc/call are not
            if m.group(1) != "ret": return False
    return True

def propose_body(name):
    """Propose a `return ...;` C body for one `Method@Class`, or None if not translatable.

    The single-function public entry point: resolve the name's VA, read the staging
    signature (return type + param names/types), extract the function's asm body, and run
    the trace-to-C translator. Returns None on any miss (unknown name, no body, or a body
    the translator declines). Defaults the return type to uint32_t if the signature lookup
    fails so a getter-shaped body can still be attempted.
    """
    addr = _addr(name)
    if addr is None: return None
    rt, pnames, ptypes = _staging_sig(name)
    return _translate(fpu.extract_fn(addr), rt or "uint32_t", pnames, ptypes)

# --- self-test (pure translation) ----------------------------------------------------------
def _self_test():
    from exprlib import leaf, const, binop, unop
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c
        print(("  PASS " if c else "  FAIL ") + n + ("" if c else "   got: %r" % (got,)))
    # single this-relative float load
    chk(expr_to_c(leaf("[ecx + 0x10]"), "float", True) == "*(float*)((char*)this + 0x10)",
        "float field load", expr_to_c(leaf("[ecx + 0x10]"), "float", True))
    # arithmetic: field * field  (the tier autolift misses)
    e = binop("*", leaf("[ecx + 0x10]"), leaf("[ecx + 0x14]"))
    chk(expr_to_c(e, "float", True) == "*(float*)((char*)this + 0x10) * *(float*)((char*)this + 0x14)",
        "float field * field", expr_to_c(e, "float", True))
    # int load at offset 0
    chk(expr_to_c(leaf("[ecx]"), "uint32_t", False) == "*(uint32_t*)this", "int load @0")
    # this passthrough + non-this base bails
    chk(expr_to_c(leaf("ecx"), "uint32_t", False) == "this", "this passthrough")
    chk(expr_to_c(leaf("[eax + 0x4]"), "uint32_t", False) is None, "non-this base -> bail")
    chk(expr_to_c(leaf("[ecx + ecx * 0x4 + 0x68]"), "float", True) is None, "indexed mem -> bail")
    # const + transcendental bail
    chk(expr_to_c(const(1.0), "float", True) == "1.0f", "float const", expr_to_c(const(1.0),"float",True))
    chk(expr_to_c(unop("sqrt", leaf("[ecx]")), "float", True) is None, "sqrt -> bail")
    # x + x*c stays well-formed via wrap
    e2 = binop("+", leaf("[ecx + 0x8]"), const(2))
    chk(expr_to_c(e2, "uint32_t", False) == "*(uint32_t*)((char*)this + 0x8) + 2", "field + const",
        expr_to_c(e2, "uint32_t", False))
    # _straightline rejects branches
    chk(_straightline(["  mov eax, [ecx] // x", "  ret // y"]) is True, "straightline: plain ok")
    chk(_straightline(["  je .L // x", "  ret // y"]) is False, "straightline: jcc rejected")
    # global read (mov eax,[data_bytes+OFF]) -> *(T*)0xVA  +  pointer-load width *(T**)
    chk(_leaf_c("[data_bytes + 0x286d20]", "SetupBox*") == "*(SetupBox**)0xc4cd20",
        "global read -> *(T*)0xVA", _leaf_c("[data_bytes + 0x286d20]", "SetupBox*"))
    chk(_translate(["  mov eax, dword ptr [data_bytes + 0x286d20]", "  ret"], "SetupBox*")
        == "return *(SetupBox**)0xc4cd20;", "global ptr getter")
    # param-indexed array getter (Animal::GetDetailMesh shape)
    gbody = ["  mov eax, dword ptr [ecx + 0x28]", "  mov ecx, dword ptr [esp + 0x04]",
             "  mov eax, dword ptr [eax + ecx * 0x4 + 0x000001fc]", "  ret 0x0004"]
    chk(_indexed_getter(gbody, "int", ["param_1"])
        == "return *(int*)(*(char**)((char*)this + 0x28) + param_1 * 4 + 0x1fc);",
        "param-indexed array getter", _indexed_getter(gbody, "int", ["param_1"]))
    chk(_indexed_getter(gbody, "int", []) is None, "indexed getter: no params -> bail")
    chk(_param_names("int param_1, Creature* c") == ["param_1", "c"], "param name extraction")
    # multi-hop chain getter (this->a->b)
    cbody2 = ["  mov eax, dword ptr [ecx + 0x10]", "  mov eax, dword ptr [eax + 0x4]", "  ret"]
    chk(_chain_getter(cbody2, "int") == "return *(int*)((char*)*(void**)((char*)this + 0x10) + 0x4);",
        "2-hop chain getter", _chain_getter(cbody2, "int"))
    cbody3 = ["  mov eax, dword ptr [ecx + 0x8]", "  mov eax, dword ptr [eax]",
              "  mov eax, dword ptr [eax + 0xc]", "  ret"]
    chk(_chain_getter(cbody3, "uint32_t")
        == "return *(uint32_t*)((char*)*(void**)((char*)*(void**)((char*)this + 0x8)) + 0xc);",
        "3-hop chain getter", _chain_getter(cbody3, "uint32_t"))
    chk(_chain_getter(["  mov eax, dword ptr [ecx + 0x10]", "  ret"], "int") is None,
        "1-hop -> not chain (generic path)")
    # float field getter (fpu mem leaf is bracket-content) + param-indexed float (GetBeliefInPlayer)
    chk(_translate(["  fld dword ptr [ecx + 0x10]", "  ret"], "float")
        == "return *(float*)((char*)this + 0x10);", "float field getter",
        _translate(["  fld dword ptr [ecx + 0x10]", "  ret"], "float"))
    chk(_translate(["  mov eax, dword ptr [esp + 0x04]", "  fld dword ptr [ecx + eax * 0x4 + 0x08]",
                    "  ret"], "float", ["param_1"])
        == "return *(float*)((char*)this + param_1 * 4 + 0x8);", "param-indexed float getter",
        _translate(["  mov eax, dword ptr [esp + 0x04]", "  fld dword ptr [ecx + eax * 0x4 + 0x08]",
                    "  ret"], "float", ["param_1"]))
    chk(_fmem_c("ecx", "float", {}) == "*(float*)this", "float load @0")
    chk(_fmem_c("eax + 0x4", "float", {}) is None, "float non-this base -> bail")
    chk(expr_to_c(unop("~", leaf("[ecx]")), "uint32_t", False) == "~*(uint32_t*)this", "bitwise not")
    # GetBaseInfo family: out-param write + static array return (reference param -> plain assign)
    bbody = ["  mov eax, dword ptr [esp + 0x04]", "  mov dword ptr [eax], 0x00000001",
             "  mov eax, OFFSET _GCitadelHeartInfo_ARRAY_00c5e270", "  ret 0x0004"]
    chk(_baseinfo_getter(bbody, "GBaseInfo*", ["param_1"], ["uint32_t&"])
        == "param_1 = 0x1; return (GBaseInfo*)0xc5e270;", "GetBaseInfo (reference out-param)",
        _baseinfo_getter(bbody, "GBaseInfo*", ["param_1"], ["uint32_t&"]))
    chk(_baseinfo_getter(bbody, "GBaseInfo*", ["param_1"], ["uint32_t*"])
        == "*param_1 = 0x1; return (GBaseInfo*)0xc5e270;", "GetBaseInfo (pointer out-param)")
    chk(_param_types("uint32_t& param_1, Creature* c") == ["uint32_t&", "Creature*"], "param type extraction")
    # cmp+setcc bool (IsPoisoned)
    chk(_setcc_bool(["  cmp dword ptr [ecx + 0x28], 0x00d398c4", "  sete al", "  ret"], "bool32_t")
        == "return *(uint32_t*)((char*)this + 0x28) == 0xd398c4;", "cmp+sete bool",
        _setcc_bool(["  cmp dword ptr [ecx + 0x28], 0x00d398c4", "  sete al", "  ret"], "bool32_t"))
    chk(_setcc_bool(["  test eax, eax", "  setne al", "  ret"], "bool32_t") is None, "test reg,reg (non-this) bails")
    # indexed-direct int/ptr getter (GetRealInterface)
    chk(_indexed_direct(["  mov eax, dword ptr [esp + 0x04]",
                         "  mov eax, dword ptr [ecx + eax * 0x4 + 0x14]", "  ret 0x0004"],
                        "GInterface*", ["param_1"])
        == "return *(GInterface**)((char*)this + param_1 * 4 + 0x14);", "indexed-direct ptr getter",
        _indexed_direct(["  mov eax, dword ptr [esp + 0x04]",
                         "  mov eax, dword ptr [ecx + eax * 0x4 + 0x14]", "  ret 0x0004"],
                        "GInterface*", ["param_1"]))
    # OR/AND identity folds
    chk(expr_to_c(binop("|", leaf("eax"), const(-1)), "uint32_t", False) == "-1", "x | ~0 = ~0")
    chk(expr_to_c(binop("&", leaf("eax"), const(0)), "uint32_t", False) == "0", "x & 0 = 0")
    # forward-call modeling (arg recovery + push reversal); call resolution stubbed for the test
    import builtins
    _orig = globals().get("_resolve_call")
    globals()["_resolve_call"] = lambda t: "Object::CreatureMustAvoid" if "CreatureMustAvoid" in t else None
    fbody = ["  mov eax, dword ptr [esp + 0x04]", "  push eax",
             "  call ?CreatureMustAvoid@Object@@UAE_NPAVCreature@@@Z", "  ret 0x0004"]
    chk(_forward_call(fbody, "bool32_t", ["param_1"]) == "return (bool32_t)Object::CreatureMustAvoid((Creature*)param_1);",
        "forward call (1 arg, callee-typed cast)", _forward_call(fbody, "bool32_t", ["param_1"]))
    chk(_forward_call(["  call ?CreatureMustAvoid@Object@@UAE_NPAVCreature@@@Z", "  ret"], "bool32_t", [])
        == "return (bool32_t)Object::CreatureMustAvoid();", "forward call (0 arg)")
    # multi-arg (esp tracking) + tail-call jmp
    mbody = ["  mov eax, dword ptr [esp + 0x0c]", "  push eax", "  mov eax, dword ptr [esp + 0x0c]",
             "  push eax", "  mov eax, dword ptr [esp + 0x0c]", "  push eax",
             "  call ?CreatureMustAvoid@Object@@UAE_NPAVCreature@@@Z", "  ret 0x000c"]
    chk(_forward_call(mbody, "uint32_t", ["p1", "p2", "p3"])
        == "return (uint32_t)Object::CreatureMustAvoid(p1, p2, p3);", "forward call (3 args, esp-tracked)",
        _forward_call(mbody, "uint32_t", ["p1", "p2", "p3"]))
    chk(_forward_call(["  push 0xf", "  jmp ?CreatureMustAvoid@Object@@UAE_NPAVCreature@@@Z"], "float", [])
        == "return (float)Object::CreatureMustAvoid((Creature*)0xf);", "tail-call jmp forward")
    chk(_forward_call(["  mov ecx, dword ptr [ecx + 0x28]",
                       "  call ?CreatureMustAvoid@Object@@UAE_NPAVCreature@@@Z", "  ret"], "bool32_t", []) is None,
        "this-reassigned forward -> bail (member forward, not plain)")
    globals()["_resolve_call"] = _orig
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

_STUB = re.compile(
    r"(?:^|\n)[ \t]*([A-Za-z_][\w:\*&<> ]*?)\s+([A-Za-z_]\w*)::([A-Za-z_~]\w*)\s*\(([^;{]*)\)"
    r"(?:\s*const)?\s*\n\s*\{\s*\n[ \t]*return 0;\s*\n\s*\}")
def _param_names(params):
    """Parse a C++ parameter-list string into a list of param names (None per unnamed slot).

    Splits on commas and takes the trailing identifier of each parameter as its name
    (e.g. "int param_1, Creature* c" -> ["param_1", "c"]). "" / "void" -> []. An entry
    with no trailing identifier (an unnamed/abstract-declarator param) becomes None so the
    result stays positionally aligned with _param_types.
    """
    p = params.strip()
    if not p or p == "void": return []
    # For each comma-separated param, the trailing `\w` run is its name. The regex is run
    # twice per element by design (the ternary's test, then the value); both calls are on
    # the same string so the result is identical -- kept inline to preserve exact behavior.
    return [(re.search(r"([A-Za-z_]\w*)\s*$", x.strip()) or [None, None])[1]
            if re.search(r"([A-Za-z_]\w*)\s*$", x.strip()) else None for x in p.split(",")]
def _param_types(params):
    """parallel to _param_names: the declared type of each param (keeps trailing &/*)."""
    p = params.strip()
    if not p or p == "void": return []
    out = []
    for x in p.split(","):
        m = re.match(r"(.*?)\s*[A-Za-z_]\w*\s*$", x.strip())
        out.append(m.group(1).strip() if m else x.strip())
    return out
def _enum_stubs():
    """every `return 0;` stub in staging -> (name, rettype, staging_file, cls, meth, param_names)."""
    import glob
    out = []
    for f in glob.glob(os.path.join(ROOT, "src/staging/**/*.cpp"), recursive=True):
        try:
            with open(f, encoding="latin-1") as fh: t = fh.read()
        except Exception: continue
        for rt, cls, meth, params in _STUB.findall(t):
            out.append(("%s@%s" % (meth, cls), re.sub(r"\s+", " ", rt.strip()),
                        f.replace("\\", "/"), cls, meth, _param_names(params), _param_types(params)))
    return out

def propose_sweep(limit=None):
    """per-FILE gated sweep (like autogate): splice all of a file's proposals, recompile once,
    keep iff the count of byte-verified functions rose with no regression."""
    import verify, liftgate, subprocess
    stubs = _enum_stubs()
    print("[propose] %d staging stubs; resolving addresses ..." % len(stubs))
    nra = [(n, rt, f, cls, meth, pn, pt, _addr(n)) for n, rt, f, cls, meth, pn, pt in stubs]
    addrs = {x[7] for x in nra if x[7]}
    print("[propose] extracting %d candidate bodies in one asm pass ..." % len(addrs))
    bodies = _bodies_for_addrs(addrs)
    byfile = {}
    for n, rt, f, cls, meth, pn, pt, a in nra:
        if not a or a not in bodies: continue
        try: b = _translate(bodies[a], rt, pn, pt)
        except Exception: b = None
        if b: byfile.setdefault(f, []).append((cls, meth, b))
    nprop = sum(len(v) for v in byfile.values())
    print("[propose] %d candidates across %d files; per-file gating (keep iff byte-match RISES) ..." % (nprop, len(byfile)))
    print("[propose] GUARD: full rebuild for a consistent slate + authoritative baseline ...")
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    cur = _fuzzy_map(verify)                            # {(unit,fn): pct}  (authoritative baseline)
    base_v = sum(1 for p in cur.values() if p >= 100.0)
    base_verified = {k for k, p in cur.items() if p >= 100.0}
    kept_files = improved_fns = newly_verified = 0
    for fi, (f, items) in enumerate(byfile.items()):
        if limit and fi >= limit: break
        rel = os.path.relpath(f, ROOT).replace("\\", "/")
        with open(f, encoding="latin-1") as fh: text = fh.read()
        new = text
        for cls, meth, b in items:
            sp = liftgate.splice_body(new, cls, meth, b)
            if sp: new = sp
        if new == text: continue
        with open(f, "w", encoding="latin-1") as fh: fh.write(new)
        rc = verify.recompile_unit(f)
        if rc is not True:                             # restore PRE-EDIT content (NOT git HEAD!)
            # Rewrite the original source AND rebuild its object, so the next file's
            # _fuzzy_map baseline reads a consistent (pre-edit) object for this unit
            # rather than a stale/failed one. (Mirrors the reject branch below.)
            with open(f, "w", encoding="latin-1") as fh: fh.write(text)
            verify.recompile_unit(f); continue
        after = _fuzzy_map(verify)
        up = [k for k, p in after.items() if p > cur.get(k, -1.0) + 1e-6]
        down = [k for k, p in after.items() if p < cur.get(k, 1e9) - 1e-6]
        if up and not down:                            # net byte-closer, no regression -> keep the draft
            nv = sum(1 for k in up if after[k] >= 100.0 and cur.get(k, 0) < 100.0)
            cur = after; kept_files += 1; improved_fns += len(up); newly_verified += nv
            print("  KEPT %s  (+%d fns byte-closer, +%d to 100%%)" % (rel, len(up), nv))
        else:                                          # restore PRE-EDIT content (preserves prior uncommitted lifts)
            with open(f, "w", encoding="latin-1") as fh: fh.write(text)
            verify.recompile_unit(f)
    print("\n[propose] GUARD: full rebuild for the AUTHORITATIVE final count ...")
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    final = _fuzzy_map(verify)
    fin_v = sum(1 for p in final.values() if p >= 100.0)
    fin_verified = {k for k, p in final.items() if p >= 100.0}
    lost = base_verified - fin_verified                # RATCHET
    print("\n=== propose sweep (authoritative) ===")
    print("  candidate files     : %d" % len(byfile))
    print("  KEPT files          : %d   (incremental byte-closer: %d fns)" % (kept_files, improved_fns))
    print("  VERIFIED (100%%, full rebuild): %d -> %d   (net %+d)" % (base_v, fin_v, fin_v - base_v))
    if lost:
        print("  !!! RATCHET ALARM: %d verified function(s) REGRESSED:" % len(lost))
        for x in sorted("%s::%s" % t for t in lost)[:15]: print("        LOST " + x)
    try:
        import ratchet; ratchet.audit({"action": "propose", "base": base_v, "final": fin_v,
                                       "kept_files": kept_files, "byte_closer": improved_fns, "lost": len(lost)})
    except Exception: pass
    print("\n[propose] %s | refresh manifest: python tools/portledger.py" %
          ("CLEAN (ratchet OK)" if not lost else "REGRESSION - investigate"))
    return improved_fns

def _fuzzy_map(verify):
    """Regenerate the objdiff report and return the per-function match-percent map.

    Returns {(unit, function): pct} where pct is the objdiff fuzzy-match percentage
    (0.0..100.0). This is the authoritative baseline the sweep gate diffs before/after
    each spliced file to decide keep vs revert (a function reaching 100.0 == byte-exact).
    """
    import json as _j
    verify.generate_report()
    with open(verify.REPORT, encoding="utf-8") as fh: rep = _j.load(fh)
    return {(u, fn): (pct or 0.0) for u, fn, pct, dem in verify.iter_functions(rep)}

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--sweep" in a:
        lim = int(a[a.index("--limit") + 1]) if "--limit" in a else None
        propose_sweep(lim); sys.exit(0)
    if not a or a[0].startswith("-"): print(__doc__); sys.exit(0)
    name = a[0]
    body = propose_body(name)
    if not body:
        print("(no clean trace-based proposal for %s)" % name); sys.exit(1)
    print("candidate: %s" % body)
    if "--gate" in a:
        import liftgate
        r = liftgate.gate(name, body)
        print("[gate] %s" % r.get("msg"))
        sys.exit(0 if r.get("kept") else 1)
