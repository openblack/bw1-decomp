#!/usr/bin/env python3
r"""vtbl_bin.py - AUTHORITATIVE vtable resolver: read the slot->method map straight from the BINARY's
`??_7<Class>@@6B@` array. This is what the program actually executes, so it cannot drift.

WHY THIS EXISTS: vtable.py's REAL mode parses the asm corpus (`*vftables*.asm`), whose slot layout has
off-by-N mismatches vs the binary -- measured 25.1% of slots resolve to the WRONG function (everything
after a missing/extra slot shifts by 4). PROVEN: Field slot 0x6fc -> vtable.py said `IsTuggable`
(`xor eax,eax;ret`, 0 params) but the binary says `ValidForPlaceInHand(GInterfaceStatus*)` -- and using
the binary's answer lifted Field::IsEffectReceiver byte-exact. The DRIFT TELL during a lift: a
`push N` + no `add esp` (callee-cleaned => the slot's method takes a param) but vtable.py's named method
is `ret 0` (no param). When that happens, trust THIS tool, not vtable.py.

Usage:
  python tools/vtbl_bin.py <Class>             # full slot->method map (offset -> symbol)
  python tools/vtbl_bin.py <Class> 0x6fc       # the method at that slot (authoritative)
  python tools/vtbl_bin.py <Class> --find <MangledOrSubstr>   # reverse: method -> slot offset
  python tools/vtbl_bin.py --audit [N]         # disagreement rate vs vtable.py REAL (by address)
  python tools/vtbl_bin.py --self-test
"""
import os, re, sys, struct

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
SYMS = os.path.join(DTK, "config", VER, "symbols.txt")
EXE = os.path.join(DTK, "orig", VER, "runblack-decrypted.exe")

_CACHE = {}
def _load():
    if _CACHE: return _CACHE
    import pefile
    a2n, vt = {}, {}
    for ln in open(SYMS, encoding="latin-1"):
        m = re.match(r'(\S+)\s*=\s*\.(?:text|rdata|data|rdata\$r):0x([0-9a-fA-F]+)', ln)
        if not m: continue
        name, a = m.group(1), int(m.group(2), 16)
        # prefer the MSVC `?...` form for an address (most readable / matches symbols.txt usage)
        if a not in a2n or (name.startswith("?") and not a2n[a].startswith("?")):
            a2n[a] = name
        mm = re.match(r'\?\?_7([A-Za-z0-9_]+)@@6B@$', name)
        if mm: vt[mm.group(1)] = a
    pe = pefile.PE(EXE, fast_load=True); base = pe.OPTIONAL_HEADER.ImageBase
    secs = [(base + s.VirtualAddress, s.Misc_VirtualSize, s.get_data()) for s in pe.sections]
    tx = [s for s in pe.sections if b".text" in s.Name][0]   # real .text bounds (vtable slots point here)
    text_lo = base + tx.VirtualAddress; text_hi = text_lo + tx.Misc_VirtualSize
    _CACHE.update(a2n=a2n, vt=vt, base=base, secs=secs, text_lo=text_lo, text_hi=text_hi)
    return _CACHE

def _rd(va, n=4):
    for a, sz, data in _load()["secs"]:
        if a <= va < a + sz: return data[va - a:va - a + n]
    return None

def vtable_addr(cls):
    return _load()["vt"].get(cls)

def resolve(cls, off):
    """slot offset -> (fn_addr, symbol) from the binary, or None."""
    va = vtable_addr(cls)
    if va is None: return None
    d = _rd(va + off, 4)
    if not d: return None
    fn = struct.unpack('<I', d)[0]
    return (fn, _load()["a2n"].get(fn, "fn_%06x" % fn))

def full(cls, maxslots=4096):
    """{offset -> symbol} for the whole binary vtable. Ends at the first pointer that doesn't target
    .text (that's the next class's RTTI/data) -- using the REAL .text bounds, not a hardcoded cap, so
    large vtables (600+ slots) and high-address methods aren't truncated."""
    va = vtable_addr(cls)
    if va is None: return {}
    c = _load(); lo, hi = c["text_lo"], c["text_hi"]
    out = {}
    for i in range(maxslots):
        r = resolve(cls, i * 4)
        if r is None: break
        fn, name = r
        if not (lo <= fn < hi): break   # left .text -> end of this vtable
        out[i * 4] = name
    return out

def find(cls, needle):
    for off, name in full(cls).items():
        if needle in name: return off
    return None

