#!/usr/bin/env python3
"""vtable_drift.py - detect C++ `class` virtual-declaration DRIFT vs the
authoritative `struct <Class>Vftable` layout.

THE PROBLEM
-----------
For each polymorphic class the headers carry TWO descriptions of the same vtable:

  1. The C++ `class <C>: public <Base> { ... virtual ... };` declarations. MSVC
     lays these out base-first, an override replacing its base slot IN PLACE, a
     new virtual appended after the last inherited slot. THIS is what the C/C++
     compiler actually emits, so a `obj->Method()` vcall resolves to the slot
     index MSVC computes from these declarations.

  2. The C `struct <C>Vftable { struct <Base>Vftable super; <fn-ptr>...; };`
     definition. Each member is one 4-byte slot; the members carry hand-verified
     `/* 0xNN */` offset comments and the struct ends with
     `static_assert(sizeof(struct <C>Vftable)==0xNNN)`. This is GROUND TRUTH -
     it was reconstructed directly from the binary's `??_7<C>@@6B@` array.

When (1) declares FEWER virtuals than (2) lists members (or in a different
order), the two diverge: a vcall through a method past the divergence point
compiles to the WRONG byte offset, so any function that makes such a vcall can
never reach byte-exact. Example (verified): `Living::IsChild` is at slot 0xaf8
in `struct LivingVftable`, but `living->IsChild()` compiled to 0xaa8 because the
`class` chain (Object/GameThingWithPos/Mobile/...) declared ~20 fewer virtuals
than the struct before that point.

WHAT THIS TOOL DOES
-------------------
For a class it:
  * builds the AUTHORITATIVE flat slot list by flattening the `struct
    <C>Vftable` super-chain (base-first; each fn-ptr member = one slot; offset =
    index*4, cross-checked against every `/* 0xNN */` comment and the
    `static_assert` size) -- this is the self-check (must reproduce the asserted
    size and every offset comment),
  * builds the COMPUTED flat slot list MSVC would emit from the C++ `class`
    super-chain virtual declarations (base-first, overrides replace in place),
  * aligns them and reports the FIRST drifting slot, which base class in the
    chain introduces the drift, and the exact missing / extra / mis-ordered
    virtuals there (the fix recipe).

Usage:
  python3 tools/vtable_drift.py <Class>           # full drift report for a class
  python3 tools/vtable_drift.py <Class> --verbose # also list aligned slots
  python3 tools/vtable_drift.py --check <Class>   # just the self-check (struct layout vs asserts/comments)
  python3 tools/vtable_drift.py --all             # scan every class with a Vftable struct, summarise drift
  python3 tools/vtable_drift.py --self-test

Sources, in priority: the `struct <C>Vftable` definitions in include/black/*.h
(authoritative, offset-commented + static_assert'd). dtk has no
`src/asm/unprocessed/*vftables*.asm`; the binary arrays live in
bw1-decomp/src/asm/unprocessed/rdata.*-vftables.asm and are used by --xcheck for
an independent cross-validation when reachable.
"""
import os, re, sys, glob, functools

ROOT  = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
# The build #includes include/black/*.h (git-ignored copy). Fall back to black/.
BLACK = os.path.join(ROOT, "include", "black")
if not os.path.isdir(BLACK):
    BLACK = os.path.join(ROOT, "black")

@functools.lru_cache(maxsize=1)
def _blob():
    """Concatenation of every header (for struct/class lookups)."""
    return "\n".join(open(f, encoding="latin-1").read() for f in glob.glob(os.path.join(BLACK, "*.h")))

# ---------------------------------------------------------------------------
# AUTHORITATIVE side: the `struct <C>Vftable` definitions.
# ---------------------------------------------------------------------------
_FP    = re.compile(r'\(\s*__fastcall\s*\*\s*(\w+)\s*\)')     # (__fastcall* Name)
_SUPER = re.compile(r'struct\s+(\w+)Vftable\s+super\s*;')
_OFFC  = re.compile(r'/\*\s*0x([0-9a-fA-F]+)\s*\*/')
_ASSERT= re.compile(r'static_assert\(\s*sizeof\(struct\s+(\w+)Vftable\)\s*==\s*0x([0-9a-fA-F]+)')

