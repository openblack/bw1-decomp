#!/usr/bin/env python3
"""Auto-lift TRIVIAL functions from disassembly into the decompilation's staging stubs.

WHAT IT DOES
  Scans `src/asm/unprocessed/*.asm` (the symbol-annotated x86 disassembly of the
  original Black & White binary) for functions whose body is one of a handful of
  *trivial, provably-correct* shapes, and rewrites the matching empty/`return 0;`
  stub in `src/staging/**/*.cpp` with an equivalent, return-type-cast C body. The
  generated code is documentation-grade (compilable, faithful), not objdiff-verified.

INPUTS
  - src/asm/unprocessed/*.asm : disassembly; each instruction line ends in `// 0xVA`.
  - src/staging/**/*.cpp       : C++ stubs with a `// win1.41 <addr> ...` header above
                                 each function; only `return 0;`/empty bodies are touched.
  - tools/rdata.py             : resolves `.rdata` float/int constants (optional).
  - tools/idioms.py            : decodes MSVC branchless setcc/sbb boolean idioms.

RECOGNISED PATTERNS (this==ecx, or esi after 'push esi;mov esi,ecx'):
  mov eax|al|ax, IMM ; ret                 -> return (RetType)IMM;   (int/byte/word const)
  fld dword [__real@...] ; ret             -> return <float>;   (MSVC float-literal symbol, value in name)
  GetBaseInfo: mov eax,[esp+P]; mov [eax],COUNT; mov eax,ARRAY_ADDR; ret
                                           -> param = COUNT; return (T*)0xADDR;  (static info array)
  CHAINED GETTER: 0+ pointer hops then one terminal load, all off `this`:
    mov R2,[R1+a] ... ; <term>[Rk+K] ; ret    (R1 starts as this)
    term = mov eax  (int)  / fld (float) / movzx byte|word (unsigned)
         / movsx byte|word (signed) / lea (address-of)
    -> return *(RetType*)(*(char**)(... (char*)this + 0xa) + 0xK);   (one deref per hop)
  mov (dword|byte) ptr [this+N], IMM ; ret -> *(uintNN*)((char*)this+N)=IMM;   (void)
  mov eax,[esp+P]; mov [this+N],eax  ; ret -> *(uint32_t*)((char*)this+N)=(uint32_t)arg1; (void)
  mov al ,[esp+P]; mov [this+N],al   ; ret -> *(uint8_t*) ((char*)this+N)=(uint8_t) arg1; (void)
  mov ax ,[esp+P]; mov [this+N],ax   ; ret -> *(uint16_t*)((char*)this+N)=(uint16_t)arg1; (void)
  fld dword[esp+P]; fstp [this+N]    ; ret -> *(float*)((char*)this+N)=arg1;               (void)
  fld dword[rdata_bytes+OFF]         ; ret -> return <constant>f;   (constant resolved via rdata.py)
  mov eax,[rdata_bytes+OFF]          ; ret -> return (RetType)<constant>;
  COMPARISON-BOOL: <this-chain | param load> ; <setcc/sbb idiom>   (decoded via idioms.py)
    mov V,(dword|byte|word)[BASE+K] ; [xor R,R;] (test V,V|cmp V,M) ; setCC ; <bool-shuffle>
    -> return *(T*)((char*)this + 0xK) ==|!=|<|> M;          (this-field source)
    -> return param_N ==|!=|<|> M;     (param source: [esp+P], P mapped via prologue pushes)
    -> return (uint32_t)<L> ==|!=|<|> (uint32_t)<R>;   (TWO operands, e.g. field == param)

USAGE
  python3 tools/autolift.py              # dry run: count how many stubs would be lifted
  python3 tools/autolift.py --apply      # write the lifts into the staging .cpp files
  python3 tools/autolift.py --list-files # list files that would change
  python3 tools/autolift.py --only FILE  # restrict to one staging .cpp
  python3 tools/autolift.py --self-test  # run pure-logic unit tests (no build/network)
"""
import re,glob,os,sys
ROOT=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
APPLY="--apply" in sys.argv
LISTF="--list-files" in sys.argv
ONLY=sys.argv[sys.argv.index("--only")+1] if "--only" in sys.argv else None
sys.path.insert(0,os.path.dirname(os.path.abspath(__file__)))
try:
    from rdata import RData,_fmt_float,real_literal
    _RD=RData()
except Exception as _e:                 # tool stays usable even if rdata dump absent
    _RD=None
    sys.stderr.write(f"[autolift] note: rdata.py unavailable ({_e}); skipping rdata-constant getters\n")
