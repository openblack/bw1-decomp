#!/usr/bin/env python3
"""gen_simple.py - generate CORRECT C for simple no-arg getters from header signature + encyclopedia summary.

Header (black/*.h) gives the exact signature (`[virtual] RetType Method() [const];`) under its `// win1.41
<addr>` comment; the LLM encyclopedia summary gives the field offset. Emits {addr: {def, inc}} for
single-hop field getters and bool(!=0) getters where the mangled class matches the header class (the clean
subset). Chained/struct-copy/static/class-mismatch are skipped (left for later passes). Pipe into
verify_defs.py to compile + objdiff + keep the byte-exact ones."""
import json, re, glob, os

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
DECOMP = os.path.join(os.path.dirname(DTK), "bw1-decomp")

def header_index():
    """{addr: {cls, ret, method, params, const, static, inc}} from the `// win1.41` decls in black/*.h."""
    idx = {}
    for h in glob.glob(os.path.join(DECOMP, "black", "*.h")):
        base = os.path.basename(h); L = open(h, encoding="latin-1").read().split("\n")
        for i, l in enumerate(L):
            m = re.search(r"// win1\.41 ([0-9a-fA-F]+) .*?(\w+)::(\w+)\(", l)
            if not m or i + 1 >= len(L): continue
            d = re.match(r"((?:(?:virtual|static|inline)\s+)*)([\w :\*&<>]+?)\s+(\w+)\(([^)]*)\)\s*(const)?\s*;",
                         L[i + 1].strip())
            if d:
                idx[int(m.group(1), 16)] = {"cls": m.group(2), "ret": d.group(2).strip(), "method": d.group(3),
                                            "params": d.group(4).strip(), "const": " const" if d.group(5) else "",
                                            "static": "static" in d.group(1), "virtual": "virtual" in d.group(1),
                                            "inc": base}
    return idx

def generate():
    hdr = header_index(); old = {}
    for r in json.load(open(os.path.join(DECOMP, "Documentation", "function_encyclopedia.json")))["functions"]:
        if "@" in r.get("fn", "") and "(" not in r["fn"]: old.setdefault(r["fn"], r)
    census = json.load(open(os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")))["functions"]
    gen = {}
    for f in census:
        if f["klass"] != "GETTER" or f["banked"] or f["klass_src"] != "llm" or f["mc"] not in old: continue
        a = int(f["addr"], 16); h = hdr.get(a)
        if not h or h["static"] or h["params"]: continue           # no-arg, non-static only (this pass)
        if "@" not in f["mc"] or f["mc"].split("@")[1] != h["cls"]: continue   # clean class match only
        s = old[f["mc"]]["summary"]
        mb = re.search(r"dword field at this\+0x([0-9a-fA-F]+)\s*!=\s*0", s)
        mf = re.search(r"field at this\+0x([0-9a-fA-F]+)", s)
        if mb:
            body = "return *(unsigned int *)((char *)this + 0x%x) != 0;" % int(mb.group(1), 16)
        elif mf and "Chained" not in s and "copies" not in s and "this+0x" in s:
            body = "return (%s)*(unsigned int *)((char *)this + 0x%x);" % (h["ret"], int(mf.group(1), 16))
        else:
            continue
        gen["0x%08x" % a] = {"def": "%s %s::%s()%s\n{\n    %s\n}" % (h["ret"], h["cls"], h["method"], h["const"], body),
                             "inc": h["inc"]}
    return gen

if __name__ == "__main__":
    g = generate()
    json.dump(g, open(os.path.join(DTK, "gen_simple.json"), "w"))
    print("generated %d simple-getter definitions" % len(g))
    import itertools
    for a, r in itertools.islice(g.items(), 3):
        print("--- %s [%s]\n%s" % (a, r["inc"], r["def"]))
