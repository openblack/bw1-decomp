#!/usr/bin/env python3
r"""gen_ctordtor.py - sibling driver of gen_targeted.py that harvests the buckets gen_targeted's
no-arg/header-decl filter SKIPS: DESTRUCTOR, CONSTRUCTOR, SETTER-with-args, BITFIELD.

Why a sibling and not gen_targeted itself: gen_targeted keys candidates on the header `// win1.41` decl
index (no-arg, non-static, params=='') -- but ctors/dtors are almost never separately declared in the
headers (only the CLASS is), and setters take a param. So here we key candidates on the MANGLED NAME
(??0Class / ??1Class / ??_GClass / ?Set...@Class with a param) + require the CLASS to have a defining
header (so the synthesized `Class::~Class(){}` / setter actually compiles). We reuse gen_targeted's proven
tiling -> reconfigure -> build -> tu_asm -> verify -> prune machinery wholesale.

Recognised byte-exact shapes (asm read from the TARGET obj, synthesized to REAL C++ -- no naked asm):
  EMPTY DTOR : `ret` (leaf, no vtable)  OR  `mov [ecx],OFFSET vtbl; ret`  (compiler re-emits the same
               own-class vtable store from `Class::~Class(){}`)            -> `Class::~Class() {}`
  EMPTY CTOR : `mov eax,ecx; ret`  OR  `mov [ecx],OFFSET vtbl; mov eax,ecx; ret`
               (+ optional leading base-ctor `call` we DON'T reproduce -> only the no-base form)
               -> `Class::Class() {}` / `Class::Class() : Base() {}` only when provably safe
  SETTER     : `mov eax,[esp+4]; mov [ecx+N],eax; ret 0x4`  -> `*(T*)((char*)this+N)=(T)param;`
               (the param-store; T from the setter's param mangle: pointer/int/float)

Everything else (member-dtor chains, array-news, conditional ??_G scalar-deleting thunks, multi-field
ctors with non-trivial inits) is MULTI_BLOCK for this driver -> skipped + logged (left for asmwrap/lift).

Usage:
  python tools/gen_ctordtor.py [--klass DESTRUCTOR,CONSTRUCTOR,SETTER] [--maxsize 0x40] [--cap 24]
                               [--dump-asm] [--limit N]
"""
import json, re, os, sys, bisect

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_targeted as gt
import gen_simple


def cls_of_mangled(mg):
    """Class name from a ctor/dtor/scalar-dtor/method mangle."""
    for pat in (r"\?\?[01]([A-Za-z_]\w*)@@", r"\?\?_[GE]([A-Za-z_]\w*)@@", r"\?[A-Za-z_]\w*@([A-Za-z_]\w*)@@"):
        m = re.match(pat, mg)
        if m:
            return m.group(1)
    return None


def mangled_kind(mg):
    if re.match(r"\?\?0", mg):
        return "ctor"
    if re.match(r"\?\?1", mg):
        return "dtor"
    if re.match(r"\?\?_[GE]", mg):
        return "deldtor"  # scalar/vector deleting destructor (compiler-generated thunk)
    if re.match(r"\?Set", mg):
        return "setter"
    return None


# --- setter param type from the mangle's argument-list code -----------------------------------------
# ?Set...@Cls@@<acc>AEX<ARGS>@Z  -- ARGS is the param list before the final @Z; X (void) ret precedes it.
# We only handle a SINGLE simple param: a pointer (PAV.../PAU.../PA_W/PAD) or a scalar (H int, I uint,
# K ulong, M float, _N bool, etc). The store width is 4 for all of these (pointers + 32-bit scalars +
# float-stored-as-dword via the integer move idiom only when the asm is an integer mov -- see shapes).
_SCALAR_CTYPE = {
    "H": "int", "I": "unsigned int", "J": "long", "K": "unsigned long",
    "_N": "bool", "M": "float", "D": "char", "E": "unsigned char",
    "F": "short", "G": "unsigned short", "N": "double",
}


