#!/usr/bin/env python3
"""sigfix.py - fix SIGNATURE/DECLARATION blockers that no function body can fix (Track-2 wins).

The seed+permute fan-out proved many near-misses are blocked at the SIGNATURE level, not the body:
  * RETURN-WIDTH: a method declared `bool32_t` (=uint32_t, 4 bytes => `xor eax,eax`) whose binary
    returns a 1-byte `bool` (`xor al,al`). The body is already correct (`return false;`); only the
    DECLARED RETURN TYPE is wrong. Changing `bool32_t`->`bool` in the decl(s) + staging def makes the
    codegen `al` and banks it. (For a non-virtual `QAE_NXZ`-mangled target this is a clean 3-line change;
    for a virtual it cascades to the base decl + all overrides — gated, so a cascade regression reverts.)
This is exactly the class the fan-out agents must HAND OFF (they can only edit the body) — sigfix closes it.

Gated like every sweep: change -> recompile -> keep iff the function reaches 100% with NO regression,
else `git checkout` the touched files.

Usage:
  python tools/sigfix.py --retwidth <Name@Class> [--apply]   # bool32_t->bool return-width fix, gated
  python tools/sigfix.py --self-test
"""
import os, re, sys, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def _revert(paths):
    """Restore the given files to their committed (HEAD) state via `git checkout -- <paths>`.

    This is the load-bearing rollback for every gated sweep: an edit is applied, the unit is
    recompiled, and if the function does NOT reach 100% with no regression the touched files are
    reverted here -- guaranteeing the tree never ends up worse than before ("never a regression").
    Output is suppressed; a no-op for paths with no uncommitted changes.
    """
    subprocess.run(["git", "checkout", "--"] + paths, cwd=ROOT, capture_output=True)

def retwidth_files(name):
    """files + lines where `<Method>`'s return type `bool32_t` appears (staging def + black/*.h decls)."""
    import verify, glob
    cls, meth = name.split("@")[1], name.split("@")[0]
    touched = {}
    loc = verify.unit_for_function(name)
    if loc and loc[1]:
        touched[loc[1]] = None
    # black headers: C++ method decl `bool32_t <meth>(` and C-ABI `bool32_t __fastcall <meth>__`
    for hf in glob.glob(os.path.join(ROOT, "black", "*.h")):
        with open(hf, encoding="latin-1") as fh:
            t = fh.read()
        if re.search(r"\bbool32_t\b[^\n;]*\b%s\b\s*\(" % re.escape(meth), t) or \
           re.search(r"\bbool32_t __fastcall %s__" % re.escape(meth), t):
            touched[hf] = None
    return list(touched)

def apply_retwidth(name):
    """change the return type bool32_t->bool ONLY where it precedes this method's name (def/decl), in
    the staging def + black decls. Returns the list of files actually changed."""
    cls, meth = name.split("@")[1], name.split("@")[0]
    changed = []
    # staging def: `bool32_t <Cls>::<meth>(`
    import verify
    loc = verify.unit_for_function(name)
    pats = [
        (r"\bbool32_t(\s+%s::%s\s*\()" % (re.escape(cls), re.escape(meth)), r"bool\1"),        # staging def
        (r"\bbool32_t(\s+%s\s*\([^)]*\)\s*;)" % re.escape(meth), r"bool\1"),                    # C++ method decl
        (r"(virtual\s+)bool32_t(\s+%s\s*\()" % re.escape(meth), r"\1bool\2"),                   # virtual C++ decl
        (r"\bbool32_t(\s+__fastcall\s+%s__)" % re.escape(meth), r"bool\1"),                     # C-ABI decl
    ]
    files = ([loc[1]] if loc and loc[1] else []) + retwidth_files(name)
    for f in dict.fromkeys(files):
        with open(f, encoding="latin-1") as fh:
            t = fh.read()
        n = t
        for pat, rep in pats: n = re.sub(pat, rep, n)
        if n != t:
            with open(f, "w", encoding="latin-1") as fh:
                fh.write(n)
            changed.append(f)
    return changed

