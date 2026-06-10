#!/usr/bin/env python3
"""liftgate.py - the verify-gated lift loop: never accept a lift that isn't byte-better.

This is the engine for the road to a 100% *matching* C decomp (the prerequisite for a 1:1 Rust
port). It splices a candidate C body into a staging function, recompiles just that unit, asks
objdiff how byte-exact the function now is (via verify.py), and **keeps the change only if the
match strictly improved (ideally to 100%), otherwise reverts**. Correctness becomes mechanical,
not hopeful - exactly what a faithful Rust rewrite later depends on.

Usage:
  python tools/liftgate.py <Name@Class> --body-file cand.c     # gate a candidate body
  python tools/liftgate.py <Name@Class> --body "return *(int*)((char*)this+0x10);"
  python tools/liftgate.py <Name@Class> --show                 # current match, unit, staging src
  python tools/liftgate.py --self-test                         # pure-logic tests (no build)

Library:  from liftgate import splice_body, decide, gate
"""
import os, re, sys, shutil
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# --- pure: splice a new body into "Class::method(...) { ... }" ------------------------------
def _find_body_span(text, cls, method):
    """Locate the body braces of a ``Class::method(...) { ... }`` definition in C source.

    Returns ``(open_brace_idx, close_brace_idx)`` -- the indices of the body's
    outermost ``{`` and matching ``}`` -- or ``None`` if no definition is found.

    The brace match is comment- and string-aware so that a ``{`` or ``}`` appearing
    inside a ``//`` line comment, a ``/* ... */`` block comment, a string literal,
    or a char literal does not throw off the depth count. This lets splice_body /
    extract_body operate on real C source without a full parser.
    """
    # Locate every "Class :: method (" signature occurrence; for each we try to find
    # its body. Multiple matches can exist (e.g. a forward decl plus the definition),
    # so we skip any that turn out to be declarations (see the ';' guard below).
    for m in re.finditer(re.escape(cls) + r"\s*::\s*" + re.escape(method) + r"\s*\(", text):
        # Find the parameter-list close ')' by paren-matching from the signature's '(',
        # so nested parens (e.g. function-pointer params `void f(int (*cb)(void))`)
        # resolve to the TRUE param-list close, not the first inner ')'.
        rp = _match_paren(text, m.end() - 1)
        if rp < 0: continue
        # The body '{' is the first brace after the param list.
        i = text.find("{", rp)
        if i < 0: continue
        # Guard: a ';' between the param-list ')' and the next '{' means this was a
        # declaration (e.g. `Class::method(...);` followed by an unrelated block),
        # not a definition -- skip it and try the next signature match.
        if ";" in text[rp:i]: continue
        # Brace-match the body. The flags track whether we are currently inside:
        #   lc = a // line comment, bc = a /* */ block comment,
        #   instr = a "string" literal, inch = a 'char' literal.
        depth = 0; j = i; n = len(text)
        instr = inch = lc = bc = False
        while j < n:
            c = text[j]; nx = text[j+1] if j+1 < n else ""
            if lc:
                if c == "\n": lc = False           # line comment ends at newline
            elif bc:
                if c == "*" and nx == "/": bc = False; j += 1   # consume the '/' of '*/'
            elif instr:
                if c == "\\": j += 1               # skip the escaped char (e.g. \" )
                elif c == '"': instr = False
            elif inch:
                if c == "\\": j += 1               # skip the escaped char (e.g. \' )
                elif c == "'": inch = False
            elif c == "/" and nx == "/": lc = True; j += 1      # enter // comment
            elif c == "/" and nx == "*": bc = True; j += 1      # enter /* comment
            elif c == '"': instr = True
            elif c == "'": inch = True
            elif c == "{": depth += 1
            elif c == "}":
                depth -= 1
                if depth == 0: return (i, j)        # matched the body's opening brace
            j += 1
    return None

def _match_paren(text, open_idx):
    """Return the index of the ')' that closes the '(' at ``open_idx``, or -1.

    Plain paren depth counting (no comment/string awareness -- C parameter lists do
    not contain comments or unbalanced parens in practice). Used so a parameter list
    with nested parens (function-pointer params) yields its real close, not the first
    inner ')'.
    """
    depth = 0; n = len(text)
    for k in range(open_idx, n):
        c = text[k]
        if c == "(": depth += 1
        elif c == ")":
            depth -= 1
            if depth == 0: return k
    return -1

def extract_body(text, cls, method):
    """return the current C body (between the braces, dedented) of cls::method, or None.
    Inverse of splice_body -- used by fold-propagation to copy a verified twin's body."""
    span = _find_body_span(text, cls, method)
    if not span: return None
    i, j = span
    lines = [ln[4:] if ln.startswith("    ") else ln for ln in text[i + 1:j].strip("\n").splitlines()]
    return "\n".join(lines).strip("\n")

