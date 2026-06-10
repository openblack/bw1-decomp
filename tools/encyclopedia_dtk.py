#!/usr/bin/env python3
"""encyclopedia_dtk.py - a FULL, address-keyed census of ALL dtk .text functions (BW1E142).

The original `bw1-decomp/Documentation/function_encyclopedia.json` classified the ~13188 *then-unbanked*
functions (an LLM fan-out). dtk's split exposes **21432** `.text` functions total. This tool builds a
complete, current map keyed by ADDRESS (dtk's authoritative key), integrating:
  - dtk `symbols.txt`     : mangled name, address, size  (authoritative, all 21432)
  - our ratchet banks     : `banked` status (verified byte-exact in bw1-decomp; ~1830 map to dtk)
  - the old LLM encyclopedia: `klass`/`summary` merged by `Method@Class` where available (quality)
  - a heuristic klass     : name + size, for everything the LLM pass never saw

So we keep LLM quality for the 13188, get coverage for the other ~8k cheaply, and fold in dtk progress.

Outputs:
  docs/port-banks/dtk_function_census.json   - full per-function map (address-keyed)
  (prints the census; 05-dtk-encyclopedia.md is written by hand from it)

Usage: python3 tools/encyclopedia_dtk.py [--write]
"""
import os, re, sys, json
from collections import Counter

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
DECOMP = os.environ.get("BW1_DECOMP", os.path.join(os.path.dirname(DTK), "bw1-decomp"))
VERSION = os.environ.get("BW1_VERSION", "BW1E142")

# --- simple klasses we can recognise from name+size (must match the old encyclopedia's vocabulary) ---
def heuristic_klass(mangled, size):
    mn = mangled
    if mn.startswith("??0"): return "CONSTRUCTOR"
    if mn.startswith("??1") or mn.startswith("??_E") or mn.startswith("??_G"): return "DESTRUCTOR"
    if mn.startswith("??_C") or mn.startswith("_jmp_") or mn.startswith("j_"): return "FORWARD"
    if re.match(r"\?Get[A-Z_]", mn): return "GETTER" if (0 < size <= 0x20) else "MULTI_BLOCK"
    if re.match(r"\?Set[A-Z_]", mn): return "SETTER" if (0 < size <= 0x20) else "MULTI_BLOCK"
    if re.match(r"\?(Is|Has|Can|Should)[A-Z_]", mn): return "GETTER" if (0 < size <= 0x20) else "MULTI_BLOCK"
    if size and size <= 0x6:  return "TINY"
    if size and size <= 0x10: return "CONST_RETURN"
    if size and size <= 0x28: return "TINY"
    return "MULTI_BLOCK"

def method_class(mangled):
    g = re.match(r"\?(\w+)@(\w+)@@", mangled)
    return g.group(1) + "@" + g.group(2) if g else None

def build():
    # 1. all dtk .text functions
    funcs = []
    for line in open(os.path.join(DTK, "config", VERSION, "symbols.txt"), encoding="latin-1"):
        m = re.match(r"\s*(\S+)\s*=\s*\.text:0x([0-9A-Fa-f]+)\b", line)
        if not m or "type:function" not in line:
            continue
        sz = re.search(r"size:0x([0-9A-Fa-f]+)", line)
        funcs.append({"addr": int(m.group(2), 16), "mangled": m.group(1),
                      "size": int(sz.group(1), 16) if sz else 0,
                      "mc": method_class(m.group(1))})
    # 2. banked addrs (ratchet, mapped via port_banks)
    sys.path.insert(0, os.path.join(DTK, "tools"))
    import port_banks
    banked = set(port_banks.banked_units())
    # 3. old LLM encyclopedia, indexed by Method@Class (first record wins)
    old = {}
    enc = json.load(open(os.path.join(DECOMP, "Documentation", "function_encyclopedia.json")))["functions"]
    for r in enc:
        fn = r.get("fn", "")
        if "@" in fn and "(" not in fn:
            old.setdefault(fn, r)
    # 4. assemble
    for f in funcs:
        o = old.get(f["mc"]) if f["mc"] else None
        f["banked"] = f["addr"] in banked
        if o:
            f["klass"] = o["klass"]; f["klass_src"] = "llm"
            f["summary"] = o.get("summary", "")
        else:
            f["klass"] = heuristic_klass(f["mangled"], f["size"]); f["klass_src"] = "heuristic"
        if f["banked"]:
            f["handler"] = "done-banked"
        elif o:
            f["handler"] = o["handler"]
        else:                                            # derive a treatment from the heuristic klass
            f["handler"] = {"GETTER": "sweep-auto", "SETTER": "sweep-auto", "CONST_RETURN": "sweep-auto",
                            "TINY": "sweep-auto", "BITFIELD": "sweep-auto", "FORWARD": "sweep-auto",
                            "VIRTUAL_FORWARD": "sweep-auto", "DATA_GLOBAL": "phase2-defer",
                            "UNKNOWN": "phase2-defer"}.get(f["klass"], "fanout-write-C")
    return funcs

def census(funcs):
    n = len(funcs); banked = sum(f["banked"] for f in funcs)
    llm = sum(f["klass_src"] == "llm" for f in funcs)
    print("dtk .text functions: %d | banked (ratchet): %d | LLM-classified: %d | heuristic: %d"
          % (n, banked, llm, n - llm))
    print("=== by klass (banked / total) ===")
    by = Counter(f["klass"] for f in funcs); bk = Counter(f["klass"] for f in funcs if f["banked"])
    for k, c in by.most_common():
        print("  %-16s %5d  (%d banked)" % (k, c, bk[k]))
    print("=== by handler ===")
    for h, c in Counter(f["handler"] for f in funcs).most_common():
        print("  %-16s %5d" % (h, c))

if __name__ == "__main__":
    fs = build()
    census(fs)
    if "--write" in sys.argv[1:]:
        out = os.path.join(DTK, "docs", "port-banks", "dtk_function_census.json")
        json.dump({"census_note": "all dtk BW1E142 .text functions; klass_src=llm|heuristic; "
                                   "handler=done-banked|<old>|unclassified",
                   "functions": [{"addr": "0x%08x" % f["addr"], "mangled": f["mangled"], "size": f["size"],
                                  "mc": f["mc"], "klass": f["klass"], "klass_src": f["klass_src"],
                                  "handler": f["handler"], "banked": f["banked"]} for f in
                                 sorted(fs, key=lambda x: x["addr"])]},
                  open(out, "w", encoding="latin-1"))
        print("wrote", out)