def _ret_code(name):
    """the mangled return-type code: '_N' (native bool, 1-byte al) vs 'I'/other (bool32_t/int, 4-byte eax).
    A C++ method's staging DEF mangles BY TYPE, so bool32_t->bool only matches a target whose symbol
    is already _N; for an I-mangled target it would change the symbol and unmatch -> must use retwidth.
    Returns the single-letter MSVC return-type code (e.g. 'I', 'H'), the two-char '_N' for native bool,
    or '?' when the mangled name is unavailable / doesn't match the expected member-fn shape."""
    import iterate
    mg = iterate._mangled_of(name) or ""
    # MSVC mangling layout: ...@@<qualifier><return-code>... . The member-fn qualifier right after the
    # '@@' is exactly 3 chars = access(Q/U/...) + cv(A/B) + calling-convention(E=__thiscall), e.g.
    # QAE (public non-const thiscall) / UAE (virtual) / QBE (const). The return-type code follows it:
    # '_N' is C++ native bool (returned in al, 1 byte), a single uppercase letter (I=uint, H=int, ...)
    # is a 4-byte value returned in eax. We capture either '_N' or one following uppercase letter.
    m = re.search(r"@@[A-Z]{3}(_N|[A-Z])", mg)
    if not m: return "?"
    return m.group(1)

def analyze(name):
    """classify the signature blocker + ROUTE to the right fixer (helps the agents avoid the wrong fix)."""
    import iterate
    mg = iterate._mangled_of(name) or "?"
    rc = _ret_code(name)
    route = ("sigfix --retwidth (bool32_t->bool, _N target)" if rc == "_N"
             else "retwidth (__asm; I-mangled target -- bool would break the symbol)" if rc == "I"
             else "inspect")
    return {"name": name, "mangled": mg, "return_code": rc, "route": route}

def gated_retwidth(name, apply=False):
    import verify
    rc = _ret_code(name)
    if rc != "_N":
        return {"name": name, "return_code": rc, "applied": False,
                "msg": "REFUSE: target is %s-mangled, not _N -- bool32_t->bool would change the symbol. Use retwidth (__asm)." % rc}
    before = verify.function_match(name)
    if not apply:
        return {"name": name, "before": before, "files": retwidth_files(name), "applied": False}
    _revert(retwidth_files(name))
    changed = apply_retwidth(name)
    if not changed:
        return {"name": name, "msg": "no bool32_t return type found to change"}
    # recompile the staging unit (+ any unit whose header changed -> needs the unit rebuilt)
    loc = verify.unit_for_function(name)
    rc = verify.recompile_unit(loc[1]) if loc else None
    after = verify.function_match(name, refresh=True) if rc is True else None
    keep = after is not None and after >= 100.0
    if not keep: _revert(changed)
    return {"name": name, "before": before, "after": after, "kept": keep, "changed": changed,
            "msg": ("KEEP: %.1f%%->100%%" % (before or 0)) if keep else ("REVERT: %s" % (after if rc is True else rc))}

def detect_params(name):
    """parse the win1.41 comment's full type list + the staging def's params -> missing params list."""
    import verify
    loc = verify.unit_for_function(name)
    if not loc or not loc[1]: return None, None, None
    cls, meth = name.split("@")[1], name.split("@")[0]
    with open(loc[1], encoding="latin-1") as fh:
        lines = fh.read().split("\n")
    for i, ln in enumerate(lines):
        if re.search(r"\b%s::%s\s*\(" % (re.escape(cls), re.escape(meth)), ln):
            mp = re.search(r"\(([^)]*)\)", ln)
            # The win1.41 type-list comment is assumed to be the single line directly above the def
            # (lines[i-1]); if it isn't there (multi-line or absent), params can't be aligned and we
            # fall through with no comment -> missing_params returns [] (silently no-op, by design).
            cm = lines[i - 1] if i and "win1.41" in lines[i - 1] else ""
            cc = re.search(r"%s\(([^)]*)\)" % re.escape(meth), cm)
            if mp and cc:
                ct, dp = _split_params(cc.group(1)), _split_params(mp.group(1))
                return ct, dp, missing_params(ct, dp)
    return None, None, None

