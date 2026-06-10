#!/usr/bin/env python3
"""nearmiss.py - KEEP 90%+ near-misses as hand-analysis seeds, with a regression-proof keep policy.

WHY
  When a gated transcription/lift reaches >=90% but not a full 100%, it is a HEAD START, not a failure:
  the logic is almost right and only a small diff remains. Reverting it back to the 0%/`return 0;` stub
  throws that progress away. Keeping it lets a human -- or a follow-up agent -- finish the last 1-10% by
  reading the tiny remaining objdiff. We just have to keep it WITHOUT regressing anything else.

THE REGRESSION-PROOF KEEP POLICY (`should_keep`)
  Keep a candidate body iff:
    after >= min_keep   AND   after > before
  i.e. it clears the threshold AND it STRICTLY IMPROVES the function's match%. Consequences:
    * A function's match% can therefore only ever RISE -- a body scoring below the current % is rejected,
      so we never trade a better state for a worse one (this is the user's "don't regress something
      else" requirement, made mechanical).
    * A near-miss is still < 100%, so it is NOT a member of the verified (byte-exact) ratchet set. The
      high-water count and the release-md5/byte-exact guarantee are completely untouched by keeping it.
    * After any keep-near-miss pass, run `python tools/ratchet.py check` to CONFIRM no verified (100%)
      function regressed. It cannot (we only raised <100% functions), but verifying is free insurance.

THE LEDGER
  Every kept near-miss is appended to `Documentation/near_miss_ledger.jsonl` as one JSON object per line:
  {"fn","before","after","unit"}. That's the worklist a human/agent reads to find and finish them.

Library:  from nearmiss import should_keep, log_near_miss, MIN_NEAR
Usage:    python tools/nearmiss.py --ledger        # show the current near-miss worklist (sorted by %)
          python tools/nearmiss.py --self-test
"""
import os, sys, json
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
LEDGER = os.path.join(ROOT, "Documentation", "near_miss_ledger.jsonl")
MIN_NEAR = 80.0   # default near-miss floor: keep >=80% improvements as seeds (lower than 90 = a more
                  # diverse candidate set with harder obstacles to hand-analyze; still regression-proof)


def should_keep(before, after, min_keep=100.0):
    """Decide whether to keep a freshly-gated body. Returns (keep: bool, is_near_miss: bool).

    min_keep=100.0  -> strict: keep only a full byte-exact 100% (the normal banking gate).
    min_keep=90.0   -> also keep >=90% bodies that IMPROVE the function (near-miss seeds).

    In BOTH modes the keep additionally requires `after > before`, so the match% never drops -> keeping a
    near-miss can never regress this (or, since functions are independent, any other) function."""
    if after is None:
        return (False, False)                       # compile failed / vanished
    b = before if before is not None else 0.0
    if after >= 100.0 and after > b:
        return (True, False)                        # banked (verified, byte-exact)
    if after >= min_keep and after > b:
        return (True, True)                         # near-miss seed (kept for analysis, NOT verified)
    return (False, False)


def log_near_miss(fn, before, after, unit):
    """Append one kept near-miss to the ledger worklist. Returns the record."""
    rec = {"fn": fn, "before": round(before or 0.0, 2), "after": round(after, 2), "unit": unit}
    os.makedirs(os.path.dirname(LEDGER), exist_ok=True)
    with open(LEDGER, "a", encoding="utf-8") as f:
        f.write(json.dumps(rec) + "\n")
    return rec


def read_ledger():
    """Return the near-miss worklist (list of records), de-duplicated to the BEST 'after' per function."""
    if not os.path.exists(LEDGER):
        return []
    best = {}
    for line in open(LEDGER, encoding="utf-8"):
        line = line.strip()
        if not line:
            continue
        try:
            r = json.loads(line)
        except ValueError:
            continue
        if r["fn"] not in best or r["after"] > best[r["fn"]]["after"]:
            best[r["fn"]] = r
    return sorted(best.values(), key=lambda r: -r["after"])


def _self_test():
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c
        print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    chk(should_keep(46.0, 100.0) == (True, False), "100% over 46% -> banked")
    chk(should_keep(46.0, 95.0, min_keep=90.0) == (True, True), "95% over 46% (min 90) -> near-miss")
    chk(should_keep(46.0, 95.0) == (False, False), "95% under strict min 100 -> reject")
    chk(should_keep(98.0, 95.0, min_keep=90.0) == (False, False), "95% UNDER current 98% -> reject (no regression)")
    chk(should_keep(95.0, 95.0, min_keep=90.0) == (False, False), "no strict improvement -> reject")
    chk(should_keep(0.0, 89.9, min_keep=90.0) == (False, False), "below the 90 floor -> reject")
    chk(should_keep(50.0, None) == (False, False), "compile-fail (None) -> reject")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if "--ledger" in a:
        rows = read_ledger()
        for r in rows:
            print("  %6.2f%%  (was %5.2f%%)  %-44s  %s" % (r["after"], r["before"], r["fn"][:44], r["unit"]))
        print("\n%d near-miss seeds awaiting hand-analysis (Documentation/near_miss_ledger.jsonl)" % len(rows))
    else:
        print(__doc__)