def splice_body(text, cls, method, new_body):
    """Replace the body of ``cls::method`` in ``text`` with ``new_body``, returning the
    new full source (or ``None`` if the function definition could not be located).

    The candidate body is re-indented by 4 spaces per line (blank lines kept blank)
    and re-wrapped in ``{ ... }``. This is the primary library entry point and the
    inverse of extract_body. NOTE: an empty/whitespace-only ``new_body`` yields an
    empty ``{ }`` body -- valid C, but for a non-void function it will compile-fail
    and the gate will then revert, so callers should avoid passing an empty body.
    """
    span = _find_body_span(text, cls, method)
    if not span: return None
    i, j = span
    body = new_body.strip("\n")
    if not body.endswith("\n"): body += "\n"
    # Indent each non-blank line by 4 spaces; preserve blank lines as-is.
    indented = "".join(("    " + ln if ln.strip() else ln) + "\n" for ln in body.splitlines())
    return text[:i] + "{\n" + indented + "}" + text[j+1:]

# --- pure: the keep/revert decision --------------------------------------------------------
def decide(before, after):
    """returns (keep: bool, reason: str). KEEP only on a strict byte-match improvement."""
    # Treat a missing match% as -1.0 (worse than any real 0..100 score): an absent
    # 'before' makes any real 'after' look like an improvement; an absent 'after'
    # (function vanished / compile failed) always reverts (handled explicitly below).
    b = -1.0 if before is None else before
    a = -1.0 if after is None else after
    if after is None:  return (False, "REVERT: function vanished from report / compile failed")
    if a >= 100.0 and b < 100.0: return (True,  "KEEP: reached 100%% (was %.1f%%)" % b)
    if a > b + 1e-6:   return (True,  "KEEP: %.1f%% -> %.1f%%" % (b, a))
    return (False, "REVERT: %.1f%% -> %.1f%% (no improvement)" % (b, a))

# --- the full gate (needs the objdiff build) -----------------------------------------------
def gate(name, new_body, accept_equal=False, strict=False, min_keep=100.0):
    """splice + recompile + keep iff byte-better. strict=True keeps ONLY a full 100% match (used by
    sweeps that must bank byte-exact wins, never marginal improvements that pollute the staging).

    min_keep (strict mode only): lower it to 90.0 to ALSO keep >=90% improvements as hand-analysis SEEDS
    (logged to the near-miss ledger). The keep policy (nearmiss.should_keep) requires after > before, so a
    kept near-miss only ever RAISES the match%; being <100% it never enters the verified ratchet, so the
    byte-exact guarantee and high-water are untouched (the user's 'don't regress something else')."""
    import verify
    loc = verify.unit_for_function(name)
    if not loc: return {"ok": False, "msg": "function not found in objdiff report: %s" % name}
    unit, src = loc
    if not src or not os.path.exists(src):
        return {"ok": False, "msg": "no staging source for %s (unit %s)" % (name, unit)}
    # 'name' uses the toolkit's Name@Class convention, so the split halves are
    # (method, class): index [0] is the method, [1] is the class.
    cls, method = (name.split("@", 1)[1], name.split("@", 1)[0]) if "@" in name else (None, name)
    before = verify.function_match(name, refresh=True)
    # latin-1: byte-preserving round-trip read/write of the staging .cpp (the source
    # may carry non-UTF-8 bytes; latin-1 maps every byte 1:1 so a re-write is exact).
    with open(src, encoding="latin-1") as fh:
        text = fh.read()
    new_text = splice_body(text, cls, method, new_body) if cls else None
    if new_text is None:
        return {"ok": False, "msg": "could not locate %s::%s body in %s" % (cls, method, src)}
    # Back up the original so any non-keep outcome (compile fail, no improvement) can
    # be restored byte-for-byte. NOTE: if the process is killed between the write
    # below and the finally cleanup, the staging file is left in the candidate state
    # with the .bak alongside -- restore manually from <src>.liftgate.bak in that case.
    backup = src + ".liftgate.bak"
    shutil.copyfile(src, backup)
    try:
        with open(src, "w", encoding="latin-1") as fh:
            fh.write(new_text)
        rc = verify.recompile_unit(src)
        if rc is not True:
            shutil.copyfile(backup, src); verify.recompile_unit(src)
            return {"ok": False, "before": before, "after": None, "kept": False, "msg": "REVERT: " + str(rc)[:400]}
        after = verify.function_match(name, refresh=True)
        if strict:
            import nearmiss
            keep, is_nm = nearmiss.should_keep(before, after, min_keep)
            if keep and is_nm:
                nearmiss.log_near_miss(name, before, after, unit)
            # `before or 0.0` / `after or 0.0`: a None (function absent from the report)
            # is rendered as 0.0% purely for the human-readable message -- the keep/revert
            # decision itself was already made by nearmiss.should_keep() above.
            reason = (("KEEP near-miss %.1f%% (was %.1f%%)" % (after, before or 0.0)) if is_nm else
                      ("KEEP: reached 100%% (was %.1f%%)" % (before or 0.0))) if keep else \
                     ("REVERT: %.1f%% (below min_keep %.0f%% or no improvement)" % (after or 0.0, min_keep))
        else:
            keep, reason = decide(before, after)
        if not keep:
            shutil.copyfile(backup, src); verify.recompile_unit(src)
        return {"ok": True, "before": before, "after": after, "kept": keep, "msg": reason, "unit": unit, "src": src}
    finally:
        if os.path.exists(backup): os.remove(backup)