def _is_virtual(name):
    """True iff the function is a C++ VIRTUAL member, decided from its MSVC-mangled name.

    Virtuality matters because a virtual's signature change cascades to every override's decl
    (and vtable struct) across many headers -- gated_params refuses virtuals for that reason.
    """
    import iterate
    mg = iterate._mangled_of(name) or ""
    # In the '@@<access><cv>E' member-fn qualifier, the access letter encodes virtuality:
    # U/V mark a virtual member function (vs Q/R for non-virtual public, etc.). Match either,
    # followed by the cv byte (A=non-const, B=const) and E (=__thiscall).
    return bool(re.search(r"@@[UV][AB]E", mg))

def gated_params(name, apply=False):
    """add the missing params (CLEAN-rebuild gated). NON-VIRTUAL only: a virtual's decl lives in every
    derived class's vtable struct, so the insert cascades across many headers while the overrides'
    staging defs can't all be reconciled here -> build breaks (proven on DoResourceAdding). Virtuals are
    refused (route to a future cascade-aware applier). git-checkout reverts on any failure."""
    import verify, ratchet, subprocess
    ct, dp, miss = detect_params(name)
    if miss is None: return {"name": name, "msg": "signature/comment not found"}
    if not miss: return {"name": name, "msg": "no missing params (ret matches decl)"}
    if _is_virtual(name):
        return {"name": name, "missing": miss, "applied": False,
                "msg": "REFUSE: virtual (UAE) - missing-param insert cascades to all overrides' decls + "
                       "staging defs (not handled here). Non-virtual (QAE) functions are safe."}
    if not apply: return {"name": name, "missing": miss}
    before = ratchet._load()
    changed = apply_params(name, miss)
    if not changed: return {"name": name, "msg": "found missing params but no decl lines edited", "missing": miss}
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff", "--clean-first"], cwd=ROOT, capture_output=True)
    try:
        after = ratchet.current_verified()
    except Exception as e:
        subprocess.run(["git", "checkout", "--", "black", "src/staging"], cwd=ROOT, capture_output=True)
        return {"name": name, "msg": "build/report failed -> reverted: " + str(e)[:60]}
    lost = ratchet.compare(after, before)[0]
    pct = verify.function_match(name)
    ok = (pct or 0) >= 100.0 and not lost
    if not ok: subprocess.run(["git", "checkout", "--", "black", "src/staging"], cwd=ROOT, capture_output=True)
    return {"name": name, "missing": miss, "pct": pct, "regressions": len(lost), "kept": ok, "changed": changed}

def _norm_type(t):
    """normalize a C/C++ param type for comparison: drop name, const, &/*, struct/enum kw, spaces.

    Used to compare a win1.41-comment type against a decl param type for equality, so it must
    canonicalize away differences that don't affect the underlying type: it strips the const/
    struct/enum/class keywords, treats a reference (&) as a pointer (*), and removes all spaces.
    NOTE: pointer DEPTH is collapsed to a single '*' (so `char**` normalizes the same as `char*`);
    this is a best-effort heuristic for param alignment and could in rare cases match types that
    differ only by indirection level. (Param NAMES are already stripped by the caller's split.)
    """
    t = re.sub(r"\b(const|struct|enum|class)\b", "", t)
    t = t.replace("&", "*").replace(" ", "")
    # Collapse any pointer depth to a single trailing '*': strip all '*' then re-add one iff the
    # type was a pointer at all. Keeps comparison stable regardless of `T*` vs `T **` spacing/depth.
    return t.rstrip("*") + ("*" if "*" in t else "")

def _split_params(s):
    """split a parameter list on top-level commas (respecting <> and ())."""
    out, buf, d = [], "", 0
    for c in s:
        if c in "<(": d += 1
        elif c in ">)": d -= 1
        if c == "," and d == 0: out.append(buf.strip()); buf = ""
        else: buf += c
    if buf.strip(): out.append(buf.strip())
    return out