def _cfloat(v):
    """Format a Python float as a round-trippable C `float` literal.

    `_fmt_float` may print an integral value without a decimal point (e.g. "1"); a bare
    "1f" is not a valid C float literal and "1" would be parsed as an int, so we append
    ".0" unless the text already carries a '.', an exponent, or is inf/nan. The trailing
    'f' makes it a single-precision literal (matching the original 32-bit constant)."""
    s=_fmt_float(v)
    return (s if ("." in s or "e" in s or "E" in s or "inf" in s or "nan" in s) else s+".0")+"f"
import idioms                              # branchless-idiom decoder (setcc/sbb) for comparison-bool getters

# A line may carry a label AND its first instruction together, e.g.
#   ?GetTemperature@MapCoords@@QBEMXZ:    {disp32} fld dword ptr [...]  // 0x00605cc0 ...
# so we split off an optional leading `SYMBOL:` then parse the remainder as an
# instruction. Function labels start with ? or @ (a block label starts with '.').
_LBL=re.compile(r"^([?@.$][\w?@$.<>]*):\s*(.*)$")
_INS=re.compile(r"\s*(?:\{[^}]*\}\s*)?([a-z][a-z0-9.]*)\b(.*?)\s*//\s*0x([0-9a-f]+)")
def _parse_ins(s):
    """Split one annotated asm line into (mnemonic, operands, addr-hex), or None.

    Every real instruction line ends in a `// 0xVA` virtual-address comment; non-instruction
    lines (blank, pure-comment, directives) don't match `_INS` and return None. The optional
    leading `{...}` displacement-hint marker is stripped, operands are trimmed, and `addr`
    is returned as the bare hex string (no `0x`)."""
    m=_INS.match(s)
    return (m.group(1),m.group(2).strip(),m.group(3)) if m else None
def _read_text(path):
    """Read a source file as latin-1 (asm/cpp are ASCII-ish); returns None on I/O error."""
    try:
        with open(path,encoding="latin-1") as fh: return fh.read()
    except OSError as e:
        sys.stderr.write(f"[autolift] warning: cannot read {path}: {e}\n"); return None

asm_fn={}
for f in glob.glob(os.path.join(ROOT,"src/asm/unprocessed/*.asm")):
    _txt=_read_text(f)
    if _txt is None: continue
    cur=None;body=[]
    for l in _txt.splitlines(keepends=True):
        lbl=_LBL.match(l)
        if lbl and lbl.group(1)[0] in "?@":           # function boundary
            if cur is not None: asm_fn[cur]=body
            cur=lbl.group(1);body=[]
            ins=_parse_ins(lbl.group(2))              # first ins may be on the label line
            if ins: body.append(ins)
        elif cur is not None:
            rest=lbl.group(2) if lbl else l           # strip a leading block label if present
            ins=_parse_ins(rest)
            if ins: body.append(ins)
    if cur is not None: asm_fn[cur]=body

MOV=("mov","mov.s")        # the two `mov` mnemonic spellings the annotator emits

