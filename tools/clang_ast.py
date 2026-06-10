#!/usr/bin/env python3
"""clang_ast.py - FULL semantic AST of staging functions via libclang (LLVM install required).

Unlocks above-the-lexer transforms: real statements / declarations / expressions with RESOLVED
TYPES. Needs an LLVM install (resource headers) -- `winget install LLVM.LLVM`. The project's MSVC6
template C++ trips clang's stricter semantics (~20 header errors), but clang ERROR-RECOVERS and still
produces usable per-function bodies (hundreds per TU), which is all the permuter needs.

Library:
  from clang_ast import parse, function_body, sites
  tu = parse(src_cpp)                 # TU for a staging .cpp (uses compile_commands + LLVM resource-dir)
  body = function_body(tu, cls, meth) # the CompoundStmt cursor, or None
  S = sites(body)                     # see sites() for the full dict shape; all positions are file byte offsets:
                                      #   statements: [(a,b)]                 top-level stmt extents
                                      #   decls:      [(a,b)]                  local var-decl stmt extents
                                      #   binops:     [(op,la,lb,ra,rb)]      commutative binops + operand extents
                                      #   subexprs:   [(fa,fb,ctype,enc)]     arithmetic subexprs (for temp-introduction)

CLI:
  python clang_ast.py              # print this doc + report LLVM / resource-dir / availability
  python clang_ast.py --self-test  # parse a staging unit, assert function bodies are recovered

Availability: every entry point requires an LLVM install (libclang.dll + clang resource headers).
Call available() first -- parse() will fail if it returns False.
"""
import os, re, json, glob, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

def _compile_commands_path():
    """Locate the objdiff compile_commands.json. bw1-decomp (cmake flow) keeps it under
    cmake-build-presets/objdiff/; bw1-dtk keeps it at the repo root. Returns None if neither
    exists (objdiff not yet built) so callers can fail/skip explicitly instead of crashing."""
    for p in (os.path.join(ROOT, "cmake-build-presets/objdiff/compile_commands.json"),
              os.path.join(ROOT, "compile_commands.json")):
        if os.path.exists(p):
            return p
    return None

def _llvm():
    """Locate the LLVM install root by probing the usual Windows install dirs.

    Returns the first directory that contains bin/libclang.dll, or None if no
    LLVM install is found (`winget install LLVM.LLVM` is the expected source)."""
    for p in (r"C:/Program Files/LLVM", r"C:/Program Files (x86)/LLVM",
              os.path.expanduser("~/AppData/Local/Programs/LLVM")):
        if os.path.exists(os.path.join(p, "bin", "libclang.dll")): return p
    return None

_CFG = False          # one-shot guard so we only call Config.set_library_file once
def _cindex():
    """Import and lazily configure clang.cindex, returning the module.

    On the first call it points libclang at the discovered LLVM install (so the
    Python binding finds the matching DLL). Configuration is attempted at most
    once; failures are swallowed because cindex may already be configured."""
    global _CFG
    import clang.cindex as ci
    if not _CFG:
        L = _llvm()
        if L:
            try: ci.Config.set_library_file(os.path.join(L, "bin", "libclang.dll"))
            except Exception: pass
        _CFG = True
    return ci

def _resource_dir():
    """Return the newest clang resource-headers dir (lib/clang/<version>), or None.

    clang needs its own builtin headers (stddef.h, etc.) via -resource-dir. The
    sort key strips non-digits from each version dir basename and parses the
    remainder as an int (e.g. "18" or "18.1.8" -> 1818), so the highest version
    sorts last; we return that newest dir. Returns None if LLVM is missing or has
    no resource dir."""
    L = _llvm()
    if not L: return None
    d = sorted(glob.glob(os.path.join(L, "lib", "clang", "*")), key=lambda p: int(re.sub(r"\D", "", os.path.basename(p)) or 0))
    return d[-1] if d else None

def available():
    """True iff libclang imports AND both an LLVM install and a resource dir exist.

    Callers should gate on this before parse(): the parse path requires a valid
    resource-dir, and a missing LLVM yields a non-obvious failure otherwise."""
    try:
        _cindex(); return _llvm() is not None and _resource_dir() is not None
    except Exception:
        return False

