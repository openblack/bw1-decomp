#!/usr/bin/env python3
"""symbolize.py - resolve ANY absolute address (VA) to what lives there: a function,
a vtable, RTTI, a string literal, a float constant, a named global, or raw data -
with a name, a kind, the containing section, and (for interior addresses) the nearest
symbol + offset.

This is the address-space map the toolkit was missing. The other resolvers are narrow:
  symbols.py  - code address/name -> function record (from black/*.h header triples)
  vtable.py   - a class's vtable array -> slot methods
  rdata.py    - a .rdata/.data CONSTANT (float/int) at a VA
symbolize.py is the WHOLE picture: every label in every `src/asm/unprocessed/*.asm`,
keyed by the VA the asm itself states, so `resolve(va)` works for code AND data, exact
AND interior.

Why VAs come from the asm (not the headers): the asm states each address two ways -
code instructions carry `// 0xADDR`, data lines carry `// [0xOFF] 0xBASE + 0xOFF = 0xVA`.
A label's VA is the VA of the first addressed line at/after it. This is an INDEPENDENT
source from symbols.py's header `// win1.41 ADDR` comments, so the two can be
cross-checked against each other (see --audit) - thousands of agreeing addresses is the
strongest correctness evidence there is.

Usage:
  python3 tools/symbolize.py 0x6399d0           # -> Object::GetTribalPower  [function]
  python3 tools/symbolize.py 0x00d38448         # -> interior of .data (raw *Info array)
  python3 tools/symbolize.py 0x00c23284         # -> _SigmoidTable  [global]
  python3 tools/symbolize.py --name GetTribalPower   # name/substring -> VA(s)
  python3 tools/symbolize.py --kinds            # symbol count by kind + section spans
  python3 tools/symbolize.py --self-test        # known VAs of every kind (exit 0/1)
  python3 tools/symbolize.py --audit            # cross-validate vs symbols.py/rdata.py + consistency
  grep ... | python3 tools/symbolize.py --annotate    # annotate any pasted/grepped asm block
  python3 tools/symbolize.py --annotate dump.asm      # ...or from a file

Library:
  from symbolize import Symbolizer
  S = Symbolizer()
  S.resolve(0x6399d0)   -> Sym(name, kind, va, ... ) exact
  S.resolve(0xd38448)   -> Sym(..., interior=True, base_va=..., offset=...) or section-only
"""
import re, glob, os, sys, bisect
from collections import Counter

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import corpus
ROOT = corpus.repo_root("src/asm/unprocessed/*.asm")

# image layout: code/.text below 0x008a9000; then the data segments.
SECTIONS = [(0x00400000, ".text"), (0x008a9000, ".rdata"),
            (0x009c6000, ".data"), (0x00fc0000, ".data2"), (0x00fc1000, ".data3")]

class Sym:
    __slots__ = ("name", "kind", "va", "interior", "base_va", "offset", "section")
    def __init__(self, name, kind, va, section, interior=False, base_va=None, offset=0):
        self.name, self.kind, self.va, self.section = name, kind, va, section
        self.interior, self.base_va, self.offset = interior, base_va, offset
    def __repr__(self):
        if self.interior and self.base_va is None:
            # No symbol at or below this VA: there is no real base to offset from,
            # so report the section only rather than a misleading `(unmapped) +0x0`.
            return f"0x{self.va:08x}  [{self.section}]  (no symbol at or below this VA)"
        if self.interior:
            return (f"0x{self.va:08x}  [{self.section}]  interior of {self.name} "
                    f"(+0x{self.offset:x}) [{self.kind}]")
        return f"0x{self.va:08x}  {self.name}  [{self.kind}] ({self.section})"

