#!/usr/bin/env python3
"""portledger.py - the C->Rust contract: a manifest of byte-VERIFIED functions.

A 1:1 Rust rewrite is only safe to attempt on functions whose C is *proven* byte-exact
(objdiff 100%). This reads the objdiff report, emits a machine-readable manifest of every
verified function (symbol, demangled signature, unit, size, address), and can scaffold a
Rust signature for one - the bridge from a matching C decomp to a faithful Rust port.

Usage:
  python tools/portledger.py                       # write manifest + print the headline stats
  python tools/portledger.py --rust GetXAngle@Object   # Rust signature skeleton for a verified fn
  python tools/portledger.py --list                # list all verified functions
  python tools/portledger.py --self-test

Output: Documentation/verified_manifest.json  (consumed by the future Rust port).
"""
import os, re, sys, json
# ROOT is the repo root (parent of tools/); the manifest lives in the repo's own
# Documentation/ dir so it ships inside bw1-decomp alongside the other write-ups.
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
MANIFEST = os.path.abspath(os.path.join(ROOT, "Documentation", "verified_manifest.json"))

def verified_functions(rep):
    """Every function objdiff reports at 100% code match (byte-exact).

    `rep` is a loaded objdiff report (see verify.load_report). Returns a list of
    {"symbol", "demangled", "unit"} dicts - one per function whose fuzzy code-match
    percentage is exactly 100 (the only safe basis for a 1:1 Rust rewrite)."""
    import verify
    out = []
    # iter_functions yields (unit_name, symbol, match_pct, demangled_name) per function.
    for un, fn, pct, dem in verify.iter_functions(rep):
        if pct is not None and pct >= 100.0:
            out.append({"symbol": fn, "demangled": dem, "unit": un})
    return out

# --- C++ demangled signature -> Rust skeleton ----------------------------------------------
_TYPEMAP = {
    "void": "()", "bool": "bool", "char": "i8", "unsigned char": "u8",
    "short": "i16", "unsigned short": "u16", "int": "i32", "unsigned int": "u32",
    "long": "i32", "unsigned long": "u32", "__int64": "i64", "unsigned __int64": "u64",
    "float": "f32", "double": "f64",
}
def _rust_type(t):
    """Map a C/C++ type spelling to its Rust equivalent (best-effort, for skeletons).

    Pointers become `*mut T`, recursing so that multi-level pointers (`char**` ->
    `*mut *mut i8`) nest correctly. A C `void*` becomes `*mut c_void` (Rust has no
    `*mut ()` analogue for an opaque byte pointer). For the pointee we drop the
    `const`/`class`/`struct`/`enum` keywords and any C++ namespace qualifier
    (`Foo::Bar` -> `Bar`), matching the non-pointer path. Scalar C types come from
    `_TYPEMAP`; an unknown class/struct name is passed through by its last segment."""
    t = t.strip()
    if t.endswith("*"):
        # Strip exactly one '*' and recurse, so each pointer level wraps in '*mut'.
        inner = t[:-1].strip().replace("const ", "").replace("class ", "").replace("struct ", "")
        if inner.endswith("*"):                 # multi-level pointer: recurse on the rest
            return "*mut %s" % _rust_type(inner)
        if inner in ("void", ""):               # C void* -> opaque Rust pointer
            return "*mut c_void"
        # Named pointee: map scalars via _TYPEMAP, else keep the bare (unqualified) type name.
        return "*mut %s" % (_TYPEMAP[inner] if inner in _TYPEMAP else inner.split("::")[-1].split()[-1])
    t = t.replace("class ", "").replace("struct ", "").replace("enum ", "")
    return _TYPEMAP.get(t, t.split("::")[-1] or "()")
def _snake(name):
    """Convert a CamelCase identifier to snake_case (e.g. 'GetXAngle' -> 'get_x_angle')."""
    # r"(?<!^)(?=[A-Z])" is a zero-width split: it inserts an '_' before every
    # capital that is not the first character (the lookbehind exempts position 0),
    # then we lowercase. The second sub collapses any run of '_' into a single one.
    s = re.sub(r"(?<!^)(?=[A-Z])", "_", name).lower()
    return re.sub(r"__+", "_", s)
def rust_skeleton(demangled, addr=None, unit=None):
    """turn 'public: virtual float __thiscall Object::GetXAngle(void)' into a Rust impl stub."""
    # Strip the access specifier and the calling-convention / virtual / static noise
    # so what remains is just "<ret> <Class>::<method>(<args>) [const]".
    d = re.sub(r"^(public|private|protected):\s*", "", demangled)
    d = d.replace("virtual ", "").replace("static ", "").replace("__thiscall ", "").replace("__cdecl ", "").strip()
    # Capture: (ret) (Class)::(method) ((args)) (optional trailing 'const').
    # ret is non-greedy so the first '::'-qualified token is taken as Class::method.
    m = re.match(r"(.+?)\s+([A-Za-z_]\w*)::([A-Za-z_~]\w*)\s*\((.*)\)\s*(const)?\s*$", d)
    if not m:  # free function or ctor/operator we don't parse -> comment-only stub
        return "// TODO port (unparsed sig): %s" % demangled
    ret, cls, meth, args, isconst = m.groups()
    self_arg = "&self" if isconst else "&mut self"   # const method -> shared self
    rargs = []
    if args.strip() and args.strip() != "void":
        # NOTE: naive split on bare commas; mis-splits arg types that themselves
        # contain commas (templates like map<K,V>, function-pointer types). Fine for
        # the simple scalar/pointer signatures this scaffolder targets.
        for i, a in enumerate(s.strip() for s in args.split(",")):
            rargs.append("a%d: %s" % (i, _rust_type(a)))
    sig_args = ", ".join([self_arg] + rargs)
    rret = _rust_type(ret)
    rret = "" if rret == "()" else " -> %s" % rret
    hdr = "// VERIFIED byte-exact" + (" @ %s" % addr if addr else "") + (" [%s]" % unit if unit else "")
    return ("%s\n// C++: %s\nimpl %s {\n    fn %s(%s)%s {\n        todo!(\"1:1 port from the matching C\")\n    }\n}"
            % (hdr, demangled, cls, _snake(meth), sig_args, rret))