def setter_param_code(mg):
    """The single argument-type code of a 1-arg setter mangle, or None if not exactly one simple arg."""
    m = re.search(r"@@[A-Z]AEX(.*)@Z$", mg)  # <ret=X void><args>@Z
    if not m:
        return None
    args = m.group(1)
    if not args:
        return None
    # pointer to a named type: PAV<class>@@ / PAU.. / PAW4.. ; or PA_W (wchar*), PAD (char*), PB..(const)
    if re.match(r"^P[A-Z](?:_?[A-Za-z]\w*@@|_[A-Z])$", args) or re.match(r"^P[A-Z][A-Z]$", args):
        return "ptr"
    if args in _SCALAR_CTYPE:
        return args
    return None


# ---------------------------------------------------------------------------------------------------
def shape_ctordtor(instrs, kind, cls):
    """Return a REAL-C++ body kind for the recognised trivial shapes, else None.
    Returns one of: 'EMPTY' (empty {} body), ('SETTER', off, ctype). Caller renders the definition."""
    body = [x.strip() for x in instrs]
    if not body or not re.match(r"ret\b", body[-1]):
        return None
    core = body[:-1]
    if kind in ("dtor",):
        # leaf empty dtor: just `ret`
        if not core:
            return "EMPTY"
        # vtable-store-only dtor: `mov dword ptr [ecx], OFFSET ...`  (compiler re-emits from ~Class(){})
        if len(core) == 1 and re.match(r"mov dword ptr \[ecx\], ", core[0]):
            return "EMPTY"
        return None
    if kind in ("ctor",):
        # empty ctor: `mov eax,ecx` then ret  (returns this)
        if core == ["mov eax, ecx"]:
            return "EMPTY"
        # vtable then return-this: `mov dword ptr [ecx],OFFSET vtbl; mov eax,ecx`
        if len(core) == 2 and re.match(r"mov dword ptr \[ecx\], ", core[0]) and core[1] == "mov eax, ecx":
            return "EMPTY"
        return None
    return None


def shape_setter(instrs, ctype):
    """`mov eax,[esp+4]; mov [ecx+N],eax; ret 0x4` -> (off, ctype). Also tolerates the float param
    stored through the integer path (same instrs) and the no-offset (+0) form."""
    body = [x.strip() for x in instrs]
    if len(body) != 3:
        return None
    if not re.match(r"ret\b", body[2]):
        return None
    if not re.match(r"mov eax, \[esp\+0x4\]$", body[0]):
        return None
    m = re.match(r"mov \[ecx(?:\+0x([0-9a-fA-F]+))?\], eax$", body[1])
    if not m:
        return None
    off = int(m.group(1) or "0", 16)
    return (off, ctype)


def render_def(kind, cls, mg, hdr_rec, shape, setter_shape):
    """Build the C++ definition text for a recognised shape."""
    if kind == "dtor":
        return "%s::~%s()\n{\n}" % (cls, cls)
    if kind == "ctor":
        return "%s::%s()\n{\n}" % (cls, cls)
    if kind == "setter":
        off, ctype = setter_shape
        # need the header decl to know the exact method name + param type spelling + const-ness
        if not hdr_rec:
            return None
        meth = hdr_rec["method"]
        params = hdr_rec["params"]            # e.g. "GPlayer* param_1" or "GPlayer *param_1"
        const = hdr_rec["const"]
        pname = _param_name(params)
        if pname is None:
            return None
        if ctype == "ptr":
            store = "*(unsigned int *)((char *)this + 0x%x) = (unsigned int)%s;" % (off, pname)
        elif ctype == "M":
            store = "*(float *)((char *)this + 0x%x) = %s;" % (off, pname)
        else:
            cty = _SCALAR_CTYPE.get(ctype, "unsigned int")
            store = "*(%s *)((char *)this + 0x%x) = %s;" % (cty, off, pname)
        return "%s %s::%s(%s)%s\n{\n    %s\n}" % (hdr_rec["ret"], cls, meth, params, const, store)
    return None