class Symbolizer:
    # LBL: a label definition at column 0 -- `name:` followed by an optional
    #   instruction/comment tail (group 1 = the bare label, group 2 = the tail).
    LBL  = re.compile(r"^([^\s:]+):(.*)$")
    # CODEVA: the per-instruction address comment the disassembler appends to a
    #   code line, `// 0xADDR` (5-8 hex digits); group 1 = the VA of that line.
    CODEVA = re.compile(r"//\s*0x([0-9a-f]{5,8})(?:\s|$)")
    # DATAVA: the data-line address comment, written as the section offset, the
    #   image base, their sum and the final VA: `// [0xOFF] 0xBASE + 0xOFF = 0xVA`.
    #   We only need the last value (group 1 = the resolved absolute VA).
    DATAVA = re.compile(r"//\s*\[0x[0-9a-f]+\]\s*0x[0-9a-f]+\s*\+\s*0x[0-9a-f]+\s*=\s*0x([0-9a-f]+)")
    # MACRO: the `VftableAndRTTI <Class>` assembler macro that expands into both a
    #   vftable symbol and an __vt__ symbol; group 1 = the class name.
    MACRO  = re.compile(r"^\s*VftableAndRTTI\s+(\S+)")
    SKIPDIR = (".globl", ".extern", ".intel_syntax", ".section", ".balign", ".align",
               ".float", ".long", ".byte", ".short", ".quad", ".ascii", ".asciz",
               ".macro", ".endm", ".set", ".single", "LONG_ALIGNED")

    def __init__(self, root=ROOT, verbose=False):
        """Build the whole-image address map by parsing every disassembly file.

        Scans `src/asm/unprocessed/*.asm` under `root`, binding each label to the
        VA the asm itself states for it (see _parse). Populates:
          self.byva   va   -> [names]   (every label at that VA, aliases included)
          self.sym    name -> (va, kind) (the first/canonical VA per unique name)
          self.kinds  Counter of unique symbols per kind
          self.vas    sorted list of all addressed VAs (for interior bisect)
        Pass verbose=True to print a one-line summary to stderr.
        """
        self.byva = {}            # va -> [names] (stacked labels share a va)
        self.sym = {}             # name -> (va, kind)
        self.kinds = Counter()
        self.nfiles = 0
        for f in sorted(glob.glob(os.path.join(root, "src/asm/unprocessed/*.asm"))):
            self._parse(f)
        self.vas = sorted(self.byva)
        if verbose:
            print(f"[symbolize] {self.nfiles} files, {len(self.sym)} symbols, "
                  f"{len(self.vas)} addressed points", file=sys.stderr)

    @staticmethod
    def kind_of(name):
        """Classify a raw asm symbol name into a kind by its MSVC/GCC mangling prefix.

        The compiler's name decoration tells us what the label points at without
        looking at the bytes: `??_7` is a vftable, `??_R` is RTTI metadata, `??_C`
        is a string literal, `__real@`/`__xmm@` are inlined float/SIMD constants,
        `?...` is any other MSVC-mangled function, and a bare leading `_` is a C
        global. Returns one of: vtable, rtti, string, fconst, thunk, function,
        data, global, other.
        """
        if name.startswith("??_7") or name.startswith("__vt__"): return "vtable"
        if name.startswith("??_R"): return "rtti"
        if name.startswith("??_C"): return "string"
        if name.startswith(("__real@", "__xmm@")): return "fconst"
        if name.startswith("_jmp_addr_"): return "thunk"
        if name.startswith("?"): return "function"          # MSVC-mangled
        # GCC2 C-name mangling encodes the param list with an `F` after the name
        # (e.g. `Method__5ClassFv`); a leading `@cdecl@N` form also marks a function.
        if name.startswith("@") or re.search(r"__\w*F\w", name): return "function"  # gcc-style C-name
        if name.startswith("_DAT_"): return "data"
        if name.startswith("_"): return "global"
        return "other"

    def _emit(self, pending, va):
        """Bind every label accumulated in `pending` to the address `va`.

        Called when an addressed line is reached: all labels stacked since the
        last addressed line resolve to `va`. self.byva[va] gets EVERY name at
        that address (so resolve(va) sees all aliases AND a name that recurs at a
        second, distinct VA is still findable there). self.sym[name] keeps only
        the FIRST VA a name was seen at (the canonical definition); the kind
        Counter is likewise incremented only on first sight so totals are per
        unique symbol, not per occurrence.
        """
        for name in pending:
            k = self.kind_of(name)
            # Record this VA for the name regardless of prior sightings, so a
            # name that legitimately recurs at a second VA is resolvable there
            # too (previously the second location was silently dropped). Guard
            # against re-adding the same name to the SAME VA's list (COMDAT can
            # emit an identical label at one VA across translation units).
            here = self.byva.setdefault(va, [])
            if name not in here:
                here.append(name)
            if name in self.sym:                            # keep the first VA as the canonical definition
                continue
            self.sym[name] = (va, k)
            self.kinds[k] += 1

    def _parse(self, path):
        """Parse one .asm file, binding each label to the VA of the next addressed line.

        Core algorithm: labels carry no address of their own, so we accumulate
        labels in `pending` and flush them to the VA of the first code/data line
        that follows (a label's VA = the VA of the first addressed line at/after
        it). Vtable macros expand into their two synthetic symbols; assembler
        directives and disassembler region markers are skipped (not real symbols).
        """
        self.nfiles += 1
        pending = []                                        # labels awaiting the next addressed line
        # latin-1 = lossless byte passthrough for these ASCII-ish asm dumps.
        with open(path, encoding="latin-1") as fh:
            for line in fh:
                s = line.lstrip()
                mc = self.MACRO.match(line)
                if mc:                                      # vtable macro: defines ??_7N@@6B@ + __vt__N
                    pending += [f"??_7{mc.group(1)}@@6B@", f"__vt__{mc.group(1)}"]
                elif not s.startswith(self.SKIPDIR):
                    m = self.LBL.match(line)
                    # skip disassembler region/block markers (not real symbols): .Lbl_addr_*, start_0x*_0x*
                    if (m and not m.group(1).startswith((".Lbl_addr", "start_0x")) and "//" not in m.group(1)):
                        pending.append(m.group(1))
                # An addressed line (code `// 0xADDR` or data `... = 0xVA`) flushes
                # every pending label to that VA, then clears the pending queue.
                mv = self.CODEVA.search(line) or self.DATAVA.search(line)
                if mv and pending:
                    self._emit(pending, int(mv.group(1), 16))
                    pending = []

    # ---- queries ----
    def section(self, va):
        """Map a VA to its PE section name (.text/.rdata/.data/...) by base address.

        SECTIONS is sorted ascending, so the last base that `va` is >= to is the
        section it lives in. Returns '?' for a VA below the lowest section base.
        """
        sec = None
        for base, name in SECTIONS:
            if va >= base: sec = name
        return sec or "?"

    def resolve(self, va):
        """Resolve an absolute VA to the symbol there, or the nearest one below it.

        Exact hit -> Sym(interior=False) naming the first label at that VA.
        Otherwise -> the symbol whose VA is the greatest <= `va` (found by bisect),
        returned as Sym(interior=True, base_va, offset) so callers can render
        `name+0xoffset`. A VA below every known symbol yields an interior Sym with
        base_va=None (section is still reported).
        """
        if va in self.byva:
            names = self.byva[va]
            return Sym(names[0], self.kind_of(names[0]), va, self.section(va))
        # bisect_right - 1 = index of the largest known VA that is <= `va`.
        i = bisect.bisect_right(self.vas, va) - 1
        if i >= 0:
            base = self.vas[i]; names = self.byva[base]
            return Sym(names[0], self.kind_of(names[0]), va, self.section(va),
                       interior=True, base_va=base, offset=va - base)
        return Sym("(unmapped)", "none", va, self.section(va), interior=True, base_va=None, offset=0)

    def names_at(self, va):
        """Return every label bound to exactly `va` (aliases share a VA), or []."""
        return self.byva.get(va, [])

