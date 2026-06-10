#!/usr/bin/env python3
"""gen_targeted.py - tile UNASSIGNED tractable functions into NEW TUs, read their TARGET asm, write
matching C, verify byte-exact, and KEEP only the 100% ones (pruning each tile to matched fns only).

Pipeline (per the brief's METHOD): pick candidate addrs (census klass in {CONST_RETURN,GETTER,SETTER,
FORWARD,VIRTUAL_FORWARD,INTRA_OBJ_CALL,BITFIELD} + a header signature) that live OUTSIDE every existing
splits.txt range, tile them into boundary-aligned NEW TUs (range=[run_start,next_function_start], CAP=24),
reconfigure+build (this produces obj/ TARGET + src/ objs), read each fn's exact target instructions via
gen_asm.tu_asm, synthesize a body with shape_to_c, rebuild, objdiff, keep ONLY fuzzy==100. Prune each
tile to its byte-exact fns; drop empties.

Usage:
  python tools/gen_targeted.py [--klass K1,K2] [--maxsize 0x40] [--cap 24] [--limit N] [--dump-asm]
"""
import json, re, os, sys, glob, subprocess, bisect

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
NINJA = os.path.join(os.path.dirname(DTK), "bw1-decomp", ".venv", "Scripts", "ninja.exe")
OBJDIFF = os.path.join(DTK, "build", "tools", "objdiff-cli.exe")
SP = os.path.join(DTK, "config", VERSION, "splits.txt")
CF = os.path.join(DTK, "configure.py")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_simple, gen_asm, measure_match


def tu_paths(tu):
    """(target_path, base_path) for a TU, from objdiff.json (handles dtk's obj __ renaming)."""
    o = json.load(open(os.path.join(DTK, "objdiff.json")))
    for u in o.get("units", []):
        if os.path.basename(u.get("name") or "") == tu:
            return u.get("target_path"), u.get("base_path")
    return None, None


def tu_asm(tu):
    """{mangled: [formatted instruction,...]} from the TARGET obj, using objdiff.json's real paths."""
    tp, bp = tu_paths(tu)
    if not tp or not os.path.exists(os.path.join(DTK, tp)):
        return {}
    if not bp or not os.path.exists(os.path.join(DTK, bp)):
        bp = tp  # diff target against itself just to dump left-side instructions
    subprocess.run([OBJDIFF, "diff", "-1", tp, "-2", bp, "-o", "d.json", "--format", "json"],
                   cwd=DTK, capture_output=True)
    p = os.path.join(DTK, "d.json")
    if not os.path.exists(p):
        return {}
    d = json.load(open(p)); os.remove(p)
    res = {}
    for s in d.get("left", {}).get("symbols", []):
        res[s.get("name", "")] = [(i.get("instruction") or i).get("formatted", "") for i in s.get("instructions", [])]
    return res


def name2a():
    d = {}
    for line in open(os.path.join(DTK, "config", VERSION, "symbols.txt"), encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)", line)
        if m:
            d[m.group(1)] = int(m.group(2), 16)
    return d


def mangled_is_const(mg):
    """MSVC member-fn cvr encoding: thiscall member is ...@@<access><callmod>... where the calling-
    convention letter after access (Q/M/U etc) being B/J/N/... vs A/E/I encodes const. Practically:
    public  : Q(non-const,non-cv) AAE vs Q B E(const) ...  the cv letter directly precedes 'E'(thiscall).
    Simpler robust check: the char right before the thiscall 'E' is 'B','J','N','R','V','Z' for const."""
    m = re.search(r"@@[A-Z]([A-Z])E", mg)
    if not m:
        return None
    return m.group(1) in "BCFGNORSVWZ"  # const-bearing cv codes (B=const,N=const volatile,...)


def a2name():
    return {v: k for k, v in name2a().items()}