# _HOP matches a single pointer dereference `dst, dword ptr [base (+ 0xoff)?]` where both
# dst and base are 32-bit GPRs (the `e[abcds][ipx]|edi|ebp` alternation covers eax/ebx/ecx/
# edx/esi/edp/eip/... plus edi/ebp). Used to walk a `this->[a]->[b]->...` pointer chain.
# _TERM matches the final value load: `dst, (dword|byte|word) ptr [base (+ 0xoff)?]`.
_HOP=re.compile(r"(e[abcds][ipx]|edi|ebp), dword ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]")
_TERM=re.compile(r"(\w+), (dword|byte|word) ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]")
def _classify_cmpbool(body,this,npush=0):
    """A predicate `return <value> <op> K;` materialised by a setcc/sbb idiom:
    [pointer hops] ; mov V,(dword|byte|word)[BASE+K] ; <test/cmp V + setCC>.
    Value source = a `this`-field chain, or a single parameter (`[esp+P]`, mapped to
    param index via the prologue push count `npush`). Field-vs-reg/param-deref skipped.
    Returns ('cmpbool',(expr,op,sign,K)) for this-fields, or ('cmpbool',(('PARAM',k),...))."""
    cmp_i=next((j for j,(o,a,_) in enumerate(body) if o.split(".")[0] in("test","cmp")),None)
    if cmp_i is None: return None
    start=cmp_i
    # MSVC often pre-zeroes the result register (e.g. `xor eax,eax`) just before the
    # cmp/test so a following `setcc al` yields a clean 0/1. That self-`xor R,R` (same
    # src+dst) is part of the comparison idiom, not a value load, so fold it into the
    # cmp region (decrement `start`) instead of treating it as a pointer hop.
    if start>0 and body[start-1][0].split(".")[0]=="xor":
        m=re.fullmatch(r"(\w+), (\w+)",body[start-1][1])
        if m and m.group(1)==m.group(2): start-=1
    loads=body[:start]
    cmpops=[(o.split(".")[0],a) for o,a,_ in body[start:]]
    if not loads: return None                                      # value not loaded from this -> skip
    first=cmpops[0] if cmpops[0][0]!="xor" else cmpops[1]
    vm=re.match(r"(\w+)",first[1])
    if not vm: return None
    vreg=vm.group(1)
    tag=idioms.decode_compare_bool(cmpops,vreg)                    # ('cmp',op,sign,K) or None
    if not tag: return _classify_cmp2(loads,cmpops,this,npush)     # try two-operand `cmp L,R`
    *hops,term=loads
    regs={this:"(char*)this"}
    for op,arg,_ in hops:
        if op not in MOV: return None
        m=_HOP.fullmatch(arg)
        if not m or m.group(2) not in regs: return None
        regs[m.group(1)]=f"*(char**)({regs[m.group(2)]} + 0x{m.group(3) or '0'})"
    top,targ,_=term
    if top not in MOV+("movzx","movsx"): return None
    m=_TERM.fullmatch(targ)
    if not m: return None
    dst,width,base,off=m.group(1),m.group(2),m.group(3),m.group(4) or "0"
    if dst!=vreg: return None                                      # the loaded reg must be the compared reg
    # --- parameter source: mov V,[esp+P] (no this-hops); P maps to a param index ---
    if base=="esp":
        if hops: return None                                       # mixing a this-chain with a param load -> skip
        # thiscall stack at entry: [esp]=return addr, [esp+4]=arg1, [esp+8]=arg2, ...
        # so arg index = off/4. Each prologue `push` (counted in npush) lowered esp by 4,
        # shifting every arg's displacement up by 4*npush, hence the `- npush` correction.
        k=int(off,16)//4 - npush
        if k<1: return None                                        # k<1 would be the return addr / a saved reg, not a param
        return ("cmpbool",(("PARAM",k),)+tuple(tag[1:]))
    if base not in regs: return None
    ctype={"dword":"uint32_t","word":"uint16_t","byte":"uint8_t"}[width]
    if top=="movsx": ctype={"word":"int16_t","byte":"int8_t"}.get(width,ctype)
    expr=f"*({ctype}*)({regs[base]} + 0x{off})"
    return ("cmpbool",(expr,)+tuple(tag[1:]))                      # (expr, op, sign, K)

def _eval_reg_values(loads,this,npush,targets):
    """Evaluate the value each `targets` register holds after `loads`. Each load is a
    this-field deref (pointer hop or value) or a param (`[esp+P]`). Returns {reg: expr}
    where expr is a C string or ('PARAM',k); None if any target is unresolvable."""
    ptr={this:"(char*)this"}; val={}
    for op,arg,_ in loads:
        if op not in MOV+("movzx","movsx"): return None
        m=_TERM.fullmatch(arg)
        if not m: return None
        D,width,base,off=m.group(1),m.group(2),m.group(3),m.group(4) or "0"
        if base=="esp":
            k=int(off,16)//4 - npush
            if k<1: return None
            val[D]=("PARAM",k); ptr.pop(D,None)
        elif base in ptr:
            be=ptr[base]
            ct={"dword":"uint32_t","word":"uint16_t","byte":"uint8_t"}[width]
            if op=="movsx": ct={"word":"int16_t","byte":"int8_t"}.get(width,ct)
            val[D]=f"*({ct}*)({be} + 0x{off})"
            ptr[D]=f"*(char**)({be} + 0x{off})"       # in case D is later used as a base
        else:
            return None
    return {r:val[r] for r in targets} if all(r in val for r in targets) else None

def _classify_cmp2(loads,cmpops,this,npush):
    """Two-operand compare: `cmp L,Rr; setCC` -> ('cmp2',(Lexpr,Rexpr,op,sign))."""
    tag=idioms.decode_compare2(cmpops)
    if not tag: return None
    _,op,sign,L,R=tag
    vals=_eval_reg_values(loads,this,npush,(L,R))
    if not vals: return None
    return ("cmp2",(vals[L],vals[R],op,sign))

