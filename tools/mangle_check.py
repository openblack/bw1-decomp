#!/usr/bin/env python3
r"""mangle_check.py - find LIFTABLE targets by checking each undecompiled method's header C++ decl against
its symbols.txt mangled name. The harvest gate is HEADER ACCURACY: a lift only matches when the header
decl mangles to EXACTLY the target symbol. This compares the two STRUCTURALLY (return-type code + per-param
ptr/ref/const/base) so it needs no compilation:
  MATCH    -> clean target, lift it now.
  MISMATCH -> header bug, with the diff (return-type bool32_t/_N, ptr-vs-ref, base-class, ...).
  SKIP     -> decl/type too complex to parse (templates, function pointers) -- verify by lifting.

It takes the access+calling-convention PREFIX from the symbol (reliable) and only re-derives the type part.

Usage:
  python tools/mangle_check.py --validate         # run on BYTE-EXACT fns; should be ~all MATCH (self-check)
  python tools/mangle_check.py <TU>               # undecompiled targets in a TU: MATCH/MISMATCH/SKIP
  python tools/mangle_check.py --self-test
"""
import os, re, sys, json, glob

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
SYMS = os.path.join(DTK, "config", VER, "symbols.txt")
REP = os.path.join(DTK, "rep.json")

# C++ type -> MSVC primitive code (typedefs resolved). None => not a primitive (class/struct/enum).
PRIM = {
    "void": "X", "bool": "_N", "char": "D", "signed char": "C", "unsigned char": "E",
    "short": "F", "unsigned short": "G", "int": "H", "unsigned int": "I", "unsigned": "I",
    "long": "J", "unsigned long": "K", "__int64": "_J", "unsigned __int64": "_K",
    "float": "M", "double": "N", "wchar_t": "_W",
    # project typedefs
    "bool32_t": "I", "uint32_t": "I", "int32_t": "H", "uint": "I", "uint8_t": "E",
    "int8_t": "C", "uint16_t": "G", "int16_t": "F", "uint64_t": "_K", "int64_t": "_J",
    "byte": "E", "uchar": "E", "ushort": "G", "ulong": "K", "size_t": "I", "intptr_t": "H",
}

# ---------- parse the SYMBOL's type part into (ret, [params]) normalized codes ----------
def _read_type(s, i):
    """Parse one type encoding from s at i -> (code, newi). code: 'I'/'_N'/.. for primitives,
    or 'M<mods><cv>:<base>' for class/struct/enum (base = name or '#<digit>' back-ref). 'C' = complex."""
    mods = ""
    # pointer/ref/cv-ptr layer(s): P A Q R S (we record one layer; nested -> complex)
    while i < len(s) and s[i] in "PAQRS":
        mods += s[i]; i += 1
        if i < len(s) and s[i] in "ABCD":  # cv of pointee (A none / B const / C volatile / D cv)
            mods += s[i]; i += 1
        break
    if i >= len(s):
        return ("C", i)
    c = s[i]
    if c == "_":  # two-char primitive (_N _J _K _W ...)
        return (("P" if mods else "") + s[i:i+2], i+2) if not mods else ("M%s:_%s" % (mods, s[i+1]), i+2) if False else (mods + s[i:i+2], i+2)
    if c in "VUWT":  # class/struct/enum/union
        i += 1
        if c == "W":  # enum: W4<name>
            if i < len(s) and s[i] == "4": i += 1
        if i < len(s) and s[i].isdigit():  # name back-reference (e.g. V1@) -> consume the trailing '@'
            base = "#" + s[i]; i += 1
            if i < len(s) and s[i] == "@":
                i += 1
            return ("M%s%s:%s" % (c, mods, base), i)
        # qualified name: frag@frag@...@@  (single/multi). read until @@
        j = s.find("@@", i)
        if j < 0: return ("C", len(s))
        base = s[i:j]
        return ("M%s%s:%s" % (c, mods, base), j+2)
    # bare primitive (single char)
    if c in "XDEFGHIJKMNO":
        return ((mods + c) if mods else c, i+1)
    return ("C", i)

def symbol_typepart(sym):
    """sym -> (access_callconv, ret_code, [param_codes]) or None if unparseable."""
    j = sym.find("@@")
    if j < 0 or not sym.startswith("?"):
        return None
    rest = sym[j+2:]
    m = re.match(r'([A-Z][A-Z][EX]|S[A-Z]|[A-Z]A[A-Z])', rest)  # access+cv+callconv (member) or static
    if not m:
        return None
    ac = m.group(1); i = len(ac)
    ret, i = _read_type(rest, i)
    if rest[i:i+2] == "XZ":  # void params
        return (ac, ret, [])
    params = []
    while i < len(rest) and rest[i:i+1] not in ("@", "Z"):
        if rest[i] == "0" or rest[i].isdigit():  # whole-type back-ref (repeated param) -> mark
            params.append("#T" + rest[i]); i += 1; continue
        t, i = _read_type(rest, i)
        if t == "C": return (ac, ret, None)  # complex param -> bail
        params.append(t)
    return (ac, ret, params)