def eranges():
    out = []
    for line in open(SP, encoding="latin-1"):
        m = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if m:
            out.append((int(m.group(1), 16), int(m.group(2), 16)))
    return out


def reconfigure():
    subprocess.run(["python", "configure.py", "-v", VERSION], cwd=DTK, capture_output=True)


def _ninja(targets):
    for i in range(0, len(targets), 120):
        subprocess.run([NINJA, "-k", "0"] + targets[i:i + 120], cwd=DTK, capture_output=True)


def build(tus=None):
    # 1) split the original binary into target objs (obj/Black/*.o) per current splits.txt
    subprocess.run([NINJA, "build/%s/config.json" % VERSION], cwd=DTK, capture_output=True)
    # force-recompile named TUs (their src just changed): drop stale objs so ninja rebuilds them
    for t in (tus or []):
        p = os.path.join(DTK, "build", VERSION, "src", "Black", t + ".o")
        if os.path.exists(p):
            os.remove(p)
    # 2) compile every src obj that objdiff will read (report dies if ANY base/target file is missing).
    o = json.load(open(os.path.join(DTK, "objdiff.json")))
    want = []
    for u in o.get("units", []):
        bp = u.get("base_path")
        if bp and not os.path.exists(os.path.join(DTK, bp)):
            want.append(bp.replace("\\", "/"))
    if tus:
        want += ["build/%s/src/Black/%s.o" % (VERSION, t) for t in tus]
    want = sorted(set(want))
    if want:
        _ninja(want)


def o_exists(name):
    return os.path.exists(os.path.join(DTK, "build", VERSION, "src", "Black", name + ".o"))


def report():
    p = os.path.join(DTK, "rep.json")
    subprocess.run([OBJDIFF, "report", "generate", "-p", ".", "-o", "rep.json"], cwd=DTK, capture_output=True)
    return p if os.path.exists(p) else None


def heal_missing_objs():
    """Drop any of OUR Gen_ TUs whose base obj is missing (compile silently failed), so the report
    can't die. Only touches Gen_* TUs we created -- never the game/CRT splits. Returns dropped names."""
    o = json.load(open(os.path.join(DTK, "objdiff.json")))
    bad = []
    for u in o.get("units", []):
        bp = u.get("base_path")
        nm = os.path.basename(u.get("name") or "")
        if nm.startswith("Gen_") and bp and not os.path.exists(os.path.join(DTK, bp)):
            bad.append(nm[:-4] if nm.endswith(".cpp") else nm)
    if bad:
        print("heal: dropping %d TUs with missing base obj: %s" % (len(bad), ",".join(bad)))
        remove_tus(bad)
        reconfigure(); build()
    return bad


def remove_tus(names):
    names = set(names)
    L = open(SP, encoding="latin-1").read().split("\n"); out = []; i = 0
    while i < len(L):
        m = re.match(r"Black/(\w+)\.cpp:", L[i])
        if m and m.group(1) in names:
            i += 2; continue
        out.append(L[i]); i += 1
    open(SP, "w", encoding="latin-1").write("\n".join(out))
    cl = open(CF, encoding="latin-1").read().split("\n")
    open(CF, "w", encoding="latin-1").write("\n".join(
        l for l in cl if not any('"Black/%s.cpp"' % n in l for n in names)))
    for n in names:
        p = os.path.join(DTK, "src", "Black", n + ".cpp")
        if os.path.exists(p):
            os.remove(p)


_DEFHDR = None
def def_header(cls):
    """Header that DEFINES `cls` (struct/class with a body), so the TU's #include actually pulls the
    class in. The header_index 'inc' is only where the decl COMMENT is, which is often a forward-decl
    header (e.g. IsPoisoned's decl is in Mobile.h but class MobileObject lives in MobileObject.h) ->
    that mismatch caused compile failures. Prefer the eponymous header."""
    global _DEFHDR
    if _DEFHDR is None:
        _DEFHDR = {}
        for h in glob.glob(os.path.join(os.path.dirname(DTK), "bw1-decomp", "black", "*.h")):
            base = os.path.basename(h)
            try:
                t = open(h, encoding="latin-1").read()
            except Exception:
                continue
            for m in re.finditer(r"^(?:struct|class)\s+(\w+)\s*(?::|\{)", t, re.M):
                c = m.group(1)
                if c not in _DEFHDR or base[:-2] == c:
                    _DEFHDR[c] = base
    return _DEFHDR.get(cls)


