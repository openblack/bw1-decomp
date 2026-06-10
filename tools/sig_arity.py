#!/usr/bin/env python3
"""sig_arity.py - cross-check declared parameter count against BINARY GROUND TRUTH (`ret N`).

Sibling of struct_sizes.py. A __thiscall/__stdcall callee cleans its stack args with `ret N`,
so N = sum of stack-arg sizes. For all-4-byte args that's `N == 4 * (param_count)` (thiscall: the
`this` is in ecx, NOT on the stack, so it isn't counted). If the staging signature dropped or added
a parameter, the declared count disagrees with `ret N` from the original binary -> a real decomp
signature bug (e.g. MultiMapFixed::DoResourceAdding declared 5 params but `ret 0x18` => 6).

This reports the disagreements (ground-truth-confirmed wrong signatures). Fixing them is an upstream
decomp correction and can convert the arity near-misses (functions that match except for `ret N`).

Usage:
  python tools/sig_arity.py            # report functions whose ret N != 4 * declared param count
  python tools/sig_arity.py --all      # same, but print every candidate (default caps at 40 rows)
  python tools/sig_arity.py --self-test

Heuristic only: a mismatch can also mean any of the following, so treat the list as candidates to
inspect, not auto-fixes:
  - a >4-byte param passed by value (a struct or a `double`) bumps `ret N` by more than 4 per param;
  - a register-passed param (fastcall) is not on the stack and so is not counted in `ret N`;
  - an EARLY `ret` inside a branch. Both `_ret_bytes` (below) and propose._bodies_for_addrs (which
    truncates each body at the first `ret`) stop at the FIRST `ret` they see, so a function whose
    real epilogue is `ret N` but which has an earlier bare `ret` in a guard clause will be read as
    that early (usually 0-byte) ret and silently misjudged.

Note on `this`: this tool counts only the staging parameter NAMES, which never include the implicit
`this`. So the expected stack-cleanup is `4 * declared` for BOTH __thiscall member functions (where
`this` rides in ecx, off-stack) AND __stdcall statics (which have no `this` at all) -- the math is the
same in either case and no static-vs-thiscall branch is needed.
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def _ret_bytes(body):
    """Return the callee's stack-cleanup byte count from its `ret N` instruction.

    Scans the (already first-`ret`-truncated) body for the first `ret` and reads its operand:
      - `ret 0xN`  -> N  (a __thiscall/__stdcall callee popping N bytes of stack args);
      - bare `ret` -> 0  (cdecl / no callee cleanup -> not arity-checkable, filtered by the caller).
    Returns None when the body has no `ret` at all.

    Caveat: this stops at the FIRST `ret`. An early `ret` in a guard clause (before the real
    `ret N` epilogue) will be read instead -- see the module docstring's "EARLY `ret`" note.
    """
    import gpr
    for l in body:
        mn, o = gpr.parse(l)
        if mn == "ret":
            # `ret`'s operand, when present, is a hex immediate like `0x18`; capture its digits.
            g = re.match(r"0x([0-9a-fA-F]+)$", (o or "").strip())
            return int(g.group(1), 16) if g else 0
    return None

def report():
    """Cross-check every resolvable function's declared param count against its binary `ret N`.

    For each function that has BOTH an asm address (so we can read its `ret N`) and a staging
    signature (so we know the declared param count), compute the expected stack-cleanup and flag
    any mismatch. Returns a list of `(name, declared, true_stack_args, ret_bytes, mangled)` tuples,
    one per disagreement, where:
      - name             = "Method@Class";
      - declared         = number of named staging params (`this` is never named, so it is excluded);
      - true_stack_args  = ret_bytes // 4  (the ground-truth 4-byte stack-arg count);
      - ret_bytes        = the raw `ret N` cleanup byte count from the original binary.
    A mismatch means the staging signature dropped or added a parameter relative to the binary.
    """
    import propose
    stubs_seen = set()
    H = propose._syms()
    out = []
    # iterate functions that have BOTH an address (asm) and a staging signature
    for f in H.by_mangled.values():
        if not (f.addr and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        if name in stubs_seen: continue                   # one row per Method@Class (skip dup mangles)
        stubs_seen.add(name)
        a = propose._addr(name)
        if a is None: continue
        body = propose._bodies_for_addrs({a}).get(a)
        if not body: continue
        rb = _ret_bytes(body)
        # Skip cdecl / no-cleanup callees: a bare `ret` (rb == 0) does NOT report its arg count, and
        # None means we found no `ret` at all -- neither is arity-checkable.
        if rb is None or rb == 0: continue
        rt, pnames, ptypes = propose._staging_sig(name)
        if not pnames: continue
        declared = len([p for p in pnames if p])          # named params only (`this` is never named)
        # Ground-truth assumption: every stack arg is exactly 4 bytes wide, so a correct signature
        # cleans `4 * declared` bytes. This holds for both __thiscall members and __stdcall statics
        # (see the module docstring) and fails only for >4-byte by-value or register params.
        expected = 4 * declared
        if rb != expected:
            out.append((name, declared, rb // 4, rb, f.mangled))
    return out

def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    import gpr
    chk(_ret_bytes(["  xor eax, eax // x", "  ret 0x18 // y"]) == 0x18, "ret 0xN parsed")
    chk(_ret_bytes(["  ret // y"]) == 0, "bare ret -> 0")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    show_all = "--all" in a                                # --all lifts the default 40-row cap
    bad = report()
    print("functions whose `ret N` disagrees with 4*declared-param-count: %d" % len(bad))
    print("(N/4 = true stack-arg count; declared = staging param count; mismatch = candidate sig bug)")
    rows = sorted(bad)
    limit = len(rows) if show_all else 40
    for name, declared, truen, rb, mg in rows[:limit]:
        print("  %-44s declared %d params  ret 0x%-4x => %d stack-args" % (name[:44], declared, rb, truen))
    if len(rows) > limit:
        print("  ... %d more (pass --all to list every candidate)" % (len(rows) - limit))