@functools.lru_cache(maxsize=1)
def _assert_sizes():
    """{class -> asserted sizeof(struct <class>Vftable)} from every static_assert."""
    return {m.group(1): int(m.group(2), 16) for m in _ASSERT.finditer(_blob())}

def _vftable_body(cls):
    m = re.search(r'struct\s+%sVftable\s*\{(.*?)\n\};' % re.escape(cls), _blob(), re.S)
    return m.group(1) if m else None

@functools.lru_cache(maxsize=None)
def struct_own_slots(cls):
    """Own (non-inherited) slots of `struct <cls>Vftable` as a list of
    (name, offset_comment_or_None), in declaration order. Returns (super, slots)
    where `super` is the parent class name (or None)."""
    body = _vftable_body(cls)
    if body is None:
        return None, None
    sup = None; slots = []
    for ln in body.splitlines():
        sm = _SUPER.search(ln)
        if sm and sup is None and not _FP.search(ln):
            sup = sm.group(1); continue
        fpm = _FP.search(ln)
        if not fpm:
            continue
        oc = _OFFC.search(ln)
        slots.append((fpm.group(1), int(oc.group(1), 16) if oc else None))
    return sup, slots

@functools.lru_cache(maxsize=None)
def struct_vtable(cls):
    """AUTHORITATIVE flat slot list for <cls>: [(offset, name, source_class)],
    built base-first from the `struct <C>Vftable` super-chain. Each fn-ptr member
    occupies one 4-byte slot; offset = index*4."""
    sup, own = struct_own_slots(cls)
    if own is None:
        return []
    flat = struct_vtable(sup) if sup else []
    base = (flat[-1][0] + 4) if flat else 0x0
    out = list(flat)
    for i, (name, _off) in enumerate(own):
        out.append((base + i * 4, name, cls))
    return out

def struct_self_check(cls):
    """Validate the authoritative layout against its own `/* 0xNN */` comments
    and `static_assert` size. Returns (ok, [problems])."""
    problems = []
    # Walk the whole chain, checking each class's own offset comments + asserts.
    chain = []
    c = cls
    while c:
        sup, own = struct_own_slots(c)
        if own is None:
            problems.append(f"no struct {c}Vftable found")
            break
        chain.append(c); c = sup
    flat = struct_vtable(cls)
    by_name = {n: o for (o, n, _s) in flat}
    # offset comments
    for c in chain:
        _sup, own = struct_own_slots(c)
        for name, off in own or []:
            if off is not None and by_name.get(name) != off:
                problems.append(f"{c}::{name} computed 0x{by_name.get(name):x} != comment 0x{off:x}"
                                if name in by_name else f"{c}::{name} missing in flat layout")
    # static_assert sizes (size = last slot offset + 4)
    sizes = _assert_sizes()
    for c in chain:
        sub = [o for (o, n, s) in struct_vtable(c)]
        if sub:
            computed = max(sub) + 4
            if c in sizes and computed != sizes[c]:
                problems.append(f"struct {c}Vftable computed size 0x{computed:x} != assert 0x{sizes[c]:x}")
    return (not problems), problems

# ---------------------------------------------------------------------------
# COMPUTED side: the C++ `class` virtual declarations (what MSVC emits).
# ---------------------------------------------------------------------------
def _find_class_def(cls):
    """Return the source text of the file that DEFINES `class <cls>` (has a body),
    or None."""
    pat = re.compile(r'\bclass\s+%s\s*(?::\s*public\s+\w+\s*)?\{' % re.escape(cls))
    for f in glob.glob(os.path.join(BLACK, "*.h")):
        t = open(f, encoding="latin-1").read()
        # tolerate newline between the inheritance clause and the brace
        t2 = re.sub(r'\bclass\s+%s\s*:\s*public\s+(\w+)\s*\n\s*\{' % re.escape(cls),
                    r'class %s : public \1 {' % cls, t)
        if re.search(r'\bclass\s+%s\b\s*(?::\s*public\s+\w+)?\s*\{' % re.escape(cls), t2):
            return t2
    return None

def _class_base(cls, txt):
    m = re.search(r'\bclass\s+%s\s*:\s*public\s+(\w+)' % re.escape(cls), txt)
    return m.group(1) if m else None

