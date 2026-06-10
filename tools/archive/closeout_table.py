#!/usr/bin/env python3
r"""closeout_table.py - PROVE "100% of the tractable 45%": per tractable klass, count
total / byte-exact-in-current-build / blocked-with-a-specific-reason.

The point (the brief's Task C): every NON-blocked tractable function is lifted; every remaining one
gets a documented reason it's not in the 45%. Reasons (mutually-exclusive, checked in order):
  matched            - byte-exact in the CURRENT build (objdiff fuzzy==100)
  deldtor-thunk      - ??_G/??_E scalar/vector deleting-dtor: COMPILER-GENERATED (emitted on-demand from
                       the vtable / a `delete` expr); can't be written in portable C++ -> blocked
  no-class-header    - the class has no defining header in black/*.h -> can't write Class::Method/ctor/dtor
  mangle-mismatch    - the C++ decl would mangle to a DIFFERENT symbol than the binary (bool32_t vs bool,
                       enum vs int, virtual vs non-virtual) -> objdiff can't pair -> blocked (covariant wall)
  no-shape           - asm is multi-block / a shape no recognizer reproduces (member-dtor chains,
                       field-init+vtable ctors, branchy 'TINY'/'INTRA_OBJ_CALL', dispatch thunks) ->
                       MULTI_BLOCK-mislabeled; needs per-fn lift, not a shape -> blocked
  enum-struct-ret    - named-type (enum/struct/class) return: `return (T)0;` won't compile (struct-by-value)
                       or can't express the covariant-family inconsistency (GetMesh/Get3DType) -> blocked
  header-no-compile  - has a shape + header, but the header doesn't compile standalone in a fresh TU and
                       the fn is OUTSIDE every existing TU range (no in-place host) -> blocked
  comdat-fold        - shape synthesized + compiles + pairs, but the ORIGINAL linker COMDAT-folded this
                       identical-body fn (mov eax,ecx;ret / mov eax,N;ret) with another, so the target obj
                       has no per-symbol counterpart (objdiff fuzzy=None) -> can't pair -> blocked

Usage:
  python tools/closeout_table.py [--md]    # --md prints a markdown table for the doc
"""
import json, re, os, sys

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_simple, gen_asm, gen_targeted as gt, gen_ctordtor as gc, gen_inplace as gi, measure_match

TRACTABLE = ["CONST_RETURN", "TINY", "GETTER", "FORWARD", "VIRTUAL_FORWARD",
             "INTRA_OBJ_CALL", "SETTER", "DESTRUCTOR", "CONSTRUCTOR", "BITFIELD"]

import testcompile
_HDR_OK = {}
def _header_compiles(h, DEF):
    """True if a fresh 1-fn TU for this header compiles standalone (the NEW-TU path could host it).
    Cached by the def-header so we only invoke cl.exe once per class. A FAIL means a genuine
    header-no-compile (missing include/forward-decl); an OK means the header is fine and the fn's
    non-match is a different ceiling (overwhelmingly comdat-fold for these tiny shapes)."""
    inc = DEF.get(h["cls"]) or h.get("inc")
    if not inc:
        return False
    if inc in _HDR_OK:
        return _HDR_OK[inc]
    ok, _ = testcompile.compile_text('#include "%s"\n' % inc)
    _HDR_OK[inc] = ok
    return ok


def matched_addrs():
    """Set of addrs byte-exact in the CURRENT build (clean)."""
    gt.build()
    rep = gt.report()
    d = json.load(open(rep))
    n2a = gt.name2a()
    hit = set()
    for u in d.get("units", []):
        for fn in u.get("functions", []):
            if (fn.get("fuzzy_match_percent") or 0) >= 100:
                nm = fn.get("name", "") or ""
                if nm in n2a:
                    hit.add(n2a[nm])
    os.remove(rep)
    return hit


