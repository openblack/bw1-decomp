#!/usr/bin/env python3
r"""cascade_rettype.py - fix dtk RETURN-TYPE errors and cascade them across a virtual's override family.

THE BUG (proven byte-exact on Spell::ProcessSpellSeed): dtk sometimes reconstructs an int/bool32_t-returning
function with a `void` symbol (`?M@C@@UAEXXZ`). A void def can't emit the function's `mov eax,N; ret`, so it
stalls < 100% no matter how faithfully lifted. The fix is to change the return type X->I -- but for a
VIRTUAL the symbol AND the C++ decl must change for the whole override family, or the overrides stop
overriding. SAFE because forwarders (`{ Base::M(); }` -> a `jmp` tail-call) are return-type-AGNOSTIC and
stay byte-exact through the change.

  --scan : find void-symbol functions whose body emits an explicit return value (the tell:
           a `ret` preceded by `mov eax,IMM` / `mov al,IMM` / `xor eax,eax`). These are mis-typed.
  --method M --to bool32_t [--apply] : cascade the return-type fix across every `?M@Class@@..EX..` symbol
           (the override family): rewrite the symbol (X->to-code), the C++ decl (void->T) and the C-section
           asm() binding in every header. Then write the def bodies and re-split.

Usage:
  python tools/cascade_rettype.py --scan [TU]
  python tools/cascade_rettype.py --method ProcessSpellSeed --to bool32_t          # dry-run
  python tools/cascade_rettype.py --method ProcessSpellSeed --to bool32_t --apply
  python tools/cascade_rettype.py --self-test
"""
import os, re, sys, glob

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
SYMS = os.path.join(DTK, "config", VER, "symbols.txt")
EXE = os.path.join(DTK, "orig", VER, "runblack-decrypted.exe")
INC = os.path.join(DTK, "include", "black")

TYPE2CODE = {"void": "X", "bool32_t": "I", "uint32_t": "I", "uint": "I", "int": "H", "int32_t": "H",
             "char": "D", "unsigned char": "E", "uint8_t": "E", "short": "F", "unsigned short": "G",
             "long": "J", "unsigned long": "K", "float": "M", "double": "N", "bool": "_N"}

def ret_code_after_ac(sym):
    """Return (prefix_through_AC, ret_code, rest) for a thiscall member symbol, or None.
    AC = access+cv+callconv, 3 chars ending in E for a near thiscall member (UAE/QAE/IAE/...)."""
    m = re.match(r'(\?[A-Za-z_]\w*@[A-Za-z_]\w*@@[A-Z][A-Z]E)(_?[A-Za-z])(.*)$', sym)
    return (m.group(1), m.group(2), m.group(3)) if m else None

def is_void_member(sym):
    r = ret_code_after_ac(sym)
    return bool(r) and r[1] == "X"

def rewrite_ret(sym, to_code):
    r = ret_code_after_ac(sym)
    if not r or r[1] != "X":
        return None
    return r[0] + to_code + r[2]

# ---------- scan: void symbol whose body emits a return value ----------
def _emits_return_value(addr, size):
    import pefile, capstone
    pe = pefile.PE(EXE, fast_load=True); base = pe.OPTIONAL_HEADER.ImageBase
    t = [s for s in pe.sections if b".text" in s.Name][0]; tva = base + t.VirtualAddress; raw = t.get_data()
    md = capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32)
    prev = None; hit = None
    for ins in md.disasm(raw[addr - tva:addr - tva + max(size, 8)], addr):
        if ins.mnemonic == "ret" and prev:
            pm, po = prev
            if pm == "mov" and re.match(r'(eax|al), (0x)?[0-9a-fA-F]+$', po): hit = po
            elif pm == "xor" and po in ("eax, eax", "al, al"): hit = "0"
        prev = (ins.mnemonic, ins.op_str)
        if ins.address - addr >= size: break
    return hit