# ---------- parse a header C++ decl into (ret_code, [param_codes]) ----------
KINDS = {}  # name -> 'V'(class)/'U'(struct)/'W'(enum)
def _load_kinds():
    if KINDS: return
    for h in glob.glob(os.path.join(DTK, "include", "black", "*.h")):
        try: txt = open(h, encoding="latin-1").read()
        except Exception: continue
        for m in re.finditer(r'\b(class|struct|enum)\s+([A-Za-z_]\w*)', txt):
            KINDS.setdefault(m.group(2), {"class": "V", "struct": "U", "enum": "W"}[m.group(1)])

def _cpp_type_code(t):
    """C++ type string -> normalized code matching symbol_typepart's vocabulary, or 'C' if unsure."""
    t = t.strip()
    ref = t.endswith("&");
    if ref: t = t[:-1].strip()
    ptr = t.endswith("*")
    if ptr: t = t[:-1].strip()
    const = False
    if t.startswith("const "): const = True; t = t[6:].strip()
    if t.endswith(" const"): const = True; t = t[:-6].strip()
    t = re.sub(r'\b(struct|class|enum)\s+', '', t).strip()
    if t in PRIM and not ptr and not ref:
        return PRIM[t]
    if t in PRIM:  # pointer/ref to primitive
        mods = ("PA" if ptr else "AA") if not const else ("PB" if ptr else "AB")
        return mods + PRIM[t]
    # class/struct/enum
    _load_kinds()
    kind = KINDS.get(t)
    if not kind:
        return "C"
    if not ptr and not ref:  # by value (enum W4, class V/U)
        return "M%s:%s" % (kind, t)
    mods = ("PA" if ptr else "AA") if not const else ("PB" if ptr else "AB")
    return "M%s%s:%s" % (kind, mods, t)

def _split_params(p):
    p = p.strip()
    if p in ("", "void"): return []
    out, depth, cur = [], 0, ""
    for ch in p:
        if ch in "<([": depth += 1
        elif ch in ">)]": depth -= 1
        if ch == "," and depth == 0: out.append(cur); cur = ""
        else: cur += ch
    if cur.strip(): out.append(cur)
    return out

def decl_typepart(ret_str, params_str, cls):
    if "<" in ret_str + params_str or "(" in params_str.replace("(", "", 0):
        pass
    ret = _cpp_type_code(ret_str)
    params = []
    for p in _split_params(params_str):
        # strip the param NAME (last identifier) if present
        p = re.sub(r'\s+[A-Za-z_]\w*\s*$', '', p.strip()) if not p.strip().endswith(("*", "&")) else p.strip()
        params.append(_cpp_type_code(p.strip()))
    return (ret, params)

def _base(code):  # extract base name for class codes, normalizing self-class back-ref vs explicit
    m = re.match(r'M([VUW])([A-Z]*):(.+)', code)
    return m.groups() if m else None

def compare(sym, ret_str, params_str, cls):
    sp = symbol_typepart(sym)
    if not sp: return ("SKIP", "symbol unparseable")
    ac, sret, sparams = sp
    if sparams is None: return ("SKIP", "complex symbol param")
    dret, dparams = decl_typepart(ret_str, params_str, cls)
    if dret == "C": return ("SKIP", "ret type unknown")
    diffs = []
    # return type
    if sret != dret and not (_base(sret) and _base(dret) and _samebase(sret, dret, cls)):
        diffs.append("ret: header=%s symbol=%s" % (dret, sret))
    if len(sparams) != len(dparams):
        diffs.append("param count header=%d symbol=%d" % (len(dparams), len(sparams)))
    else:
        for k, (sc, dc) in enumerate(zip(sparams, dparams)):
            if dc == "C": return ("SKIP", "param%d type unknown" % k)
            if sc.startswith("#T"): continue  # type back-ref of an identical earlier param -> ok
            if not _eq(sc, dc, cls):
                diffs.append("param%d: header=%s symbol=%s" % (k, dc, sc))
    return ("MATCH", "") if not diffs else ("MISMATCH", "; ".join(diffs))

def _samebase(a, b, cls):
    # IGNORE the V/U/W letter (class-vs-struct-vs-enum keyword): our KINDS guess is unreliable (headers
    # forward-declare some classes as struct) and the symbol is authoritative. Compare ptr/ref/cv
    # modifiers + the base NAME, treating a self-class back-ref (#1) as the enclosing class.
    ba, bb = _base(a), _base(b)
    if not (ba and bb): return False
    if ba[1] != bb[1]: return False  # modifiers (PA/PB/AA/AB) must match
    na, nb = ba[2], bb[2]
    if na == nb: return True
    # back-ref: #1 = the enclosing (self) class; other #N = a repeat of an earlier name we can't resolve
    # here -> accept (mods already matched; the lift-verify is the final gate).
    if na.startswith("#"): return nb == cls if na == "#1" else True
    if nb.startswith("#"): return na == cls if nb == "#1" else True
    return False