# ---------- vtable.py-compatible API, REVITALIZED onto the authoritative binary ----------
# vtable.py is RETIRED in dtk (its asm-corpus REAL was 25% wrong by address); these provide the same
# library API (slot/real_vtable/best_vtable/raw_call/_name/struct_vtable) backed by the binary so all
# importers (lift_thunks, taint_xref, triage, vforward, vtable_drift) get CORRECT data unchanged.
_S_BOX = []
def _S():
    if not _S_BOX:
        import symbols; _S_BOX.append(symbols.Symbols())
    return _S_BOX[0]

def real_vtable(cls):
    """{offset -> method-symbol} from the BINARY (authoritative; supersedes the asm-corpus)."""
    return full(cls)

best_vtable = real_vtable  # binary map is complete + authoritative; no heuristic fill needed

def slot(cls, off):
    """offset -> resolved symbols.Func (the binary slot, demangled), or None."""
    sym = full(cls).get(off)
    return _S().resolve(sym) if sym else None

def _name(sym):
    if not sym:
        return sym
    f = _S().resolve(sym)
    return ("%s::%s" % (f.cls, f.method)) if f else sym

def raw_call(cls, off, rettype="void", arg_types=(), arg_exprs=()):
    """C for a vtable-layout-INDEPENDENT virtual call through slot `off` (mirrors
    `mov eax,[ecx]; call [eax+off]`). Ported verbatim from vtable.py -- pure codegen, no vtable data."""
    at = ", ".join(arg_types)
    sig = "%s (__fastcall **)(%s*%s)" % (rettype, cls, (", " + at) if at else "")
    args = "".join(", " + e for e in arg_exprs)
    call = "(*(%s)((char*)*(void**)this + 0x%x))(this%s)" % (sig, off, args)
    return ("%s;" % call) if rettype == "void" else ("return %s;" % call)

# struct-heuristic vtable (`<cls>Vftable` header) -- OBSOLETE now the binary is truth; kept only for
# --check (show where the header heuristic drifts from the binary) + back-compat with vtable_drift.py.
import glob as _glob, functools as _ft
_BLACK = os.path.join(DTK, "include", "black")
@_ft.lru_cache(maxsize=1)
def _hdr_blob():
    return "\n".join(open(f, encoding="latin-1").read() for f in _glob.glob(os.path.join(_BLACK, "*.h")))
_fp_re = re.compile(r'\(__fastcall\*\s*([A-Za-z0-9_]+)\)')
_off_re = re.compile(r'/\*\s*0x([0-9a-fA-F]+)\s*\*/')
_sup_re = re.compile(r'struct\s+([A-Za-z0-9_]+)Vftable\s+super;')
@_ft.lru_cache(maxsize=None)
def struct_vtable(cls):
    """HEURISTIC {offset -> method-name} from the header struct (drifts; fallback/cross-check only)."""
    m = re.search(r'struct\s+%sVftable\s*\{(.*?)\n\};' % re.escape(cls), _hdr_blob(), re.S)
    if not m:
        return {}
    lines = m.group(1).splitlines(); out = {}; sup = None
    for ln in lines:
        s = _sup_re.search(ln)
        if s:
            sup = s.group(1); break
    if sup and sup != cls:
        out.update(struct_vtable(sup))
    off = None; superend = (max(out) + 4) if out else 0x4
    for ln in lines:
        if _sup_re.search(ln):
            continue
        fp = _fp_re.search(ln)
        if not fp:
            continue
        oc = _off_re.search(ln)
        if oc:
            off = int(oc.group(1), 16)
        elif off is None:
            off = superend
        else:
            off += 4
        out[off] = fp.group(1)
    return out

def _asm_corpus_vtables():
    """{class -> [slot0_sym, ...]} parsed DIRECTLY from the asm corpus *vftables*.asm (self-contained,
    so audit doesn't depend on the now-retired vtable.py). This is the OLD source we measured as 25% wrong."""
    import corpus, glob as g
    root = corpus.repo_root("src/asm/unprocessed/*vftables*.asm")
    out = {}
    for f in g.glob(os.path.join(root, "src/asm/unprocessed/*vftables*.asm")):
        cur = None
        for line in open(f, encoding="latin-1"):
            mm = re.match(r'^\s*VftableAndRTTI\s+(\w+)\b', line)
            if mm:
                cur = mm.group(1); out.setdefault(cur, []); continue
            if cur is None:
                continue
            lm = re.match(r'^\s*\.long\s+(\S+)', line)
            if lm:
                out[cur].append(lm.group(1))
            elif line.strip():
                cur = None
    return out