def shape_to_c(instrs, h):
    """Return a C body string for recognised tiny shapes, else None. h = header record (cls/ret/method/...)."""
    ret = h["ret"]
    # reuse gen_asm getter shapes (loads/const/float) first
    b = gen_asm.body_from_asm(instrs, ret)
    if b:
        return b
    body = [x.strip() for x in instrs]
    # pure tail-call forward to a BASE method:  jmp ?Method@Base@@<...>   (no following ret)
    # -> Base::Method();  (void) / return Base::Method();  -- only when the target is no-arg, same name,
    # and Base is a base of h["cls"] (a true override-forward). MSVC6 tail-call-opts this to a jmp.
    if len(body) == 1:
        mj = re.match(r"jmp \?(\w+)@(\w+)@@[A-Z]+E(.*)XZ$", body[0])
        if mj:
            tmeth, tbase, tret = mj.group(1), mj.group(2), mj.group(3)
            # require no-arg target (XZ already implies that), same method name, and base != self
            if tmeth == h["method"] and tbase != h["cls"]:
                call = "%s::%s()" % (tbase, tmeth)
                return (call + ";") if ret == "void" else ("return " + call + ";")
    # strip a trailing 'ret' for analysis
    if not body or not re.match(r"ret\b", body[-1]):
        return None
    core = body[:-1]
    # pure const-return integer in eax then ret  (CONST_RETURN)
    if len(core) == 1:
        c = core[0]
        m = re.match(r"mov eax, 0x([0-9a-fA-F]+)$", c)
        if m:
            return "return (%s)0x%s;" % (ret, m.group(1))
        if c in ("xor eax, eax", "xor al, al"):
            return "return (%s)0;" % ret
        m = re.match(r"mov eax, ecx$", c)
        if m:
            return "return (%s)this;" % ret
    # void no-op:  just 'ret'  (empty body; the outer wrapper already adds the braces)
    if not core and ret in ("void",):
        return ""
    return None


def shape_to_c_params(instrs, h):
    """Like shape_to_c but for HAS-PARAMS functions: the callee cleans the stack so the terminal is
    `ret 0xN` (N = arg bytes the compiler computes from the param list), and the BODY ignores the args
    (a const-return / field-getter / return-this / void no-op that happens to take parameters). We emit
    the body only; the caller renders the full `RET Cls::Method(params) { body }` and MSVC re-derives the
    same `ret 0xN`. We do NOT handle arg-USING bodies here (those are real logic).
    Recognised (each validated byte-exact):
      xor eax,eax ; ret 0xN          -> return (T)0;
      mov eax,0xK ; ret 0xN          -> return (T)0xK;
      mov eax,ecx ; ret 0xN          -> return (T)this;   (return-this ignoring args)
      <field-load eax,[ecx+OFF]>;ret -> the gen_asm getter body (reads a field, ignores args)
      ret 0xN (alone, void)          -> {}  (empty)
    """
    ret = h["ret"]
    body = [x.strip() for x in instrs]
    if not body:
        return None
    # terminal MUST be a stack-cleaning ret 0xN (a plain `ret` => no args => not a has-params shape here,
    # except the rare 1-arg-in-register edge; we keep this conservative and require `ret 0xN`).
    if not re.match(r"ret 0x[0-9a-fA-F]+$", body[-1]):
        return None
    core = body[:-1]
    # void no-op with arg cleanup
    if not core and ret == "void":
        return ""
    if len(core) == 1:
        c = core[0]
        if c in ("xor eax, eax", "xor al, al"):
            return "return (%s)0;" % ret
        m = re.match(r"mov eax, 0x([0-9a-fA-F]+)$", c)
        if m:
            return "return (%s)0x%s;" % (ret, m.group(1))
        if c == "mov eax, ecx":
            return "return (%s)this;" % ret
        # single field-load getter that ignores args: reuse gen_asm's load templates (drop the ret).
        b = gen_asm.body_from_asm([c, "ret"], ret)
        if b:
            return b
    return None


