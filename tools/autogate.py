#!/usr/bin/env python3
"""autogate.py - objdiff-GATED batch lifting: harvest only byte-verified coverage.

The first big push to a 100% *matching* decomp. It runs a bulk lifter (default:
``autolift.py --apply``, which fills trivial ``return 0`` stubs) one candidate file at a time
and keeps each file's edit only when it is provably a win.

Gate (per-function, NOT per-unit): after lifting a single file and recompiling that one staging
unit, autogate keeps the edit iff the set of byte-exact (100%-matching) functions GAINED at
least one new member AND lost none. Otherwise it restores the file's pre-edit content (by
rewriting the saved bytes back, not via ``git checkout``, so prior uncommitted lifts are
preserved) and recompiles. Net result: a provable coverage gain, never a regression. Prints
gains/regressions and refreshes the verified manifest.

A full rebuild brackets the per-file loop on both ends, because incremental builds can silently
skip units and leave stale ``.obj``s; only a from-scratch rebuild yields an authoritative count.

Usage:
  python tools/autogate.py            # gate an autolift --apply sweep
  python tools/autogate.py --dry      # show before-state + candidate count only
  python tools/autogate.py --self-test

Prereqs: clean (build-able) tree + configured objdiff (see Path_to_100.md). Run from repo root
with the venv on PATH.
"""
import os, re, sys, json, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
OBJDIFF = os.path.join(ROOT, "cmake-build-presets", "objdiff")

def _unit_matches():
    """Build a fresh objdiff report and return {unit_name: fuzzy_match_percent}, restricted to
    the staging (hand-lifted .cpp) units.

    These are the only units this tool can improve, so non-staging units are filtered out by
    testing whether the unit's objdiff base_path lives under a staging directory.
    """
    import verify
    verify.generate_report()
    # utf-8: the JSON report is text written by objdiff/verify (not raw asm/source bytes).
    with open(verify.REPORT, encoding="utf-8") as fh:
        rep = json.load(fh)
    cfg = {u["name"]: u.get("base_path", "") for u in verify._objdiff_cfg().get("units", [])}
    out = {}
    for u in rep.get("units", []):
        n = u.get("name", "")
        # Keep only units whose objdiff base path is a staging .cpp: those are the liftable ones.
        if "staging" in cfg.get(n, ""):
            out[n] = (u.get("measures") or {}).get("fuzzy_match_percent")
    return out

import functools as _ft
@_ft.lru_cache(maxsize=1)
def _src_to_unit():
    """staging-source relpath -> objdiff unit name."""
    import verify
    out = {}
    for u in verify._objdiff_cfg().get("units", []):
        m = re.search(r"src/staging/(.+?)\.obj$", u.get("base_path", "").replace("\\", "/"))
        if m: out["src/staging/" + m.group(1)] = u["name"]
    return out

def _verified_set():
    """Build a fresh objdiff report and return the set of byte-exact functions.

    Each element is a ``(unit_name, function_symbol)`` tuple for every function at 100%
    match. This 100%-set is the metric autogate maximizes: a file edit is kept only when it
    grows this set (and shrinks it for none).
    """
    import verify
    verify.generate_report()
    with open(verify.REPORT, encoding="utf-8") as fh:   # utf-8: text JSON report (see _unit_matches)
        rep = json.load(fh)
    s = set()
    for un, fn, pct, dem in verify.iter_functions(rep):
        if pct is not None and pct >= 100.0: s.add((un, fn))
    return s

