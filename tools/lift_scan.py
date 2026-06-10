#!/usr/bin/env python3
r"""lift_scan.py - classify a TU's UNDECOMPILED named methods by trivial pattern + decode them, so the
clean ones can be batch-lifted. Encodes the rule the carve saga taught: a method must be lifted in its
HOME TU (the unit whose .text range covers its target address) or it lands in the wrong objdiff unit and
scores 0%. This tool only scans within ONE TU, so every target it reports is already home-correct.

Patterns decoded (the reliably byte-exact ones; everything else -> COMPLEX = hand-lift):
  EMPTY   `ret[ N]`                              -> {}                         (ret N => N/4 params)
  CONST   `[xor eax,eax|mov eax,IMM|mov al,IMM|xor al,al]; ret[ N]` -> return IMM;
  GETTER  `mov eax,[ecx(+OFF)]; ret[ N]`         -> return <member@OFF>;       (thiscall, this=ecx)
  TAILV   `mov eax,[ecx]; jmp [eax+SLOT]`        -> return <virtual@vtbl+SLOT>();  (tail-call fwd)

Usage:
  python tools/lift_scan.py <TU>            # e.g. Bank_52c330  (needs a current rep.json)
  python tools/lift_scan.py --self-test
"""
import json, re, sys, os

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
EXE = os.path.join(DTK, "orig", VER, "runblack-decrypted.exe")
SYMS = os.path.join(DTK, "config", VER, "symbols.txt")
REP = os.path.join(DTK, "rep.json")

def sym_addrs():
    d = {}
    for ln in open(SYMS, encoding="latin-1"):
        m = re.match(r'(\S+)\s*=\s*\.text:0x([0-9a-fA-F]+);.*size:0x([0-9a-fA-F]+)', ln)  # hex is MIXED case
        if m:
            d[m.group(1)] = (int(m.group(2), 16), int(m.group(3), 16))
    return d

def disasm(addr, sz):
    import pefile, capstone
    pe = pefile.PE(EXE, fast_load=True); base = pe.OPTIONAL_HEADER.ImageBase
    t = [s for s in pe.sections if b".text" in s.Name][0]; tva = base + t.VirtualAddress; raw = t.get_data()
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
    out = []
    for ins in md.disasm(raw[addr - tva:addr - tva + max(sz, 8)], addr):
        out.append((ins.mnemonic, ins.op_str))
        if ins.mnemonic in ("ret", "jmp", "int3"):
            break
    return out

def classify(ins):
    """ins: [(mnemonic, op_str), ...]. Returns (KIND, detail)."""
    if not ins:
        return ("COMPLEX", None)
    m0, o0 = ins[0]
    if m0 == "ret":
        return ("EMPTY", o0 or "0")
    if len(ins) >= 2 and ins[1][0] == "ret":
        if m0 == "xor" and o0 in ("eax, eax", "al, al"):
            return ("CONST", 0)
        m = re.match(r'(?:eax|al), (?:0x)?([0-9a-fA-F]+)$', o0)
        if m0 == "mov" and m:
            return ("CONST", int(m.group(1), 16))
        m = re.match(r'eax, dword ptr \[ecx(?:\s*\+\s*(?:0x)?([0-9a-fA-F]+))?\]$', o0)
        if m0 == "mov" and m:
            return ("GETTER", int(m.group(1), 16) if m.group(1) else 0)
    if len(ins) >= 2 and ins[0] == ("mov", "eax, dword ptr [ecx]") and ins[1][0] == "jmp":
        m = re.search(r'\[eax\s*\+\s*(?:0x)?([0-9a-fA-F]+)\]', ins[1][1])
        if m:
            return ("TAILV", int(m.group(1), 16))
    return ("COMPLEX", None)

def scan(tu):
    d = json.load(open(REP))
    sz = sym_addrs()
    rows = []
    for u in d.get("units", []):
        if u.get("name", "").endswith("/" + tu):
            for f in u.get("functions", []):
                s = f.get("name", "")
                if f.get("fuzzy_match_percent", 0) >= 5 or not s.startswith("?"):
                    continue
                a, n = sz.get(s, (0, 0))
                if not a:
                    continue
                kind, det = classify(disasm(a, n))
                rows.append((kind, a, det, s))
            break
    order = {"CONST": 0, "EMPTY": 1, "GETTER": 2, "TAILV": 3, "COMPLEX": 9}
    rows.sort(key=lambda r: (order[r[0]], r[1]))
    for kind, a, det, s in rows:
        if kind == "COMPLEX":
            continue
        # lazy per-kind formatting: EMPTY's det is a string ("0xc"), so eager "%x" on all kinds crashed.
        if kind == "CONST":
            sug = "return %s;" % det
        elif kind == "EMPTY":
            sug = "{} (ret %s)" % det
        elif kind == "GETTER":
            sug = "return <member@0x%x>;" % det
        else:  # TAILV
            sug = "return <vtbl+0x%x>();" % det
        print("  %-7s @0x%06x  %-34s %s" % (kind, a, s[:34], sug))
    nc = sum(1 for r in rows if r[0] != "COMPLEX")
    print("-> %d trivially-liftable / %d undecompiled named in %s" % (nc, len(rows), tu))

def self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    # synthetic
    chk(classify([("xor", "eax, eax"), ("ret", "")]) == ("CONST", 0), "xor eax,eax;ret -> CONST 0")
    chk(classify([("mov", "eax, 0xf"), ("ret", "")]) == ("CONST", 15), "mov eax,0xf;ret -> CONST 15")
    chk(classify([("ret", "0xc")]) == ("EMPTY", "0xc"), "ret 0xc -> EMPTY")
    chk(classify([("mov", "eax, dword ptr [ecx + 0x78]"), ("ret", "")]) == ("GETTER", 0x78), "getter +0x78")
    chk(classify([("mov", "eax, dword ptr [ecx]"), ("jmp", "dword ptr [eax + 0x11c]")]) == ("TAILV", 0x11c), "tailv +0x11c")
    chk(classify([("push", "esi"), ("mov", "esi, ecx")])[0] == "COMPLEX", "prologue -> COMPLEX (hand-lift)")
    # against the real binary: GetCreatureBeliefType@0x531180 = return 0xf, IsFootball@0x531280 = return 1
    try:
        chk(classify(disasm(0x531180, 0x10)) == ("CONST", 15), "real GetCreatureBeliefType -> CONST 15")
        chk(classify(disasm(0x531280, 0x10)) == ("CONST", 1), "real IsFootball -> CONST 1")
    except Exception as e:
        chk(False, "binary disasm (%s)" % e)
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(self_test())
    if not a:
        print(__doc__); sys.exit()
    scan(a[0])
