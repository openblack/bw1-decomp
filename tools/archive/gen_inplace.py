#!/usr/bin/env python3
r"""gen_inplace.py - synthesize byte-exact C for tractable functions that live INSIDE an existing src TU
(the gaps in our broad-range Bank_*/Abode/Villager_* TUs), and emit a defs.json for verify_defs.py.

gen_targeted.py only handles functions OUTSIDE every split (tiles them into NEW TUs). But thousands of
tractable functions sit INSIDE our existing TU ranges yet have no C body (the range covers them; the
.cpp doesn't define them -> objdiff shows them unmatched). Those can be filled in-place: just append the
definition to the owning TU's .cpp -- no splits/configure change. This generator produces those defs;
`verify_defs.py --keep` injects + clean-builds + reverts compile-fails + keeps ONLY byte-exact.

DRY: reuses gen_asm.body_from_asm (getter/const/float/bool-idiom shapes), gen_targeted.shape_to_c
(forward jmp / const-return / void no-op) and gen_ctordtor (ctor/dtor/setter shapes), plus
gen_targeted's mangle-pairing pre-checks (return-code + virtual-ness must agree, else objdiff can't pair).

Usage:
  python tools/gen_inplace.py [--klass K1,K2,...] [--maxsize 0x80] [--out gen_inplace.json]
"""
import json, re, os, sys

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_simple, gen_asm, gen_targeted as gt, gen_ctordtor as gc


def _asm_al_body(instrs, ret):
    """For `xor al,al; ret` / `mov al,0xN; ret` into a wider integer return type (bool32_t/uint32_t/int):
    return the inline-asm op string ('xor al, al' / 'mov al, N') to embed in an __asm block. Only when the
    return type is a 4-byte integer (so the C-level const-return would have used eax, not al) -> the asm is
    the only way to byte-match. Pointers/floats/void excluded."""
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


def our_ranges():
    """{tu: (lo,hi)} for OUR src TUs only (the ones measure_match counts)."""
    import measure_match
    ours = measure_match.our_tus()
    out = {}; cur = None
    for line in open(gt.SP, encoding="latin-1"):
        m = re.match(r"Black/([\w]+)\.cpp:", line)
        if m:
            cur = m.group(1)
        m2 = re.search(r"\.text\s+start:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)", line)
        if m2 and cur:
            if cur in ours:
                out[cur] = (int(m2.group(1), 16), int(m2.group(2), 16))
            cur = None
    return out