def _eq(sc, dc, cls):
    if sc == dc: return True
    if sc.startswith("M") and dc.startswith("M"): return _samebase(sc, dc, cls)
    return False

# ---------- addr -> header decl (via win1.41 comments) ----------
DECLS = {}
def _load_decls():
    if DECLS: return
    for h in glob.glob(os.path.join(DTK, "include", "black", "*.h")):
        try: lines = open(h, encoding="latin-1").read().split("\n")
        except Exception: continue
        for i, ln in enumerate(lines):
            m = re.search(r'//\s*win1\.41\s+([0-9a-fA-F]{5,8})\b.*?([A-Za-z_]\w*)::~?[A-Za-z_]', ln)
            if not m: continue
            addr = int(m.group(1), 16); cls = m.group(2)
            # next non-blank line that looks like a decl
            if addr in DECLS:
                continue  # keep the FIRST (C++ section) decl; the C section (later) is the asm()-bound form
            for j in range(i+1, min(i+3, len(lines))):
                d = lines[j].strip()
                if "__fastcall" in d or "asm(" in d:
                    continue  # C-section binding (has 'this'/'edx' + asm("...")), not the C++ class decl
                dm = re.match(r'(?:virtual\s+)?(.+?)\s+([A-Za-z_]\w*)\s*\((.*)\)\s*(?:const)?\s*;', d)
                if dm:
                    DECLS[addr] = (cls, dm.group(1).strip(), dm.group(3))
                    break

def addr_of_syms():
    d = {}
    for ln in open(SYMS, encoding="latin-1"):
        m = re.match(r'(\?\S+)\s*=\s*\.text:0x([0-9a-fA-F]+)', ln)
        if m: d[m.group(1)] = int(m.group(2), 16)
    return d

def run(tu=None, validate=False):
    _load_decls(); _load_kinds()
    syma = addr_of_syms()
    d = json.load(open(REP))
    counts = {"MATCH": 0, "MISMATCH": 0, "SKIP": 0}
    rows = []
    for u in d.get("units", []):
        un = u.get("name", "").split("/")[-1]
        if tu and not un == tu: continue
        for f in u.get("functions", []):
            s = f.get("name", ""); pct = f.get("fuzzy_match_percent", 0)
            if not s.startswith("?"): continue
            if validate and pct < 100: continue
            if not validate and pct >= 5: continue
            a = syma.get(s)
            if a is None or a not in DECLS: continue
            cls, ret, params = DECLS[a]
            verdict, why = compare(s, ret, params, cls)
            counts[verdict] += 1
            rows.append((verdict, un, s, why))
    if validate:
        print("VALIDATE on byte-exact fns: MATCH=%d MISMATCH=%d SKIP=%d  (MISMATCH should be ~0)"
              % (counts["MATCH"], counts["MISMATCH"], counts["SKIP"]))
        for v, un, s, why in rows:
            if v == "MISMATCH": print("  MISMATCH %s | %s" % (s[:54], why))
    else:
        for v in ("MATCH", "MISMATCH"):
            print("== %s (%d) ==" % (v, counts[v]))
            for vv, un, s, why in rows:
                if vv == v: print("  %s%s" % (s[:60], "" if v == "MATCH" else "  <%s>" % why))
        print("SKIP=%d" % counts["SKIP"])

def self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(symbol_typepart("?IsReachable@Creature@@UAEIXZ") == ("UAE", "I", []), "void-params IXZ")
    chk(symbol_typepart("?CanBeEatenByCreature@Creature@@UAEIPAV1@@Z")[:2] == ("UAE", "I"), "self-class param prefix")
    sp = symbol_typepart("?CanBeEatenByCreature@Creature@@UAEIPAV1@@Z")
    chk(sp[2] == ["MVPA:#1"], "self-class ptr param -> MVPA:#1")
    chk(_cpp_type_code("bool32_t") == "I", "bool32_t -> I")
    chk(_cpp_type_code("const MapCoords&").startswith("MU"), "const ref to struct")
    # the real mismatch we found: header bool32_t(I) vs symbol _N
    v, why = compare("?IsInterestedInWoodObject@Living@@UAE_NPAVObject@@@Z", "bool32_t", "Object* object", "Living")
    chk(v == "MISMATCH" and "ret" in why, "detects bool32_t-vs-_N return-type bug")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(self_test())
    if "--validate" in a: run(validate=True); sys.exit()
    if not a: print(__doc__); sys.exit()
    run(tu=a[0])
