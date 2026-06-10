#!/usr/bin/env python3
"""taint_xref.py — flow-sensitive intra-procedural taint / xref engine for the bw1-decomp asm.

Answers, precisely: "introduce a pointer at a SOURCE, follow it through a function's control flow
(branches, spills to the stack, calls), and report every FIELD access and VTABLE call made on it."
Generalizes find_tribal_consumers.py. Dependency-free python3; works on the reassembled text in
src/asm/unprocessed/*.asm and the inline-asm C in src/c/*.c, src/staging/*.cpp (no build / IDA needed).

==================================  WHAT MAKES IT PRECISE  ==================================
A real abstract interpreter, not a line scanner:
  * builds a per-FILE control-flow graph (basic blocks; edges = fall-through + resolved jXX/jmp targets;
    no edge across ret / unconditional jmp / computed jmp -> functions are naturally disconnected);
  * forward MUST-dataflow to a fixpoint: a location is "the tracked pointer" at a program point only if
    it is on EVERY path there (meet = set intersection) -> flow-sensitive, yet false-positive-free;
  * abstract state = tainted REGISTERS + tainted STACK SLOTS (esp-delta normalized; ebp frames handled),
    so pointers spilled with `mov [esp+N], reg` and reloaded later are followed;
  * precise calling convention: a `call` clobbers caller-saved eax/ecx/edx (callee-saved ebx/esi/edi/ebp
    and stack slots survive); the SOURCE call (or GetPlayer/GetHolder by name) re-taints eax.

SOURCES (choose one):
  --vfn 0xNN     taint = return (eax) of  call [reg+0xNN]   (a vtable getter slot; 0x1c=GetPlayer, 0x48=GetTown, ...)
  --call REGEX   taint = return (eax) of  call <matching REGEX>   (e.g. 'GetTown@', 'GetCreature@')
  --this         taint = ecx at every function entry (__fastcall `this`)  [optionally restrict with --fn]
  --param 0xN    taint = the stack arg at [esp+0xN] on entry (after the return addr)

SINKS (reported, grouped by function with win1.41 address):
  r / w / rw  field read / write at [taint + 0xOFF]        (&=lea address-of; vcall=call [taint+0xOFF])
  store        the taint is spilled to a stack slot (informational, with --verbose)

FILTERS:  --offsets a-b,c   --glob FILEPAT   --min N   --fn NAMEPAT
SYMBOLS:  function headers are demangled to Class::Method (via symbols.py); `--vclass <C>`
          resolves each `vcall +0xOFF` to the tainted object's method (via vtable.py).
DX / DIAGNOSTICS:
  --self-test   run the built-in regression suite (asserts the 5 hand-verified hooks are rediscovered).
                RUN THIS AFTER ANY EDIT. Exit code 0 = all pass, 1 = a regression.
  --debug       on any per-function error, print the full traceback + the offending instructions.
  --verbose     (reserved) extra progress.
Errors never abort the whole run: each failing function prints one decisive line
  "[taint_xref] ANALYZE ERROR  <file> : <function> @<addr> (<N> insns) — <Exception>: <msg>"
so an issue can be pinpointed in seconds. The summary prints files/functions scanned + error count.

Limits (honest): intra-procedural (doesn't enter callees); no heap/alias analysis; consumes the
disassembled text (doesn't re-decode bytes). Computed `jmp [table]` ends a block with unknown
successors (conservative). A safety iteration cap turns any non-convergence into a clear error
(naming the function) instead of a hang. Still: VERIFY a lead by reading the asm before trusting it.
"""
import os, re, glob, sys, collections

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import corpus
ROOT = corpus.repo_root("src/asm/unprocessed/*.asm")
def opt(name, d=None):
    """Return the CLI value following the flag `name` (e.g. opt('--vfn') -> '0x1c'), else `d`.

    Bounds-guarded: if the flag is present but is the *last* token (no value after it),
    we print a friendly usage error and exit instead of raising a raw IndexError.
    """
    if name not in sys.argv:
        return d
    i = sys.argv.index(name)
    if i + 1 >= len(sys.argv):
        sys.exit("[taint_xref] %s requires a value (none given). See --help / run with no args for usage." % name)
    return sys.argv[i + 1]