def classify(ins):
    """Match a parsed asm function body against the trivial shapes and return (kind,payload).

    `ins` is the list of (mnemonic, operands, addr) tuples for one function. After skipping
    the prologue (`push` count -> npush; an optional `mov esi,ecx` makes esi the `this`
    register), the body up to the first `ret` is inspected. Returns None when nothing
    guaranteed-correct matches, so `repl` leaves the stub untouched.

    Recognised kinds (see the module docstring for the asm shapes and emitted C):
      "const"    -> (imm_hex)                : return (T)IMM;
      "rdataf"   -> (rdata_off_hex)          : return <float const from .rdata>;
      "rdatai"   -> (rdata_off_hex)          : return (T)<int const from .rdata>;
      "real"     -> (__real@... symbol)      : return <float const decoded from the symbol>;
      "cstore"   -> (size, off_hex, imm_hex) : *(uintNN*)(this+off) = IMM;   (void)
      "set"      -> (size, off_hex)          : *(uintNN*)(this+off) = arg1;   (void)
      "setf"     -> (off_hex)                : *(float*)(this+off)  = arg1;   (void)
      "baseinfo" -> (count_hex, array_addr)  : *outCount = COUNT; return (T*)array;
      "cmpbool"  -> (expr|('PARAM',k), op, sign, K) : return <value> <op> K;
      "cmp2"     -> (Lexpr, Rexpr, op, sign)        : return <L> <op> <R>;
      "chain"    -> (term_kind, base_expr, off_hex)  : chained-deref getter
                    (this->[a]->[b]->field; int/float/signed+unsigned byte/word/lea)."""
    i=0;this="ecx";npush=0
    while i<len(ins) and ins[i][0]=="push": npush+=1;i+=1
    if i<len(ins) and ins[i][0] in MOV and ins[i][1].replace(" ","")=="esi,ecx": this="esi";i+=1
    # body = instructions up to (not incl.) the first ret, minus pop/nop bookkeeping
    body=[]
    for x in ins[i:]:
        if x[0].startswith("ret"): break
        if x[0] not in("pop","nop"): body.append(x)
    if not body: return None
    op0,a0,_=body[0]
    # --- rdata constant getter: fld/mov from [rdata_bytes + OFF] ---
    if len(body)==1:
        m=re.fullmatch(r"dword ptr \[rdata_bytes \+ 0x([0-9a-f]+)\]",a0)
        if op0=="fld" and m: return ("rdataf",m.group(1))
        m=re.fullmatch(r"eax, dword ptr \[rdata_bytes \+ 0x([0-9a-f]+)\]",a0)
        if op0 in MOV and m: return ("rdatai",m.group(1))
        # --- MSVC float-literal symbol: fld [__real@...] (value is in the name) ---
        m=re.fullmatch(r"dword ptr \[(__real@[0-9a-f@]+)\]",a0)
        if op0=="fld" and m: return ("real",m.group(1))
        # --- byte/word immediate const: mov al/ax, IMM ---
        m=re.fullmatch(r"(al|ax), 0x([0-9a-f]+)",a0)
        if op0 in MOV and m: return ("const",m.group(2))
    # --- const return: mov eax, IMM ---
    if len(body)==1 and op0 in MOV:
        m=re.fullmatch(r"eax, 0x([0-9a-f]+)",a0)
        if m: return ("const",m.group(1))
        # --- constant store: mov (dword|byte) ptr [this+N], IMM ---
        m=re.fullmatch(r"(dword|byte) ptr \[%s(?: \+ 0x([0-9a-f]+))?\], 0x([0-9a-f]+)"%this,a0)
        if m: return ("cstore",(4 if m.group(1)=="dword" else 1, m.group(2) or "0", m.group(3)))
    # --- setters: <load arg>; <store this+N>  ---
    # A setter loads the FIRST parameter off the stack and stores it into a field. We only
    # accept the load when its `[esp + off]` slot really is param #1: for a thiscall the
    # return address sits at [esp], so arg1 is at [esp+4]; each prologue `push` shifts every
    # arg down by 4, so the param index is (off/4 - npush) and must equal 1. Matching ANY
    # esp offset (e.g. a function that stores its 2nd stack arg) would wrongly emit arg1.
    def _is_arg1(off_hex):
        return int(off_hex,16)//4 - npush == 1
    if len(body)==2:
        o1,a1,_=body[1]
        m0=re.fullmatch(r"eax, dword ptr \[esp \+ 0x([0-9a-f]+)\]",a0)
        m1=re.fullmatch(r"dword ptr \[%s \+ 0x([0-9a-f]+)\], eax"%this,a1)
        if op0 in MOV and m0 and o1 in MOV and m1 and _is_arg1(m0.group(1)): return ("set",("4",m1.group(1)))
        b0=re.fullmatch(r"al, byte ptr \[esp \+ 0x([0-9a-f]+)\]",a0)
        b1=re.fullmatch(r"byte ptr \[%s \+ 0x([0-9a-f]+)\], al"%this,a1)
        if op0 in MOV and b0 and o1 in MOV and b1 and _is_arg1(b0.group(1)): return ("set",("1",b1.group(1)))
        w0=re.fullmatch(r"ax, word ptr \[esp \+ 0x([0-9a-f]+)\]",a0)
        w1=re.fullmatch(r"word ptr \[%s \+ 0x([0-9a-f]+)\], ax"%this,a1)
        if op0 in MOV and w0 and o1 in MOV and w1 and _is_arg1(w0.group(1)): return ("set",("2",w1.group(1)))
        f0=re.fullmatch(r"dword ptr \[esp \+ 0x([0-9a-f]+)\]",a0)
        f1=re.fullmatch(r"dword ptr \[%s \+ 0x([0-9a-f]+)\]"%this,a1)
        if op0=="fld" and f0 and o1=="fstp" and f1 and _is_arg1(f0.group(1)): return ("setf",f1.group(1))
    # --- GetBaseInfo family: mov eax,[esp+P]; mov [eax],COUNT; mov eax,ARRAY_ADDR ---
    #     (writes the element count through the out-param, returns the static info array)
    if len(body)==3:
        o1,a1,_=body[1]; o2,a2,_=body[2]
        if (op0 in MOV and re.fullmatch(r"eax, dword ptr \[esp \+ 0x[0-9a-f]+\]",a0)
                and o1 in MOV and (g1:=re.fullmatch(r"dword ptr \[eax\], 0x([0-9a-f]+)",a1))
                and o2 in MOV and (g2:=re.fullmatch(r"eax, 0x([0-9a-f]+)",a2))):
            return ("baseinfo",(g1.group(1),g2.group(1)))
    # --- comparison-bool getter: <this-chain or param load> ; <setcc materialisation> ---
    cb=_classify_cmpbool(body,this,npush)
    if cb: return cb
    # --- chained-deref getter: zero or more pointer hops, then one terminal load ---
    # `regs` maps each register known to hold a tracked pointer to the C expression for it,
    # seeded with this. Every body instruction except the last must be a pointer hop
    # (`HOP` is identical to the module-level `_HOP`; redefined locally so each hop adds one
    # `*(char**)(...)` deref layer keyed by the *previous* tracked register).
    regs={this:"(char*)this"}
    HOP=re.compile(r"(e[abcds][ipx]|edi|ebp), dword ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]")
    for op,arg,_ in body[:-1]:
        if op not in MOV: return None
        m=HOP.fullmatch(arg)
        if not m or m.group(2) not in regs: return None          # base must be a register we already track
        regs[m.group(1)]=f"*(char**)({regs[m.group(2)]} + 0x{m.group(3) or '0'})"
    top,targ,_=body[-1]
    def term(rx):  # ("eax|fpu, <sz> ptr [base + 0xK]"); returns (baseexpr,K) if base tracked
        m=re.fullmatch(rx,targ)
        if m and m.group(1) in regs: return (regs[m.group(1)],m.group(2) or "0")
        return None
    # Each row picks the terminal-load regex for ONE possible last opcode (int via mov, float
    # via fld, signed/unsigned byte/word via movsx/movzx, address-of via lea); rows whose
    # opcode doesn't match `top` evaluate their regex to None and are skipped below.
    for kind,rx in (("int", r"eax, dword ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]" if top in MOV else None),
                    ("flt", r"dword ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]" if top=="fld" else None),
                    ("byu", r"eax, byte ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]" if top=="movzx" else None),
                    ("bys", r"eax, byte ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]" if top=="movsx" else None),
                    ("wou", r"eax, word ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]" if top=="movzx" else None),
                    ("wos", r"eax, word ptr \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]" if top=="movsx" else None),
                    ("lea", r"eax, \[(e[abcds][ipx]|edi|ebp)(?: \+ 0x([0-9a-f]+))?\]" if top=="lea" else None)):
        if rx is None: continue
        r=term(rx)
        if r: return ("chain",(kind,r[0],r[1]))
    return None