def scan(tu=None):
    import json
    rep = json.load(open(os.path.join(DTK, "rep.json")))
    sz = {}
    for ln in open(SYMS, encoding="latin-1"):
        m = re.match(r'(\S+)\s*=\s*\.text:0x([0-9a-fA-F]+);.*size:0x([0-9a-fA-F]+)', ln)
        if m: sz[m.group(1)] = (int(m.group(2), 16), int(m.group(3), 16))
    n = 0
    for u in rep.get("units", []):
        un = u.get("name", "").split("/")[-1]
        if not re.match(r'[A-Za-z]\w*$', un) or (tu and un != tu): continue
        for f in u.get("functions", []):
            s = f.get("name", "")
            if f.get("fuzzy_match_percent", 0) >= 100 or not is_void_member(s): continue
            a = sz.get(s)
            if not a: continue
            val = _emits_return_value(a[0], a[1])
            if val is not None:
                n += 1
                print("  %-52s %-13s emits eax=%s  (void symbol -> likely int/bool32_t)" % (s[:52], un, val))
    print("-> %d void-symbol functions that emit a return value (return-type candidates)" % n)

# ---------- cascade fix ----------
def family(method):
    fam = []
    for ln in open(SYMS, encoding="latin-1"):
        sym = ln.split(" = ")[0].strip()
        m = re.match(r'\?%s@([A-Za-z_]\w*)@@' % re.escape(method), sym)
        if m and is_void_member(sym):
            fam.append((sym, m.group(1)))
    return fam

def _patch_headers(method, old_sym, new_sym, to_type):
    """In every header: swap the asm() mangled name old->new, and change the return type void->to_type on
    both the C++ decl and the C-section binding for this method. Returns count of files touched."""
    touched = 0
    for h in glob.glob(os.path.join(INC, "*.h")):
        t = open(h, encoding="latin-1").read(); o = t
        t = t.replace(old_sym, new_sym)                                            # asm() binding name
        t = re.sub(r'(virtual\s+)?void(\s+%s\s*\()' % re.escape(method), r'\1' + to_type + r'\2', t)  # C++ decl
        t = re.sub(r'\bvoid(\s+__fastcall\s+\w*%s\w*\s*\()' % re.escape(method), to_type + r'\1', t)   # C binding ret
        if t != o:
            open(h, "w", encoding="latin-1", newline="\n").write(t); touched += 1
    return touched

def cascade(method, to_type, apply=False):
    to_code = TYPE2CODE.get(to_type)
    if not to_code:
        print("unknown --to type: %s" % to_type); return
    fam = family(method)
    if not fam:
        print("no void-symbol family for method '%s'" % method); return
    print("override family of '%s' (void -> %s / X -> %s):" % (method, to_type, to_code))
    syms = open(SYMS, encoding="latin-1").read()
    for sym, cls in fam:
        new = rewrite_ret(sym, to_code)
        print("  %-50s -> %s" % (sym[:50], new))
        if apply:
            syms = syms.replace(sym, new)
            _patch_headers(method, sym, new, to_type)
    if apply:
        open(SYMS, "w", encoding="latin-1", newline="\n").write(syms)
        print("APPLIED. NEXT: update the .cpp defs (void->%s + `return ...`), then "
              "`rm build/%s/config.json && ninja build/%s/config.json` + reconfigure + lift." % (to_type, VER, VER))
    else:
        print("(dry-run) re-run with --apply")

def self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(is_void_member("?ProcessSpellSeed@Spell@@UAEXXZ"), "void member detected")
    chk(not is_void_member("?GetLife@Object@@UAEMXZ"), "float-ret not flagged void")
    chk(rewrite_ret("?ProcessSpellSeed@Spell@@UAEXXZ", "I") == "?ProcessSpellSeed@Spell@@UAEIXZ", "X->I void-params")
    chk(rewrite_ret("?M@C@@UAEXH@Z", "I") == "?M@C@@UAEIH@Z", "X->I keeps params (int arg)")
    chk(rewrite_ret("?M@C@@QAEXPAVD@@@Z", "H") == "?M@C@@QAEHPAVD@@@Z", "X->H keeps ptr param")
    chk(rewrite_ret("?GetLife@Object@@UAEMXZ", "I") is None, "non-void ret -> no rewrite")
    chk(ret_code_after_ac("?Foo@Bar@@QAE_NXZ")[1] == "_N", "two-char ret code parsed")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(self_test())
    if "--scan" in a:
        i = a.index("--scan"); scan(a[i+1] if i+1 < len(a) and not a[i+1].startswith("-") else None); sys.exit()
    if "--method" in a:
        method = a[a.index("--method")+1]
        to = a[a.index("--to")+1] if "--to" in a else "bool32_t"
        cascade(method, to, apply="--apply" in a); sys.exit()
    print(__doc__)
