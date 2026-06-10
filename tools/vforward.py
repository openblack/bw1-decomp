#!/usr/bin/env python3
"""vforward.py - sweep the VIRTUAL-FORWARD class of stubs to strict 100% byte-exact.

PURPOSE
    Many decompiled stubs do nothing but tail-forward to a *virtual* method. In MSVC x86
    thiscall asm this shows up as one of two shapes:

        mov eax, [ecx]            ; load the vtable pointer from `this` (ecx)
        jmp  [eax+SLOT]           ; tail-call the slot                 -> `return this->VMethod(args);`

      or

        mov eax, [ecx]            ; load the vtable pointer from `this`
        call [eax+SLOT]           ; call the slot ...
        ret                       ; ... and immediately return its result

    Both mean `return this->VMethod(args);` (the stub itself usually just `return 0;`). This tool
    detects that shape, resolves SLOT -> concrete method via vtable.py, and synthesizes the C++
    forwarding call, passing the function's own parameters through. Every synthesized body is run
    through liftgate.gate(strict=True), so a body is only kept when it recompiles BYTE-EXACT against
    the original binary -- nothing here can introduce a regression.

    The bulk of the wins are 0-argument getters that delegate to a virtual; those are handled first.

USAGE
    python tools/vforward.py --survey [MINPCT]        # list candidate forwards >= MINPCT, no edits
    python tools/vforward.py --sweep [--apply] [MINPCT]
                                                      #   without --apply: dry-run (print WOULD ...)
                                                      #   with    --apply: edit + strict-gate + bank
    python tools/vforward.py --self-test              # run the pure-logic checks

    MINPCT (optional positional, default 0.0) is the minimum current match-percent of a function
    for it to be considered a candidate (only functions in [MINPCT, 100) are swept).
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


def _parse_minpct(args, default=0.0):
    """Pull the optional MINPCT positional out of the CLI argv.

    Scans `args` for the first token that is a well-formed non-negative decimal number (e.g. "40"
    or "12.5") and returns it as a float; if none is present, returns `default`. We validate the
    shape with a regex (not str.replace('.','').isdigit(), which would wrongly accept multi-dot
    junk like "1.2.3" and then crash float()), so a malformed numeric-looking arg is simply ignored
    rather than raising.
    """
    for x in args:
        # one optional integer part, one optional fractional part, at least one digit overall
        if re.fullmatch(r"\d+(?:\.\d+)?|\.\d+", x):
            return float(x)
    return default

_PAD = ("nop", "int3")  # padding/no-ops that may appear between real instructions; ignored
def slot_of(instrs):
    """Detect the virtual-forward shape and return (slot, n_pushes), else None.

    `instrs` is a list of (mnemonic, operands) tuples. Returns a 2-tuple:
        slot     -- the vtable byte offset SLOT from `... [eax+SLOT]` (int)
        n_pushes -- the number of leading `push` instructions, used as a proxy for the
                    forwarded argument count (see candidates()/gen()).
    Returns None when the body is not a clean `mov eax,[ecx]; jmp|call [eax+SLOT]` forward.
    """
    seq = [(mn, ops) for mn, ops in instrs if mn not in _PAD]
    # Count optional leading argument pushes (the args being forwarded to the virtual call).
    i = 0; pushes = 0
    while i < len(seq) and seq[i][0] == "push": pushes += 1; i += 1
    if i + 1 >= len(seq): return None
    if seq[i][0] != "mov": return None
    # The vtable pointer load `mov eax, [ecx]` has two textual spellings depending on the
    # disassembler: with and without the explicit `dword ptr` size hint. Accept both.
    o = seq[i][1].replace(" ", "")
    if o not in ("eax,[ecx]", "eax,dwordptr[ecx]"): return None
    nx, nxo = seq[i + 1]
    # Extract the slot offset from the indirect target `[eax+0xNNN]`. Hex digits may be upper- or
    # lower-case depending on the disassembler, so match case-insensitively.
    m = re.search(r"\[eax\+0x([0-9a-fA-F]+)\]", nxo.replace(" ", ""))
    if not m: return None
    # `jmp [eax+SLOT]` is a tail-call: the forward is the whole function, so it qualifies as-is.
    if nx == "jmp": return (int(m.group(1), 16), pushes)
    # `call [eax+SLOT]` only qualifies when immediately followed by `ret`: that proves the result
    # is returned (a true tail return) rather than a mid-body vcall whose value is used further on.
    if nx == "call" and i + 2 < len(seq) and seq[i + 2][0] == "ret": return (int(m.group(1), 16), pushes)
    return None

def gen(name, slot, pushes):
    """candidate C bodies (a LIST) for the forward, tried in order:
       1. `return this->Method(params);` via vtable.py (clean, when the C++ vtable layout is correct),
       2. a RAW __fastcall slot call `(*(RT(__fastcall**)(CLS*,...))((char*)*(void**)this+SLOT))(this,...)`
          which BYPASSES the C++ vtable layout (robust when the decomp's vtable is buggy/incomplete --
          which is common; it banked ResetStateAfterReacting where StopReacting was at the wrong slot)."""
    import vtable, propose
    cls = name.split("@")[1]
    rt = "void"
    try: rt = (propose._staging_rettype(name) or "void").strip()
    except Exception: pass
    params = ", ".join("param_%d" % (k + 1) for k in range(pushes))
    pcall = (", " + params) if params else ""
    out = []
    # form 1: named virtual call (only if the slot resolves to a non-self method)
    try: frec = vtable.slot(cls, slot)
    except Exception: frec = None
    meth = getattr(frec, "method", None) or getattr(frec, "name", None)
    if meth:
        meth = meth.split("::")[-1].split("(")[0]
        # Skip the named form when the slot resolves to THIS function's own method name: emitting
        # `this->Foo(...)` inside Foo would be infinite self-recursion, not a forward. (This compares
        # only the short method name, so a same-named method on a different class is not caught here;
        # the raw_call fallback below still guarantees correctness via the strict gate.)
        if meth != name.split("@")[0]:
            c = "this->%s(%s)" % (meth, params)
            out.append(("%s;" % c) if rt == "void" else ("return %s;" % c))
    # form 2: raw slot call (vtable-layout-independent) -- the BAKED solution in vtable.raw_call
    out.append(vtable.raw_call(cls, slot, rt, ["void*"] * pushes,
                               ["param_%d" % (k + 1) for k in range(pushes)]))
    return out

def candidates(min_pct=0.0):
    """Enumerate virtual-forward sweep candidates from the current objdiff report.

    Loads the match report, keeps only functions whose match-percent is in [min_pct, 100) (i.e.
    not yet byte-exact but at least min_pct), resolves each to a Method@Class name, checks its
    disassembly against the virtual-forward shape via slot_of(), and -- for matches -- builds the
    candidate C bodies via gen(). Returns a list of (name, pct, bodies) tuples, where `bodies` is
    the ordered list of body candidates to try (named-call form, then raw-slot fallback).
    """
    import verify, propose, retwidth
    rep = verify.load_report(); H = propose._syms(); out = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        sp = slot_of(retwidth.target_instrs(name) or [])
        if not sp: continue
        # sp = (slot, n_pushes). We assume one leading push == one forwarded parameter; this can be
        # wrong for register-passed (__fastcall) args, but it is safe because liftgate.gate(strict)
        # rejects any body that doesn't recompile byte-exact, so a mis-counted candidate is dropped.
        bodies = gen(name, sp[0], sp[1])               # a LIST: named-call then raw-slot fallback
        if bodies: out.append((name, pct, bodies))
    return out

def survey(min_pct=0.0):
    """Print the virtual-forward candidates (>= min_pct), highest match-percent first. No edits."""
    c = candidates(min_pct)
    for name, pct, bodies in sorted(c, key=lambda x: -x[1]): print("  %5.1f%%  %-40s %s" % (pct, name[:40], bodies[0]))
    print("\n%d virtual-forward candidates (>=%.0f%%)" % (len(c), min_pct))

def sweep(apply=False, min_pct=0.0):
    """Drive the sweep over all candidates (>= min_pct).

    With apply=False this is a dry run: it prints the body it WOULD apply for each candidate.
    With apply=True it tries each candidate body in order through liftgate.gate(strict=True) and
    keeps the first one that recompiles byte-exact ("reached 100" in the gate message), banking it;
    bodies that never reach 100% are left untouched. Prints a per-function result and a final tally.
    """
    import liftgate
    banked = tried = 0
    for name, pct, bodies in candidates(min_pct):
        tried += 1
        if not apply: print("  WOULD %-40s <- %s" % (name[:40], bodies[0])); continue
        ok = False
        for b in bodies:                               # try named-call, then raw-slot fallback
            r = liftgate.gate(name, b, strict=True)
            # liftgate signals a byte-exact win with "reached 100" in its message; stop at the first.
            if "reached 100" in r.get("msg", ""): ok = True; break
        banked += 1 if ok else 0
        print("  %-40s %s" % (name[:40], "KEEP 100%" if ok else "no byte-exact form"))
    print("\n%s: %d candidates, %d banked" % ("SWEEP" if apply else "DRY", tried, banked))

def _self_test():
    """Run pure-logic checks on slot_of() (no build / no report needed). Returns 0 on pass, 1 on fail."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    chk(slot_of([("mov", "eax, [ecx]"), ("jmp", "dword ptr [eax+0x42c]"), ("nop", "")]) == (0x42c, 0),
        "0-arg tail jmp forward", slot_of([("mov", "eax, [ecx]"), ("jmp", "dword ptr [eax+0x42c]")]))
    chk(slot_of([("push", "edx"), ("mov", "eax, [ecx]"), ("call", "dword ptr [eax+0x320]"), ("ret", "0x4")]) == (0x320, 1),
        "1-arg call+ret forward")
    chk(slot_of([("mov", "eax, [ecx+0x4]"), ("ret", "")]) is None, "plain getter -> not a vforward")
    # uppercase hex offset (some disassemblers emit upper-case) must resolve the same slot
    chk(slot_of([("mov", "eax, [ecx]"), ("jmp", "dword ptr [eax+0x42C]")]) == (0x42c, 0),
        "uppercase hex slot offset accepted")
    # MINPCT parser: picks a valid numeric token, ignores flags and multi-dot junk, defaults to 0.0
    chk(_parse_minpct(["--sweep", "40"]) == 40.0, "minpct: plain int")
    chk(_parse_minpct(["--sweep", "12.5"]) == 12.5, "minpct: decimal")
    chk(_parse_minpct(["--sweep", "1.2.3"]) == 0.0, "minpct: rejects multi-dot junk")
    chk(_parse_minpct(["--sweep"]) == 0.0, "minpct: default when absent")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    # MINPCT is positional and optional: grab the first bare numeric token as the threshold.
    mp = _parse_minpct(a)
    if "--survey" in a: survey(mp)
    elif "--sweep" in a: sweep(apply="--apply" in a, min_pct=mp)
    else: print(__doc__)