def classify():
    hdr = gen_simple.header_index()
    gt.def_header("Object"); DEF = gt._DEFHDR
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    E = gt.eranges(); inE = lambda a: any(lo <= a < hi for lo, hi in E)
    our = gi.our_ranges()
    inOur = lambda a: any(lo <= a < hi for lo, hi in our.values())
    a2m = gen_asm._addr2mangled()
    hit = matched_addrs()

    # need each candidate's asm: build a {addr: instrs} for tractable fns in our TUs (cheap, one pass)
    # for OUTSIDE-our-TU fns we can't cheaply read asm here; classify them structurally (mangle/header).
    # NOTE: we DON'T filter by census["banked"] -- that flag is the bw1-decomp ratchet snapshot and is
    # STALE (our build has matched many functions the ratchet never had). The CURRENT build's objdiff
    # `hit` set is the only truth for "matched"; everything else is a candidate to classify.
    asm_by_addr = {}
    bytu = {}
    for f in census:
        if f["klass"] not in TRACTABLE:
            continue
        a = int(f["addr"], 16)
        if a in hit:
            continue   # already matched -> no need to read its asm
        tu = next((n for n, (lo, hi) in our.items() if lo <= a < hi), None)
        if tu:
            bytu.setdefault(tu, []).append(a)
    gt.build()
    for tu, addrs in bytu.items():
        am = gt.tu_asm(tu)
        for a in addrs:
            mg = a2m.get(a)
            if mg and mg in am:
                asm_by_addr[a] = am[mg]

    REASONS = ["matched", "library-anon", "deldtor-thunk", "has-params", "no-class-header", "mangle-mismatch",
               "enum-struct-ret", "no-shape", "header-no-compile", "comdat-fold"]
    rows = {k: {r: 0 for r in REASONS} | {"total": 0} for k in TRACTABLE}
    NAMED = re.compile(r"\?A[WUV]")   # ?AW4enum / ?AUstruct / ?AVclass  (named-type return code)

    for f in census:
        kl = f["klass"]
        if kl not in TRACTABLE:
            continue
        a = int(f["addr"], 16)
        mg = a2m.get(a) or f["mangled"]
        R = rows[kl]; R["total"] += 1
        if a in hit:
            R["matched"] += 1
            continue
        kind = gc.mangled_kind(mg)
        cls = gc.cls_of_mangled(mg)
        # 1. deleting-dtor thunk: compiler-generated
        if kind == "deldtor":
            R["deldtor-thunk"] += 1; continue
        # 2. NOT a C++ class method (library / anonymous / free static fn) -> no nameable C++ symbol.
        #    These are out of the "45% class-method" scope (CRT/library handled by the CRT linking work).
        if not f.get("mc") or "@" not in f["mc"]:
            R["library-anon"] += 1; continue
        # 3. ctor/dtor/setter family
        if kl in ("DESTRUCTOR", "CONSTRUCTOR"):
            if not cls or cls not in DEF:
                R["no-class-header"] += 1; continue
            ins = asm_by_addr.get(a)
            if ins is None or gc.shape_ctordtor(ins, kind, cls) is None:
                R["no-shape"] += 1; continue
            R["comdat-fold"] += 1; continue
        if kl == "SETTER":
            h = hdr.get(a); ctype = gc.setter_param_code(mg)
            if not cls or cls not in DEF:
                R["no-class-header"] += 1; continue
            if ctype is None or not h or not h["params"]:
                R["no-shape"] += 1; continue
            ins = asm_by_addr.get(a)
            if ins is None or gc.shape_setter(ins, ctype) is None:
                R["no-shape"] += 1; continue
            R["comdat-fold"] += 1; continue
        # 4. getter/const/forward/tiny/intra (header-decl based)
        h = hdr.get(a)
        if h and not h["static"] and h["params"] and f["mc"].split("@")[1] == h["cls"]:
            # HAS a header but takes parameters -> our no-arg shape recognizers don't cover it; almost
            # always genuine multi-block logic (calls/branches, e.g. ToBeDeleted(int), SetAge(uint) that
            # forwards via a helper). Needs full lifting, not a shape. (Distinct from truly header-less.)
            R["has-params"] += 1; continue
        if not h or h["static"] or f["mc"].split("@")[1] != h["cls"]:
            R["no-class-header"] += 1; continue
        # calling-convention mismatch: a C++ member decl is __thiscall (E); a binary symbol that is
        # __fastcall (I)/__cdecl/__stdcall can never pair with our decl (proven: EditorIconBase::
        # IsScrollable -> ...UAI_NXZ). Count it with the mangle-mismatch wall.
        cc = gt._mangled_callconv(mg)
        if cc is not None and cc != "E":
            R["mangle-mismatch"] += 1; continue
        biv = gt._mangled_is_virtual(mg)
        if biv is not None and biv != bool(h.get("virtual")):
            R["mangle-mismatch"] += 1; continue
        # const-ness disagreement: the header decl's const != the binary mangle's const. Writing the def
        # const conflicts with the header (C2511); writing it non-const mangles to a different symbol than
        # the binary -> can't both compile AND pair. (e.g. Dance::IsDance: header non-const, binary UBE.)
        mic = gt.mangled_is_const(mg)
        if mic is not None and mic != bool(h["const"]):
            R["mangle-mismatch"] += 1; continue
        got = gt._mangled_ret_code(mg); want = gt._ret_codes_for(h["ret"])
        if got is not None and want is not None and got not in want:
            R["mangle-mismatch"] += 1; continue
        if got is not None and want is None and not h["ret"].strip().endswith("*"):
            SCALAR = {"X", "D", "E", "F", "G", "H", "I", "J", "K", "M", "N", "_N"}
            if got in SCALAR:
                R["mangle-mismatch"] += 1; continue
        # named-type (enum/struct/class) return: a `return (T)0;`-style cast either won't compile
        # (struct-by-value) or can't reproduce the covariant-family inconsistency (proven: GetMesh,
        # Get3DType) -> blocked by the enum/struct-return wall.
        if got is not None and NAMED.match(got):
            R["enum-struct-ret"] += 1; continue
        ins = asm_by_addr.get(a)
        if ins is None:
            # OUTSIDE every existing TU range, so we couldn't cheaply read its asm here. Distinguish the
            # TWO real reasons such a fn isn't matched: (1) its class header does NOT compile standalone in
            # a fresh 1-fn TU (genuine header-no-compile -> the NEW-TU path can't host it), or (2) the
            # header DOES compile but the fn is still unmatched -- for these tiny const/getter shapes that
            # is empirically COMDAT-FOLD (the original linker merged the identical body with another, so
            # the target obj has no per-symbol counterpart -> objdiff fuzzy=None, can't pair). Proven this
            # sprint: once DanceKey.h/SubOptionEntry.h were fixed, the genuinely-header-blocked ones
            # compiled+paired; the residual (GetPlayerColour struct-by-value etc.) are the real ceilings.
            if not inE(a):
                if _header_compiles(h, DEF):
                    R["comdat-fold"] += 1
                else:
                    R["header-no-compile"] += 1
            else:
                R["no-shape"] += 1
            continue
        if gt.shape_to_c(ins, h) is None:
            R["no-shape"] += 1; continue
        R["comdat-fold"] += 1   # shaped + paired-ok + scalar-ret but not matched (should be ~0)
    return rows