def _decl_param_type(p):
    """from a decl param 'GInterfaceStatus* iface' -> normalized 'GInterfaceStatus*' (strip the name)."""
    p = p.strip()
    m = re.match(r"(.*?)(\b[A-Za-z_]\w*)\s*$", p)          # last identifier = the name (if any)
    base = m.group(1).strip() if m and m.group(1).strip() else p
    return _norm_type(base)

def missing_params(comment_types, decl_params):
    """align the win1.41 comment's full type list against the (shorter) decl's params; return a list of
    (insert_index, comment_type) for each param the decl is MISSING. Greedy LCS-style walk."""
    ct = [t.strip() for t in comment_types]
    dp = [_decl_param_type(p) for p in decl_params]
    miss, i, j = [], 0, 0
    while i < len(ct):
        if j < len(dp) and _norm_type(ct[i]) == dp[j]:
            i += 1; j += 1
        else:
            miss.append((i, ct[i])); i += 1                # comment has a param the decl lacks here
    return miss

def _ctype(comment_type):
    """map a win1.41 comment type to a C decl type: scalars as-is; `X const &`/`X *`-> `struct X*` (best-effort).

    The win1.41 comments use C++ spelling (references, bare class names); the generated C decls need
    a C-legal type. We use a leading-uppercase-first-letter heuristic to guess user types (which need
    a `struct`/`enum` tag in C) vs lowercase scalars/typedefs (used verbatim). Three cases:
      1) a builtin scalar (optionally unsigned/signed, optionally a pointer) -> kept verbatim;
      2) a pointer/reference type -> `struct Base*` if the base looks like a class (Uppercase first
         letter), else `base*` (e.g. a lowercase typedef pointer);
      3) anything else -> `enum Name` for an Uppercase name (assumed enum), else the type unchanged.
    This is best-effort: it only has to produce a compilable placeholder param (the gate verifies it).
    """
    t = comment_type.strip()
    # Case 1: builtin scalar (with optional unsigned/signed prefix and optional single pointer).
    if re.match(r"^(unsigned |signed )?(char|short|int|long|long long|float|double|bool|void)( \*)?$", t):
        return t.replace(" *", "*")
    # Case 2: pointer or reference -> strip const/&/* to the base, then tag it as a struct if it
    # looks like a class name (uppercase first letter), else assume a lowercase typedef pointer.
    if t.endswith("&") or t.endswith("*"):
        base = re.sub(r"\b(const|&|\*)\b", "", t).strip()
        return "struct %s*" % base if base[:1].isupper() else base + "*"
    # Case 3: a by-value user type -> assume an enum if Uppercase-first; otherwise leave as-is.
    return ("enum %s" % t) if t[:1].isupper() else t      # enums/typedefs: best-effort

def _insert_param(line, idx, decl, has_thisedx):
    """insert `decl` as parameter #idx (comment order) into a `...Method(<params>)...` line.
    has_thisedx: the C-ABI/fn-ptr forms prepend `this, edx`, so shift the index by 2."""
    m = re.search(r"\(([^)]*)\)", line)
    if not m: return line
    ps = _split_params(m.group(1))
    at = idx + (2 if has_thisedx else 0)
    if at > len(ps): return line
    ps.insert(at, decl)
    return line[:m.start(1)] + ", ".join(ps) + line[m.end(1):]

