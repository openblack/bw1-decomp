#!/usr/bin/env python3
"""symbols.py - resolve a call target / address to its function, and answer class
hierarchy questions. The shared symbolizer the other tools were missing.

Every decompiled function is declared in `black/*.h` as a triple:

    // win1.41 0074c140 mac 10156370 Tree::SetOnFire(float)              <- address + demangled
    void __fastcall SetOnFire__4TreeFf(struct Tree* this, const void* edx,
        float param_1) asm("?SetOnFire@Tree@@UAEXM@Z");                  <- C-name + MSVC-mangled

So one place maps **address <-> C-name <-> MSVC-mangled <-> demangled signature <-> class**.
In the asm, a call target appears as the C-name (`@SetOnFire__4TreeFf@8`), the MSVC
name (`?SetOnFire@Tree@@UAEXM@Z`), or an unnamed `_jmp_addr_0xADDR`; `resolve()`
turns any of those into the function record (or None for unnamed/library targets).

`class A: public B` lines give the hierarchy, so `is_base(child, ancestor)` can
validate that a `Derived::M()` thunk forwarding to `Base::M()` is a legal upcast.

Usage (hex addresses are case-insensitive: 0x74c140 == 0x74C140):
  python3 tools/symbols.py 0x74c140                  # by address
  python3 tools/symbols.py "?SetOnFire@Tree@@UAEXM@Z"# by mangled name
  python3 tools/symbols.py SetOnFire__4TreeFf        # by C-name
  python3 tools/symbols.py --resolve '@RemoveMapObjectFromCell__6ObjectFP7MapCell@12'
  python3 tools/symbols.py --base MobileObject Object# is Object a base of MobileObject?
  python3 tools/symbols.py --self-test

Library:
  from symbols import Symbols
  S = Symbols()
  r = S.resolve('@RemoveMapObjectFromCell__6ObjectFP7MapCell@12')
  r.cls, r.method, r.ret, r.params   # 'Object','RemoveMapObjectFromCell','void',['MapCell* cell']
  S.is_base('MobileObject','Object') # True

Known limitation:
  The `DECL` regex matches a function declaration that lives on a SINGLE source
  line. A decl whose parameter list wraps across multiple lines (as the example
  above is formatted) is not indexed. In practice nearly all `black/*.h` decls
  are emitted on one line, so coverage is effectively complete; a wrapped decl
  is silently skipped rather than misparsed.
"""
import re, glob, os, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import corpus
ROOT = corpus.repo_root("black/*.h")

class Func:
    """One resolved function record, holding every way the function is named.

    Fields:
      addr      win1.41 virtual address (int) or None for a label-less / unaddressed decl
      cname     the GCC2-style C name used in the asm (e.g. 'SetOnFire__4TreeFf')
      mangled   the MSVC mangled name from the asm("...") attribute (e.g. '?SetOnFire@Tree@@UAEXM@Z')
      demangled the human-readable signature from the // win1.41 comment, or None
      ret       return type as written in the C decl (e.g. 'void')
      params    real parameters (the implicit `this` and `edx` placeholder stripped)
      cls       owning class name (best-effort from demangled, then cname, then mangled; '?' if unknown)
      method    method name (falls back to cname if no class/method could be derived)
    """
    __slots__ = ("addr","cname","mangled","demangled","ret","params","cls","method")
    def __init__(self, addr, cname, mangled, demangled, ret, params, cls, method):
        self.addr, self.cname, self.mangled, self.demangled = addr, cname, mangled, demangled
        self.ret, self.params, self.cls, self.method = ret, params, cls, method
    def __repr__(self):
        return (f"{self.ret} {self.cls}::{self.method}({', '.join(self.params)})"
                f"  @{self.addr or '?'}  [{self.mangled or self.cname}]")