def _demangle(name):
    """Best-effort `Class::Method` for a mangled symbol via symbols.py, else None.

    Tries the header resolver first, then the raw by_mangled index. Returns None
    (never raises) if symbols.py is unavailable or the name is unknown.
    """
    try:
        from symbols import Symbols
        f = Symbols().resolve(name) or (Symbols().by_mangled.get(name))
        return f"{f.cls}::{f.method}" if f else None
    except Exception:
        return None

# --- one-line asm annotator (used by lift.py / taint_xref) ------------------------------
_ANNO = {}                                                    # lazily-built singletons
def _annot_ctx():
    """Lazily build and cache the resolvers `annotate()` needs (one-time cost).

    Imports are optional: if symbols.py / rdata.py are missing the corresponding
    entries are left None and annotate() simply omits those notes. Returns the
    cached dict with keys H (Symbols), rd (RData), real (real_literal),
    fmt (_fmt_float) and S (this module's Symbolizer).
    """
    if not _ANNO:
        try: from symbols import Symbols; _ANNO["H"] = Symbols()
        except Exception: _ANNO["H"] = None
        try: from rdata import RData, real_literal, _fmt_float
        except Exception: RData = real_literal = _fmt_float = None
        _ANNO["rd"] = RData() if RData else None
        _ANNO["real"] = real_literal; _ANNO["fmt"] = _fmt_float
        _ANNO["S"] = Symbolizer()
    return _ANNO

