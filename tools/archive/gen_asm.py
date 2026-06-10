#!/usr/bin/env python3
"""gen_asm.py - ASM-DRIVEN generator: emit exactly-matching C for simple getters by reading the TARGET
function's actual instructions (objdiff `left.symbols`), not the encyclopedia summary (which lacks width).

For each unbanked GETTER with a clean header signature, look at its 2-instruction body in the original:
  mov eax,[ecx+N];ret           -> return (RET)*(unsigned int  *)((char*)this+N);
  movzx eax,byte ptr [ecx+N]    -> return (RET)*(unsigned char *)((char*)this+N);
  movzx eax,word ptr [ecx+N]    -> return (RET)*(unsigned short*)((char*)this+N);
  mov al,[ecx+N]                -> return (RET)*(unsigned char *)((char*)this+N);
  fld dword ptr [ecx+N]         -> return *(float *)((char*)this+N);
Header (black/*.h) gives RetType/Method/const. Output {addr:{def,inc}} -> feed to verify_defs.py.
Usage: python3 tools/gen_asm.py [--log]"""
import json, re, os, sys, glob, subprocess

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_simple

def _ranges():
    out = {}; cur = None
    for line in open(os.path.join(DTK, "config", VERSION, "splits.txt"), encoding="latin-1"):
        m = re.match(r"Black/([\w]+)\.cpp:", line)
        if m: cur = m.group(1)
        m2 = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if m2 and cur: out[cur] = (int(m2.group(1), 16), int(m2.group(2), 16)); cur = None
    return out

def _addr2mangled():
    a2m = {}
    for line in open(os.path.join(DTK, "config", VERSION, "symbols.txt"), encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)", line)
        if m: a2m.setdefault(int(m.group(2), 16), m.group(1))
    return a2m

def tu_asm(tu):
    """{mangled: [formatted instruction, ...]} for every symbol in the TARGET obj (via objdiff left side)."""
    t = "build/%s/obj/Black/%s.o" % (VERSION, tu); b = "build/%s/src/Black/%s.o" % (VERSION, tu)
    if not os.path.exists(os.path.join(DTK, t)): return {}
    subprocess.run([OBJDIFF, "diff", "-1", t, "-2", b, "-o", "d.json", "--format", "json"], cwd=DTK, capture_output=True)
    p = os.path.join(DTK, "d.json")
    if not os.path.exists(p): return {}
    d = json.load(open(p)); os.remove(p)
    res = {}
    for s in d.get("left", {}).get("symbols", []):
        res[s.get("name", "")] = [(i.get("instruction") or i).get("formatted", "") for i in s.get("instructions", [])]
    return res

