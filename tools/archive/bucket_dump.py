#!/usr/bin/env python3
r"""bucket_dump.py - dump the MEMBERS of each closeout bucket (not just counts) so we can attack them.

closeout_table.py prints per-bucket COUNTS; this prints the actual functions in a chosen bucket (addr,
mangled, class, method, header-ret, size, klass, has-asm) to JSON, so TASK A (header-blocked) and TASK B
(has-params) can iterate over the exact list. Reuses closeout_table.classify's logic but records names.

Usage:
  python tools/bucket_dump.py [--bucket header-no-compile] [--out bucket.json]
  buckets: header-no-compile, no-class-header, has-params, enum-struct-ret, no-shape, mangle-mismatch, comdat-fold
"""
import json, re, os, sys

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_simple, gen_asm, gen_targeted as gt, gen_ctordtor as gc, gen_inplace as gi, closeout_table as ct


def classify_named(want_bucket):
    """Like closeout_table.classify but, for the requested bucket, collect the function records."""
    hdr = gen_simple.header_index()
    gt.def_header("Object"); DEF = gt._DEFHDR
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    E = gt.eranges(); inE = lambda a: any(lo <= a < hi for lo, hi in E)
    our = gi.our_ranges()
    a2m = gen_asm._addr2mangled()
    hit = ct.matched_addrs()

    asm_by_addr = {}; bytu = {}
    for f in census:
        if f["klass"] not in ct.TRACTABLE:
            continue
        a = int(f["addr"], 16)
        if a in hit:
            continue
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

    NAMED = re.compile(r"\?A[WUV]")
    out = []

    def rec(f, a, mg, h, extra=""):
        cls = gc.cls_of_mangled(mg)
        return {"addr": "0x%08x" % a, "mangled": mg, "cls": cls,
                "mc": f.get("mc"), "klass": f["klass"], "size": f["size"],
                "ret": (h or {}).get("ret"), "method": (h or {}).get("method"),
                "params": (h or {}).get("params"), "static": (h or {}).get("static"),
                "has_asm": a in asm_by_addr, "asm": asm_by_addr.get(a), "inE": inE(a),
                "in_def_hdr": bool(cls and cls in DEF), "note": extra}

    for f in census:
        kl = f["klass"]
        if kl not in ct.TRACTABLE:
            continue
        a = int(f["addr"], 16)
        mg = a2m.get(a) or f["mangled"]
        if a in hit:
            continue
        kind = gc.mangled_kind(mg)
        cls = gc.cls_of_mangled(mg)
        if kind == "deldtor":
            continue
        if not f.get("mc") or "@" not in f["mc"]:
            continue
        h = hdr.get(a)
        if kl in ("DESTRUCTOR", "CONSTRUCTOR"):
            if not cls or cls not in DEF:
                if want_bucket == "no-class-header": out.append(rec(f, a, mg, h))
                continue
            ins = asm_by_addr.get(a)
            if ins is None or gc.shape_ctordtor(ins, kind, cls) is None:
                if want_bucket == "no-shape": out.append(rec(f, a, mg, h))
                continue
            if want_bucket == "comdat-fold": out.append(rec(f, a, mg, h))
            continue
        if kl == "SETTER":
            h2 = hdr.get(a); ctype = gc.setter_param_code(mg)
            if not cls or cls not in DEF:
                if want_bucket == "no-class-header": out.append(rec(f, a, mg, h))
                continue
            if ctype is None or not h2 or not h2["params"]:
                if want_bucket == "no-shape": out.append(rec(f, a, mg, h))
                continue
            ins = asm_by_addr.get(a)
            if ins is None or gc.shape_setter(ins, ctype) is None:
                if want_bucket == "no-shape": out.append(rec(f, a, mg, h))
                continue
            if want_bucket == "comdat-fold": out.append(rec(f, a, mg, h))
            continue
        # getter/const/forward/tiny/intra
        if h and not h["static"] and h["params"] and f["mc"].split("@")[1] == h["cls"]:
            if want_bucket == "has-params": out.append(rec(f, a, mg, h))
            continue
        if not h or h["static"] or f["mc"].split("@")[1] != h["cls"]:
            if want_bucket == "no-class-header": out.append(rec(f, a, mg, h))
            continue
        cc = gt._mangled_callconv(mg)
        if cc is not None and cc != "E":
            if want_bucket == "mangle-mismatch": out.append(rec(f, a, mg, h, "callconv %s" % cc))
            continue
        biv = gt._mangled_is_virtual(mg)
        if biv is not None and biv != bool(h.get("virtual")):
            if want_bucket == "mangle-mismatch": out.append(rec(f, a, mg, h, "virtual"))
            continue
        mic = gt.mangled_is_const(mg)
        if mic is not None and mic != bool(h["const"]):
            if want_bucket == "mangle-mismatch": out.append(rec(f, a, mg, h, "const"))
            continue
        got = gt._mangled_ret_code(mg); wantc = gt._ret_codes_for(h["ret"])
        if got is not None and wantc is not None and got not in wantc:
            if want_bucket == "mangle-mismatch": out.append(rec(f, a, mg, h, "ret %s!=%s" % (got, wantc)))
            continue
        if got is not None and wantc is None and not h["ret"].strip().endswith("*"):
            SCALAR = {"X", "D", "E", "F", "G", "H", "I", "J", "K", "M", "N", "_N"}
            if got in SCALAR:
                if want_bucket == "mangle-mismatch": out.append(rec(f, a, mg, h, "ret-scalar %s" % got))
                continue
        if got is not None and NAMED.match(got):
            if want_bucket == "enum-struct-ret": out.append(rec(f, a, mg, h, got))
            continue
        ins = asm_by_addr.get(a)
        if ins is None:
            if not inE(a):
                # match closeout_table's improved partition: header-fails-standalone vs comdat-fold
                if ct._header_compiles(h, DEF):
                    if want_bucket == "comdat-fold": out.append(rec(f, a, mg, h, "header-ok/folded"))
                else:
                    if want_bucket == "header-no-compile": out.append(rec(f, a, mg, h))
            else:
                if want_bucket == "no-shape": out.append(rec(f, a, mg, h))
            continue
        if gt.shape_to_c(ins, h) is None:
            if want_bucket == "no-shape": out.append(rec(f, a, mg, h))
            continue
        if want_bucket == "comdat-fold": out.append(rec(f, a, mg, h))
    return out


def main():
    args = sys.argv[1:]
    def opt(flag, default):
        return args[args.index(flag) + 1] if flag in args else default
    bucket = opt("--bucket", "header-no-compile")
    outp = opt("--out", "bucket.json")
    rows = classify_named(bucket)
    json.dump(rows, open(os.path.join(DTK, outp), "w"), indent=1)
    print("bucket %s: %d functions -> %s" % (bucket, len(rows), outp))
    # quick class histogram
    from collections import Counter
    print("by klass:", dict(Counter(r["klass"] for r in rows)))
    print("with header:", sum(1 for r in rows if r["ret"]), "| in def-hdr:", sum(1 for r in rows if r["in_def_hdr"]))


if __name__ == "__main__":
    main()