# _RE_NAMED: any *named* operand token we can resolve - a local branch label
#   (.Lbl_addr_*), an unnamed thunk (_jmp_addr_*), an MSVC-mangled symbol (?...),
#   or a GCC `@cdecl@N` C-name.
_RE_NAMED = re.compile(r"\.Lbl_addr_0x[0-9a-f]+|_jmp_addr_0x[0-9a-f]+|\?[A-Za-z_][\w@?$]*|@[A-Za-z_][\w$]*@\d+")
# _RE_REAL: an inlined MSVC float-literal symbol (`__real@<hexbits>`) -> a float.
_RE_REAL  = re.compile(r"__real@[0-9a-f@]+")
# _RE_SECT: a section-relative constant operand `rdata_bytes + 0xOFF` / `data_bytes + 0xOFF`
#   (group 1 = section token, group 2 = byte offset within it).
_RE_SECT  = re.compile(r"(rdata_bytes|data_bytes)\s*\+\s*0x([0-9a-f]+)")
# _RE_IMM: a bare hex immediate wide enough (5-8 digits) to possibly be an address.
_RE_IMM   = re.compile(r"0x([0-9a-f]{5,8})\b")

def annotate(operand, fld=False):
    """Resolve every call target / absolute address / constant on one asm operand string
    (pass the part BEFORE the `// addr bytes` comment) to a short human note, or ''."""
    c = _annot_ctx(); S, H, rd = c["S"], c["H"], c["rd"]
    out = []; spans = []
    def named(tok):
        if tok.startswith(".Lbl_addr_0x"):                   # intra-function branch target -> no annotation
            return None
        if tok.startswith("_jmp_addr_0x"):
            va = int(tok.split("0x")[1], 16)
            if H and va in H.by_addr:                         # header may name this static helper
                f = H.by_addr[va]; return f"{f.cls}::{f.method}"
            r = S.resolve(va)
            if r.kind == "function" and not r.interior and r.name != tok:
                return _short(r.name, H)
            return None                                       # genuinely unnamed thunk -> add nothing
        f = H.resolve(tok) if H else None
        return f"{f.cls}::{f.method}" if f else None
    for m in _RE_NAMED.finditer(operand):
        spans.append(m.span()); n = named(m.group(0))
        if n: out.append(n)
    for m in _RE_REAL.finditer(operand):
        spans.append(m.span())
        if c["real"]:
            v = c["real"](m.group(0))
            if v is not None: out.append(f"{m.group(0)} = {c['fmt'](v)}")
    for m in _RE_SECT.finditer(operand):
        spans.append(m.span())
        if rd:
            off = int(m.group(2), 16); sec = "data" if m.group(1) == "data_bytes" else "rdata"
            v = rd.f32(off, sec) if fld else rd.u32(off, sec)
            if v is not None:
                out.append(f"{m.group(1)}+0x{m.group(2)} = " + (f"{c['fmt'](v)}f" if fld else f"0x{v:x}/{v}"))
    for m in _RE_IMM.finditer(operand):
        if any(s <= m.start() < e for s, e in spans): continue   # already covered by a named/section token
        va = int(m.group(1), 16)
        if va < 0x400000: continue                               # struct offset / small imm, not an address
        r = S.resolve(va)
        out.append(f"0x{va:x} = " + (_short(r.name, H) if not r.interior
                   else (f"{r.name}+0x{r.offset:x} [{r.section}]" if r.base_va else f"({r.section})")))
    # de-dupe, keep order
    seen = set(); uniq = [x for x in out if not (x in seen or seen.add(x))]
    return "  ; " + " | ".join(uniq) if uniq else ""