# --- self-test (pure logic, no build) ------------------------------------------------------
def _self_test():
    """Pure-logic self-test (no build / objdiff): exercises splice_body (replacement,
    leaving siblings intact, comment-brace immunity, missing-function -> None) and the
    decide() keep/revert rule. Prints PASS/FAIL per check and returns an exit code
    (0 = all pass, 1 = any failure)."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c
        print(("  PASS " if c else "  FAIL ") + n + ("" if c else "   got: %r" % (got,)))
    sample = ("// file\n"
              "uint32_t Object::GetFoo(void)\n{\n    return 0;\n}\n\n"
              "void Object::SetBar(int x)\n{\n    // note: } not a real brace\n    return;\n}\n")
    out = splice_body(sample, "Object", "GetFoo", "return *(uint32_t*)((char*)this + 0x10);")
    chk(out is not None and "return *(uint32_t*)((char*)this + 0x10);" in out, "splice replaces body")
    chk(out.count("Object::SetBar") == 1 and "SetBar(int x)\n{\n    // note: } not a real brace" in out,
        "splice leaves other functions intact", out)
    # brace-in-comment must not end the body early
    tricky = "int A::f(void)\n{\n    int x = 0; // } trick\n    return x;\n}\n"
    o2 = splice_body(tricky, "A", "f", "return 42;")
    chk(o2 is not None and o2.strip().endswith("}") and "return 42;" in o2 and "return x;" not in o2,
        "comment-brace doesn't truncate body", o2)
    chk(splice_body(sample, "Object", "Nonexistent", "x") is None, "missing function -> None")
    # decision logic
    chk(decide(0.0, 100.0) == (True, "KEEP: reached 100% (was 0.0%)") or decide(0.0,100.0)[0], "decide: 0->100 keep")
    chk(decide(65.0, 80.0)[0] is True, "decide: improvement keeps")
    chk(decide(65.0, 65.0)[0] is False, "decide: no-change reverts")
    chk(decide(65.0, 40.0)[0] is False, "decide: regression reverts")
    chk(decide(50.0, None)[0] is False, "decide: compile-fail/vanish reverts")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if not a or a[0].startswith("-"):
        print(__doc__); sys.exit(0)
    name = a[0]
    if "--show" in a:
        import verify
        loc = verify.unit_for_function(name)
        if not loc: print("(not found in report)"); sys.exit(1)
        unit, src = loc
        print("function : %s" % name)
        print("unit     : %s" % unit)
        print("staging  : %s" % src)
        print("match    : %s" % verify.function_match(name, refresh=False))
        sys.exit(0)
    # Read the candidate body from --body-file <path> or inline via --body <C-source>.
    # Both flags require a following value; guard the index so a flag passed as the
    # final argument prints a usage error instead of raising IndexError.
    def _flag_value(flag):
        i = a.index(flag)
        if i + 1 >= len(a):
            print("%s requires a value" % flag); sys.exit(2)
        return a[i + 1]
    body = None
    if "--body-file" in a:
        path = _flag_value("--body-file")
        with open(path, encoding="latin-1") as fh:
            body = fh.read()
    elif "--body" in a:
        body = _flag_value("--body")
    else: print("need --body or --body-file (or --show)"); sys.exit(1)
    r = gate(name, body)
    print(("[gate] %s" % r["msg"]) + (("   (%.1f%% -> %s)" %
          (r.get("before") or 0.0, "%.1f%%" % r["after"] if r.get("after") is not None else "fail"))
          if "before" in r else ""))
    sys.exit(0 if r.get("kept") else 1)