# map a C++ header return type to its MSVC mangled return-type code (no-arg member fn). Used to
# pre-reject candidates whose C++ decl would mangle to a DIFFERENT symbol than the binary's real one
# (the big one: header says bool32_t -> 'I', but the binary symbol is 'bool' -> '_N'; the C++ decl
# forces our def to 'I', so it can NEVER pair with the '_N' target -> wasted build. Skip up front).
_RET_CODE = {
    "void": "X", "bool": "_N", "char": "D", "unsigned char": "E", "uint8_t": "E",
    "short": "F", "unsigned short": "G", "uint16_t": "G", "int16_t": "F",
    "int": "H", "unsigned int": "I", "uint32_t": "I", "bool32_t": "I", "long": "J",
    "unsigned long": "K", "uint": "I", "float": "M", "double": "N",
    "char*": "PAD", "const char*": "PBD",
}


def _mangled_ret_code(mg):
    """Extract the return-type code from a no-arg member mangle: ...@@<acc><cvr>E<RET>XZ -> RET."""
    m = re.search(r"@@[A-Z][A-Z]E(.*)XZ$", mg or "")
    return m.group(1) if m else None


# MSVC member-fn access code (char right after @@). virtual public/protected/private = U/M/E;
# non-virtual public/protected/private = Q/I/A (E also = private virtual; disambiguated by context,
# but a private no-arg getter is rare -- we only use this to catch the common virtual-vs-not mismatch).
_VIRT_ACCESS = {"U", "M"}        # clearly virtual (public/protected)
_NONVIRT_ACCESS = {"Q", "I", "A"}  # clearly non-virtual


def _mangled_is_virtual(mg):
    """True/False if the access code is unambiguous, else None. Accepts thiscall (E) or fastcall (I)
    in the calling-convention slot (the C-tier annotates some members __fastcall)."""
    m = re.search(r"@@([A-Z])[A-Z][EI]", mg or "")
    if not m:
        return None
    c = m.group(1)
    if c in _VIRT_ACCESS:
        return True
    if c in _NONVIRT_ACCESS:
        return False
    return None


def _mangled_callconv(mg):
    """The calling-convention letter of a member fn: @@<acc><cv><CALLCONV>...  (A=__cdecl, E=__thiscall,
    G=__stdcall, I=__fastcall, C=__pascal). A normal C++ member decl compiles to __thiscall (E); if the
    binary symbol is anything else (fastcall/cdecl), our decl can NEVER mangle to it -> can't pair."""
    m = re.search(r"@@[A-Z][A-Z]([A-Z])", mg or "")
    return m.group(1) if m else None


# Leading return-type code of a HAS-ARGS member mangle: ...@@<acc><cv>E<RET><ARGS>@Z. Unlike the no-arg
# case (which can match the whole `<RET>XZ` tail), here ARGS follow RET, so we parse just the first type
# token. We only need the SCALAR codes (the harvestable shapes return scalars/pointers); a scalar code is
# a single letter except `_N`(bool); a pointer starts P/Q/A/R + a target. Returns the code or None.
_SCALAR_CODES = {"X", "D", "E", "F", "G", "H", "I", "J", "K", "M", "N", "O", "Z", "_N"}
def _mangled_ret_code_args(mg):
    m = re.search(r"@@[A-Z][A-Z]E(.+)@Z$", mg or "")
    if not m:
        return None
    rest = m.group(1)
    if rest.startswith("_N"):
        return "_N"
    c = rest[0]
    if c in _SCALAR_CODES:
        return c
    if c in "PQAR":          # pointer/reference -- we accept it if the header type is a pointer (gated below)
        return "PTR"
    if c in "VW":            # ?AV.. / W4.. named type leading code (no '?' here as it's the bare token start)
        return "NAMED"
    if c == "?":             # ?AW4enum / ?AUstruct / ?AVclass  (named-type return)
        return "NAMED"
    return None