def build_manifest(rep):
    """Assemble the port-ledger manifest dict from a loaded objdiff report `rep`.

    The "stats" block summarizes overall progress, drawn from the report's top-level
    measures:
      - verified_functions:        count of byte-exact (100%) functions in this manifest
      - total_functions:           total functions objdiff tracks
      - fuzzy_match_percent:       overall instruction-level (fuzzy) code match
      - matched_functions_percent: overall fraction of functions fully matched
    "verified" is the per-function list (symbol/demangled/unit), sorted by
    (unit, symbol) for stable, diff-friendly output."""
    vf = verified_functions(rep)
    m = rep.get("measures", {})
    return {
        "source": "objdiff report (byte-exact code match == 100%)",
        "stats": {
            "verified_functions": len(vf),
            "total_functions": m.get("total_functions"),
            "fuzzy_match_percent": m.get("fuzzy_match_percent"),
            "matched_functions_percent": m.get("matched_functions_percent"),
        },
        "verified": sorted(vf, key=lambda x: (x["unit"], x["symbol"])),
    }

def _self_test():
    """Pure-logic checks (no objdiff build needed): the C->Rust type map, snake_case
    conversion, two rust_skeleton signature shapes (getter; const + arg + int ret), and
    that build_manifest keeps only the 100%-matched function from a hand-built report.
    Returns 0 on all-pass, 1 on any failure (suitable for sys.exit)."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c
        print(("  PASS " if c else "  FAIL ") + n + ("" if c else "   got: %r" % (got,)))
    chk(_rust_type("float") == "f32" and _rust_type("unsigned int") == "u32" and _rust_type("void") == "()",
        "type map: float/uint/void")
    chk(_rust_type("Object*").startswith("*mut"), "type map: pointer")
    chk(_snake("GetXAngle") == "get_x_angle", "snake_case", _snake("GetXAngle"))
    sk = rust_skeleton("public: virtual float __thiscall Object::GetXAngle(void)", addr="0x6399d0", unit="c/Object.000")
    chk("fn get_x_angle(&mut self) -> f32" in sk, "rust skeleton: getter signature", sk)
    sk2 = rust_skeleton("public: int __thiscall GRand::GameRand(long) const")
    chk("fn game_rand(&self" in sk2 and "-> i32" in sk2, "rust skeleton: const + arg + int ret", sk2)
    # manifest from a sample report
    sample = {"measures": {"total_functions": 3, "fuzzy_match_percent": 50.0, "matched_functions_percent": 33.3},
              "units": [{"name": "c/X", "measures": {},
                         "functions": [{"name": "?A@@", "metadata": {"demangled_name": "void X::A(void)"},
                                        "fuzzy_match_percent": 100.0},
                                       {"name": "?B@@", "metadata": {"demangled_name": "void X::B(void)"},
                                        "fuzzy_match_percent": 40.0}]}]}
    man = build_manifest(sample)
    chk(man["stats"]["verified_functions"] == 1 and man["verified"][0]["symbol"] == "?A@@",
        "manifest: only 100% functions", man["stats"])
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    import verify
    if "--rust" in a:
        i = a.index("--rust")
        if i + 1 >= len(a):   # bounds check: --rust must be followed by a Name@Class
            print("usage: portledger.py --rust <Name@Class>"); sys.exit(2)
        q = a[i + 1]
        rep = verify.load_report()
        hits = verify.find_function(rep, q)
        # Safety gate: only scaffold a port for a byte-exact (100%) function. h[2] is the
        # match percent in each (unit, symbol, pct, demangled) hit; anything below 100 is
        # not yet a faithful 1:1 basis, so refuse.
        v = next((h for h in hits if h[2] is not None and h[2] >= 100.0), None)
        if not v: print("(%s is not byte-verified (100%%) yet; lift+gate it first)" % q); sys.exit(1)
        print(rust_skeleton(v[3] or v[1], unit=v[0])); sys.exit(0)
    rep = verify.load_report()
    man = build_manifest(rep)
    os.makedirs(os.path.dirname(MANIFEST), exist_ok=True)
    with open(MANIFEST, "w", encoding="utf-8") as fh:   # `with`: ensure the handle closes
        json.dump(man, fh, indent=2)
    s = man["stats"]
    print("verified (byte-exact) functions: %d / %s   (fuzzy code %.1f%%, functions %.1f%%)"
          % (s["verified_functions"], s["total_functions"], s["fuzzy_match_percent"] or 0, s["matched_functions_percent"] or 0))
    print("manifest -> %s" % os.path.relpath(MANIFEST, ROOT))
    if "--list" in a:
        for v in man["verified"][:60]:
            print("  %-46s %s" % (v["demangled"] or v["symbol"], v["unit"]))