class Symbols:
    # A single-line C function decl ending in `asm("<mangled>");`. Groups:
    #   ret    - return type, lazily matched up to the first whitespace before the name
    #            (may contain ::, <>, *, &) -- e.g. 'void', 'struct Tree*'
    #   (the `(?:__\w+\s+)?` after ret is the OPTIONAL calling convention __fastcall/__cdecl/...)
    #   cname  - the GCC2 C identifier (leading char may be a letter/_/ '~' for destructors)
    #   params - everything between the parens (no ; { } so we never spill past the decl)
    #   mangled- the MSVC name inside asm("...")
    DECL = re.compile(
        r'^(?P<ret>[\w:<>\*&\s]+?)\s+(?:__\w+\s+)?'
        r'(?P<cname>[A-Za-z_~]\w*)\s*\((?P<params>[^;{}]*)\)\s*'
        r'asm\("(?P<mangled>[^"]+)"\)\s*;')
    # The `// win1.41 <hexaddr> mac <hexaddr> <demangled signature>` annotation that
    # precedes a decl. Group 1 = win1.41 hex address; group 2 = demangled signature.
    # Hex is lowercase in the headers; re.I added for robustness against upper-case digits.
    COMMENT = re.compile(r'^//\s*win1\.41\s+([0-9a-f]+)\s+mac\s+\w+\s+(.+?)\s*$', re.I)
    # `class X : public Y` / `struct X : public Y` -> (child=X, parent=Y) for the hierarchy.
    HIER = re.compile(r'^\s*(?:class|struct)\s+(\w+)\s*:\s*public\s+(\w+)')

    def __init__(self, root=ROOT):
        """Scan every `black/*.h` header and build the symbol indexes.

        Populates `by_cname`, `by_mangled` and `by_addr` (the three ways a call
        target can be written) plus `parents` (class -> direct base for the
        hierarchy). A `// win1.41 ...` comment is remembered in `prev` and paired
        with the *next* decl it precedes.
        """
        self.by_cname, self.by_mangled, self.by_addr = {}, {}, {}
        self.parents = {}
        self.nfiles = 0
        for f in glob.glob(os.path.join(root, "black", "*.h")):
            self.nfiles += 1
            # latin-1: lossless byte passthrough so any stray non-UTF-8 byte in a
            # header never raises; we only ever match ASCII tokens anyway.
            with open(f, encoding="latin-1") as fh:
                lines = fh.read().splitlines()
            prev = None                       # most recent win1.41 comment (addr, demangled)
            for ln in lines:
                h = self.HIER.match(ln)
                if h: self.parents[h.group(1)] = h.group(2)
                c = self.COMMENT.match(ln)
                if c: prev = (c.group(1), c.group(2)); continue
                m = self.DECL.match(ln)
                if m:
                    self._add(m, prev)
                    prev = None
                # Other non-blank, non-comment lines deliberately leave `prev`
                # UNTOUCHED: a wrapped multi-line decl's continuation lines fall
                # here, and `prev` must survive so the eventual (DECL-matching) line
                # still pairs with its preceding // win1.41 comment. We do not clear
                # `prev` on stray lines because the decl is what consumes it.
        # Hierarchy comes from the `class X : public Y` lines above (C++ headers);
        # the C-section structs (struct X { struct Y super; }) duplicate the same
        # edges and are intentionally not re-parsed here.

    def _add(self, m, prev):
        """Build a Func from a matched DECL (`m`) + its preceding comment (`prev`)
        and register it in all three indexes (by_cname/by_mangled/by_addr).

        Class & method are derived by a fallback chain: prefer the demangled
        `Class::Method(...)` signature; else decode the GCC2 cname; else the
        MSVC `?Method@Class@@` mangling. `cls`/`method` default to '?'/cname.
        """
        ret = m.group("ret").strip()
        cname = m.group("cname")
        mangled = m.group("mangled")
        addr, demangled = (prev or (None, None))
        # Real params drop the implicit `this` and the `edx` placeholder that the
        # __fastcall convention inserts in these decls.
        raw = [p.strip() for p in m.group("params").split(",") if p.strip()]
        params = [p for p in raw if p not in ("const void* edx",)
                  and not re.match(r'struct \w+\*\s*this$', p) and p != "void* this"]
        # class/method: prefer demangled "Class::Method(...)"; else derive from cname
        cls = method = None
        if demangled:
            # Two alternatives because the demangled signature may or may not start
            # with a return type: the first form skips an optional `<ret-type> `
            # prefix (lazy, may contain :: <> * & ~ space), the second matches a
            # signature that begins directly at `Class::Method(`. Group 1 = class,
            # group 2 = method (a leading ~ marks a destructor).
            dm = re.match(r'(?:[\w:<>\*&~ ]+?\s+)?([\w<>]+)::(~?[\w<>]+)\s*\(', demangled) \
                 or re.match(r'([\w<>]+)::(~?[\w<>]+)\s*\(', demangled)
            if dm: cls, method = dm.group(1), dm.group(2)
        if cls is None:
            cm = self._from_cname(cname)
            if cm: method, cls = cm
        if cls is None:  # last resort: parse the MSVC mangling ?Method@Class@@...
            mm = re.match(r'\?(~?[\w]+)@([\w]+)@@', mangled)
            if mm: method, cls = mm.group(1), mm.group(2)
        fn = Func(addr, cname, mangled, demangled, ret, params, cls or "?", method or cname)
        self.by_cname[cname] = fn
        self.by_mangled[mangled] = fn
        if addr: self.by_addr[int(addr, 16)] = fn

    @staticmethod
    def _from_cname(cname):
        """GCC2 name: Method__<len><Class>...  -> (method, class). None if not parseable.

        The class name is length-prefixed: after the `__` comes a decimal count
        `n` followed by exactly `n` characters of class name (e.g. `...__4Tree`
        -> n=4 -> 'Tree'). We slice off those n chars and only accept when the
        slice really is n long (a shorter slice means the cname didn't follow the
        length-prefixed form, so we bail out).
        """
        if "__" not in cname: return None
        method, _, rest = cname.partition("__")
        m = re.match(r'(\d+)', rest)        # leading decimal = class-name length
        if not m: return None
        n = int(m.group(1)); name = rest[m.end():m.end()+n]   # the n chars after the digits
        # An empty method slot means an operator overload (encoded as `__op...`).
        return (method or "operator", name) if len(name) == n else None

    # ---- resolution ----
    def resolve(self, operand):
        """A call operand (asm) -> Func or None. Handles @cname@N, ?mangled,
        bare cname, and _jmp_addr_0xADDR (resolved by address)."""
        o = operand.strip()
        # Label-less function: `_jmp_addr_0x<hex>` -> resolve by address.
        # re.I so an upper-case hex digit (0x..ABCDEF) still matches.
        mj = re.match(r'_jmp_addr_0x([0-9a-fA-F]+)$', o)
        if mj: return self.by_addr.get(int(mj.group(1), 16))
        if o.startswith("?"): return self.by_mangled.get(o)
        o = o.lstrip("@")                      # drop the leading @ of an @cname@N operand
        o = re.sub(r'@\d+$', '', o)            # strip the trailing stdcall byte-count suffix (@N)
        return self.by_cname.get(o)

    # ---- hierarchy ----
    def ancestors(self, cls):
        """Return `cls`'s base classes nearest-first (direct parent, grandparent, ...).

        Walks the single-inheritance `parents` chain. The `not in seen` guard
        stops a malformed cyclic chain from looping forever.
        """
        seen = []
        while cls in self.parents and self.parents[cls] not in seen:
            cls = self.parents[cls]; seen.append(cls)
        return seen
    def is_base(self, child, ancestor):
        """True if `ancestor` is `child` itself or any of its base classes.

        Used to validate that a `Derived::M()` -> `Base::M()` thunk is a legal upcast.
        """
        return ancestor == child or ancestor in self.ancestors(child)