VFN=opt("--vfn"); CALL=opt("--call"); THIS="--this" in sys.argv; PARAM=opt("--param")
GLOB=opt("--glob",""); MIN=int(opt("--min","1")); FN=opt("--fn"); VERBOSE="--verbose" in sys.argv
VCLASS=opt("--vclass")   # the tainted object's class -> resolve `vcall +0xOFF` to a method name
INDEXED="--indexed" in sys.argv   # also report indexed array sinks [base + idx*N + 0xOFF] (finds array loops)
OFFS=None
if opt("--offsets"):
    # --offsets a-b,c,...  -> the set of field offsets (hex) to report; others are filtered out.
    # int(x,16) accepts upper- or lower-case hex. A "a-b" range expands in steps of 4 because B&W
    # struct fields are 4-byte aligned; this intentionally drops non-4-aligned offsets inside a range
    # (e.g. 0x6a within 0x68-0x88) — list such offsets individually if you need a byte/word field.
    OFFS=set()
    for p in opt("--offsets").split(","):
        if "-" in p:
            a,b=p.split("-");  OFFS|=set(range(int(a,16),int(b,16)+1,4))
        else: OFFS.add(int(p,16))
if not (VFN or CALL or THIS or PARAM or "--self-test" in sys.argv):
    print(__doc__); sys.exit(1)

GP={"eax","ebx","ecx","edx","esi","edi","ebp","esp"}
CALLER_SAVED={"eax","ecx","edx"}

# ---------- parsing ----------
# The reassembled asm appends the original win1.41 instruction address in a trailing comment
# "// 0xADDR"; we capture it (6-8 hex digits) so every reported sink can cite a ground-truth VA.
RE_ADDR=re.compile(r'//\s*0x([0-9a-f]{6,8})')
# A *local* code label at line start. Four shapes occur in the dumps: MSVC-mangled "?Name@Class@@…:",
# and the three synthetic forms emitted by the reassembler for label-less targets:
# "_jmp_addr_0xADDR:", ".Lbl_addr_0xADDR:", "LAB__addr_0xADDR:".
RE_LABEL=re.compile(r'^\s*((?:\?|_jmp_addr_0x|\.Lbl_addr_0x|LAB__addr_0x)[\w@?$]*?):')
# A *function entry* label in asm: either a mangled "?…:" symbol or a synthetic "_jmp_addr_0xADDR:"
# (used for functions with no recovered symbol). Group(1)=mangled, group(2)=jmp_addr form.
RE_FN_ASM=re.compile(r'^\?([A-Za-z0-9_@?$]+):|^(_jmp_addr_0x[0-9a-f]+):')
# A function definition in the inline-asm C files: "... __fastcall NAME(" — captures NAME.
RE_FN_C=re.compile(r'__fastcall\s+([A-Za-z0-9_]+)\s*\(')
RE_CASM=re.compile(r'asm\("(.*?)"\)')           # a single instruction inside a src/c asm("...") statement
RE_CLABEL=re.compile(r'asm\("((?:LAB__addr_0x|\.Lbl_addr_0x)[\w]*):"\)')  # a label emitted as asm("LAB__…:")

class Insn:
    """One parsed source line. `mn`/`ops` are None for a bare label or non-instruction line.

    Fields: addr (win1.41 VA int or None), label (leader label str or None), mn (mnemonic),
    ops (operand string), fn (the enclosing function name being tracked), text (trimmed raw line).
    """
    __slots__=("addr","label","mn","ops","fn","text")
    def __init__(s,addr,label,mn,ops,fn,text): s.addr,s.label,s.mn,s.ops,s.fn,s.text=addr,label,mn,ops,fn,text

def norm(instr):
    """Normalize one raw instruction into (mnemonic, operands).

    Strips two reassembler artifacts before splitting: the "{dispN}" displacement-size markers and
    the "dword/qword/word/byte ptr" size prefixes (irrelevant to taint, which tracks the base reg +
    disp). Also drops the ".s" short-jump suffix from the mnemonic. Returns (None,None) if empty.
    """
    instr=re.sub(r'\{disp\d+\}\s*','',instr).strip()
    instr=re.sub(r'\b(dword|qword|word|byte) ptr\s*','',instr)
    if not instr: return None,None
    parts=instr.split(None,1)
    mn=parts[0].replace(".s","")
    ops=parts[1].strip() if len(parts)>1 else ""
    return mn,ops