def first_param(sig):
    """Return the NAME of the first parameter in a C++ signature, or None if there is none.

    Grabs the text inside the outermost `(...)`, takes the comma-segment before the first
    comma, and returns its last whitespace-token with any leading `*`/`&` stripped (so
    `Pot* p` and `Pot *p` both yield `p`). Used to name the arg in emitted setter code."""
    m=re.search(r"\(([^)]*)\)",sig)
    if not m or not m.group(1).strip(): return None
    p=m.group(1).split(",")[0].strip().split()
    return p[-1].lstrip("*&") if p else None

def first_param_raw(sig):                 # full text of the first parameter (type + name), or None
    mm=re.search(r"\(([^)]*)\)",sig)
    if not mm or not mm.group(1).strip() or mm.group(1).strip()=="void": return None
    return mm.group(1).split(",")[0].strip()

_PRIM={"int","unsigned int","char","unsigned char","signed char","short","unsigned short",
       "long","unsigned long","bool","bool32_t","float","double","uint8_t","uint16_t","uint32_t",
       "int8_t","int16_t","int32_t","uint","byte","__int64","unsigned __int64","size_t","wchar_t"}
def first_param_type(sig):                # the first parameter's TYPE (no name), or None
    raw=first_param_raw(sig)
    if not raw: return None
    raw=re.sub(r"\bconst\b"," ",raw).strip()
    m=re.match(r"(.+?)\s*[A-Za-z_]\w*\s*$",raw)   # split trailing identifier (the name)
    t=(m.group(1).strip() if m else raw)
    return re.sub(r"\s+"," ",t)