def _args(src):
    """Build the libclang invocation flags for one staging .cpp.

    Pulls the per-file -I include dirs out of the objdiff compile_commands.json
    entry for `src`, then prepends the flags needed to make clang swallow the
    project's MSVC6-era C++:
      --target=i686 / -m32       : 32-bit Windows target (matches the original binary)
      -fms-extensions/-compat    : accept MSVC language extensions
      -fdeclspec                 : accept __declspec
      -ferror-limit=0 / -Wno-everything : don't stop on (or warn about) the ~20
                                   header errors the MSVC6 templates trigger
      -resource-dir <dir>        : clang's own builtin headers
      -isystem _clang_stubs      : local shims that paper over headers clang chokes on
      -isystem MSVC Include      : the bundled MSVC standard headers
    Raises RuntimeError if no resource dir is available (LLVM not installed or
    incomplete) so the failure is explicit rather than a TypeError deep in clang."""
    rdir = _resource_dir()
    if rdir is None:
        raise RuntimeError("clang resource-dir not found; install LLVM (winget install LLVM.LLVM)")
    cc_path = _compile_commands_path()
    if cc_path is None:
        raise RuntimeError("compile_commands.json not found; build objdiff first (bw1-decomp cmake, or dtk root)")
    with open(cc_path) as fh:
        cc = json.load(fh)
    # find this source file's compile_commands entry (case-insensitive abs-path match)
    e = next((x for x in cc if os.path.normcase(os.path.abspath(x["file"])) == os.path.normcase(os.path.abspath(src))), None)
    # extract the -I/-/I include dirs from the recorded command (normalize \ -> / so the regex is path-sep agnostic)
    incs = [i.strip('"') for i in re.findall(r'[-/]I\s*(\S+)', (e["command"] if e else "").replace("\\", "/"))]
    msvc = os.path.join(ROOT, "cmake-build-presets/objdiff/_deps/msvc_compiler-src/Include")
    a = ["--target=i686-pc-windows-gnu", "-m32", "-std=gnu++11", "-fms-extensions", "-fms-compatibility",
         "-fdeclspec", "-ferror-limit=0", "-Wno-everything",
         "-resource-dir", rdir, "-isystem", os.path.join(ROOT, "tools/_clang_stubs"),
         "-isystem", msvc]
    return a + ["-I" + i for i in incs]

def parse(src, unsaved_content=None):
    """parse a staging .cpp. If unsaved_content is given, parse THAT in place of the on-disk file
       (lets the permuter try a spliced variant without writing it). Diagnostics are ignored -- clang
       error-recovers through the MSVC6 template noise and still yields per-function bodies."""
    ci = _cindex()
    uf = [(src, unsaved_content)] if unsaved_content is not None else None
    return ci.Index.create().parse(src, args=_args(src), unsaved_files=uf,
                                   options=ci.TranslationUnit.PARSE_INCOMPLETE)

def function_body(tu, cls, meth):
    """Return the CompoundStmt cursor for `cls`::`meth`'s body, or None.

    Walks the whole TU for a method/function/ctor/dtor whose spelling is `meth`
    and whose semantic_parent spells `cls`, then returns its brace body. Note:
    free functions (FUNCTION_DECL) have the TU/namespace as their semantic parent,
    so to match a true free function you must pass the matching `cls` (e.g. the
    namespace name, or "" for the TU); for class methods `cls` is the class name."""
    ci = _cindex()
    KINDS = (ci.CursorKind.CXX_METHOD, ci.CursorKind.FUNCTION_DECL,
             ci.CursorKind.CONSTRUCTOR, ci.CursorKind.DESTRUCTOR)
    def walk(c):
        yield c
        for k in c.get_children(): yield from walk(k)
    for c in walk(tu.cursor):
        if c.kind in KINDS and c.spelling == meth and getattr(c.semantic_parent, "spelling", "") == cls:
            b = next((k for k in c.get_children() if k.kind == ci.CursorKind.COMPOUND_STMT), None)
            if b: return b
    return None

def sites(body):
    """Structural rewrite sites for a function body, as FILE byte-offset extents.

    Returns a dict with four keys (all positions are (start, end) byte offsets
    into the source file, suitable for splicing):
      statements: [(a,b)]              extent of each top-level statement
      decls:      [(a,b)]              extent of each top-level local var-decl stmt
      binops:     [(op,la,lb,ra,rb)]  for each COMMUTATIVE binary op: the operator
                                       text plus the left/right operand extents
                                       (so operands can be safely swapped)
      subexprs:   [(fa,fb,ctype,enc)] each arithmetic subexpression: its own
                                       extent (fa,fb), a builtin C type name for
                                       a temp decl, and the start offset of the
                                       enclosing top-level statement -- used to
                                       hoist the subexpr into a temporary."""
    ci = _cindex()
    def off(c): return (c.extent.start.offset, c.extent.end.offset)
    out = {"statements": [], "decls": [], "binops": []}
    for s in body.get_children():
        out["statements"].append(off(s))
        if s.kind == ci.CursorKind.DECL_STMT:
            out["decls"].append(off(s))
    def walk(c):
        yield c
        for k in c.get_children(): yield from walk(k)
    COMM = {"+", "*", "&", "|", "^", "==", "!="}        # commutative ops: operands are swap-safe
    out["subexprs"] = []                               # (full_a, full_b, type, enclosing_stmt_start) for temp-introduction
    stmts = out["statements"]
    def enclosing(a):
        # find the top-level statement that contains offset `a` (half-open [start,end)),
        # returning its start offset -- the anchor before which a temp decl would be inserted.
        return next((s[0] for s in stmts if s[0] <= a < s[1]), None)
    for c in walk(body):
        if c.kind == ci.CursorKind.BINARY_OPERATOR:
            kids = list(c.get_children())
            if len(kids) == 2:
                toks = [t.spelling for t in c.get_tokens()]
                op = next((t for t in toks if t in COMM), None)
                fa, fb = off(c)
                if op:
                    la, lb = off(kids[0]); ra, rb = off(kids[1])
                    out["binops"].append((op, la, lb, ra, rb))
                # temp-introduction candidate: ANY arithmetic subexpr (use CANONICAL type kind, not
                # spelling -- catches typedefs like LONG/.full whose spelling isn't a literal 'int').
                enc = enclosing(fa)
                canon = c.type.get_canonical()
                if enc is not None and canon.kind in _ARITH:
                    out["subexprs"].append((fa, fb, _ctype(canon), enc))
    return out

