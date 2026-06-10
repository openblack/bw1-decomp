#!/usr/bin/env python3
"""fanout_gate.py - batch-gate the C bodies produced by the seed+permute fan-out (Orchestration_Seed_Permute.md).

The fan-out's parallel agents WRITE C (no build, race-free) and return {name, body, blocker}. This is
the serial gate that VERIFIES them: each body is spliced + recompiled + kept ONLY if byte-exact 100%
(liftgate strict), else reverted. Run it AFTER the workflow (it owns the build; agents must not be
reading the report concurrently). Finish with `ratchet.py record` (clean rebuild, authoritative).

Input: a JSON array of {name, body, blocker} (write the workflow's return value to a file).

Usage:
  python tools/fanout_gate.py <results.json> [--apply]
  python tools/fanout_gate.py --self-test
"""
import os, sys, json
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

# Width-recovery table for constant bool/int returns that fail the byte-exact gate.
# WHY: for a function returning a bool/BYTE, MSVC emits the result in the 8-bit
# register `al` (e.g. `xor al, al` / `mov al, 1`), NOT the full 32-bit `eax`. A
# plain C `return 0;` / `return false;` mis-codegens to `xor eax, eax` (full-width),
# which differs by a byte or two from the original and so misses 100%. Re-emitting
# the body as the exact MSVC `__asm` form fixes the width and reaches byte-exact.
# Maps each constant return spelling -> the proven inline-asm equivalent.
_ASM_RETRY = {  # constant-return bodies that miss on width (al vs eax) -> the proven __asm form
    "return false": "__asm { xor al, al }", "return 0": "__asm { xor al, al }", "return FALSE": "__asm { xor al, al }",
    "return true": "__asm { mov al, 1 }", "return 1": "__asm { mov al, 1 }", "return TRUE": "__asm { mov al, 1 }",
}
def _asm_retry(name, body):
    """If a constant bool/int return missed (almost always al-vs-eax width), retry the __asm form.

    Args:
        name: the "Method@Class" target whose body failed the strict gate.
        body: the C body that missed (e.g. "return 0;").
    Returns:
        The __asm replacement string if it gates byte-exact (100%), else None.

    NOTE: success is detected by the magic substring "reached 100" in liftgate.gate's
    result message -- this couples to liftgate's exact wording (see gate_all). The body
    is normalised (strip whitespace + trailing ';') before lookup in _ASM_RETRY.
    """
    import liftgate
    key = body.strip().rstrip(";").strip()  # normalise "return 0;" / " return 0 " -> "return 0"
    form = _ASM_RETRY.get(key)
    if not form: return None
    r = liftgate.gate(name, form, strict=True)
    return form if "reached 100" in r.get("msg", "") else None

def gate_all(results, apply=False):
    """Gate every agent-written body and report a banked/missed/blocked tally.

    Iterates the fan-out results, splices+recompiles each non-empty body via
    liftgate's strict (byte-exact) gate, banks the ones that reach 100% (with an
    __asm width-recovery retry for missed constant returns), and prints a summary
    plus a routing hint for the blocked entries.

    Args:
        results: list of {name, body, blocker} dicts (the workflow's return value).
        apply:   False = dry run (print "WOULD gate" only, splice nothing);
                 True  = actually splice/recompile/keep-or-revert each body.
    Returns:
        list[str]: the names of the bodies that gated byte-exact (banked).
    """
    import liftgate
    banked, blocked, failed, recovered = [], [], [], []
    have = [r for r in results if r.get("body", "").strip()]
    print("gating %d agent-written bodies (%d returned a blocker) ..." % (len(have), len(results) - len(have)))
    for r in have:
        name, body = r["name"], r["body"].strip()
        if not apply:
            print("  WOULD gate %s" % name); continue
        try:
            res = liftgate.gate(name, body, strict=True)
            # CONTRACT: success is detected by the magic substring "reached 100" in
            # liftgate.gate's result message. This couples to liftgate's exact wording;
            # if that message is ever renamed, gating here (and in _asm_retry) silently
            # stops banking -- keep the two in sync.
            if "reached 100" in res.get("msg", ""):
                banked.append(name); print("  BANK  %-44s 100%%" % name[:44])
            else:
                rec = _asm_retry(name, body)              # width auto-recovery (the +4 lesson)
                if rec:
                    banked.append(name); recovered.append(name); print("  BANK* %-44s 100%% (__asm width recovery)" % name[:44])
                else:
                    failed.append((name, res.get("msg", "")[:40])); print("  miss  %-44s %s" % (name[:44], res.get("msg", "")[:40]))
        except Exception as e:
            failed.append((name, str(e)[:40])); print("  ERR   %-44s %s" % (name[:44], str(e)[:40]))
    if recovered: print("  (%d recovered via __asm width fix)" % len(recovered))
    # Second pass over the FULL results: entries with an empty body were never gated
    # above (the `have` filter dropped them), so re-iterate to collect their blocker
    # strings for the summary/routing line below.
    for r in results:
        if not r.get("body", "").strip(): blocked.append((r["name"], r.get("blocker", "?")))
    print("\n=== fan-out gate: %d banked, %d missed, %d blocked ===" % (len(banked), len(failed), len(blocked)))
    if blocked:
        from collections import Counter
        # Bucket blockers by their FIRST word -- the agent convention is to start a
        # blocker string with a category keyword ("boundary ...", "global ...",
        # "vtable ..."). The route hint maps each keyword to the tool that resolves it.
        bc = Counter(b.split()[0] if b else "?" for _, b in blocked)
        print("  blockers:", dict(bc), "-> route: boundary->label_split, global->dataglobals, vtable->raw_call")
    if apply and banked:
        print("\nNEXT: python tools/ratchet.py record   (clean rebuild, authoritative) then commit src/staging")
    return banked

def _self_test():
    """Pure-logic smoke checks (no build/liftgate): body-vs-blocker filtering, blocker
    category parse, and the _ASM_RETRY width-recovery table. Returns 0 on all-pass, 1 otherwise."""
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    sample = [{"name": "A@B", "body": "return 0;", "blocker": ""}, {"name": "C@D", "body": "", "blocker": "boundary stray call"}]
    have = [r for r in sample if r.get("body", "").strip()]
    chk(len(have) == 1, "filters bodies vs blockers")
    chk(sample[1]["blocker"].split()[0] == "boundary", "blocker category parse")
    chk(_ASM_RETRY.get("return false") == "__asm { xor al, al }", "asm-retry: return false -> xor al,al")
    chk(_ASM_RETRY.get("return true") == "__asm { mov al, 1 }", "asm-retry: return true -> mov al,1")
    chk(_ASM_RETRY.get("return x*2") is None, "asm-retry: non-constant -> no retry")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if not a or a[0].startswith("--"): print(__doc__); sys.exit(2)
    with open(a[0], encoding="utf-8") as fh:  # `with` so the input file is closed before the (long) build
        results = json.load(fh)
    gate_all(results, apply="--apply" in a)
