#!/usr/bin/env python3
r"""promote_fn.py - promote an un-decompiled `fn_XXXXXX` placeholder symbol into a CALLABLE C++ method
symbol, so functions that CALL it can be lifted byte-exact.

THE BLOCKER it solves: dtk gives un-decompiled functions placeholder symbols (`fn_007381C0`). A caller
that does `mov ecx,this; call fn_007381C0` (a direct this-call) can't be expressed in a C++ lift -- a
free-function asm() binding would force an extra `edx` setup (not byte-exact), and there's no C++ method
to call. The fix: rename the placeholder to a real method symbol `?Method@Class@@QAEXXZ` and declare the
method, so the caller compiles `this->Method()` -> clean `mov ecx,this; call ?Method@...` = byte-exact.
The callee itself stays an undecompiled stub; only its NAME changes (placeholder -> callable). When the
callee is later lifted, it emits under the same name. Renaming a placeholder is safe: no .cpp references
it yet (it's undecompiled), and it's not a vtable entry (those are named from the slot).

Usage:
  python tools/promote_fn.py --sym fn_007381C0 --class TotemStatue --method Sub7381C0   # dry-run
  python tools/promote_fn.py --addr 0x7381c0 --class TotemStatue --method Sub7381C0 --ret void --params "" --apply
  python tools/promote_fn.py ... --virtual          # public virtual (U) instead of public non-virtual (Q)
  python tools/promote_fn.py --self-test
"""
import os, re, sys

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
SYMS = os.path.join(DTK, "config", VER, "symbols.txt")

PRIM = {"void": "X", "bool": "_N", "char": "D", "signed char": "C", "unsigned char": "E",
        "short": "F", "unsigned short": "G", "int": "H", "unsigned int": "I", "long": "J",
        "unsigned long": "K", "__int64": "_J", "float": "M", "double": "N",
        "bool32_t": "I", "uint32_t": "I", "int32_t": "H", "uint": "I", "uint8_t": "E",
        "uint16_t": "G", "int16_t": "F"}

def mangle_type(t, cls=None):
    """C++ type -> MSVC type code (common cases; self-class -> V1@ back-ref)."""
    t = t.strip()
    ref = t.endswith("&");  t = t[:-1].strip() if ref else t
    ptr = t.endswith("*");  t = t[:-1].strip() if ptr else t
    const = t.startswith("const ");  t = t[6:].strip() if const else t
    t = re.sub(r'\b(struct|class|enum)\s+', '', t).strip()
    if t in PRIM and not ptr and not ref:
        return PRIM[t]
    base = ("1@" if t == cls else "%s@@" % t)              # self-class uses the V1@ name back-ref
    kindV = "V"                                            # default class; struct/enum callers can pass V/U/W in t
    if ptr:  return ("PB" if const else "PA") + kindV + base
    if ref:  return ("AB" if const else "AA") + kindV + base
    return kindV + base

def mangle_method(cls, method, ret="void", params=(), virtual=False):
    access = "U" if virtual else "Q"                       # public virtual / public non-virtual
    cc = "AE"                                              # near, non-const, thiscall
    r = mangle_type(ret, cls)
    ps = [p for p in params if p.strip() and p.strip() != "void"]
    tail = "XZ" if not ps else ("".join(mangle_type(p, cls) for p in ps) + "@Z")
    return "?%s@%s@@%s%s%s%s" % (method, cls, access, cc, r, tail)

def promote(sym=None, addr=None, cls=None, method=None, ret="void", params=(), virtual=False, apply=False):
    lines = open(SYMS, encoding="latin-1").read().split("\n")
    new_mangled = mangle_method(cls, method, ret, params, virtual)
    hit = None
    for i, ln in enumerate(lines):
        m = re.match(r'(\S+)\s*=\s*(\.text:0x([0-9a-fA-F]+);.*)$', ln)
        if not m:
            continue
        if (sym and m.group(1) == sym) or (addr is not None and int(m.group(3), 16) == addr):
            hit = (i, m.group(1), m.group(2)); break
    if not hit:
        print("NOT FOUND: %s" % (sym or hex(addr))); return None
    i, old, rest = hit
    lines[i] = "%s = %s" % (new_mangled, rest)
    pstr = ", ".join(params) if params else ""
    decl = "%s%s %s(%s);" % ("virtual " if virtual else "", ret, method, pstr)
    print("promote %s\n     -> %s\n  decl: %s%s" % (old, new_mangled, decl, "  (APPLIED)" if apply else "  (dry-run)"))
    if apply:
        open(SYMS, "w", encoding="latin-1", newline="\n").write("\n".join(lines))
        print("  NEXT: add the decl to %s.h, then `rm build/%s/config.json && ninja build/%s/config.json`"
              " && reconfigure, then lift the caller." % (cls, VER, VER))
    return new_mangled

def self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(mangle_method("TotemStatue", "Sub7381C0") == "?Sub7381C0@TotemStatue@@QAEXXZ", "void(void) nonvirtual")
    chk(mangle_method("Foo", "Bar", "int", ["float"]) == "?Bar@Foo@@QAEHM@Z", "int(float)")
    chk(mangle_method("C", "M", "void", ["C*"]) == "?M@C@@QAEXPAV1@@Z", "self-class ptr -> PAV1@")
    chk(mangle_method("C", "M", "bool32_t", [], virtual=True) == "?M@C@@UAEIXZ", "virtual bool32_t(void)")
    chk(mangle_type("const MapCoords&") == "ABVMapCoords@@", "const ref to type")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(self_test())
    def val(f, d=None):
        return a[a.index(f) + 1] if f in a else d
    if not (("--sym" in a or "--addr" in a) and "--class" in a and "--method" in a):
        print(__doc__); sys.exit()
    addr = val("--addr"); addr = int(addr, 16) if addr else None
    params = [p for p in (val("--params", "") or "").split(",") if p.strip()]
    promote(sym=val("--sym"), addr=addr, cls=val("--class"), method=val("--method"),
            ret=val("--ret", "void"), params=params, virtual="--virtual" in a, apply="--apply" in a)