def _param_name(params):
    """The single parameter's identifier from a header param list like 'GPlayer* param_1'."""
    params = params.strip()
    if not params or params == "void":
        return None
    if "," in params:
        return None  # only single-arg setters
    m = re.search(r"(\w+)\s*$", params)
    return m.group(1) if m else None


def main():
    args = sys.argv[1:]
    def opt(flag, default):
        return args[args.index(flag) + 1] if flag in args else default
    klasses = set(opt("--klass", "DESTRUCTOR,CONSTRUCTOR,SETTER").split(","))
    maxsize = int(opt("--maxsize", "0x40"), 16)
    cap = int(opt("--cap", "24"))
    limit = int(opt("--limit", "0"))
    dump = "--dump-asm" in args

    hdr = gen_simple.header_index()
    gt.def_header("Object")
    DEF = gt._DEFHDR
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    E = gt.eranges()
    inE = lambda a: any(lo <= a < hi for lo, hi in E)

    cand = []   # (addr, mangled, kind, cls, hdr_rec, ctype)
    skipped = {"no-class-header": 0, "deldtor": 0, "setter-no-hdr": 0, "setter-bad-arg": 0, "kind?": 0}
    for f in census:
        if f["klass"] not in klasses or f["banked"]:
            continue
        a = int(f["addr"], 16)
        if inE(a) or f["size"] > maxsize:
            continue
        mg = f["mangled"]
        kind = mangled_kind(mg)
        if kind is None:
            skipped["kind?"] += 1
            continue
        if kind == "deldtor":
            skipped["deldtor"] += 1   # compiler-generated scalar/vector deleting dtor thunk -> not synthesizable
            continue
        cls = cls_of_mangled(mg)
        if not cls or cls not in DEF:
            skipped["no-class-header"] += 1
            continue
        ctype = None
        hrec = hdr.get(a)
        if kind == "setter":
            if not hrec or not hrec["params"] or hrec["static"]:
                skipped["setter-no-hdr"] += 1
                continue
            ctype = setter_param_code(mg)
            if ctype is None:
                skipped["setter-bad-arg"] += 1
                continue
        cand.append((a, mg, kind, cls, hrec, ctype))
    cand.sort()
    if limit:
        cand = cand[:limit]
    candset = {a for a, *_ in cand}
    print("candidates:", len(cand), "by-kind:",
          {k: sum(1 for c in cand if c[2] == k) for k in ("ctor", "dtor", "setter")}, "| skipped:", skipped)
    if not cand:
        return

    # ---- tile candidates into boundary-aligned NEW TUs (reuse gt's symbol-start tiling) -------------
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

    recof = {a: (a, mg, kind, cls, hrec, ctype) for a, mg, kind, cls, hrec, ctype in cand}
    SP, CF = gt.SP, gt.CF
    sp_add = []; cf_add = []; names = []; tu_of = {}
    for run in runs:
        lo, hi = run[0], nxt(run[-1]); name = "Gen_%06x" % lo
        incs = set(); bodies = []
        for a in run:
            _, mg, kind, cls, hrec, ctype = recof[a]
            bodies.append("// %s @ 0x%08x (placeholder)" % (mg, a))
            ih = DEF.get(cls)
            if ih:
                incs.add(ih)
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
    gt.reconfigure(); gt.build(names)

    # ---- read target asm per TU, synthesize bodies ------------------------------------------------
    import gen_asm
    a2m = gen_asm._addr2mangled()
    gen = {}; unhandled = {}
    for name in names:
        asm = gt.tu_asm(name)
        if not asm:
            continue
        for a in [x for x in candset if tu_of.get(x) == name]:
            mg = a2m.get(a)
            if not mg or mg not in asm:
                continue
            _, _, kind, cls, hrec, ctype = recof[a]
            if dump:
                print("--- 0x%08x %s [%s]" % (a, mg, kind))
                for ins in asm[mg]:
                    print("     ", ins)
            setter_shape = None; shape = None; body = None
            if kind == "setter":
                setter_shape = shape_setter(asm[mg], ctype)
                if setter_shape is None:
                    unhandled.setdefault(tuple(asm[mg]), (a, mg, kind)); continue
                body = render_def(kind, cls, mg, hrec, None, setter_shape)
            else:
                shape = shape_ctordtor(asm[mg], kind, cls)
                if shape is None:
                    unhandled.setdefault(tuple(asm[mg]), (a, mg, kind)); continue
                body = render_def(kind, cls, mg, hrec, shape, None)
            if body is None:
                unhandled.setdefault(tuple(asm[mg]), (a, mg, kind)); continue
            gen["0x%08x" % a] = {"def": body, "inc": DEF.get(cls), "tu": tu_of[a]}
    print("synthesized %d bodies (%d unhandled shapes)" % (len(gen), len(unhandled)))
    json.dump(gen, open(os.path.join(DTK, "gen_ctordtor.json"), "w"))
    json.dump({"unhandled": [{"asm": list(k), "addr": "0x%08x" % v[0], "mangled": v[1], "kind": v[2]}
                             for k, v in unhandled.items()]},
              open(os.path.join(DTK, "gen_ctordtor_unhandled.json"), "w"), indent=1)

    # ---- inject, build, prune to byte-exact (reuse gt helpers) -------------------------------------
    bytu = {}
    for a, rec in gen.items():
        bytu.setdefault(rec["tu"], []).append(rec)
    for tu, recs in bytu.items():
        incs = set(r["inc"] for r in recs if r.get("inc"))
        txt = "".join('#include "%s"\n' % i for i in sorted(incs)) + "\n" + "\n\n".join(r["def"] for r in recs) + "\n"
        open(os.path.join(DTK, "src", "Black", tu + ".cpp"), "w", encoding="latin-1").write(txt)
    empties = [n for n in names if n not in bytu]
    if empties:
        gt.remove_tus(empties)
    gt.reconfigure(); gt.build(list(bytu.keys()))
    failed = [tu for tu in bytu if not gt.o_exists(tu)]
    if failed:
        print("compile-failed TUs:", len(failed), failed[:8])
        gt.remove_tus(failed)
        bytu = {k: v for k, v in bytu.items() if k not in set(failed)}
    gt.reconfigure(); gt.build()
    gt.heal_missing_objs()

    rep = gt.report()
    if not rep:
        print("ERROR: report failed"); return
    n2a = gt.name2a()
    d = json.load(open(rep))
    hit = set()
    for u in d.get("units", []):
        for fn in u.get("functions", []):
            nm = fn.get("name", "") or ""
            if nm in n2a and n2a[nm] in candset and (fn.get("fuzzy_match_percent") or 0) >= 100:
                hit.add(n2a[nm])
    print("byte-exact synthesized: %d / %d" % (len(hit), len(gen)))

    keep_by_tu = {}
    for a, rec in gen.items():
        if int(a, 16) in hit:
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
        gt.remove_tus(set(drop))
    gt.reconfigure(); gt.build([t for t in bytu if t not in set(drop)])
    gt.heal_missing_objs()
    rep = gt.report()
    if not rep:
        print("ERROR: final report failed"); return
    import measure_match
    f, tt, mt, nn = measure_match.measure(rep)
    print("FINAL byte-exact game: %d / %d (TUs %d/%d) | kept %d new fns in %d TUs"
          % (f, tt, mt, nn, len(hit), len(set(r['tu'] for a, r in gen.items() if int(a, 16) in hit))))
    if os.path.exists(rep):
        os.remove(rep)


if __name__ == "__main__":
    main()