def hasparams_pairs(mg, h):
    """True if a has-args member fn's binary mangle `mg` will pair with a C++ def of header `h` (same
    calling conv, virtual-ness, const-ness, and leading return code). Mirrors the no-arg pre-checks but
    parses the return code from the has-args grammar. Conservative: returns False on any disagreement,
    None-treated-as-OK only when genuinely unknowable (pointer/named types gated by the header)."""
    cc = _mangled_callconv(mg)
    if cc is not None and cc != "E":
        return False
    biv = _mangled_is_virtual(mg)
    if biv is not None and biv != bool(h.get("virtual")):
        return False
    mic = mangled_is_const(mg)
    if mic is not None and mic != bool(h.get("const")):
        return False
    got = _mangled_ret_code_args(mg)
    want = _ret_codes_for(h["ret"])
    if got is None:
        return False
    if got == "PTR":
        return h["ret"].strip().endswith("*")
    if got == "NAMED":
        # named-type return (enum/struct/class) -- covariant/enum-return wall; don't synthesize
        return False
    if want is not None:
        return got in want
    # header type is a pointer/enum/typedef; if the binary code is a plain scalar, can't be a pointer type
    if h["ret"].strip().endswith("*"):
        return False
    return False  # header enum/typedef vs binary scalar -> can't predict safely -> skip


# the inline-__asm 1-byte const-return trick (xor al,al / mov al,N into a 4-byte int return): a C-level
# `return (T)0` compiles to `xor eax,eax` (the FULL reg) = WRONG bytes vs the binary's `xor al,al`. The
# proven AsmBank micro-technique reproduces the exact 1-byte form. Only when the return type is a 4-byte
# integer (so the C-level const-return would have used eax, not al). (Shared with gen_inplace._asm_al_body.)
def _asm_al_body(instrs, ret):
    INT4 = {"bool32_t", "uint32_t", "int", "unsigned int", "uint", "BOOL", "long", "unsigned long"}
    if ret.strip() not in INT4:
        return None
    body = [x.strip() for x in instrs]
    if len(body) != 2 or not re.match(r"ret\b", body[1]):
        return None
    if body[0] == "xor al, al":
        return "xor al, al"
    m = re.match(r"mov al, 0x([0-9a-fA-F]+)$", body[0])
    if m:
        return "mov al, 0x%s" % m.group(1)
    return None


def _ret_codes_for(ret):
    """The acceptable mangled return code(s) for a header return type. Pointers/enums/structs are
    name-dependent; we only hard-map the scalar set and accept any pointer code for a `*` type."""
    ret = ret.strip()
    if ret in _RET_CODE:
        return {_RET_CODE[ret]}
    if ret.endswith("*"):
        return None  # pointer -> code is PAV<class>@@ etc.; accept (mc/class match already gates it)
    return None  # enum/struct/typedef -> can't predict; don't reject on this alone


