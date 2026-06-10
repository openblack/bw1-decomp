#!/usr/bin/env python3
"""ratchet.py - the verified-functions ratchet: a monotonic guard against silent regressions.

Hard invariant on the road to 100%: the set of byte-VERIFIED (objdiff 100%) functions must only
GROW. A gated lift that *reverts* a candidate must never erase a previously-verified function -- the
git-checkout revert bug silently dropped 2368 -> 2018 and nothing complained. This tool records the
high-water verified SET and FAILS LOUDLY the moment any verified function regresses.

  python tools/ratchet.py check              # current vs high-water; list regressions; exit 1 if any lost
  python tools/ratchet.py record             # advance the high-water mark (refuses if a regression exists)
  python tools/ratchet.py guard -- <cmd...>  # snapshot, run cmd, assert no verified fn was lost (auto-alarm)
  python tools/ratchet.py --self-test

State: cmake-build-presets/objdiff/verified_ratchet.json   (local, regenerable).
Library: from ratchet import current_verified, compare
"""
import os, sys, json, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
RATCHET = os.path.join(ROOT, "cmake-build-presets", "objdiff", "verified_ratchet.json")
AUDIT = os.path.join(ROOT, "cmake-build-presets", "objdiff", "gate_audit.jsonl")

def current_verified():
    """the set of functions objdiff reports at 100% right now (fresh report; reads current objs)."""
    import verify
    verify.generate_report()
    with open(verify.REPORT, encoding="utf-8") as fh:
        rep = json.load(fh)
    # iter_functions yields (unit, function, pct, demangled); keep only the byte-exact (100%)
    # ones, keyed "<unit>::<function>" so the ratchet set is unambiguous across units.
    return {"%s::%s" % (u, fn) for u, fn, pct, dem in verify.iter_functions(rep) if pct is not None and pct >= 100.0}

def authoritative_verified():
    """the TRUSTWORTHY verified set: a CLEAN FULL rebuild then a fresh report. NOTE: plain
    `cmake --build` SILENTLY SKIPS units (e.g. header edits, or same-size source re-edits) leaving
    stale .objs -> inflated/wrong counts that have polluted this ratchet before. `--clean-first` is
    the only reliable measure; always use this (not current_verified alone) for record/guard."""
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff", "--clean-first"],
                   cwd=ROOT, capture_output=True)
    return current_verified()

def _load():
    """Read the persisted high-water verified set from RATCHET; return {} if absent/corrupt.

    Returns a `set` of "<unit>::<function>" names (the empty set on any error, so a fresh
    checkout with no ratchet file yet is treated as a zero high-water mark, never a crash)."""
    try:
        with open(RATCHET, encoding="utf-8") as fh:
            return set(json.load(fh).get("verified", []))
    except Exception:
        return set()

def _save(s, stamp=None):
    """Persist the verified set `s` (and an optional git `stamp`) as the new high-water JSON.

    Creates the parent directory if needed -- on a fresh checkout `cmake-build-presets/objdiff/`
    may not exist yet, and without this `record`/`reset`/`guard` would raise FileNotFoundError."""
    os.makedirs(os.path.dirname(RATCHET), exist_ok=True)
    with open(RATCHET, "w", encoding="utf-8") as fh:
        json.dump({"high_water": len(s), "stamp": stamp, "verified": sorted(s)}, fh, indent=0)

def compare(cur, hw):
    """returns (lost, gained) sets. lost = REGRESSIONS (were verified, now not)."""
    return hw - cur, cur - hw

def audit(entry):
    """Append one JSONL audit record (action + counts) to AUDIT; best-effort, never raises.

    A git stamp is added under key "t" if the caller did not supply one. All errors are
    swallowed -- the audit log is diagnostic only and must not break a check/record/guard run."""
    try:
        os.makedirs(os.path.dirname(AUDIT), exist_ok=True)
        entry = dict(entry); entry.setdefault("t", _stamp())
        with open(AUDIT, "a", encoding="utf-8") as fh:
            fh.write(json.dumps(entry) + "\n")
    except Exception:
        pass

def _stamp():
    """Return the current commit as 'HEAD:<short-sha>' (or '?' if git is unavailable)."""
    try:
        out = subprocess.run(["git", "rev-parse", "--short", "HEAD"], cwd=ROOT,
                             capture_output=True, text=True).stdout.strip()
        return "HEAD:" + out if out else "?"
    except Exception:
        return "?"