def parse_file(path):
    """Parse one .asm/.c/.cpp file into a flat list of Insn, tracking the enclosing function name.

    Handles both the standalone-asm dumps and the inline-asm-in-C tiers: in C files instructions live
    inside asm("...") and the function name comes from the C definition; in .asm files instructions are
    bare lines and the name comes from the ?/_jmp_addr leader labels. latin-1 is used for a lossless
    byte round-trip of the dumps (which are ASCII-ish but may carry stray high bytes).
    """
    out=[]; fn="(top)"; isc=path.endswith((".c",".cpp"))
    with open(path,encoding="latin-1") as fh:
      for raw in fh:
        line=raw.rstrip("\n")
        # function name tracking
        m=RE_FN_ASM.match(line)
        if m: fn=(m.group(1) or m.group(2))[:50]
        elif isc:
            mc=RE_FN_C.search(line)
            if mc and "asm(" not in line: fn=mc.group(1)[:50]
        # label?
        label=None
        if isc:
            lc=RE_CLABEL.search(line)
            if lc: label=lc.group(1)
        else:
            ml=RE_LABEL.match(line)
            if ml: label=ml.group(1)
        # instruction?
        addr=None
        ma=RE_ADDR.search(line)
        if ma: addr=int(ma.group(1),16)
        instr=None
        if isc:
            mi=RE_CASM.search(line)
            if mi and not mi.group(1).endswith(":"): instr=mi.group(1)
        else:
            # strip leading label and the // comment
            body=RE_LABEL.sub("",line,count=1) if label else line
            body=body.split("//")[0].strip()
            if body and not body.startswith(".") and not body.endswith(":"): instr=body
        if instr is None:
            if label is not None:  # bare label line -> a leader marker with no insn
                out.append(Insn(addr,label,None,None,fn,line.strip()[:96]))
            continue
        mn,ops=norm(instr)
        if mn is None:
            if label is not None: out.append(Insn(addr,label,None,None,fn,line.strip()[:96]))
            continue
        out.append(Insn(addr,label,mn,ops,fn,line.strip()[:96]))
    return out

# ---------- operand helpers ----------
# Match a memory operand "[base (+ index*scale)? (+ 0xDISP)?]".
#   group(1) = base register   (e?? — a 32-bit GP reg)
#   group(2) = index register   (optional; the "* 0xSCALE" scale factor is matched but discarded —
#              we only care THAT it is an indexed/array access, not the stride)
#   group(3) = displacement     (optional; "0x" + leading zeros stripped via 0x0*, hex case-insensitive)
RE_MEM=re.compile(r'\[(e[a-z][a-z])(?:\s*\+\s*(e[a-z][a-z])\s*\*\s*0x[0-9a-f])?(?:\s*\+\s*0x0*([0-9a-fA-F]+))?\]')
def mem(ops):
    """return (base, index_or_None, disp_int_or_None) of the first [mem] operand, else None."""
    m=RE_MEM.search(ops)
    if not m: return None
    return m.group(1), m.group(2), (int(m.group(3),16) if m.group(3) else 0)
def first_reg(ops):
    """Return the first operand if it is a 32-bit GP register (the write/dest reg), else None."""
    m=re.match(r'(e[a-z][a-z])\b',ops.strip())
    return m.group(1) if m else None

# Conditional-jump mnemonics: each ends a basic block and produces TWO successors (taken target +
# fall-through). (Note: `loop`/`jcxz`-family counted loops are not modelled; a missing back-edge only
# under-approximates the CFG, which is conservative for a MUST-taint analysis — never unsound.)
COND={'je','jne','jz','jnz','jg','jge','jl','jle','ja','jae','jb','jbe','js','jns','jo','jno','jp','jnp','jc','jnc','jng','jcxz'}
def branch_target(ins):
    """Return the local-label target of a jmp/jXX (used to add a CFG edge), else None.

    Accepts only operands that are a bare label (the .Lbl_/LAB__/_jmp_addr_ synthetic forms or a
    ?mangled symbol) — i.e. a direct intra-procedural branch. A register/memory (computed) target
    matches nothing here, so its block gets no resolved successor (conservative).
    """
    if ins.mn and (ins.mn=="jmp" or ins.mn in COND):
        t=ins.ops.strip()
        if re.match(r'(\.Lbl_addr_0x|LAB__addr_0x|_jmp_addr_0x|\?)[\w@?$]*$',t): return t
    return None

