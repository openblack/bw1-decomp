#!/usr/bin/env python3
"""mangle_worklist.py - compute the MANGLE-MISMATCH worklist that gen_targeted.py SKIPS.

The forward-decomp generator (gen_targeted.py) can emit a byte-identical body for many no-arg
functions, but objdiff pairs target<->ours by MANGLED NAME: if our C++ decl mangles to a different
symbol than the binary's real one, the (correct) body scores 0. gen_targeted pre-filters these into
`skipped_mangle` -- THAT skip-list is the worklist for this sprint. This tool replays the SAME filter
(DRY: imports gen_targeted's helpers) but, instead of dropping them, CLASSIFIES each by mismatch MODE:

  bool   : header `bool32_t`(->I) but binary `bool`(->_N)        -> fix decl ret -> bool
  enum   : header enum/typedef (named, ?AW4../?AU../?AV..) but binary plain scalar I/H/.. -> ret -> plain int
  virtual: header `virtual`(->U/M) but binary non-virtual(->Q/I/A) -> drop `virtual` (RISKIER)
  other  : ret-code mismatch not in the above (e.g. width: I vs H) -> needs inspection

Each entry carries the binary's TRUE return code (demangled) so the driver knows the corrected type.
Usage: python tools/mangle_worklist.py [--json out.json]"""
import json, os, sys, re

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_simple
import gen_targeted as gt

# demangled scalar return code -> a concrete C type we can write (the binary's GROUND TRUTH).
CODE2C = {
    "X": "void", "_N": "bool", "D": "char", "E": "unsigned char", "F": "short",
    "G": "unsigned short", "H": "int", "I": "unsigned int", "J": "long",
    "K": "unsigned long", "M": "float", "N": "double",
}


def classify(h, mangled, got, want):
    """Return (mode, true_ret_c) for a header decl h vs binary mangle. true_ret_c may be None."""
    biv = gt._mangled_is_virtual(mangled)
    hdr_virt = bool(h.get("virtual"))
    # virtual mismatch takes precedence (the keyword forces our mangle regardless of ret type)
    if biv is not None and biv != hdr_virt:
        return ("virtual", None)
    true_c = CODE2C.get(got)
    # bool: header non-bool scalar that maps to 'I' (bool32_t/unsigned int) but binary is _N
    if got == "_N":
        return ("bool", "bool")
    # header named type (enum/typedef/struct) -> want is None and got is a plain scalar
    if want is None and got in CODE2C and not h["ret"].strip().endswith("*"):
        return ("enum", true_c)
    # scalar-vs-scalar width mismatch (e.g. header int 'H' but binary 'I')
    if want is not None and got not in want:
        return ("width", true_c)
    return ("other", true_c)


def worklist():
    hdr = gen_simple.header_index()
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    E = gt.eranges()
    inE = lambda a: any(lo <= a < hi for lo, hi in E)
    out = []
    for f in census:
        if f["banked"]:
            continue
        a = int(f["addr"], 16)
        h = hdr.get(a)
        if not h or h["static"] or h["params"]:
            continue
        if not f.get("mc") or "@" not in f["mc"] or f["mc"].split("@")[1] != h["cls"]:
            continue
        mangled = f.get("mangled") or ""
        # MISATTRIBUTION GUARD: we only consider no-arg header decls (h["params"]==""), so the binary
        # mangle MUST be no-arg too (ends `XZ`). If it has parameters, the census address points at a
        # DIFFERENT overload than the header line -- e.g. 0x401830 is IsCreature(Creature*) (`...PAVCreature@@@Z`)
        # but the header comment misattributes the no-arg IsCreature() decl to it. Editing/dropping-virtual
        # from such a decl would be wrong. (Proven landmine; see docs/port-banks/06.)
        if not mangled.endswith("XZ"):
            continue
        # also require the method name in the mangle to equal the header method (belt + suspenders).
        mm = re.match(r"\?(\w+)@", mangled)
        if mm and mm.group(1) != h["method"]:
            continue
        biv = gt._mangled_is_virtual(mangled)
        got = gt._mangled_ret_code(mangled)
        want = gt._ret_codes_for(h["ret"])
        # is this a mismatch (i.e. would gen_targeted skip it)?
        skip = False
        if biv is not None and biv != bool(h.get("virtual")):
            skip = True
        elif got is not None:
            if want is not None:
                if got not in want:
                    skip = True
            else:
                SCALAR = {"X", "D", "E", "F", "G", "H", "I", "J", "K", "M", "N", "_N"}
                if not h["ret"].strip().endswith("*") and got in SCALAR:
                    skip = True
        if not skip:
            continue
        mode, true_c = classify(h, mangled, got, want)
        out.append({
            "addr": f["addr"], "size": f["size"], "klass": f["klass"], "inE": inE(a),
            "cls": h["cls"], "method": h["method"], "ret": h["ret"], "virtual": bool(h["virtual"]),
            "inc": h["inc"], "mangled": mangled, "got": got, "mode": mode, "true_ret": true_c,
        })
    return out


if __name__ == "__main__":
    wl = worklist()
    from collections import Counter
    by_mode = Counter(w["mode"] for w in wl)
    print("worklist:", len(wl))
    for m, n in by_mode.most_common():
        inE_n = sum(1 for w in wl if w["mode"] == m and w["inE"])
        print("  %-8s %3d  (inE=%d outE=%d)" % (m, n, inE_n, n - inE_n))
    if "--json" in sys.argv:
        out = sys.argv[sys.argv.index("--json") + 1]
        json.dump(wl, open(out, "w"), indent=1)
        print("wrote", out)
    # preview a few per mode
    for m in ("bool", "enum", "virtual", "width", "other"):
        ex = [w for w in wl if w["mode"] == m][:4]
        if ex:
            print("--- %s ---" % m)
            for w in ex:
                print("  %s %s::%s ret=%s got=%s true=%s inE=%s" %
                      (w["addr"], w["cls"], w["method"], w["ret"], w["got"], w["true_ret"], w["inE"]))