def _self_test():
    """Exercise compare()'s lost/gained set logic on synthetic high-water/current sets.

    Pure-logic only (no build, no objdiff); returns 0 if every assertion passes, else 1."""
    ok = True
    # chk accumulates the overall pass/fail into the enclosing `ok` via `nonlocal`, so a single
    # failing assertion flips the final result while still printing every individual line.
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    hw = {"a", "b", "c"}; cur = {"b", "c", "d"}
    lost, gained = compare(cur, hw)
    chk(lost == {"a"} and gained == {"d"}, "compare detects lost + gained")
    chk(compare({"a", "b", "c"}, {"a", "b"}) == (set(), {"c"}), "pure growth: no loss")
    chk(compare({"a"}, {"a", "b", "c"}) == ({"b", "c"}, set()), "regression: 2 lost")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def main():
    """CLI dispatch for the ratchet subcommands (check / record / guard / reset / --self-test).

    Returns a process exit code: 0 on success/no-regression, 1 when a regression is detected
    or recording is refused, 2 on a usage error. With no args, prints the module help."""
    a = sys.argv[1:]
    if "--self-test" in a: return _self_test()
    if not a: print(__doc__); return 0
    cmd = a[0]
    if cmd == "guard":
        # Everything after a literal "--" is the wrapped command; without "--" we take all
        # args after "guard". This lets the wrapped command carry its own flags unambiguously.
        rest = a[a.index("--") + 1:] if "--" in a else a[1:]
        if not rest: print("usage: ratchet.py guard -- <cmd...>"); return 2
        before = current_verified()
        print("[ratchet] baseline verified: %d  | running: %s" % (len(before), " ".join(rest)))
        subprocess.run(rest, cwd=ROOT)
        after = current_verified()
        lost, gained = compare(after, before)
        audit({"action": "guard", "cmd": " ".join(rest), "before": len(before),
               "after": len(after), "lost": len(lost), "gained": len(gained)})
        if lost:
            print("\n  !!! RATCHET ALARM: %d previously-verified function(s) REGRESSED !!!" % len(lost))
            for x in sorted(lost)[:25]: print("      LOST  " + x)
            print("  (the command erased verified work - investigate before continuing)")
            return 1
        print("[ratchet] OK: +%d verified, 0 regressions (%d -> %d)" % (len(gained), len(before), len(after)))
        # No regression occurred (`not lost`), so opportunistically fold any newly-verified
        # functions into the high-water mark. We UNION with the persisted set rather than
        # overwrite it: guard runs `current_verified()` (a fast, possibly-stale build) -- it must
        # never SHRINK the high-water, which only `record`/`reset` (authoritative clean rebuilds)
        # are allowed to do.
        if not lost: _save(after | _load(), _stamp())
        return 0
    hw = _load()
    if cmd == "reset":
        # re-baseline to a CLEAN-rebuild authoritative set. Use ONLY to correct a high-water that
        # was polluted by stale `cmake --build` records (the cmake-skip gremlin) -- NOT to bypass a
        # real regression. Prints the delta so any drop is visible/justified.
        cur = authoritative_verified()
        lost, gained = compare(cur, hw)
        print("[ratchet] RESET (clean rebuild): high-water %d -> %d  (gained %d, dropped %d)"
              % (len(hw), len(cur), len(gained), len(lost)))
        if lost: print("  dropped (were stale-counted, not real): %s" % sorted(lost)[:6])
        _save(cur, _stamp()); audit({"action": "reset", "high_water": len(cur), "dropped": len(lost)})
        return 0
    if cmd == "record":
        cur = authoritative_verified()                 # CLEAN rebuild -- never trust a skipped build
        lost, gained = compare(cur, hw)
        if lost:
            print("[ratchet] REFUSING to record: %d regressions present (fix first). e.g. %s"
                  % (len(lost), sorted(lost)[:3])); return 1
        _save(cur, _stamp()); audit({"action": "record", "high_water": len(cur)})
        print("[ratchet] high-water advanced to %d (+%d)" % (len(cur), len(gained))); return 0
    cur = current_verified()                           # fast (may be stale; `record` is authoritative)
    lost, gained = compare(cur, hw)
    if cmd == "check":
        print("[ratchet] high-water=%d  current=%d  gained=%d  LOST=%d (fast check; `record` does a clean rebuild)"
              % (len(hw), len(cur), len(gained), len(lost)))
        if lost:
            print("  !!! REGRESSION: %d verified function(s) lost since high-water:" % len(lost))
            for x in sorted(lost)[:25]: print("      " + x)
            return 1
        print("  OK: no regression (current >= high-water on the verified set)")
        return 0
    print(__doc__); return 0

if __name__ == "__main__":
    sys.exit(main())