def main():
    args = sys.argv[1:]
    def opt(flag, default):
        return args[args.index(flag) + 1] if flag in args else default
    klasses = set(opt("--klass", "CONST_RETURN,GETTER,SETTER,BITFIELD").split(","))
    maxsize = int(opt("--maxsize", "0x40"), 16)
    cap = int(opt("--cap", "24"))
    limit = int(opt("--limit", "0"))
    dump = "--dump-asm" in args
    asm_al = "--asm-al" in args   # emit inline-__asm bodies for 1-byte const-returns (xor al,al / mov al,N)
    do_params = "--params" in args  # also harvest HAS-PARAMS arg-ignoring shapes (const-ret/getter/void-noop)

    hdr = gen_simple.header_index()
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    E = eranges(); inE = lambda a: any(lo <= a < hi for lo, hi in E)

    cand = []; skipped_mangle = []
    for f in census:
        if f["klass"] not in klasses or f["banked"]:
            continue
        a = int(f["addr"], 16)
        if inE(a) or f["size"] > maxsize:
            continue
        h = hdr.get(a)
        if not h or h["static"]:
            continue
        if not f.get("mc") or "@" not in f["mc"] or f["mc"].split("@")[1] != h["cls"]:
            continue
        if h["params"]:
            # HAS-PARAMS: only when --params is on, and only the arg-ignoring shapes (gated by the
            # full has-args mangle-pairing check). The synthesis loop uses shape_to_c_params.
            if not do_params or not hasparams_pairs(f.get("mangled"), h):
                continue
            cand.append((a, h)); continue
        # mangling pre-check: our C++ def must mangle to the SAME symbol as the binary, else objdiff
        # can't pair them (the instructions can be byte-identical yet score 0). Two proven failure modes:
        #   (a) header 'bool32_t'(->I) but binary symbol is 'bool'(->_N)  -- IsPerformingBodyAction
        #   (b) header enum/typedef (e.g. MeshId -> ?AW4MeshId@@) but binary symbol is plain 'I' -- GetMesh
        # virtual-ness must agree too: header `virtual`->U/M, plain->Q/I/A; the keyword forces our
        # mangling, so a mismatch can't pair (proven: PlannedMultiMapFixed::Draw, header virtual 'U'
        # but binary 'Q' non-virtual -- identical `ret`, scored 0).
        biv = _mangled_is_virtual(f.get("mangled"))
        if biv is not None and biv != bool(h.get("virtual")):
            skipped_mangle.append((a, h["cls"] + "::" + h["method"], "virtual?", "biv=%s hdr=%s" % (biv, h.get("virtual")))); continue
        # calling-convention pre-check: a C++ member decl compiles to __thiscall (E); if the binary symbol
        # is __fastcall (I) / __cdecl / __stdcall, our decl can never mangle to it -> can't pair. (The C
        # tier sometimes annotates a member __fastcall, e.g. EditorIconBase::IsScrollable -> ...UAI_NXZ.)
        cc = _mangled_callconv(f.get("mangled"))
        if cc is not None and cc != "E":
            skipped_mangle.append((a, h["cls"] + "::" + h["method"], "callconv", cc)); continue
        got = _mangled_ret_code(f.get("mangled"))
        want = _ret_codes_for(h["ret"])
        if got is not None:
            if want is not None:
                if got not in want:
                    skipped_mangle.append((a, h["cls"] + "::" + h["method"], h["ret"], got)); continue
            else:
                # header type is enum/typedef/struct-by-name (mangles ?AW4../?AU../?AV..) or a pointer.
                # if the binary code is a plain scalar, the named-type mangle can't match it -> skip.
                SCALAR = {"X", "D", "E", "F", "G", "H", "I", "J", "K", "M", "N", "_N"}
                if not h["ret"].strip().endswith("*") and got in SCALAR:
                    skipped_mangle.append((a, h["cls"] + "::" + h["method"], h["ret"], got)); continue
        cand.append((a, h))
    cand.sort()
    if limit:
        cand = cand[:limit]
    candset = {a for a, _ in cand}
    print("candidates:", len(cand), "(skipped %d for return-type mangle mismatch)" % len(skipped_mangle))
    if not cand:
        return

    # tile candidates into boundary-aligned runs of CONSECUTIVE symbol-starts (the proven tile method)
    import port_banks as pb
    starts = sorted(set(pb._symbols().values()))
    def nxt(a):
        i = bisect.bisect_right(starts, a)
        return starts[i] if i < len(starts) else a + 16
    runs = []; cur = []
    for s in starts:
        if s in candset:
            cur.append(s)
            if len(cur) >= cap:
                runs.append(cur); cur = []
        elif cur:
            runs.append(cur); cur = []
    if cur:
        runs.append(cur)

    a2n = a2name()
    hmap = dict(cand)
    sp_add = []; cf_add = []; names = []; tu_of = {}
    for run in runs:
        lo, hi = run[0], nxt(run[-1]); name = "Gen_%06x" % lo
        # write placeholder TU with empty (declaration-only) bodies; we fill after reading asm
        bodies = []
        incs = set()
        for a in run:
            h = hmap[a]
            bodies.append("// %s @ 0x%08x (placeholder)" % (h["method"], a))
            if h.get("inc"):
                incs.add(h["inc"])
            tu_of[a] = name
        txt = "".join('#include "%s"\n' % i for i in sorted(incs)) + "\n" + "\n".join(bodies) + "\n"
        open(os.path.join(DTK, "src", "Black", name + ".cpp"), "w", encoding="latin-1").write(txt)
        sp_add.append("\nBlack/%s.cpp:\n\t.text       start:0x%08X end:0x%08X\n" % (name, lo, hi))
        cf_add.append('            Object(NonMatching, "Black/%s.cpp"),\n' % name)
        names.append(name)
    open(SP, "a", encoding="latin-1").write("".join(sp_add))
    t = open(CF, encoding="latin-1").read()
    anchor = '            Object(NonMatching, "Black/Abode.cpp"),\n'
    open(CF, "w", encoding="latin-1").write(t.replace(anchor, anchor + "".join(cf_add), 1))
    print("tiled %d TUs" % len(names))
    reconfigure(); build(names)

    # read target asm per TU, synthesize bodies
    a2m = gen_asm._addr2mangled()
    gen = {}
    unhandled = {}
    for name in names:
        asm = tu_asm(name)
        if not asm:
            continue
        for a in [x for x in candset if tu_of.get(x) == name]:
            mg = a2m.get(a)
            if not mg or mg not in asm:
                continue
            h = hmap[a]
            if dump:
                print("--- 0x%08x %s::%s -> %s" % (a, h["cls"], h["method"], h["ret"]))
                for ins in asm[mg]:
                    print("    ", ins)
            ic = mangled_is_const(mg)
            const = " const" if (ic if ic is not None else bool(h["const"])) else ""
            if h["params"]:
                # HAS-PARAMS arg-ignoring shape (gated already by hasparams_pairs at candidate time)
                body = shape_to_c_params(asm[mg], h)
                if body is None:
                    unhandled.setdefault(tuple(asm[mg]), (a, h))
                    continue
                bodytxt = ("    " + body + "\n") if body else ""
                definition = "%s %s::%s(%s)%s\n{\n%s}" % (h["ret"], h["cls"], h["method"], h["params"], const, bodytxt)
                gen["0x%08x" % a] = {"def": definition, "inc": def_header(h["cls"]) or h["inc"], "tu": tu_of[a]}
                continue
            # asm-al path FIRST: a 1-byte const-return (xor al,al / mov al,N) into a 4-byte int return
            # needs an inline __asm block (the C-level `return (T)0` emits `xor eax,eax` = WRONG bytes).
            al = _asm_al_body(asm[mg], h["ret"]) if asm_al else None
            if al is not None:
                definition = "%s %s::%s()%s\n{\n    __asm { %s }\n}" % (h["ret"], h["cls"], h["method"], const, al)
            else:
                body = shape_to_c(asm[mg], h)
                if body is None:  # "" is a VALID body (void no-op) -- only None means "unrecognised shape"
                    unhandled.setdefault(tuple(asm[mg]), (a, h))
                    continue
                definition = "%s %s::%s()%s\n{\n    %s\n}" % (h["ret"], h["cls"], h["method"], const, body)
            gen["0x%08x" % a] = {
                "def": definition,
                "inc": def_header(h["cls"]) or h["inc"], "tu": tu_of[a]}
    print("synthesized %d bodies (%d unhandled shapes)" % (len(gen), len(unhandled)))
    json.dump(gen, open(os.path.join(DTK, "gen_targeted.json"), "w"))
    json.dump({"unhandled": [{"asm": list(k), "addr": "0x%08x" % v[0], "mc": v[1]["cls"] + "::" + v[1]["method"]}
                             for k, v in unhandled.items()]},
              open(os.path.join(DTK, "gen_targeted_unhandled.json"), "w"), indent=1)

    # inject synthesized bodies into their tile TUs (replace placeholder file content)
    bytu = {}
    for a, rec in gen.items():
        bytu.setdefault(rec["tu"], []).append(rec)
    for tu, recs in bytu.items():
        incs = set(r["inc"] for r in recs if r.get("inc"))
        txt = "".join('#include "%s"\n' % i for i in sorted(incs)) + "\n" + "\n\n".join(r["def"] for r in recs) + "\n"
        open(os.path.join(DTK, "src", "Black", tu + ".cpp"), "w", encoding="latin-1").write(txt)
    # tiles with no synthesized bodies (only unhandled shapes): drop them from config FIRST so the
    # report doesn't die on their never-compiled base obj (this was the 'report failed' bug).
    empties = [n for n in names if n not in bytu]
    if empties:
        remove_tus(empties)
    reconfigure(); build(list(bytu.keys()))
    # drop compile-failures
    failed = [tu for tu in bytu if not o_exists(tu)]
    if failed:
        print("compile-failed TUs:", len(failed))
        remove_tus(failed)
        bytu = {k: v for k, v in bytu.items() if k not in set(failed)}
    reconfigure(); build()
    heal_missing_objs()  # belt-and-suspenders: never let report die on a missing base obj

    # measure which addrs are byte-exact
    rep = report()
    if not rep:
        print("ERROR: report failed"); return
    n2a = name2a()
    d = json.load(open(rep))
    hit = set()
    for u in d.get("units", []):
        for fn in u.get("functions", []):
            nm = fn.get("name", "") or ""
            if nm in n2a and n2a[nm] in candset and (fn.get("fuzzy_match_percent") or 0) >= 100:
                hit.add(n2a[nm])
    print("byte-exact synthesized: %d / %d" % (len(hit), len(gen)))

    # prune each tile to ONLY byte-exact fns; drop tiles that end up empty
    keep_by_tu = {}
    for a, rec in gen.items():
        ai = int(a, 16)
        if ai in hit:
            keep_by_tu.setdefault(rec["tu"], []).append(rec)
    drop = []
    for tu in list(bytu.keys()):
        recs = keep_by_tu.get(tu, [])
        if not recs:
            drop.append(tu); continue
        incs = set(r["inc"] for r in recs if r.get("inc"))
        txt = "".join('#include "%s"\n' % i for i in sorted(incs)) + "\n" + "\n\n".join(r["def"] for r in recs) + "\n"
        open(os.path.join(DTK, "src", "Black", tu + ".cpp"), "w", encoding="latin-1").write(txt)
    if drop:
        remove_tus(set(drop))
    reconfigure(); build([t for t in bytu if t not in set(drop)])
    heal_missing_objs()
    rep = report()
    if not rep:
        print("ERROR: final report failed"); return
    f, tt, mt, nn = measure_match.measure(rep)
    print("FINAL byte-exact: %d / %d (TUs %d) | kept %d new fns" % (f, tt, mt, len(hit)))
    if os.path.exists(rep):
        os.remove(rep)


if __name__ == "__main__":
    main()