def _short(name, H):
    """Shorten a mangled symbol to `Class::Method` via symbols.py, else echo it.

    `H` is a Symbols instance (or None); the raw name is returned unchanged when
    H is missing or cannot resolve it.
    """
    if H:
        f = H.resolve(name)
        if f: return f"{f.cls}::{f.method}"
    return name

# ----------------------------------------------------------------------------- tests
def _self_test(S):
    """Resolve known VAs of every kind + check annotate() on canonical lines.

    Exercises exact/interior resolution, section classification, the one-VA
    vtable invariant, and the four annotate cases (call/abs-addr/rdata-const/
    silent). Returns 0 if all checks pass, 1 otherwise (exit code).
    """
    ok = True
    def chk(c, m):
        nonlocal ok; ok &= bool(c); print(f"  {'PASS' if c else 'FAIL'}  {m}")
    r = S.resolve(0x6399d0)
    chk(r.name.startswith("?GetTribalPower@Object") and r.kind == "function" and not r.interior,
        f"0x6399d0 -> Object::GetTribalPower [function]  (got {r.name})")
    r = S.resolve(0x00c23284)
    chk(r.name == "_SigmoidTable" and r.section == ".data",
        f"0x00c23284 -> _SigmoidTable [.data]  (got {r.name})")
    r = S.resolve(0x00d38448)
    chk(r.interior and r.section == ".data",
        f"0x00d38448 -> interior of .data (GetBaseInfo array, unlabeled)  (got {r})")
    r = S.resolve(0x008c5840)
    chk(r.kind == "fconst" or r.section == ".rdata",
        f"0x008c5840 -> rdata fconst region  (got {r})")
    vt = [v for v, ns in S.byva.items() if any(n.startswith("??_7Object@@") for n in ns)]
    chk(len(vt) == 1, f"Object vtable (??_7Object@@6B@) has exactly one VA  (got {len(vt)})")
    r = S.resolve(0x6399d0 + 4)
    chk(r.interior and r.base_va == 0x6399d0,
        f"0x6399d4 -> interior of GetTribalPower (+0x4)  (got {r})")
    chk(S.section(0x401000) == ".text" and S.section(0x8a9100) == ".rdata" and S.section(0x9c7000) == ".data",
        "section() classifies .text/.rdata/.data")
    # annotate(): call target, absolute data addr, rdata const, struct-offset (must be silent)
    a1 = annotate("call ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z")
    chk("Object::GetTribalPower" in a1, f"annotate call -> demangled  (got {a1!r})")
    a2 = annotate("mov eax, 0x00d38448")
    chk("_MagicInfoTable" in a2 and "0x738" in a2, f"annotate abs addr -> nearest symbol  (got {a2!r})")
    a3 = annotate("fld dword ptr [rdata_bytes + 0x1c840]", fld=True)
    chk("0.01" in a3, f"annotate rdata const -> 0.01f  (got {a3!r})")
    chk(annotate("mov edx, dword ptr [eax + 0x1f0]") == "", "annotate struct-offset -> silent")
    chk(annotate("call _jmp_addr_0x0072ef60") == "", "annotate unnamed thunk -> silent (no echo)")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _audit(S):
    """Cross-validate against the independent sources; report consistency + coverage."""
    print(f"symbols: {len(S.sym)}   addressed points: {len(S.vas)}   files: {S.nfiles}")
    print("by kind:", dict(S.kinds.most_common()))
    # 1) INDEPENDENT-SOURCE agreement: symbols.py addresses (from black/*.h) vs symbolize (from asm)
    def _norm(n):                                   # `@cname@N` / `_cname` / `?mangled` -> comparable core
        return re.sub(r"@\d+$", "", n.lstrip("@_"))
    try:
        from symbols import Symbols
        H = Symbols()
        agree = miss = unnamed = fold = bug = 0; examples = []
        for f in H.by_addr.values():
            va = int(f.addr, 16)
            here = S.byva.get(va)
            if not here: miss += 1; continue
            want = {f.mangled, f.cname, _norm(f.cname or "")}     # header may name it either way
            if any(n in want or _norm(n) in want for n in here): agree += 1
            elif all(n.startswith("_jmp_addr_") for n in here): unnamed += 1   # same VA, asm just lacks the name
            elif all(S.kind_of(n) == "function" for n in here): fold += 1      # COMDAT-folded / aliased function
            else:
                bug += 1
                if len(examples) < 5: examples.append((hex(va), f.mangled, here[:2]))
        print(f"\n[cross] header funcs vs asm labels @ same VA: exact-match={agree} "
              f"comdat-folded/alias={fold} asm-unnamed-thunk={unnamed} REAL-anomaly={bug} "
              f"not-at-that-va={miss} (inlined; no asm label)")
        for e in examples: print("   ANOMALY", e)
    except Exception as e:
        print("[cross] symbols.py unavailable:", e)
    # 2) rdata.py constant agreement: a labeled fconst's value matches real_literal/the stored bytes
    try:
        from rdata import RData, real_literal
        import struct
        rd = RData(); good = bad = nostore = 0
        for name, (va, k) in S.sym.items():
            if k != "fconst": continue
            rl = real_literal(name)
            if rl is None: continue
            f32, f64 = rd.f32(va), rd.bytes(va, 8)             # the constant is stored as float OR double
            if f32 is None and f64 is None: nostore += 1; continue
            # Accept a match three ways: the value packs bit-for-bit as the stored
            # float, OR as the stored double, OR (the `__real@` symbol decoded to a
            # double whose low 4 bytes coincide with a stored single) the low 4
            # bytes of the packed double equal the stored f32 - this last case
            # catches a double literal that happens to round-trip through f32.
            hit = (f32 is not None and struct.pack("<f", rl) == struct.pack("<f", f32)) or \
                  (f64 is not None and struct.pack("<d", rl) == f64) or \
                  (f32 is not None and struct.pack("<d", rl)[:4] == struct.pack("<f", f32))  # double, low4 mapped
            if hit: good += 1
            else:
                bad += 1
                if bad <= 5: print("   FCONST MISMATCH", name, hex(va), "name=", rl, "f32=", f32)
        print(f"[cross] fconst symbol-name vs stored bytes (f32|f64): match={good} mismatch={bad} unmapped={nostore}")
    except Exception as e:
        print("[cross] rdata.py unavailable:", e)
    # 3) monotonic & dup-name consistency
    dups = sum(1 for v in S.byva.values() if len(v) > 1)
    print(f"[consistency] VAs sorted={S.vas == sorted(S.vas)}  VAs with >1 label={dups}")
    # 4) round-trip: every name -> its va -> resolve -> the name is the exact symbol there
    rt_ok = rt_bad = 0
    for name, (va, k) in S.sym.items():
        r = S.resolve(va)
        if not r.interior and name in S.byva[va]: rt_ok += 1
        else: rt_bad += 1
    print(f"[roundtrip] name->va->resolve exact: ok={rt_ok} bad={rt_bad}")
    # 5) adversarial boundary: for a deterministic spread of symbols, resolve(va-1)/va/va+1
    bad_b = 0; vas = S.vas
    for i in range(0, len(vas), max(1, len(vas)//500)):       # ~500 spread samples
        va = vas[i]
        if S.resolve(va).interior: bad_b += 1                 # exact VA must NOT be interior
        if i+1 < len(vas):
            nxt = vas[i+1]
            mid = va + 1
            if mid < nxt:
                rm = S.resolve(mid)
                if not (rm.interior and rm.base_va == va): bad_b += 1   # va+1 must fall inside va
    print(f"[boundary] {bad_b} anomalies over ~500 spread samples (expect 0)")

if __name__ == "__main__":
    a = sys.argv[1:]
    S = Symbolizer(verbose=("--quiet" not in a))
    if "--self-test" in a: sys.exit(_self_test(S))
    if "--kinds" in a:
        print("by kind:", dict(S.kinds.most_common()))
        for base, name in SECTIONS:
            n = sum(1 for v in S.vas if S.section(v) == name)
            print(f"  {name:8} base 0x{base:08x}  symbols={n}")
        sys.exit()
    if "--audit" in a:
        _audit(S); sys.exit()
    if "--annotate" in a:                                        # annotate a pasted/grepped asm block
        i = a.index("--annotate")
        fname = a[i+1] if i+1 < len(a) and not a[i+1].startswith("-") else None
        # floatop: an x87 mnemonic implies the operand is a float, so annotate it
        #   with f32 (fld) rather than u32. The optional `p?` (pop) + `[sl]?`
        #   (size suffix) tails ensure stores like `fstp`/`fstpl`/`fistp` match -
        #   previously the trailing `p` blocked the `\b` after `st`, so float
        #   stores were wrongly annotated as u32.
        floatop = re.compile(r"\bf(ld|ild|add|mul|sub|subr|div|divr|com|comp|i?stp?)[sl]?\b")
        def _annotate_stream(src):
            for line in src:
                line = line.rstrip("\n")
                opnd = line.split("//", 1)[0]
                note = annotate(opnd, fld=bool(floatop.search(opnd)))
                print(line + note if note else line)
        if fname:
            with open(fname, encoding="latin-1") as src:
                _annotate_stream(src)
        else:
            _annotate_stream(sys.stdin)
        sys.exit()
    if "--name" in a:
        if a.index("--name") + 1 >= len(a):
            sys.exit("usage: symbolize.py --name <name-or-substring>")
        q = a[a.index("--name")+1]
        hits = [(n, v) for n, (v, k) in S.sym.items() if q in n]
        for n, v in sorted(hits, key=lambda x: x[1])[:40]:
            print(f"  0x{v:08x}  {n}  [{S.kind_of(n)}]")
        print(f"({len(hits)} match)")
        sys.exit()
    if not a or a[0].startswith("--"):
        print(__doc__); sys.exit()
    # int(.., 16) already accepts an optional 0x prefix in either letter case;
    # give a friendly usage error instead of a raw ValueError on a non-hex arg.
    try:
        va = int(a[0], 16)
    except ValueError:
        sys.exit(f"not a hex address: {a[0]!r}  (e.g. 0x6399d0)")
    r = S.resolve(va)
    print(r)
    if r.kind == "function" and not r.interior:
        dm = _demangle(r.name)
        if dm: print("  demangled:", dm)
    if r.kind == "fconst":
        try:
            from rdata import real_literal
            print("  value:", real_literal(r.name))
        except Exception: pass
    extra = [n for n in S.names_at(r.va if not r.interior else r.base_va)][1:]
    if extra: print("  aliases:", ", ".join(extra[:6]))