def audit(limit=None):
    """disagreement rate of the OLD asm-corpus layout vs the BINARY, BY ADDRESS (the true test)."""
    c = _load()
    asm = _asm_corpus_vtables()
    n2a = {}
    for ln in open(SYMS, encoding="latin-1"):
        m = re.match(r'(\S+)\s*=\s*\.(?:text|rdata|data):0x([0-9a-fA-F]+)', ln)
        if m: n2a.setdefault(m.group(1), int(m.group(2), 16))
    agree = disagree = 0; bad = []
    classes = list(c["vt"])[:limit] if limit else list(c["vt"])
    for cls in classes:
        rv = {i*4: s for i, s in enumerate(asm.get(cls, []))}
        for off, vsym in rv.items():
            r = resolve(cls, off)
            if not r: continue
            vfn = n2a.get(vsym)
            if vfn is None: continue
            if vfn == r[0]: agree += 1
            else:
                disagree += 1
                if len(bad) < 6: bad.append((cls, hex(off), vsym[:30], r[1][:30]))
    print("asm-corpus (old vtable.py REAL) vs BINARY (by addr): agree=%d disagree=%d -> %.2f%% wrong"
          % (agree, disagree, 100 * disagree / max(1, agree + disagree)))
    for cls, off, v, b in bad: print("  %s %s vtable.py=%s binary=%s" % (cls, off, v, b))

def self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    try:
        r = resolve("Field", 0x6fc)
        chk(r is not None and "ValidForPlaceInHand" in r[1], "Field[0x6fc] = ValidForPlaceInHand (not IsTuggable)")
        chk(vtable_addr("Field") is not None, "Field vtable found in binary")
        chk(find("Field", "ValidForPlaceInHand") == 0x6fc, "reverse: ValidForPlaceInHand -> 0x6fc")
        s = slot("Field", 0x6fc)
        chk(s and s.method == "ValidForPlaceInHand", "slot() -> Func ValidForPlaceInHand")
        rc = raw_call("Creature", 0x998)
        chk(rc == "(*(void (__fastcall **)(Creature*))((char*)*(void**)this + 0x998))(this);",
            "raw_call void 0-arg (ported)")
        rc = raw_call("Field", 0x320, "bool32_t", ["void*"], ["param_1"])
        chk(rc == "return (*(bool32_t (__fastcall **)(Field*, void*))((char*)*(void**)this + 0x320))(this, param_1);",
            "raw_call typed+arg (ported)")
    except Exception as e:
        chk(False, "binary/symbols load (%s)" % e)
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def main():
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(self_test())
    if "--audit" in a:
        i = a.index("--audit"); lim = int(a[i+1]) if i+1 < len(a) and a[i+1].isdigit() else None
        audit(lim); sys.exit()
    if "--grep" in a:
        pat = re.compile(a[a.index("--grep")+1], re.I); seen = set()
        for cls in sorted(_load()["vt"]):
            for off, sym in full(cls).items():
                nm = _name(sym)
                if pat.search(nm) and (cls, off) not in seen:
                    seen.add((cls, off)); print("  %-26s +0x%-4x %s" % (cls, off, nm))
        sys.exit()
    if "--check" in a:                                   # binary (truth) vs header-struct heuristic
        cls = a[a.index("--check")+1]; real = full(cls); st = struct_vtable(cls); diffs = 0
        for off in sorted(real):
            rn = _name(real[off]); sn = st.get(off, "<none>")
            if sn != "<none>" and sn != rn.split("::")[-1] and sn != rn:
                print("  +0x%-4x  BINARY %-34s  STRUCT %s" % (off, rn, sn)); diffs += 1
        print("=== %s: %d struct-heuristic disagreement(s) vs the binary ===" % (cls, diffs)); sys.exit()
    if not a: print(__doc__); sys.exit()
    cls = a[0]
    if "--find" in a:
        off = find(cls, a[a.index("--find")+1])
        print("%s -> %s" % (a[a.index("--find")+1], hex(off) if off is not None else "NOT FOUND")); sys.exit()
    if len(a) >= 2 and a[1].startswith("0x"):
        r = resolve(cls, int(a[1], 16))
        print("%s[%s] = %s" % (cls, a[1], ("0x%x %s" % r if r else "NOT FOUND"))); sys.exit()
    for off, name in full(cls).items():
        print("  +0x%-4x %s" % (off, name))

if __name__ == "__main__":
    main()