# ---------- per-file CFG + dataflow ----------
hits=[]   # accumulated sinks: each is (offset, kind, fn, addr_hex, raw_text)

def is_seed(ins):
    """True if this instruction is a SOURCE `call` that (re-)taints eax with the tracked pointer.

    Matches the chosen source — the vtable getter slot (--vfn 0xNN), or a call whose target matches
    --call REGEX — AND, additionally, ANY call to a GetPlayer/GetHolder method. The latter is always
    treated as a re-taint source (the tracked object is frequently re-fetched via GetPlayer/GetHolder
    on different paths); with a --call source this can therefore widen results with eax flowing from an
    unrelated GetPlayer/GetHolder call. VFN is matched case-insensitively (the operand hex is lower).
    """
    if ins.mn!="call": return False
    if VFN and re.search(r'\[e[a-z][a-z] \+ 0x0*%s\]'%VFN.lower().replace("0x",""), ins.ops): return True
    if CALL and re.search(CALL, ins.ops): return True
    return re.search(r'\?Get(Player|Holder)@', ins.ops) is not None

def record(state, ins):
    """record any sink (field access / vcall) on a tainted base; uses pre-state."""
    if ins.mn is None: return
    m=mem(ins.ops)
    if not m: return
    base,idx,disp=m
    if base not in state["t"]: return
    if idx is not None and not INDEXED: return  # indexed array access = a getter, not a fixed field (unless --indexed)
    if OFFS is not None and disp not in OFFS: return
    if ins.mn=="call": kind="vcall"
    elif ins.mn in ("fstp","fst"): kind="w"
    elif ins.mn=="lea": kind="&"
    elif ins.mn.startswith("mov"):
        kind="w" if re.match(r'\[',ins.ops) else "r"   # mov [base+off],x = write ; mov x,[base+off] = read
    else: kind="r"
    if idx is not None: kind="i"+kind             # mark indexed array sinks (ir/iw/i&) so loops stand out
    hits.append((disp,kind,ins.fn,("%x"%ins.addr) if ins.addr else "?",ins.text))