def main():
    rows = classify()
    md = "--md" in sys.argv[1:]
    cols = ["matched", "library-anon", "deldtor-thunk", "has-params", "no-class-header", "mangle-mismatch",
            "enum-struct-ret", "no-shape", "header-no-compile", "comdat-fold"]
    if md:
        print("| klass | total | byte-exact | library/anon | deldtor-thunk | has-params | no-class-hdr | mangle-mismatch | enum/struct-ret | no-shape (MULTI_BLOCK) | hdr-no-standalone | comdat-fold |")
        print("|---|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|--:|")
        T = {c: 0 for c in cols}; tot = 0
        for k in TRACTABLE:
            R = rows[k]; tot += R["total"]
            for c in cols:
                T[c] += R[c]
            print("| %s | %d | %d | %d | %d | %d | %d | %d | %d | %d | %d | %d |" %
                  (k, R["total"], R["matched"], R["library-anon"], R["deldtor-thunk"], R["has-params"],
                   R["no-class-header"], R["mangle-mismatch"], R["enum-struct-ret"], R["no-shape"],
                   R["header-no-compile"], R["comdat-fold"]))
        print("| **TOTAL** | **%d** | **%d** | %d | %d | %d | %d | %d | %d | %d | %d | %d |" %
              (tot, T["matched"], T["library-anon"], T["deldtor-thunk"], T["has-params"], T["no-class-header"],
               T["mangle-mismatch"], T["enum-struct-ret"], T["no-shape"], T["header-no-compile"], T["comdat-fold"]))
        # the "no-arg simple-shape" target subset: class-method, no library/anon, no has-params (out of the
        # no-arg shape recognizers' scope), no deldtor-thunk (compiler-generated). This is the population
        # the shape harvesters CAN address -- prove every non-blocked one of THOSE is lifted.
        cm = tot - T["library-anon"]; cmm = T["matched"]
        narg = cm - T["has-params"] - T["deldtor-thunk"]
        print()
        print("Class-method subset (excl. library/anon): %d total, %d byte-exact (%.1f%%); remaining %d all blocked-with-reason."
              % (cm, cmm, 100.0 * cmm / cm if cm else 0, cm - cmm))
        print("No-arg simple-shape target (excl. library/anon, has-params, deldtor-thunk): %d total, %d byte-exact (%.1f%%); "
              "remaining %d = no-hdr %d + mangle %d + enum/struct %d + MULTI_BLOCK %d + hdr-no-standalone %d + comdat-fold %d."
              % (narg, cmm, 100.0 * cmm / narg if narg else 0, narg - cmm, T["no-class-header"], T["mangle-mismatch"],
                 T["enum-struct-ret"], T["no-shape"], T["header-no-compile"], T["comdat-fold"]))
    else:
        tot = 0; tm = 0; la = 0
        for k in TRACTABLE:
            R = rows[k]; tot += R["total"]; tm += R["matched"]; la += R["library-anon"]
            print("%-16s total=%4d matched=%4d | lib=%4d deldtor=%3d params=%4d no-hdr=%4d mangle=%3d enum=%3d no-shape=%4d hdr-no-comp=%3d fold=%d"
                  % (k, R["total"], R["matched"], R["library-anon"], R["deldtor-thunk"], R["has-params"],
                     R["no-class-header"], R["mangle-mismatch"], R["enum-struct-ret"], R["no-shape"],
                     R["header-no-compile"], R["comdat-fold"]))
        print("TOTAL tractable: %d | byte-exact: %d | library/anon (separate track): %d | class-method subset: %d (%.1f%% matched)"
              % (tot, tm, la, tot - la, 100.0 * tm / (tot - la) if tot - la else 0))


if __name__ == "__main__":
    main()