_LOADS = [
    (r"mov eax, \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "(%s)*(unsigned int *)((char *)this + 0x%x)"),
    (r"movzx eax, byte ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "(%s)*(unsigned char *)((char *)this + 0x%x)"),
    (r"movzx eax, word ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "(%s)*(unsigned short *)((char *)this + 0x%x)"),
    (r"movsx eax, byte ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "(%s)*(signed char *)((char *)this + 0x%x)"),
    (r"movsx eax, word ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "(%s)*(short *)((char *)this + 0x%x)"),
    (r"mov al, \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "(%s)*(unsigned char *)((char *)this + 0x%x)"),
    (r"mov ax, \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "(%s)*(unsigned short *)((char *)this + 0x%x)"),
]
_FLOAT = [
    (r"fld st, dword ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "*(float *)((char *)this + 0x%x)"),
    (r"fld st, qword ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "*(double *)((char *)this + 0x%x)"),
]

# a field load into an arbitrary 32-bit reg (for bool idioms): reg, (cast, offset)
_FIELD_LOAD = [
    (r"mov (e\w\w), \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned int"),
    (r"movzx (e\w\w), byte ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned char"),
    (r"movzx (e\w\w), word ptr \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned short"),
]


def _bool_idiom(instrs, ret):
    """Recognise the MSVC field-!=0 / field-==0 bool getter (byte-exact-reproducible shape):
        <load reg,[ecx+N]>; xor eax,eax; test reg,reg; set(n)e al; ret   ->  field != / == 0
    `return *(T*)(this+N) != 0;` compiles to exactly this under MSVC6.  NOTE: the `cmp reg,K`
    (==K) and the compact `cmp dword[mem],K` forms are DELIBERATELY excluded -- the original emits
    the compact `cmp [mem],imm; sete` (no load, no xor) which our value-compare C can't reproduce
    (proven: IsPoisoned). Those are a codegen ceiling; left to lift.py."""
    body = [x.strip() for x in instrs]
    if len(body) != 5 or not re.match(r"ret\b", body[-1]):
        return None
    ms = re.match(r"set(n?)e al$", body[-2])
    if not ms:
        return None
    op = "!=" if ms.group(1) == "n" else "=="
    if body[1] != "xor eax, eax":
        return None
    reg = cast = off = None
    for pat, c in _FIELD_LOAD:
        m = re.match(pat, body[0])
        if m:
            reg = m.group(1); cast = c; off = int(m.group(2) or "0", 16)
    if reg is None:
        return None
    mt = re.match(r"test (e\w\w), (e\w\w)$", body[2])
    if mt and mt.group(1) == reg and mt.group(2) == reg:
        return "return *(%s *)((char *)this + 0x%x) %s 0;" % (cast, off, op)
    # field ==/!= K  (the /G6-enabled form: this target schedules `load reg; xor eax,eax; cmp reg,K;
    # set(n)e al`, which is EXACTLY what `return field == K;` compiles to under MSVC6 /G6 -- the partial-
    # register-stall `xor eax,eax` is now emitted, so the load form matches. (Pre-/G6 this was excluded
    # because our codegen omitted the xor; targets that instead use the compact `cmp [mem],imm` are still
    # unreachable and simply won't have this 5-instr `load;xor;cmp reg,K` shape, so we never mis-fire.)
    mc = re.match(r"cmp (e\w\w), 0x([0-9a-fA-F]+)$", body[2])
    if mc and mc.group(1) == reg:
        return "return *(%s *)((char *)this + 0x%x) %s 0x%s;" % (cast, off, op, mc.group(2))
    return None


def _chained_getter(instrs, ret):
    """2-hop field getter:  mov eax,[ecx+A]; mov <eax|al|ax>,[eax+B]; ret
       -> return (RET)*(<T>*)(*(char**)((char*)this+A) + B);  (one pointer hop, then a terminal load)."""
    body = [x.strip() for x in instrs]
    if len(body) != 3 or not re.match(r"ret\b", body[2]):
        return None
    m1 = re.match(r"mov eax, \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", body[0])
    if not m1:
        return None
    a = int(m1.group(1) or "0", 16)
    for pat, cast in ((r"mov eax, \[eax(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned int"),
                      (r"movzx eax, byte ptr \[eax(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned char"),
                      (r"movzx eax, word ptr \[eax(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned short"),
                      (r"mov al, \[eax(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned char"),
                      (r"mov ax, \[eax(?:\+0x([0-9a-fA-F]+))?\]$", "unsigned short")):
        m2 = re.match(pat, body[1])
        if m2:
            b = int(m2.group(1) or "0", 16)
            return "return (%s)*(%s *)(*(char **)((char *)this + 0x%x) + 0x%x);" % (ret, cast, a, b)
    return None


def body_from_asm(instrs, ret, log=None):
    # multi-instruction bool idioms first (3-5 instrs)
    bi = _bool_idiom(instrs, ret)
    if bi:
        return bi
    cg = _chained_getter(instrs, ret)
    if cg:
        return cg
    if len(instrs) != 2 or not re.match(r"ret\b", instrs[1].strip()): return None
    ld = instrs[0].strip()
    # const-return getters (sharpened from real use)
    if ld in ("xor eax, eax", "xor al, al"): return "return (%s)0;" % ret
    m = re.match(r"mov eax, 0x([0-9a-fA-F]+)$", ld)
    if m: return "return (%s)0x%s;" % (ret, m.group(1))
    # const-return via 8/16-bit immediate move (MSVC uses the partial reg for small return types):
    #   mov al,0xN  (byte ret) / mov ax,0xN (word ret) -> return (RET)0xN;  (only for non-void ret)
    m = re.match(r"mov a[lx], 0x([0-9a-fA-F]+)$", ld)
    if m and ret != "void": return "return (%s)0x%s;" % (ret, m.group(1))
    # const-return 0xFFFFFFFF via the `or eax,-1` idiom (MSVC emits this for return -1 / 0xFFFFFFFF):
    if ld in ("or eax, 0xffffffff", "or eax, -0x1"): return "return (%s)0xffffffff;" % ret
    if ld == "mov eax, ecx": return "return (%s)this;" % ret
    # address-of-interior-field getter:  lea eax, [ecx+N]; ret  ->  return (RET)((char*)this + N);
    m = re.match(r"lea eax, \[ecx(?:\+0x([0-9a-fA-F]+))?\]$", ld)
    if m: return "return (%s)((char *)this + 0x%x);" % (ret, int(m.group(1) or "0", 16))
    for pat, tmpl in _FLOAT:
        m = re.match(pat, ld)
        if m: return "return " + (tmpl % int(m.group(1) or "0", 16)) + ";"
    for pat, tmpl in _LOADS:
        m = re.match(pat, ld)
        if m: return "return " + (tmpl % (ret, int(m.group(1) or "0", 16))) + ";"
    if log is not None: log.add(ld)
    return None

def generate(log=None):
    hdr = gen_simple.header_index(); a2m = _addr2mangled(); rng = _ranges()
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    bytu = {}
    for f in census:
        if f["klass"] != "GETTER" or f["banked"]: continue
        a = int(f["addr"], 16); h = hdr.get(a)
        if not h or h["static"] or h["params"]: continue
        if not f.get("mc") or "@" not in f["mc"] or f["mc"].split("@")[1] != h["cls"]: continue
        tu = next((n for n, (lo, hi) in rng.items() if lo <= a < hi), None)
        if tu: bytu.setdefault(tu, []).append((a, h))
    gen = {}
    for tu, items in bytu.items():
        asm = tu_asm(tu)
        for a, h in items:
            mg = a2m.get(a)
            if not mg or mg not in asm: continue
            body = body_from_asm(asm[mg], h["ret"], log)
            if not body: continue
            gen["0x%08x" % a] = {"def": "%s %s::%s()%s\n{\n    %s\n}" % (h["ret"], h["cls"], h["method"], h["const"], body),
                                 "inc": h["inc"]}
    return gen

if __name__ == "__main__":
    log = set() if "--log" in sys.argv[1:] else None
    g = generate(log)
    json.dump(g, open(os.path.join(DTK, "gen_asm.json"), "w"))
    print("asm-driven: generated %d getter definitions" % len(g))
    if log is not None and log:
        print("unhandled load shapes (%d):" % len(log))
        for s in list(log)[:15]: print("  ", s)