def main():
    args = sys.argv[1:]
    def opt(flag, default):
        return args[args.index(flag) + 1] if flag in args else default
    klasses = set(opt("--klass", "CONST_RETURN,GETTER,TINY,FORWARD,VIRTUAL_FORWARD,SETTER,DESTRUCTOR,CONSTRUCTOR").split(","))
    maxsize = int(opt("--maxsize", "0x80"), 16)
    outp = opt("--out", "gen_inplace.json")
    asm_al = "--asm-al" in args   # opt-in: emit inline-__asm bodies for 1-byte const-returns (xor al,al / mov al,N)
    do_params = "--params" in args  # opt-in: also synthesize HAS-PARAMS arg-ignoring shapes (const-ret/getter
                                    # /void-noop/return-this that take parameters; the compiler emits `ret 0xN`)

    hdr = gen_simple.header_index()
    gt.def_header("Object"); DEF = gt._DEFHDR
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    rng = our_ranges()
    a2m = gen_asm._addr2mangled()

    # bucket candidate addrs by owning TU (so we read each TU's obj once)
    def tu_for(a):
        for n, (lo, hi) in rng.items():
            if lo <= a < hi:
                return n
        return None

    bytu = {}
    for f in census:
        if f["klass"] not in klasses or f["banked"]:
            continue
        a = int(f["addr"], 16)
        if f["size"] > maxsize:
            continue
        tu = tu_for(a)
        if not tu:
            continue
        bytu.setdefault(tu, []).append(f)

    print("candidate functions in %d TUs (by klass: %s)" %
          (len(bytu), {k: sum(1 for fs in bytu.values() for x in fs if x["klass"] == k) for k in sorted(klasses)}))

    gen = {}; skip = {"no-asm": 0, "no-shape": 0, "mangle": 0, "no-class": 0, "no-hdr-setter": 0}
    # build once so every TU obj exists
    gt.build()
    for tu, fns in bytu.items():
        asm = gt.tu_asm(tu)
        if not asm:
            continue
        for f in fns:
            a = int(f["addr"], 16)
            mg = a2m.get(a) or f["mangled"]
            if mg not in asm:
                skip["no-asm"] += 1
                continue
            ins = asm[mg]
            kl = f["klass"]
            h = hdr.get(a)
            cls = gc.cls_of_mangled(mg)
            body = None; definition = None; inc = None

            if kl in ("DESTRUCTOR", "CONSTRUCTOR"):
                kind = gc.mangled_kind(mg)
                if kind == "deldtor" or not cls or cls not in DEF:
                    skip["no-class"] += 1; continue
                shape = gc.shape_ctordtor(ins, kind, cls)
                if shape is None:
                    skip["no-shape"] += 1; continue
                definition = gc.render_def(kind, cls, mg, h, shape, None)
                inc = DEF.get(cls)
            elif kl == "SETTER":
                ctype = gc.setter_param_code(mg)
                if ctype is None or not h or not h["params"] or h["static"]:
                    skip["no-hdr-setter"] += 1; continue
                if not cls or cls not in DEF:
                    skip["no-class"] += 1; continue
                ss = gc.shape_setter(ins, ctype)
                if ss is None:
                    skip["no-shape"] += 1; continue
                definition = gc.render_def("setter", cls, mg, h, None, ss)
                inc = DEF.get(cls)
            elif do_params and h and not h["static"] and h["params"] and "@" in (f.get("mc") or "") \
                    and f["mc"].split("@")[1] == h["cls"]:
                # HAS-PARAMS arg-ignoring shapes: const-return / field-getter / void no-op / return-this
                # that happen to take parameters (the body never uses them; the compiler emits `ret 0xN`).
                if not gt.hasparams_pairs(mg, h):
                    skip["mangle"] += 1; continue
                body = gt.shape_to_c_params(ins, h)
                if body is None:
                    skip["no-shape"] += 1; continue
                ic = gt.mangled_is_const(mg)
                const = " const" if (ic if ic is not None else bool(h["const"])) else ""
                bodytxt = ("    " + body + "\n") if body else ""
                definition = "%s %s::%s(%s)%s\n{\n%s}" % (h["ret"], h["cls"], h["method"], h["params"], const, bodytxt)
                inc = gt.def_header(h["cls"]) or h["inc"]
            else:
                # GETTER / CONST_RETURN / TINY / FORWARD / VIRTUAL_FORWARD: header-decl based
                if not h or h["static"] or h["params"]:
                    skip["no-shape"] += 1; continue
                if "@" not in (f.get("mc") or "") or f["mc"].split("@")[1] != h["cls"]:
                    skip["no-class"] += 1; continue
                # mangle-pairing pre-check (same as gen_targeted)
                biv = gt._mangled_is_virtual(mg)
                if biv is not None and biv != bool(h.get("virtual")):
                    skip["mangle"] += 1; continue
                got = gt._mangled_ret_code(mg); want = gt._ret_codes_for(h["ret"])
                if got is not None and want is not None and got not in want:
                    skip["mangle"] += 1; continue
                if got is not None and want is None:
                    SCALAR = {"X", "D", "E", "F", "G", "H", "I", "J", "K", "M", "N", "_N"}
                    if not h["ret"].strip().endswith("*") and got in SCALAR:
                        skip["mangle"] += 1; continue
                ic = gt.mangled_is_const(mg)
                const = " const" if (ic if ic is not None else bool(h["const"])) else ""
                # naked-asm path FIRST for the 1-byte const-return into a wider int return type:
                #   xor al,al / mov al,N ; ret  -- the binary uses the partial reg, but shape_to_c's C-level
                #   `return (T)0` compiles to `xor eax,eax`/`mov eax,N` (WRONG bytes). The proven AsmBank
                #   technique reproduces the exact bytes with an inline __asm block. Only when asm_al is on.
                al = _asm_al_body(ins, h["ret"]) if asm_al else None
                if al is not None:
                    definition = "%s %s::%s()%s\n{\n    __asm { %s }\n}" % (h["ret"], h["cls"], h["method"], const, al)
                    inc = gt.def_header(h["cls"]) or h["inc"]
                else:
                    body = gt.shape_to_c(ins, h)
                    if body is None:
                        skip["no-shape"] += 1; continue
                    definition = "%s %s::%s()%s\n{\n    %s\n}" % (h["ret"], h["cls"], h["method"], const, body)
                    inc = gt.def_header(h["cls"]) or h["inc"]

            if definition is None:
                skip["no-shape"] += 1; continue
            gen["0x%08x" % a] = {"def": definition, "inc": inc}

    print("synthesized %d defs | skipped: %s" % (len(gen), skip))
    json.dump(gen, open(os.path.join(DTK, outp), "w"))
    print("wrote", outp)


if __name__ == "__main__":
    main()