def transfer(state_in, block):
    """apply a block's instructions; return out-state. records sinks. state = {'t':frozenset locs,'sp':int|None}."""
    t=set(state_in["t"]); sp=state_in["sp"]
    for ins in block:
        if ins.mn is None: continue
        record({"t":t,"sp":sp}, ins)
        mn,ops=ins.mn,ins.ops
        # stack pointer tracking
        if mn=="push":
            if sp is not None: sp-=4
            continue
        if mn=="pop":
            r=first_reg(ops);
            if r: t.discard(r)
            if sp is not None: sp+=4
            continue
        if mn in ("sub","add") and ops.startswith("esp"):
            mnum=re.search(r'0x0*([0-9a-fA-F]+)',ops)
            if sp is not None and mnum: sp += (-1 if mn=="sub" else 1)*int(mnum.group(1),16)
            continue
        if mn=="call":
            t-=CALLER_SAVED
            if is_seed(ins): t.add("eax")
            continue
        if mn=="ret": continue
        if mn=="lea":
            r=first_reg(ops);  t.discard(r) if r else None;  continue
        if mn.startswith("mov"):   # mov / movzx / movsx
            # dst, src
            cm=re.match(r'(\[[^\]]*\]|e[a-z][a-z]),\s*(.*)$',ops)
            if not cm: continue
            dst,src=cm.group(1),cm.group(2).strip()
            if dst.startswith("["):           # store: mov [esp/ebp +disp], reg
                mm=mem(dst)
                # Only plain (non-indexed) esp/ebp slots are tracked as spill locations.
                if mm and mm[0] in ("esp","ebp") and mm[1] is None:
                    # A stack slot is keyed as a 4-tuple:  ("s", sp_position, disp, base)
                    #   sp_position = current esp delta for an esp-relative slot (so the SAME physical
                    #                 slot keys identically wherever esp has shifted); None if esp is
                    #                 unknown -> such a slot is untrackable. For ebp-relative slots the
                    #                 frame is stable so sp_position is left None and `disp` alone keys it.
                    loc=("s", (sp if mm[0]=="esp" and sp is not None else None), mm[2], mm[0])
                    srcr=first_reg(src)
                    # MUST-taint: storing a tainted reg taints the slot (only if its sp is known);
                    # storing anything else into a previously-tainted slot kills that slot's taint.
                    if srcr and srcr in t and loc[1] is not None: t.add(loc)
                    elif loc in t: t.discard(loc)
                continue
            # dst is a register
            mm=mem(src)
            if re.fullmatch(r'e[a-z][a-z]',src):            # mov reg, reg
                t.add(dst) if src in t else t.discard(dst)
            elif mm and mm[0] in ("esp","ebp") and mm[1] is None:   # reload from stack slot
                # Rebuild the SAME 4-tuple the store used; an equal key means we reload the spilled
                # pointer, so dst becomes tainted (only when sp is known so the key is meaningful).
                loc=("s",(sp if mm[0]=="esp" and sp is not None else None),mm[2],mm[0])
                t.add(dst) if (loc[1] is not None and loc in t) else t.discard(dst)
            else:
                t.discard(dst)                  # mov reg, [other] / imm
            continue
        # Any other arithmetic/logic/shift/setcc instruction OVERWRITES its first (dest) operand with a
        # computed value, so the tracked pointer no longer lives there -> drop that register's taint.
        # (We only model the dest write; a pointer survives if it was never the dest.)
        if mn in ("xor","or","and","add","sub","sbb","adc","imul","mul","sar","shl","shr","neg","not","inc","dec","movsx","movzx","cdq","setz","sete","setne","setge"):
            r=first_reg(ops)
            if r: t.discard(r)
    return {"t":frozenset(t),"sp":sp}