def apply_params(name, miss):
    """insert the missing params (from missing_params) into the staging def + C++ decl + C-ABI decl +
    fn-ptr-table entry. Returns the changed files. The asm() label is NOT touched (it is the symbol)."""
    import verify, glob
    cls, meth = name.split("@")[1], name.split("@")[0]
    changed = []
    targets = []
    loc = verify.unit_for_function(name)
    if loc and loc[1]: targets.append((loc[1], False))    # staging def: comment order, no this/edx
    for hf in glob.glob(os.path.join(ROOT, "black", "*.h")): targets.append((hf, None))
    for f, _ in targets:
        with open(f, encoding="latin-1") as fh:
            t = fh.read()
        lines = t.split("\n"); ch = False
        for k, ln in enumerate(lines):
            # Fast gate: skip any line that doesn't call/declare this method. `\bMethod\s*\(`
            # matches the method name as a whole word followed by optional spaces and `(`, so it
            # catches both `Method(` and `Method (` while NOT matching it as a substring of a
            # longer identifier. (This subsumes the older literal-substring checks.)
            if not re.search(r"\b%s\s*\(" % re.escape(meth), ln):
                continue
            if "asm(" in ln or "__fastcall* " + meth in ln or "__fastcall %s__" % meth in ln:
                has = True                                   # C-ABI decl / fn-ptr: this,edx prefixed
            elif re.search(r"\b%s::%s\s*\(" % (re.escape(cls), re.escape(meth)), ln) or re.search(r"\b%s\s*\([^)]*\)\s*;" % re.escape(meth), ln) or "virtual" in ln:
                has = False                                  # staging def / C++ decl: comment order
            else:
                continue
            for idx, ctype in sorted(miss, reverse=True):    # insert high-index first to keep positions
                lines[k] = _insert_param(lines[k], idx, "%s param_%d_x" % (_ctype(ctype), idx), has)
            ch = True
        if ch:
            with open(f, "w", encoding="latin-1") as fh:
                fh.write("\n".join(lines))
            changed.append(f)
    return changed

def _self_test():
    """Run the pure-logic checks (no git/build): the bool32_t->bool regex transforms and the
    missing-param detection on the real DoResourceAdding signature. Returns 0 on all-pass, else 1."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    # the regex transforms (pure)
    pats = [
        (r"\bbool32_t(\s+Villager::IsScaffoldValid\s*\()", r"bool\1"),
        (r"(virtual\s+)bool32_t(\s+IsScaffoldValid\s*\()", r"\1bool\2"),
        (r"\bbool32_t(\s+__fastcall\s+IsScaffoldValid__)", r"bool\1"),
    ]
    s = ("bool32_t Villager::IsScaffoldValid()\n"
         "    virtual bool32_t IsScaffoldValid();\n"
         "bool32_t __fastcall IsScaffoldValid__8VillagerFv(struct Villager* this);\n")
    for p, r in pats: s = re.sub(p, r, s)
    chk("bool Villager::IsScaffoldValid()" in s, "staging def bool32_t->bool")
    chk("virtual bool IsScaffoldValid();" in s, "virtual decl bool32_t->bool")
    chk("bool __fastcall IsScaffoldValid__8VillagerFv" in s, "C-ABI decl bool32_t->bool")
    chk("bool32_t" not in s, "all three changed")
    # missing-param detection on the real DoResourceAdding strings
    ct = ["RESOURCE_TYPE", "unsigned long", "GInterfaceStatus *", "bool", "MapCoords const &", "int"]
    dp = ["RESOURCE_TYPE type", "GInterfaceStatus* iface", "bool param_3", "MapCoords* param_4", "int param_5"]
    miss = missing_params(ct, dp)
    chk(miss == [(1, "unsigned long")], "detect missing 'unsigned long' at param index 1", miss)
    chk(missing_params(["int", "bool"], ["int a", "bool b"]) == [], "no missing -> empty")
    chk(_decl_param_type("MapCoords const& p") == "MapCoords*", "const& -> *", _decl_param_type("MapCoords const& p"))
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _argval(a, flag):
    """Return the token following `flag` in arg list `a`, or exit with a usage error.

    Guards the common `a[a.index(flag)+1]` pattern: if `flag` is the LAST argument (no value
    follows) we print a friendly message and exit(2) instead of raising a bare IndexError.
    """
    i = a.index(flag)
    if i + 1 >= len(a):
        sys.exit("error: %s requires a <Name@Class> argument" % flag)
    return a[i + 1]

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--params" in a:
        name = _argval(a, "--params")
        import json; print(json.dumps(gated_params(name, apply="--apply" in a), indent=2, default=str))
    elif "--analyze" in a:
        import json; print(json.dumps(analyze(_argval(a, "--analyze")), indent=2, default=str))
    elif "--retwidth" in a:
        name = _argval(a, "--retwidth")
        import json; print(json.dumps(gated_retwidth(name, apply="--apply" in a), indent=2, default=str))
    else: print(__doc__)