def _class_body(cls, txt):
    """Brace-balanced body of `class <cls> ... { ... }`."""
    m = re.search(r'\bclass\s+%s\b[^{]*\{' % re.escape(cls), txt)
    if not m:
        return None
    i = m.end(); depth = 1; start = i
    while i < len(txt) and depth:
        ch = txt[i]
        if ch == '{': depth += 1
        elif ch == '}': depth -= 1
        i += 1
    return txt[start:i - 1]

# a virtual declaration: `virtual <ret> Name(args);`. ~Dtor handled specially.
_VDTOR = re.compile(r'virtual\s+~(\w+)\s*\(')
_VFUNC = re.compile(r'virtual\b[^;{]*?[\s\*&](~?\w+)\s*\(([^;{]*)\)')

def _argsig(arglist):
    """A coarse signature key from a parameter list: parameter count + each
    param's base type token, ignoring names/qualifiers. Enough to tell
    overloaded virtuals apart (e.g. IsCreature(Creature*) vs IsCreature()),
    which MSVC gives DISTINCT vtable slots. Overrides keep the SAME signature as
    the base slot, so this also correctly identifies override-vs-new."""
    arglist = arglist.strip()
    if not arglist or arglist == "void":
        return "()"
    parts = []
    for p in arglist.split(','):
        toks = re.findall(r'\w+|[*&]', p)
        # drop the parameter name (last bare identifier if it isn't a type kw)
        if toks and re.match(r'[A-Za-z_]\w*$', toks[-1]) and toks[-1] not in (
                'int', 'char', 'float', 'void', 'bool', 'short', 'long', 'unsigned'):
            toks = toks[:-1]
        # keep type words + pointer/ref markers; collapse 'const'
        toks = [t for t in toks if t != 'const']
        parts.append("".join(toks))
    return "(" + ",".join(parts) + ")"

@functools.lru_cache(maxsize=None)
def class_own_virtuals(cls):
    """Own virtuals of `class <cls>` in declaration order. Returns
    (base, [(name, sig, offset_comment_or_None)]) or (None, None) if no class def.
    A destructor is normalised to '~dtor'. `sig` is a coarse arg-signature key
    (so overloaded virtuals are distinguished, matching MSVC's distinct slots).
    The offset comment is the `/* 0xNN */` on the same line - the binary-verified
    slot, used to cross-check the computed slot independent of any naming diff."""
    txt = _find_class_def(cls)
    if txt is None:
        return None, None
    base = _class_base(cls, txt)
    body = _class_body(cls, txt)
    if body is None:
        return base, []
    out = []
    depth = 0
    for ln in body.splitlines():
        if depth == 0:
            dm = _VDTOR.search(ln)
            fm = None if dm else _VFUNC.search(ln)
            if dm or fm:
                oc = _OFFC.search(ln)
                off = int(oc.group(1), 16) if oc else None
                if dm:
                    out.append(("~dtor", "()", off))
                else:
                    out.append((fm.group(1), _argsig(fm.group(2)), off))
        depth += ln.count('{') - ln.count('}')
    return base, out

@functools.lru_cache(maxsize=None)
def computed_vtable(cls):
    """MSVC-emitted flat slot list for <cls>: [(offset, name, source_class)].
    Base-first; an override (same name as an inherited slot) REPLACES that slot
    in place; a new virtual is appended."""
    base, own = class_own_virtuals(cls)
    if own is None:
        return []
    flat = list(computed_vtable(base)) if base else []
    # An override matches a base slot by (name, arg-signature) - overloaded
    # virtuals (same name, different args) are DISTINCT slots, like MSVC.
    index = {(n, sg): i for i, (_o, n, _s, sg) in enumerate(flat)}
    for name, sig, _off in own:
        key = ("~dtor", "()") if name == "~dtor" else (name, sig)
        if key in index:                       # override -> replace in place
            o, _n, _s, _sg = flat[index[key]]
            flat[index[key]] = (o, name, cls, sig)
        else:                                  # new virtual -> append
            o = (flat[-1][0] + 4) if flat else 0x0
            flat.append((o, name, cls, sig))
            index[key] = len(flat) - 1
    return flat