def _is_primitive(t):
    """Is type `t` safe to width-cast through `(uintNN)` in an emitted setter?

    True for the known scalar names in `_PRIM` and for any pointer (`*` suffix). NOTE: a
    typedef'd scalar or an enum is NOT in `_PRIM`, so it is treated as non-primitive and the
    setter assigns through `*(NamedType*)(...)` rather than a width cast -- usually fine, but
    a width-mismatched named type could change layout assumptions. Conservative on purpose."""
    return bool(t) and (t in _PRIM or t.endswith("*"))

def nth_param(sig,k):                     # k is 1-based; returns the param's NAME, or None
    m=re.search(r"\(([^)]*)\)",sig)
    if not m or not m.group(1).strip() or m.group(1).strip()=="void": return None
    parts=[x.strip() for x in m.group(1).split(",")]
    if k<1 or k>len(parts): return None
    nm=re.search(r"([A-Za-z_]\w*)\s*$",parts[k-1])
    return nm.group(1) if nm else None

# The staging-stub matcher. Named groups:
#   head : the whole `// win1.41 <addr> ...\n<signature>\n` preamble (re-emitted verbatim).
#   addr : the 8-hex win1.41 address, linking the stub to its asm function.
#   sig  : the C++ method signature `RetType Class::Method(params) [const]` (no `;`/`{`).
#   body : the brace body, restricted to `[^{}]*?` so it cannot span a nested `{...}` -- this
#          deliberately only matches flat one-statement stubs (`{ return 0; }` / empty).
pat=re.compile(r"(?P<head>// win1\.41 (?P<addr>[0-9a-f]+) [^\n]*\n(?P<sig>[A-Za-z][\w:\*&<> ]+ [\w:]+::[\w~]+\([^;{]*\)(?:\s*const)?)\s*\n)\{(?P<body>[^{}]*?)\n\}",re.S)
lift=0
def repl(m):
    """`pat.sub` callback: turn one matched stub into emitted C, or leave it unchanged.

    `m` captures the `// win1.41 <addr>` header, the C++ signature, and the brace body of a
    single staging function. Only empty/`return 0;` bodies are eligible (we never overwrite
    real code). We look up the asm function at `addr`, `classify` it, then synthesise a body
    matching the C++ return type (casting as needed). On ANY mismatch -- ineligible body, no
    asm match, unrecognised shape, return-type/void conflict, unresolvable constant or param
    -- we return `m.group(0)` (the original text) so the stub is left exactly as-is. The
    global `lift` counter is bumped only when an actual rewrite is produced."""
    global lift
    if m.group("body").strip() not in("return 0;",""): return m.group(0)
    fn=next((v for v in asm_fn.values() if v and v[0][2]==m.group("addr")),None)
    if not fn: return m.group(0)
    c=classify(fn)
    if not c: return m.group(0)
    sig=m.group("sig")
    rt=re.match(r"\s*(.+?)\s+[\w:]+::[\w~]+\(",sig); rettype=(rt.group(1).strip() if rt else "uint32_t")
    kind,payload=c
    INTC={"4":"uint32_t","2":"uint16_t","1":"uint8_t"}
    if kind in("set","setf"):                                  # writers (return void)
        if rettype!="void": return m.group(0)
        arg=first_param(sig)
        if not arg: return m.group(0)
        if kind=="setf": code=f"*(float*)((char*)this + 0x{payload}) = {arg};"
        else:
            sz,N=payload; ct=INTC[sz]
            pt=first_param_type(sig)
            if _is_primitive(pt):                                  # int/enum-ish: width-cast as before
                code=f"*({ct}*)((char*)this + 0x{N}) = ({ct}){arg};"
            else:                                                  # struct/named type: assign by its own type (no struct->int cast)
                code=f"*({pt}*)((char*)this + 0x{N}) = {arg};"
    elif kind=="cstore":                                       # constant store (void)
        if rettype!="void": return m.group(0)
        sz,N,imm=payload; ct={4:"uint32_t",1:"uint8_t"}[sz]
        code=f"*({ct}*)((char*)this + 0x{N}) = 0x{imm};"
    elif kind=="cmpbool":                                       # return <this-field|param> <op> K;
        if rettype=="void": return m.group(0)
        expr,op,sign,K=payload
        if isinstance(expr,tuple) and expr[0]=="PARAM":         # param source -> resolve its name from the sig
            expr=nth_param(sig,expr[1])
            if not expr: return m.group(0)
        code=idioms.apply(expr,("cmp",op,sign,K),rettype)
        if code is None: return m.group(0)
    elif kind=="cmp2":                                          # return <L> <op> <R>;  (two value operands)
        if rettype=="void": return m.group(0)
        Lx,Rx,op,sign=payload
        def _resolve(x):
            return nth_param(sig,x[1]) if isinstance(x,tuple) and x[0]=="PARAM" else x
        Lx,Rx=_resolve(Lx),_resolve(Rx)
        if not Lx or not Rx: return m.group(0)
        # the asm does a 32-bit bitwise compare; cast BOTH operands so a pointer-vs-field
        # comparison (e.g. field == Pot* param) is well-typed and compiles. sign=='s' means
        # idioms decoded a SIGNED setcc (setg/setl) -> compare as (int); otherwise the
        # comparison used unsigned flags (seta/setb/sete) -> compare as (uint32_t).
        cast="(int)" if sign=="s" else "(uint32_t)"
        code=f"return {cast}({Lx}) {op} {cast}({Rx});"
    elif kind in("rdataf","rdatai"):                           # constant from .rdata
        if rettype=="void" or _RD is None: return m.group(0)
        off=int(payload,16)
        if kind=="rdataf":
            v=_RD.f32(off)
            if v is None: return m.group(0)
            code=(f"return {_cfloat(v)};" if rettype=="float" else f"return ({rettype}){_cfloat(v)};")
        else:
            v=_RD.u32(off)
            if v is None: return m.group(0)
            code=f"return ({rettype})0x{v:x};"
    elif kind=="real":                                         # MSVC float-literal symbol (value in name)
        if rettype=="void": return m.group(0)
        v=real_literal(payload)
        if v is None: return m.group(0)
        code=(f"return {_cfloat(v)};" if rettype=="float" else f"return ({rettype}){_cfloat(v)};")
    elif kind=="baseinfo":                                      # *outCount = COUNT; return (T*)&staticArray;
        count,addr=payload
        raw=first_param_raw(sig); name=first_param(sig)
        if not raw or not name or rettype=="void": return m.group(0)
        write=f"{name} = 0x{count};" if "&" in raw else f"*{name} = 0x{count};"
        code=f"{write}\n    return ({rettype})0x{addr};"
    else:                                                      # readers (return value)
        if rettype=="void": return m.group(0)
        if kind=="const": code=f"return ({rettype})0x{payload};"
        elif kind=="chain":
            tk,base,K=payload
            CAST={"int":f"*({rettype}*)","flt":"*(float*)","byu":f"({rettype})*(uint8_t*)",
                  "bys":f"({rettype})*(int8_t*)","wou":f"({rettype})*(uint16_t*)",
                  "wos":f"({rettype})*(int16_t*)","lea":f"({rettype})"}[tk]
            inner=f"({base} + 0x{K})"
            code=f"return {CAST}{inner};"
        else: return m.group(0)
    lift+=1
    return m.group("head")+"{\n    "+code+"\n}"