def analyze(ins):
    """Build a CFG over this function's instruction slice and run the fixpoint taint dataflow.

    Steps: (1) mark basic-block leaders (first insn, every label, and the insn after any
    ret/jmp/conditional); (2) cut the insn list into blocks at the leaders; (3) wire successors
    (fall-through + resolved branch targets; no edge past ret/unconditional-jmp/computed-jmp);
    (4) run a worklist fixpoint over transfer()+meet(), recording sinks into the global `hits`.
    Records nothing and returns early on an empty slice.
    """
    n=len(ins)
    if not n: return
    # ---- (1) basic-block leaders ----
    leader=[False]*n; leader[0]=True
    for i,x in enumerate(ins):
        if x.label is not None: leader[i]=True   # a label can be a branch target -> starts a block
    for i,x in enumerate(ins):
        # an insn AFTER a control-transfer also starts a block (branch targets are labels => already leaders)
        if x.mn=="ret" or x.mn=="jmp" or (x.mn in COND):
            if i+1<n: leader[i+1]=True
    # ---- (2) block list ----
    # blocks[bi] = (start_index, end_index) half-open insn range; b2s maps a label -> its block index.
    starts=[i for i in range(n) if leader[i]]
    blocks=[]; b2s={}
    for bi,s in enumerate(starts):
        e=starts[bi+1] if bi+1<len(starts) else n
        blocks.append((s,e));
        if ins[s].label is not None: b2s[ins[s].label]=bi
    def idx2block(i):
        """Binary-search the block index containing insn index `i` (the largest start <= i)."""
        lo,hi=0,len(starts)-1; ans=0
        while lo<=hi:
            mid=(lo+hi)//2
            if starts[mid]<=i: ans=mid; lo=mid+1
            else: hi=mid-1
        return ans
    # ---- (3) successors (then invert to predecessors) ----
    succ=[[] for _ in blocks]
    for bi,(s,e) in enumerate(blocks):
        last=None
        for j in range(e-1,s-1,-1):
            if ins[j].mn is not None: last=ins[j]; break
        if last is None:
            if e<n: succ[bi].append(idx2block(e))
            continue
        bt=branch_target(last)
        if last.mn=="ret": pass
        elif last.mn=="jmp":
            if bt and bt in b2s: succ[bi].append(b2s[bt])
            # computed jmp -> no succ
        elif last.mn in COND:
            if bt and bt in b2s: succ[bi].append(b2s[bt])
            if e<n: succ[bi].append(idx2block(e))
        else:
            if e<n: succ[bi].append(idx2block(e))
    preds=[[] for _ in blocks]
    for bi,ss in enumerate(succ):
        for sb in ss: preds[sb].append(bi)
    # ---- (4) worklist fixpoint (entry seeds + meet + transfer) ----
    def entry_state(bi):
        """Initial abstract state for a block. For a function-entry block, inject the --this/--param seed.

        A block is a function entry if it is block 0 with no label, OR carries a ?mangled/_jmp_addr
        function label, OR has no predecessors. sp is 0 at entry (before any push). --fn restricts
        seeding to functions whose name matches FN.
        """
        s,e=blocks[bi]; lbl=ins[s].label
        is_fn_entry = (lbl is None and bi==0) or (lbl and (lbl.startswith("?") or lbl.startswith("_jmp_addr"))) or (not preds[bi])
        t=set();
        if is_fn_entry and (THIS or PARAM) and (FN is None or (ins[s].fn and re.search(FN,ins[s].fn))):
            if THIS: t.add("ecx")     # __fastcall `this` arrives in ecx
            # --param 0xN taints the stack arg read as [esp+0xN] on entry. The seed key MUST match the
            # tuple that transfer()'s reload branch builds for that load: ("s", sp, disp, "esp"). At
            # entry sp==0 and the load's disp is N, so the slot is ("s", 0, N, "esp"). (A prior version
            # used ("s", 4+N, 0, "esp") — sp-position and disp swapped — so no reload ever matched and
            # --param silently found nothing.)
            if PARAM: t.add(("s", 0, int(PARAM,16), "esp"))
        return {"t":frozenset(t),"sp":0}
    IN=[None]*len(blocks); OUT=[None]*len(blocks)
    from collections import deque
    wl=deque(range(len(blocks)))
    inq=[True]*len(blocks)
    iters=0; CAP=400*len(blocks)+5000     # safety: a sound fixpoint converges well under this; guards against any oscillation/hang
    def meet(states):
        """Join predecessor OUT-states into a block's IN-state (the dataflow meet operator).

        Taint is MUST: a location is tainted on entry only if tainted on EVERY predecessor path
        (set intersection) -> no false positives. The esp delta `sp` is exact only if all preds agree;
        if they disagree it becomes None ("unknown"), which permanently disables stack-slot tracking
        on this path (a sound, monotone sink in the fixpoint lattice).
        """
        states=[s for s in states if s is not None]
        if not states: return None
        t=set(states[0]["t"]); sp=states[0]["sp"]
        for s in states[1:]:
            t&=s["t"];
            if s["sp"]!=sp: sp=None
        return {"t":frozenset(t),"sp":sp}
    while wl:
        iters+=1
        if iters>CAP:
            raise RuntimeError("fixpoint did not converge after %d iterations (%d blocks) in function '%s' "
                               "near 0x%s — likely a CFG/sp-tracking oscillation; rerun with --debug"
                               %(iters,len(blocks),(ins[0].fn if ins else "?"),
                                 ("%x"%ins[0].addr) if ins and ins[0].addr else "?"))
        bi=wl.popleft(); inq[bi]=False
        pin=meet([OUT[p] for p in preds[bi]])
        ein=entry_state(bi)
        if pin is None: cur=ein                       # no predecessors -> function entry (sp=0, +seed)
        else:
            # sp comes from predecessors (None = "unknown", which is a fixpoint sink). Do NOT fall back
            # to the entry sp=0 here: that re-injected 0 every iteration and fought the join's None,
            # causing non-convergence (e.g. _jmp_addr_0x004383d0). ein["t"] still re-asserts a --this/--param seed.
            cur={"t":pin["t"]|ein["t"],"sp":pin["sp"]}
        IN[bi]=cur
        out=transfer(cur, ins[blocks[bi][0]:blocks[bi][1]])
        if OUT[bi] is None or out["t"]!=OUT[bi]["t"] or out["sp"]!=OUT[bi]["sp"]:
            OUT[bi]=out
            for sb in succ[bi]:
                if not inq[sb]: wl.append(sb); inq[sb]=True