def comment_drift(cls):
    """PRIMARY, naming-independent drift signal: for every C++ virtual in the
    chain that carries a binary-verified `/* 0xNN */` comment, compare the slot
    MSVC actually computes for it against that comment. Returns a list of
    (source_class, name, computed_off, comment_off) for every mismatch, in slot
    order. An empty list means the C++ chain lays out exactly where the binary
    says (no drift at any commented slot)."""
    comp = computed_vtable(cls)
    pos = {}
    for o, n, _s, sg in comp:
        pos.setdefault((n, sg), o)   # overrides keep base name+sig+slot
    out = []
    for c in chain_of(cls):
        base, own = class_own_virtuals(c)
        if own is None:
            continue
        for name, sig, off in own:
            if off is None:
                continue
            comp_off = pos.get((name, sig))
            if comp_off is not None and comp_off != off:
                out.append((c, name, comp_off, off))
    out.sort(key=lambda r: r[3])
    return out

# ---------------------------------------------------------------------------
# DRIFT comparison.
# ---------------------------------------------------------------------------
def chain_of(cls):
    """Inheritance chain base-first via the C++ class defs (or struct supers)."""
    out = []
    c = cls
    while c:
        base, _own = class_own_virtuals(c)
        if base is None and not out:
            # no class def; fall back to struct super chain
            sup, _ = struct_own_slots(c)
            out.append(c); c = sup; continue
        out.append(c); c = base
    return out[::-1]

def xcheck_real(cls):
    """Independent cross-validation: compare the AUTHORITATIVE struct layout
    against the binary's REAL vtable array (`??_7<cls>@@6B@` in
    *vftables*.asm), resolved via the sibling vtable.py. dtk has no such asm, so
    this only does anything in bw1-decomp (or if vtable.py reaches them). Returns
    (available, [mismatches]) where each mismatch is (offset, struct_name,
    real_method)."""
    try:
        import vtable as _vt
    except Exception:
        return False, []
    real = _vt.real_vtable(cls)
    if not real:
        return False, []
    out = []
    auth = {o: n for (o, n, _s) in struct_vtable(cls)}
    for off in sorted(set(auth) | set(real)):
        sn = auth.get(off)
        rsym = real.get(off)
        rname = None
        if rsym:
            f = _vt._S.resolve(rsym) if hasattr(_vt, "_S") else None
            rname = f.method if f else rsym
        if sn is None or rname is None:
            continue
        # compare base names (struct uses _N overload suffixes; real uses Class::Method)
        if _basename(sn) != rname:
            out.append((off, sn, rname))
    return True, out

def drift_report(cls):
    """Compare COMPUTED (class virtuals) vs AUTHORITATIVE (struct Vftable).
    Returns a dict with first_drift slot, the responsible class, and details."""
    auth = struct_vtable(cls)
    comp = computed_vtable(cls)
    rep = {"class": cls, "auth_slots": len(auth), "comp_slots": len(comp),
           "first_drift": None, "drift_class": None, "details": [], "ok": True}
    n = min(len(auth), len(comp))
    for i in range(n):
        ao, an, asrc = auth[i]
        co, cn, csrc = comp[i][0], comp[i][1], comp[i][2]
        if an != cn:
            rep["ok"] = False
            rep["first_drift"] = ao
            rep["drift_class"] = asrc
            rep["details"].append(
                f"slot 0x{ao:x}: AUTHORITATIVE has {asrc}::{an}, "
                f"but class chain put {csrc}::{cn} here")
            break
    else:
        if len(auth) != len(comp):
            rep["ok"] = False
            rep["details"].append(
                f"length mismatch: authoritative {len(auth)} slots vs computed "
                f"{len(comp)} (the chain declares fewer/more virtuals overall)")
            rep["first_drift"] = (min(len(auth), len(comp))) * 4
            rep["drift_class"] = (auth[len(comp)][2] if len(comp) < len(auth) else cls)
    return rep, auth, comp

def _basename(n):
    """Strip the struct's `_<N>` overload-disambiguation suffix (IsCreature_0 ->
    IsCreature) so struct names compare against the un-suffixed C++ class names."""
    return re.sub(r'_\d+$', '', n)

