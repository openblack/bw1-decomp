#!/usr/bin/env python3
"""draftgate.py - gate the clean-C DRAFTS (from the draft-clean-c fan-out) into byte-exact banks.

The `draft-clean-c` fan-out wrote per-batch `draft_NNNN_out.json` files, each a list of
{fn, c_body, confidence, notes}. Those are first-attempt decompilations -- valuable, but UNVERIFIED.
This tool bridges them to the verifier: aggregate -> reformat -> `fanout_gate.gate_all` (splice each body
into its staging function, recompile that unit, KEEP only a byte-exact 100% match, else revert -- with the
proven `__asm` width auto-recovery for const-bool returns).

Drafts that don't byte-match are reported, not banked -- they're the iteration backlog (objdiff-guided
refinement, or re-draft). High-confidence drafts are gated first so the cheap wins land early.

NEEDS THE BUILD (gating recompiles). Run after the draft fan-out lands AND the build is free.

Usage:
  python tools/draftgate.py                 # dry-run: aggregate + report how many drafts are gate-ready
  python tools/draftgate.py --apply         # gate them (bank byte-exact, revert the rest)
  python tools/draftgate.py --apply --min-conf med   # gate only med/high-confidence drafts
  python tools/draftgate.py --self-test
"""
import os, sys, json, glob
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
DEFAULT_DIR = os.path.join(ROOT, "cmake-build-presets", "objdiff", "_drafts")
_CONF_RANK = {"high": 2, "med": 1, "low": 0}


def aggregate(d=DEFAULT_DIR):
    """Read every draft_*_out.json and return the list of draft records with a non-empty c_body."""
    recs = []
    for f in glob.glob(os.path.join(d, "draft_*_out.json")):
        try:
            data = json.load(open(f, encoding="utf-8"))
        except (ValueError, OSError):
            continue
        if isinstance(data, list):
            recs.extend(r for r in data
                        if isinstance(r, dict) and r.get("fn") and (r.get("c_body") or "").strip())
    return recs


def select(recs, min_conf="low"):
    """Filter to drafts at >= min_conf, sorted by confidence DESC (gate the surest first)."""
    floor = _CONF_RANK.get(min_conf, 0)
    keep = [r for r in recs if _CONF_RANK.get(r.get("confidence", "low"), 0) >= floor]
    return sorted(keep, key=lambda r: -_CONF_RANK.get(r.get("confidence", "low"), 0))


def to_gate(recs):
    """Reformat draft records into fanout_gate's {name, body, blocker} shape."""
    return [{"name": r["fn"], "body": r["c_body"], "blocker": r.get("notes", "")} for r in recs]


def gate(recs, apply=False):
    """Gate the drafts via fanout_gate.gate_all (strict byte-exact). Returns the list of banked names."""
    import fanout_gate
    return fanout_gate.gate_all(to_gate(recs), apply=apply)


def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    recs = [{"fn": "A@B", "c_body": "return this->x;", "confidence": "high", "notes": ""},
            {"fn": "C@D", "c_body": "  ", "confidence": "med"},          # empty body -> dropped by aggregate filter
            {"fn": "E@F", "c_body": "return 0;", "confidence": "low"}]
    sel = select([r for r in recs if r["c_body"].strip()], "med")
    chk([r["fn"] for r in sel] == ["A@B"], "select min-conf med -> only high/med, sorted")
    g = to_gate([recs[0]])
    chk(g == [{"name": "A@B", "body": "return this->x;", "blocker": ""}], "to_gate reformats to {name,body,blocker}")
    chk(_CONF_RANK["high"] > _CONF_RANK["low"], "confidence ranking")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    mc = a[a.index("--min-conf") + 1] if "--min-conf" in a else "low"
    recs = select(aggregate(), mc)
    print("%d gate-ready drafts (>= %s confidence)" % (len(recs), mc))
    if "--apply" in a:
        banked = gate(recs, apply=True)
        print("\nbanked %d byte-exact drafts; the rest are the iteration backlog" % len(banked))
        print("NEXT: python tools/ratchet.py record  (authoritative) then commit src/staging")
    else:
        print("dry-run; re-run with --apply to gate. (needs the build free)")
