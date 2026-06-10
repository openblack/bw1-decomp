#!/usr/bin/env python3
"""Map which classes implement (override) given virtual methods in the bw1-decomp asm.

Virtual calls dispatch through vtable offsets, so callers don't reference the symbol
name -- but every *implementation* appears as a mangled label `?Name@Class@@...:` in
the disassembly. This lists the distinct implementing classes per method, which is the
fast way to find where a mechanic actually lives (e.g. heat: GetHeatCapacity).

How it works: for each method name it scans every src/asm/**/*.asm for the mangled
pattern `?<Name>@<Class>@@` (nested classes such as `?Save@SpritePos@FireGraphic@@`
are matched too; the innermost class is reported). Each hit's whole line is then
classified — a line ending in ':' is a function-label *implementation* (the
override's body); a line containing '.long' is just a *vtable* table slot pointing
at it. Only "impl" classes are printed.

Inputs: the disassembly under <repo>/src/asm/ (no build/network needed).

Usage:
  python3 tools/find_virtual_impls.py GetTribalPower GetHeatCapacity SetOnFire ...
  python3 tools/find_virtual_impls.py            # uses a default mechanic set
  python3 tools/find_virtual_impls.py --self-test  # run pure-logic self-tests
"""
import re, glob, sys, os

ASM = os.path.join(os.path.dirname(__file__), "..", "src", "asm")
DEFAULT = ["GetTribalPower","GetHeatCapacity","GetTemperature","GetRainCoolingMultiplier",
           "CanBeSetOnFire","SetOnFire","GetTown","GetBelief","GetInfluence"]

def classify_match(line):
    """Classify the asm line carrying a `?Name@Class@@` hit.

    Returns "impl" (a function-label definition, line ends with ':'),
    "vtable" (a '.long' table slot referencing it), or None (neither).
    Pure string logic.
    """
    if line.rstrip().endswith(":"):
        return "impl"
    if ".long" in line:
        return "vtable"
    return None

def impls(sym):
    """Scan all asm for implementations/vtable-refs of the virtual method `sym`.

    Globs every ``<repo>/src/asm/**/*.asm`` and matches the MSVC-mangled label
    ``?<sym>@<Class>@@`` (optionally with extra ``@<Outer>`` segments for nested
    classes). For each hit the surrounding source line is carved out and handed to
    :func:`classify_match`.

    Args:
        sym: the bare (demangled) virtual-method name, e.g. ``"GetHeatCapacity"``.

    Returns:
        A set of ``(class, kind)`` tuples, where ``class`` is the (innermost)
        implementing class name and ``kind`` is ``"impl"`` (the override's body)
        or ``"vtable"`` (a table slot pointing at it). Non-matching lines (e.g.
        call sites) contribute nothing.
    """
    found=set()
    # MSVC name mangling: a method on class C is `?<Name>@<C>@@<signature>`.
    # The first capture group is the *innermost* class. We tolerate one or more
    # trailing `@<Outer>` segments before `@@` so that nested-class virtuals like
    # `?Save@SpritePos@FireGraphic@@` are matched too (the outer scopes are
    # ignored; only the innermost class -- where the method is defined -- is kept).
    pat=re.compile(r"\?%s@([A-Za-z0-9_]+)(?:@[A-Za-z0-9_]+)*@@" % re.escape(sym))
    for f in glob.glob(os.path.join(ASM,"**","*.asm"), recursive=True):
        # latin-1 is a lossless 1:1 byte<->codepoint mapping, so any byte in the
        # disassembly dump decodes without error; OSError (e.g. a vanished/locked
        # file mid-glob) is skipped so one bad file can't abort the whole scan.
        try:
            with open(f, encoding="latin-1") as fh:
                txt = fh.read()
        except OSError: continue
        for m in pat.finditer(txt):
            # Carve out the full source line containing the match: from the char
            # after the previous newline up to the next newline. `rfind` returns
            # -1 before the first line, so +1 yields 0 (start of file) correctly.
            start = txt.rfind("\n", 0, m.start()) + 1
            end = txt.find("\n", m.end())
            # `find` returns -1 when the match is on the final line and the file
            # has no trailing newline; treat that as end-of-text so the slice
            # keeps the whole last line (otherwise txt[start:-1] would drop its
            # final char -- e.g. the ':' that marks an impl label).
            if end == -1:
                end = len(txt)
            line = txt[start:end]
            kind=classify_match(line)
            if kind: found.add((m.group(1),kind))
    return found

def _self_test():
    """Run pure-logic checks (classify_match + the mangle regex); no asm/IO needed.

    Returns 0 if every assertion passes, 1 otherwise (suitable for ``sys.exit``).
    """
    ok = True
    def chk(cond, msg):
        nonlocal ok; ok &= bool(cond)
        print(f"  {'PASS' if cond else 'FAIL'}  {msg}")

    # --- classify_match: label def vs vtable slot vs neither ---
    chk(classify_match("?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z:") == "impl",
        "label ending ':' -> impl")
    chk(classify_match("?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z :  ") == "impl",
        "trailing whitespace before ':' tolerated")
    chk(classify_match("    .long ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z") == "vtable",
        ".long table slot -> vtable")
    chk(classify_match("    call ?GetTribalPower@Object@@UAEMW4TRIBE_TYPE@@@Z") is None,
        "a call site -> None (not an impl/vtable)")

    # --- the regex captures the class name correctly ---
    # Mirror the exact pattern impls() builds so the test tracks real behavior.
    pat = re.compile(r"\?%s@([A-Za-z0-9_]+)(?:@[A-Za-z0-9_]+)*@@" % re.escape("GetHeatCapacity"))
    m = pat.search("?GetHeatCapacity@MobileObject@@UAEMXZ:")
    chk(m is not None and m.group(1) == "MobileObject", "regex captures class MobileObject")
    chk(pat.search("?GetHeatCapacityFoo@Bar@@") is None,
        "regex is anchored at @ (no GetHeatCapacityFoo false match)")
    # nested-class virtuals must be matched, reporting the innermost class.
    pat2 = re.compile(r"\?%s@([A-Za-z0-9_]+)(?:@[A-Za-z0-9_]+)*@@" % re.escape("Save"))
    m2 = pat2.search("?Save@SpritePos@FireGraphic@@UAEXXZ:")
    chk(m2 is not None and m2.group(1) == "SpritePos",
        "nested-class symbol matched (innermost class SpritePos)")

    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def main():
    """Print, for each method name in argv (or the DEFAULT set), its impl classes.

    Only "impl" hits are shown (vtable-slot references are computed but not
    printed); a method with no override resolves to '(none / base-only / inlined)'.
    """
    for sym in (sys.argv[1:] or DEFAULT):
        fs=impls(sym)
        impl=sorted(c for c,k in fs if k=="impl")
        print(f"{sym}: implementations -> {impl or '(none / base-only / inlined)'}")

if __name__ == "__main__":
    if "--self-test" in sys.argv:
        sys.exit(_self_test())
    main()