def localize(cls):
    """Find, per class in the chain, the NEW (own) virtuals the struct Vftable
    declares that the C++ class is missing - that is the fix recipe. The struct's
    "own" members are exactly the NEW slots that class introduces (overrides of
    inherited slots are NOT in the struct's own list). The C++ class is correct
    iff, for each base method-name, it declares as many NEW virtuals of that name
    as the struct has own slots. Overrides (matching an inherited (name,sig)) are
    excluded so they don't masquerade as new. Returns [(class, {missing,...})]."""
    findings = []
    for c in chain_of(cls):
        _sup, own_struct = struct_own_slots(c)
        base, own_class = class_own_virtuals(c)
        if own_struct is None:
            continue
        struct_new = ["~dtor" if n == "__dt" else _basename(n) for (n, _o) in own_struct]
        # which class virtuals are NEW here (not overrides of an inherited slot)?
        inherited = {(n, sg) for (_o, n, _s, sg) in (computed_vtable(base) if base else [])}
        class_new = [n for (n, sg, _o) in (own_class or []) if (n, sg) not in inherited]
        # multiset compare by base-name
        from collections import Counter
        sc, cc = Counter(struct_new), Counter(class_new)
        missing = []
        for name, cnt in sc.items():
            short = cnt - cc.get(name, 0)
            missing += [name] * max(0, short)
        if missing:
            findings.append((c, {
                "struct_own": len(struct_new), "class_own_new": len(class_new),
                "missing_virtuals": missing,
            }))
    return findings

# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------
def _print_drift(cls, verbose=False):
    ok, probs = struct_self_check(cls)
    print(f"=== {cls}: authoritative struct self-check ===")
    if ok:
        sz = _assert_sizes().get(cls)
        print(f"  PASS - flat layout reproduces all /* 0xNN */ comments"
              + (f" and static_assert size 0x{sz:x}" if sz else ""))
    else:
        for p in probs:
            print("  FAIL", p)
    rep, auth, comp = drift_report(cls)
    print(f"\n=== {cls}: drift (computed class-chain vs authoritative struct) ===")
    print(f"  authoritative slots: {rep['auth_slots']}   computed slots: {rep['comp_slots']}")
    # PRIMARY signal: commented virtuals whose MSVC-computed slot != binary comment.
    cd = comment_drift(cls)
    if not cd:
        print("  NO DRIFT at any binary-commented slot - the C++ chain lays out where the binary says.")
    else:
        c0 = cd[0]
        print(f"  FIRST DRIFT: {c0[0]}::{c0[1]} compiles to slot 0x{c0[2]:x} "
              f"but the binary puts it at 0x{c0[3]:x} (off by 0x{c0[3]-c0[2]:x} = "
              f"{(c0[3]-c0[2])//4} slots)")
        print(f"  {len(cd)} commented virtual(s) land on the wrong slot; "
              f"earliest-drifting class: {min(cd, key=lambda r: r[3])[0]}")
        print("\n  --- localized fix recipe: NEW virtuals each class is MISSING (add in struct order) ---")
        for c, info in localize(cls):
            print(f"  [{c}] struct introduces {info['struct_own']} NEW virtuals, "
                  f"class introduces {info['class_own_new']}; MISSING {len(info['missing_virtuals'])}:")
            print(f"      {', '.join(info['missing_virtuals'])}")
    if verbose:
        print("\n  --- aligned slots (A=authoritative C=computed) ---")
        n = max(len(auth), len(comp))
        for i in range(n):
            a = auth[i] if i < len(auth) else None
            c = comp[i] if i < len(comp) else None
            mark = "" if (a and c and a[1] == c[1]) else "  <<<"
            ao = ("0x%x %s::%s" % (a[0], a[2], a[1])) if a else "-"
            co = ("%s::%s" % (c[2], c[1])) if c else "-"  # c is (off,name,src,sig)
            print(f"    A:{ao:50s} C:{co}{mark}")