def _self_test(S):
    """Run a few known-answer resolution + hierarchy checks against the live index.

    Prints PASS/FAIL per check and returns 0 if all pass, 1 otherwise (exit code).
    """
    ok = True
    def chk(cond, msg):
        nonlocal ok; ok &= bool(cond)
        print(f"  {'PASS' if cond else 'FAIL'}  {msg}")
    f = S.resolve('@RemoveMapObjectFromCell__6ObjectFP7MapCell@12')
    chk(f and f.cls == "Object" and f.method == "RemoveMapObjectFromCell",
        f"resolve @cname -> Object::RemoveMapObjectFromCell  (got {f})")
    g = S.resolve('?SetOnFire@Tree@@UAEXM@Z')
    chk(g and g.cls == "Tree" and g.method == "SetOnFire" and g.ret == "void",
        f"resolve ?mangled -> Tree::SetOnFire (void)  (got {g})")
    chk(S.by_addr.get(0x74c140) and S.by_addr[0x74c140].method == "SetOnFire",
        "resolve by address 0x74c140 -> SetOnFire")
    chk(S.is_base("MobileObject", "Object"), "MobileObject IS-A Object (via Mobile)")
    chk(not S.is_base("Object", "MobileObject"), "Object is NOT-A MobileObject")
    chk(S.resolve('_jmp_addr_0x00639a40') is None, "unnamed _jmp_addr -> None (correctly unresolved)")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    S = Symbols()
    if "--self-test" in a: sys.exit(_self_test(S))
    if not a:
        print(f"[symbols] {len(S.by_cname)} funcs, "
              f"{len(S.parents)} class edges, {S.nfiles} headers\n"); print(__doc__); sys.exit()
    if "--base" in a:
        i = a.index("--base")
        # --base needs two following operands: <child> <ancestor>.
        if i + 2 >= len(a):
            sys.exit("usage: symbols.py --base <child> <ancestor>")
        child, anc = a[i+1], a[i+2]
        print(f"{anc} is {'' if S.is_base(child, anc) else 'NOT '}a base of {child}")
        print(f"  {child} ancestors: {' -> '.join(S.ancestors(child)) or '(none)'}")
        sys.exit()
    if "--resolve" in a:
        i = a.index("--resolve")
        # --resolve needs one following operand (the call target to look up).
        if i + 1 >= len(a):
            sys.exit("usage: symbols.py --resolve <operand>")
        fn = S.resolve(a[i+1]); print(fn or "(unresolved)"); sys.exit()
    q = a[0]
    # A bare positional that looks like a hex address -> by-address lookup.
    # re.I accepts both 0x74c140 and 0x74C140; anything else falls through to
    # mangled / cname / general resolve().
    fn = (S.by_addr.get(int(q, 16)) if re.fullmatch(r'0x[0-9a-f]+', q, re.I)
          else S.by_mangled.get(q) or S.by_cname.get(q) or S.resolve(q))
    print(fn or "(not found)")