_ARITH_NAMES = ("INT", "UINT", "LONG", "ULONG", "LONGLONG", "ULONGLONG", "SHORT", "USHORT",
                "SCHAR", "UCHAR", "CHAR_S", "CHAR_U", "FLOAT", "DOUBLE", "BOOL")
def _arith_kinds():
    """Set of clang TypeKind values considered arithmetic (int/float/bool families).

    Built by name lookup with hasattr guards so it works across libclang versions
    where some TypeKind enumerators may be absent."""
    import clang.cindex as ci
    return {getattr(ci.TypeKind, n) for n in _ARITH_NAMES if hasattr(ci.TypeKind, n)}
class _Lazy:
    """Lazy stand-in for the _ARITH set so it can be referenced at import time.

    The real set can only be built after libclang is importable, so on the FIRST
    `kind in _ARITH` membership test this __contains__ replaces the module global
    _ARITH with the concrete set (a one-time side effect) and answers from it.
    Subsequent tests hit the real set directly."""
    def __contains__(self, k):
        global _ARITH
        _ARITH = _arith_kinds(); return k in _ARITH
_ARITH = _Lazy()
_CANON = {"INT": "int", "UINT": "unsigned int", "LONG": "long", "ULONG": "unsigned long",
          "SHORT": "short", "USHORT": "unsigned short", "SCHAR": "signed char", "UCHAR": "unsigned char",
          "CHAR_S": "char", "CHAR_U": "char", "FLOAT": "float", "DOUBLE": "double", "BOOL": "bool",
          "LONGLONG": "long long", "ULONGLONG": "unsigned long long"}
def _ctype(canon):
    """Map a canonical clang type to a builtin C type name for a temp declaration.

    Keys off the canonical TypeKind name (so typedefs like LONG resolve to their
    underlying builtin); falls back to "int" for anything unmapped."""
    return _CANON.get(canon.kind.name, "int")          # safe builtin name for the temp decl

def _self_test():
    """Smoke test: parse a staging .cpp and assert clang recovered function bodies.

    Skips (passes) if no LLVM install is present. Otherwise it proves the
    error-recovery claim -- despite the MSVC6 header template errors, clang still
    yields per-function bodies. Returns 0 on success, 1 on failure."""
    if not available():
        print("SELF-TEST: SKIP (no LLVM install found -- winget install LLVM.LLVM)"); return 0
    # parse a staging unit and prove we recover function bodies despite header template errors
    import json as _j
    cc_path = _compile_commands_path()
    if cc_path is None:
        print("SELF-TEST: SKIP (no compile_commands.json -- build objdiff first)"); return 0
    with open(cc_path) as fh:
        cc = _j.load(fh)
    src = next((x["file"] for x in cc if "staging" in x["file"]), None)
    if src is None:
        print("SELF-TEST: SKIP (no staging unit in compile_commands -- this is the bw1-decomp cmake flow; run from bw1-decomp)"); return 0
    tu = parse(src)
    ci = _cindex()
    # full preorder walk of the cursor tree via a self-applied lambda (f calls f),
    # counting methods/functions that have a CompoundStmt child (i.e. a real body).
    flatten = (lambda f: f(f, tu.cursor))(lambda f, c: [c] + [x for k in c.get_children() for x in f(f, k)])
    n = sum(1 for c in flatten
            if c.kind in (ci.CursorKind.CXX_METHOD, ci.CursorKind.FUNCTION_DECL)
            and any(k.kind == ci.CursorKind.COMPOUND_STMT for k in c.get_children()))
    print("  parsed function bodies in %s: %d" % (os.path.basename(src), n))
    print("SELF-TEST:", "ALL PASS" if n > 0 else "FAILURE")
    return 0 if n > 0 else 1

if __name__ == "__main__":
    if "--self-test" in sys.argv: sys.exit(_self_test())
    print(__doc__)
    print("LLVM:", _llvm(), "| resource-dir:", _resource_dir(), "| available:", available())