def _self_test():
    """Pure-logic unit tests: feed synthetic parsed-asm/signature input to the parsing
    and pattern helpers and assert the exact result. No build, no network, no file I/O."""
    ok=True
    def chk(cond,name):
        nonlocal ok; ok&=bool(cond)
        print(f"  {'PASS' if cond else 'FAIL'}  {name}")
    # --- _parse_ins: split an asm line into (mnemonic, operands, addr) ---
    chk(_parse_ins("    mov eax, 0x1  // 0x004dc100")==("mov","eax, 0x1","004dc100"),
        "_parse_ins basic mov")
    chk(_parse_ins("    {disp32} fld dword ptr [rdata_bytes + 0x1c840]  // 0x00605cc0")
        ==("fld","dword ptr [rdata_bytes + 0x1c840]","00605cc0"),
        "_parse_ins strips {disp32} prefix")
    chk(_parse_ins("    ; just a comment") is None, "_parse_ins rejects non-instruction")
    # --- classify: const return ---
    chk(classify([("mov","eax, 0x7","_"),("ret","","_")])==("const","7"),
        "classify const return -> 0x7")
    chk(classify([("mov","al, 0x1","_"),("ret","","_")])==("const","1"),
        "classify byte const (mov al,IMM)")
    # --- classify: chained-deref getter (this->[0x10] int) ---
    chk(classify([("mov","eax, dword ptr [ecx + 0x10]","_"),("ret","","_")])
        ==("chain",("int","(char*)this","10")),
        "classify int getter this+0x10")
    # one pointer hop then float terminal: this->[0x4]->[0x8]
    chk(classify([("mov","eax, dword ptr [ecx + 0x4]","_"),
                  ("fld","dword ptr [eax + 0x8]","_"),("ret","","_")])
        ==("chain",("flt","*(char**)((char*)this + 0x4)","8")),
        "classify float getter via one hop")
    # esi-as-this prologue: push esi; mov esi,ecx; mov eax,[esi+0x20]
    chk(classify([("push","esi","_"),("mov","esi, ecx","_"),
                  ("mov","eax, dword ptr [esi + 0x20]","_"),("ret","","_"),("pop","esi","_")])
        ==("chain",("int","(char*)this","20")),
        "classify getter with esi=this prologue")
    # --- classify: constant store (void) ---
    chk(classify([("mov","dword ptr [ecx + 0x40], 0x1","_"),("ret","","_")])
        ==("cstore",(4,"40","1")),
        "classify constant store dword")
    # --- classify: int setter ---
    chk(classify([("mov","eax, dword ptr [esp + 0x4]","_"),
                  ("mov","dword ptr [ecx + 0x30], eax","_"),("ret","","_")])
        ==("set",("4","30")),
        "classify int setter -> this+0x30")
    # --- classify: float rdata constant getter ---
    chk(classify([("fld","dword ptr [rdata_bytes + 0x1c840]","_"),("ret","","_")])
        ==("rdataf","1c840"),
        "classify rdata float getter")
    # --- classify: comparison-bool getter (field == 0) ---
    chk(classify([("mov","eax, dword ptr [ecx + 0x90]","_"),
                  ("test","eax, eax","_"),("sete","al","_"),("ret","","_")])
        ==("cmpbool",("*(uint32_t*)((char*)this + 0x90)","==","x","0")),
        "classify cmpbool field==0")
    # something with real logic must NOT match
    chk(classify([("imul","eax, dword ptr [ecx + 0x4], 0x3","_"),("ret","","_")]) is None,
        "classify rejects non-trivial (imul)")
    # --- signature parsing helpers ---
    chk(first_param("void Foo::Bar(int n)")=="n", "first_param name")
    chk(first_param("void Foo::Bar()") is None, "first_param empty params -> None")
    chk(first_param_type("void Foo::Bar(const Pot* p)")=="Pot*", "first_param_type strips const+name")
    chk(first_param_type("void Foo::Set(int v)")=="int", "first_param_type primitive")
    chk(_is_primitive("int") and _is_primitive("Pot*") and not _is_primitive("Pot"),
        "_is_primitive int/ptr yes, struct no")
    chk(nth_param("int F(int a, float b, Pot* c)",2)=="b", "nth_param 2 -> b")
    chk(nth_param("int F(int a)",3) is None, "nth_param out-of-range -> None")
    chk(first_param_raw("void F(int n, float m)")=="int n", "first_param_raw type+name")
    # --- _cfloat: round-trippable C float literal always has a dot/exp + f suffix ---
    chk(_cfloat(1.0)=="1.0f" and _cfloat(0.5)=="0.5f", "_cfloat 1.0/0.5")
    chk(_cfloat(0.0).endswith("f") and ("." in _cfloat(0.0) or "e" in _cfloat(0.0)),
        "_cfloat 0.0 has dot+f suffix")
    print("SELF-TEST:","ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if "--self-test" in sys.argv:
    sys.exit(_self_test())

changed=[]
for f in glob.glob(os.path.join(ROOT,"src/staging/**/*.cpp"),recursive=True):
    if ONLY and os.path.abspath(f)!=os.path.abspath(ONLY) and os.path.basename(f)!=os.path.basename(ONLY): continue
    t=_read_text(f)
    if t is None: continue
    new=pat.sub(repl,t)
    if new!=t:
        changed.append(f)
        # Write back with the same latin-1 codec used to read, so the round-trip is
        # byte-exact for ASCII-ish asm/cpp. (Inputs are stated to be ASCII-ish; a `with`
        # block guarantees the handle is closed even if the write raises.)
        if APPLY:
            with open(f,"w",encoding="latin-1") as _fh: _fh.write(new)
if LISTF:
    for cf in changed: print(os.path.relpath(cf,ROOT).replace("\\","/"))
else:
    print(f"{'APPLIED' if APPLY else 'would-lift'}: {lift} additional trivial functions"
          + (f" in {len(changed)} files" if not ONLY else f" in {os.path.basename(ONLY)}"))