def _self_test():
    ok = True
    def chk(c, m):
        nonlocal ok; ok &= bool(c); print(f"  {'PASS' if c else 'FAIL'}  {m}")
    # 1. authoritative struct self-check for the whole Living chain must pass
    sc, probs = struct_self_check("Living")
    chk(sc, f"Living struct self-check passes ({probs[:1]})")
    # 2. IsChild is authoritatively at 0xaf8
    flat = {n: o for (o, n, _s) in struct_vtable("Living")}
    chk(flat.get("IsChild") == 0xaf8, f"authoritative Living::IsChild @ 0x{flat.get('IsChild',0):x} (want 0xaf8)")
    chk(flat.get("IsDead") == 0xaf4, f"authoritative Living::IsDead @ 0x{flat.get('IsDead',0):x} (want 0xaf4)")
    chk(flat.get("MoveByTeleport") == 0xaf0, f"authoritative MoveByTeleport @ 0x{flat.get('MoveByTeleport',0):x}")
    # 3. struct size reproduces the assert (0xb40 -> last slot 0xb3c)
    sz = max(o for (o, n, s) in struct_vtable("Living")) + 4
    chk(sz == 0xb40, f"Living vtable computed size 0x{sz:x} (assert 0xb40)")
    # 4. RATCHET: the Object->...->Living chain DRIFT IS FIXED (2026-06-09). The C++
    #    class declarations must now lay out EXACTLY where the binary says, at EVERY
    #    binary-commented slot, for the whole chain. comment_drift == [] is the
    #    naming-independent proof; computed Living::IsChild MUST be 0xaf8.
    comp = {n: o for (o, n, _s, _sg) in computed_vtable("Living")}
    chk(comp.get("IsChild") == 0xaf8,
        f"computed Living::IsChild @ 0x{comp.get('IsChild', -1):x} == 0xaf8 (chain FIXED)")
    chk(comp.get("IsDead") == 0xaf4,
        f"computed Living::IsDead @ 0x{comp.get('IsDead', -1):x} == 0xaf4 (chain FIXED)")
    for cls, want_slots in (("Object", 535), ("Mobile", 535),
                            ("MobileWallHug", 541), ("Living", 720)):
        cd = comment_drift(cls)
        chk(len(cd) == 0, f"{cls}: ZERO commented-slot drift (chain FIXED){'' if not cd else ' -> '+str(cd[:2])}")
        chk(len(computed_vtable(cls)) == want_slots,
            f"{cls}: computed slot count {len(computed_vtable(cls))} == authoritative {want_slots}")
    # 5. BaseVftable trivially self-consistent
    bflat = struct_vtable("Base")
    chk(bflat and bflat[0][1] == "Serialise" and bflat[0][0] == 0x0, "Base slot0 = Serialise @ 0x0")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def main():
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if "--check" in a:
        i = a.index("--check")
        cls = a[i + 1] if i + 1 < len(a) else None
        if not cls: sys.exit("usage: --check <Class>")
        ok, probs = struct_self_check(cls)
        print(f"{cls}: struct self-check", "PASS" if ok else "FAIL")
        for p in probs: print("  ", p)
        sys.exit(0 if ok else 1)
    if "--xcheck" in a:
        i = a.index("--xcheck")
        cls = a[i + 1] if i + 1 < len(a) else None
        if not cls: sys.exit("usage: --xcheck <Class>")
        avail, mm = xcheck_real(cls)
        if not avail:
            print(f"{cls}: no REAL vtable array reachable (dtk has none; run in bw1-decomp).")
            return
        if not mm:
            print(f"{cls}: AUTHORITATIVE struct layout MATCHES the binary ??_7{cls}@@6B@ array.")
        else:
            print(f"{cls}: {len(mm)} struct-vs-binary mismatch(es):")
            for off, sn, rn in mm:
                print(f"  0x{off:x}: struct {sn} vs binary {rn}")
        return
    if "--all" in a:
        # Use the naming-independent comment_drift signal (a commented virtual
        # whose MSVC-computed slot != its binary /* 0xNN */). This is robust to
        # the __dt/~dtor naming difference that the bare flat-name compare trips on.
        drifted = 0; total = 0; seen = set()
        for m in _ASSERT.finditer(_blob()):
            cls = m.group(1)
            if cls in seen or class_own_virtuals(cls)[1] is None:
                continue
            seen.add(cls); total += 1
            cd = comment_drift(cls)
            if cd:
                drifted += 1
                c0 = min(cd, key=lambda r: r[3])
                print(f"  DRIFT {cls:26s} first commented-slot wrong: "
                      f"{c0[0]}::{c0[1]} comp 0x{c0[2]:x} vs bin 0x{c0[3]:x}  ({len(cd)} bad)")
        print(f"=== {drifted}/{total} classes drift at a binary-commented slot ===")
        return
    if not a:
        print(__doc__); return
    verbose = "--verbose" in a
    cls = [x for x in a if not x.startswith("--")][0]
    _print_drift(cls, verbose)

if __name__ == "__main__":
    main()