def run_sweep():
    """Run the gated batch-lift over every autolift candidate file (the tool's main driver).

    For each candidate staging file: back up its bytes, apply ``autolift.py --apply`` to it,
    recompile that one unit, and KEEP the edit iff the byte-exact (100%) function set gained at
    least one new member and lost none; otherwise restore the saved bytes and recompile. A full
    rebuild brackets the loop on both ends so the reported baseline and final counts are
    authoritative (incremental builds can leave stale .objs). Writes a JSON log to
    ``<objdiff>/autogate_log.json``, prints a gains/regressions summary, and records a ratchet
    audit entry. Returns None.
    """
    import verify, ratchet
    py = sys.executable
    files = subprocess.run([py, "tools/autolift.py", "--list-files"], cwd=ROOT,
                           capture_output=True, text=True).stdout.split()
    print("[autogate] %d candidate files; PER-FUNCTION gate (keep iff #verified rises, no regressions)" % len(files))
    print("[autogate] GUARD: full rebuild for a consistent slate + authoritative baseline ...")
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    base = _verified_set()                                   # authoritative baseline (post full rebuild)
    print("  baseline verified functions: %d" % len(base))
    cur = set(base)
    kept = reverted = failed = 0; gains = []; log = []
    for i, rel in enumerate(files):
        rel = rel.replace("\\", "/")
        src = os.path.join(ROOT, rel)
        # latin-1: a byte-preserving codec (every byte 0-255 round-trips), so reading then writing
        # back leaves untouched parts of the .cpp bit-identical regardless of its real encoding.
        # This backup preserves prior uncommitted lifts so a revert restores exactly the pre-edit file.
        with open(src, encoding="latin-1") as fh:
            orig = fh.read()                                # PRE-EDIT backup
        subprocess.run([py, "tools/autolift.py", "--only", rel, "--apply"], cwd=ROOT, capture_output=True)
        rc = verify.recompile_unit(src)
        if rc is not True:                                  # bad C -> restore pre-edit content
            # recompile_unit returns True on success, else the compiler output; scrape up to the
            # first 3 "error: ..." lines from it so the log shows why the unit failed to build.
            log.append({"file": rel, "reason": "bad-C", "error": re.findall(r"error[: ].*", str(rc))[:3]})
            with open(src, "w", encoding="latin-1") as fh:  # latin-1 again: round-trip the saved bytes
                fh.write(orig)
            failed += 1; continue
        after = _verified_set()
        new = after - cur                                   # functions that newly reached 100%
        lost = cur - after                                  # any regression
        # Gate criterion: keep this file's edit ONLY if it added >=1 newly-verified function and
        # broke none. This per-function set test (not a per-unit percent threshold) is autogate's
        # actual gate; it differs from liftgate.decide's percent-improvement rule.
        if new and not lost:
            kept += 1; cur = after; gains.append((rel, len(new)))
        else:                                               # no net verified gain -> restore pre-edit content
            log.append({"file": rel, "reason": "no-gain" if not lost else "regression",
                        "new": len(new), "lost": len(lost)})
            with open(src, "w", encoding="latin-1") as fh:  # latin-1 again: round-trip the saved bytes
                fh.write(orig)
            verify.recompile_unit(src); reverted += 1
        if (i + 1) % 10 == 0:
            print("  ...%d/%d  kept=%d revert=%d bad-C=%d  verified=%d" % (i + 1, len(files), kept, reverted, failed, len(cur)))
    with open(os.path.join(OBJDIFF, "autogate_log.json"), "w") as fh:
        json.dump({"gains": gains, "reverts": log}, fh, indent=2)
    base_n = len(base)
    # SECOND full rebuild: the per-file loop recompiles units incrementally, which can leave stale
    # .objs (skipped/cached units). A from-scratch rebuild forces every unit to recompile so the
    # final verified count below is authoritative and comparable to the (also-rebuilt) baseline.
    print("\n[autogate] GUARD: full rebuild for the AUTHORITATIVE final count (incremental drifts) ...")
    subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff"], cwd=ROOT, capture_output=True)
    final = _verified_set()
    lost = base - final                                     # RATCHET: a verified fn must never regress
    print("\n=== gated sweep result (authoritative) ===")
    print("  candidate files       : %d" % len(files))
    print("  KEPT files            : %d   (incremental: kept=%d revert=%d bad-C=%d)" % (kept, kept, reverted, failed))
    print("  VERIFIED (full rebuild): %d -> %d   (net %+d)" % (base_n, len(final), len(final) - base_n))
    if lost:
        print("  !!! RATCHET ALARM: %d previously-verified function(s) REGRESSED:" % len(lost))
        for x in sorted("%s::%s" % t for t in lost)[:15]: print("        LOST " + x)
    ratchet.audit({"action": "autogate", "base": base_n, "final": len(final),
                   "kept_files": kept, "lost": len(lost), "bad_c": failed})
    for rel, n in sorted(gains, key=lambda x: -x[1])[:12]:
        print("    +%-3d (incremental)  %s" % (n, rel))
    print("\n[autogate] %s | refresh manifest: python tools/portledger.py" %
          ("CLEAN (ratchet OK)" if not lost else "REGRESSION - DO NOT TRUST until investigated"))

def _self_test():
    """Smoke-test imports and the keep-if-better helper, returning 0 on success else 1.

    NOTE: this is a smoke test, not a test of run_sweep's gate. run_sweep needs a built tree +
    configured objdiff, so it cannot run here; the checks below only confirm the entry points are
    importable and that liftgate's keep-if-better direction is sane. autogate's own gate (keep iff
    the byte-exact function set grew and shrank for none) is NOT liftgate.decide and is not
    exercised here.
    """
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(callable(run_sweep), "run_sweep defined")
    chk(callable(_unit_matches) and callable(_src_to_unit), "helpers defined")
    # Sanity-check liftgate's keep-if-better direction (a related helper, NOT autogate's gate):
    # a higher "after" percent should be kept; a lower one should not.
    import liftgate
    chk(liftgate.decide(50.0, 80.0)[0] and not liftgate.decide(80.0, 50.0)[0], "liftgate keep-if-better sane")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--dry" in a:
        b = _unit_matches()
        print("staging units: %d  fully-matched: %d" % (len(b), sum(1 for v in b.values() if v == 100.0)))
        # Use sys.executable (the running interpreter), matching run_sweep, so --dry invokes
        # autolift under the same venv/Python rather than a bare "python" that may be absent.
        subprocess.run([sys.executable, "tools/autolift.py"], cwd=ROOT); sys.exit(0)
    run_sweep()