# ---------- drive (per-function, seed-pruned for speed; decisive diagnostics) ----------
DEBUG="--debug" in sys.argv
def seed_vfn_re():
    """Compiled regex matching the chosen --vfn source `call [reg + 0xNN]`, or None if --vfn unused.

    Used only as a cheap whole-file prefilter in collect() so files with no such vtable-slot call are
    skipped without parsing. Hex is lowercased (the dumps use lower-case hex) and leading zeros are
    tolerated (0x0*).
    """
    return re.compile(r'\[e[a-z][a-z] \+ 0x0*%s\]'%VFN.lower().replace("0x","")) if VFN else None
def segment(ins):
    """split a file's insns into per-function slices wherever the tracked function NAME changes.
    Works for both asm (name from ?/ _jmp_addr labels) and src/c (name from the C definition) — the
    latter has no asm labels, so name-change is the only reliable boundary (else the whole .c file
    became one giant CFG and the dataflow blew up — that bug is exactly why this exists)."""
    s=0
    for i in range(1,len(ins)+1):
        if i==len(ins) or ins[i].fn!=ins[s].fn:
            yield ins[s:i]; s=i
def seg_relevant(B):
    """True if a function segment is worth analyzing for the chosen source (cheap pre-screen).

    For --this/--param the seed is at entry, so any segment matching --fn (or all, if --fn unset)
    qualifies. For --vfn/--call the source must actually occur, so we require at least one seeding call.
    """
    if THIS or PARAM:
        return FN is None or any(x.fn and re.search(FN,x.fn) for x in B)
    return any(is_seed(x) for x in B)
def files():
    """Return the sorted list of source files across the three decomp tiers, filtered by --glob.

    Tiers: src/c (lifted C), src/staging (lifted C++), src/asm/unprocessed (raw reassembled asm).
    GLOB is a regex matched against each *basename* (empty GLOB matches everything).
    """
    out=[]
    for d in ("src/c","src/staging","src/asm/unprocessed"):
        for ext in ("*.c","*.cpp","*.asm"):
            out+=[f for f in glob.glob(os.path.join(ROOT,d,ext)) if re.search(GLOB,os.path.basename(f))]
    return sorted(out)

STATS={"files":0,"funcs":0,"errors":0}
def collect():
    """populate the global `hits`. Per-function error isolation: one bad function never aborts the run,
    and every failure prints file:function@addr + exception so an issue can be pinpointed instantly."""
    svr=seed_vfn_re()
    for f in files():
        base=os.path.basename(f)
        try:
            if VFN or CALL:                       # cheap file-level prefilter: skip files with no source at all
                with open(f,encoding="latin-1") as _fh: txt=_fh.read()
                if svr is not None and not svr.search(txt): continue
                if CALL and not re.search(CALL,txt): continue
            ins=parse_file(f)
        except Exception as ex:
            STATS["errors"]+=1
            sys.stderr.write("[taint_xref] PARSE ERROR  %s : %s: %s\n"%(base,type(ex).__name__,ex))
            if DEBUG: import traceback; traceback.print_exc()
            continue
        STATS["files"]+=1
        for B in segment(ins):
            if not seg_relevant(B): continue
            STATS["funcs"]+=1
            try:
                analyze(B)
            except Exception as ex:
                STATS["errors"]+=1
                fn=B[0].fn if B else "?"; ad=("0x%x"%B[0].addr) if B and B[0].addr else "?"
                sys.stderr.write("[taint_xref] ANALYZE ERROR  %s : %s @%s  (%d insns) — %s: %s\n"
                                 %(base,fn,ad,len(B),type(ex).__name__,ex))
                if DEBUG:
                    import traceback; traceback.print_exc()
                    sys.stderr.write("  first insns: %s\n"%[ (("0x%x"%x.addr) if x.addr else "?", x.mn, x.ops) for x in B[:6]])

def report():
    # symbol annotation (optional; tool still works if these aren't importable)
    try: from symbols import Symbols; _H=Symbols()
    except Exception: _H=None
    try: from symbolize import annotate as _annot
    except Exception: _annot=None
    try: import vtable as _vt
    except Exception: _vt=None
    def _demangle(fn):
        if not _H: return None
        f=_H.resolve(fn)
        if not f and fn.startswith("_jmp_addr_0x"):
            f=_H.by_addr.get(int(fn.split("0x")[1],16))
        return f"{f.cls}::{f.method}" if f else None
    byfn=collections.defaultdict(list)
    for off,k,fn,a,txt in set(hits): byfn[fn].append((off,k,a,txt))
    tot=0
    for fn in sorted(byfn,key=lambda k:-len(byfn[k])):
        rows=sorted(set(byfn[fn]))
        if len(rows)<MIN: continue
        dm=_demangle(fn)
        print("\n%s  (%d)%s"%(fn,len(rows),("  ; "+dm) if dm else ""))
        for off,k,a,txt in rows:
            note=""
            if k=="vcall" and VCLASS and _vt:                 # tainted object's virtual -> method name
                slot=_vt.slot(VCLASS,off)
                if slot: note="  ; %s::%s"%(slot.cls,slot.method)
            if not note and _annot:                           # else resolve any call/addr/const in the line
                note=_annot(txt.split("//")[0])               # strip the // addr comment (not an operand)
            print("   +0x%-4x %-5s @%-8s %s%s"%(off,k,a,txt,note)); tot+=1
    src = VFN and ("vfn "+VFN) or CALL and ("call "+CALL) or (THIS and "this(ecx)") or ("param "+PARAM)
    print("\n%d sink hits / %d functions printed. source=%s. scanned %d files / %d candidate functions, %d error(s)."
          %(tot,sum(1 for fn in byfn if len(set(byfn[fn]))>=MIN),src,STATS["files"],STATS["funcs"],STATS["errors"]))
    print("flow-sensitive CFG + stack-slot taint, intra-procedural. Verify leads in the asm. "
          "Issues: rerun with --debug and paste the [taint_xref] ERROR line + this summary.")

def self_test():
    """regression suite: assert the tool rediscovers known, hand-verified consumers. Run after ANY edit.

    Each case is a 5-tuple (vfn, file-substr-or-addr, function-substr-or-None, expected-offset, desc):
    seed from the given --vfn vtable slot, restrict the scan to files whose basename matches `file`
    (a source name like 'VillagerFood.c' or a raw asm address like '00434040'), and assert a field
    access at `expected-offset` is rediscovered in the named function. The 5 cases are the hand-verified
    Wonder/worship hooks documented in CLAUDE.md and the per-system docs — see `desc` for which one.
    """
    global VFN, CALL, THIS, PARAM, OFFS, GLOB, MIN, hits
    cases=[
        ("0x1c","VillagerFood.c",     "CheckHungry",                0x74,  "Japanese Wonder -> less hunger"),
        ("0x1c","Villager.c",         "SetStateSpeed",              0xc8,  "Indian Wonder -> villager speed (+0xb8 array)"),
        ("0x1c","00434040",           "GetWoodValue",               0x7c,  "Egyptian Wonder -> cheaper building"),
        ("0x1c","0077d2e0",           None,                         0x70,  "Aztec Wonder -> worship belief"),
        ("0x30c","VillagerWorshipper.c","ReduceVillagerLifeByChant",0x104, "worship belief/chant rate (Aztec death side-effect)"),
    ]
    ok=True
    for vfn,fpat,fnsub,off,desc in cases:
        VFN=vfn; CALL=None; THIS=False; PARAM=None; OFFS=None; GLOB=fpat; MIN=1
        hits.clear(); STATS.update(files=0,funcs=0,errors=0)
        try: collect()
        except Exception as ex: print("  FAIL (crash) %-46s %s"%(desc,ex)); ok=False; continue
        found=any(o==off and (fnsub is None or (fn and fnsub in fn)) for (o,k,fn,a,txt) in hits)
        print("  %-4s %-46s expect %s +0x%x %s"%("PASS" if found else "FAIL",desc,fnsub or "(any fn)",off,
                                                  "" if found else "  <-- NOT FOUND (%d errors)"%STATS["errors"]))
        ok=ok and found
    print("\nSELF-TEST: %s"%("ALL PASS" if ok else "FAILURES -- the engine regressed; rerun a failing case with --debug"))
    sys.exit(0 if ok else 1)

if "--self-test" in sys.argv:
    self_test()
collect()
report()
