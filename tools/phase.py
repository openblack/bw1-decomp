#!/usr/bin/env python3
"""phase.py - decomp PHASE dashboard: know when to switch from "matching" to "faithful clean-C decomp".

The ratchet (ratchet.py) is a monotonic *guard* (the verified set may only grow). It deliberately can't
answer the strategic question: *are we done with phase 1?* This tool answers that.

THE TWO PHASES
  PHASE 1 - MATCHING:  bank every MATCHABLE-class function via the MSVC 6.0 objdiff meter (the ratchet).
                       Tools: asmwrap (_emit/data-reloc/mnemonic), retwidth, bitfield, vforward, permute...
  PHASE 2 - CLEAN-C:   write faithful, readable C in src/c, verified by the RELEASE md5 (174b1a64...),
                       NOT by the MSVC6 meter. This is where the meter-unmatchable INTRA_OBJ_CALL class
                       gets done (clang compiles it into the release; the md5 proves it byte-exact).

WHY YOU CAN'T JUST CHASE THE RATCHET TO 100%
  The MSVC6 staging meter has a structural CEILING: intra-unit calls are COMDAT relocations in MSVC6 but
  direct calls in the clang target, so that class never scores 100% in the meter (see near_miss_analysis.md
  / baw-build-objdiff memory). So the matching ratchet's reachable max is (total - CEILING), not total.

THE SWITCH-GEARS SIGNAL
  Phase 1 is "done" when the MATCHABLE classes are exhausted -- i.e. the unbanked functions are all CEILING
  (meter-unmatchable) or genuinely HARD (multi-block needing full reconstruction). Concretely: switch when
  `matchable_remaining` (near-misses still in a fixable class) drops near zero. Then the remaining work is
  better done as clean C verified by the md5 -- phase 2.

Usage:
  python tools/phase.py                  # fast dashboard from the objdiff report (no build)
  python tools/phase.py --classify [N]   # split the near-miss band into MATCHABLE/CEILING/HARD (needs build;
                                         #   N = cap functions classified, for a quick sample)
  python tools/phase.py --release        # build the release preset + verify md5 == 174b1a64 (phase-2 gate)
  python tools/phase.py --self-test
"""
import os, re, sys, subprocess, glob
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

RELEASE_MD5 = "174b1a64e74b2321f3c38ccc8a511e78"   # original B&W v1.20 no-cd; the phase-2 ground truth
RELEASE_EXE = os.path.join(ROOT, "cmake-build-presets", "release", "runblack-reassembled.exe")  # the built binary
SWITCH_THRESHOLD = 20   # when fewer than this many MATCHABLE near-misses remain, phase 1 is effectively done


def _bucket(pcts):
    """Pure: given an iterable of per-function match% (None allowed), return the phase buckets.

    banked = exactly matched (>=100); near = the iteration band (0 < pct < 100); stub = not attempted
    (None or 0). Kept pure so the self-test can exercise it without a report/build."""
    banked = near = stub = total = 0
    for p in pcts:
        total += 1
        if p is None or p <= 0.0:
            stub += 1
        elif p >= 100.0:
            banked += 1
        else:
            near += 1
    return {"total": total, "banked": banked, "near": near, "stub": stub}


def dashboard():
    """Fast, build-independent: bucket every function in the current objdiff report and print the phase view."""
    import verify
    rep = verify.load_report()
    b = _bucket(p for _u, _fn, p, _d in verify.iter_functions(rep))
    t = max(b["total"], 1)
    print("=== decomp phase dashboard (from report.json; no build) ===")
    print("  total functions     : %d" % b["total"])
    print("  BANKED (meter 100%%) : %d  (%.1f%% of all)" % (b["banked"], 100.0 * b["banked"] / t))
    print("  near-miss (1-99%%)   : %d   <- phase-1 iteration targets" % b["near"])
    print("  stub (0%%/none)      : %d" % b["stub"])
    print("  NOTE: the matching ceiling is (total - intra-obj-call); run --classify for the exact split,")
    print("        and --release to verify the phase-2 ground truth (md5 %s)." % RELEASE_MD5[:8])
    return b


# nmdiag classes grouped by what they mean for the phase decision.
_MATCHABLE = {"DATA_RELOC", "ENCODING", "BODY_DIFF"}   # fixable now with existing tools (phase 1)
_CEILING = {"INTRA_OBJ_CALL"}                          # meter-unmatchable -> phase 2 (clean-C + md5)
_HARD = {"LARGE_FRAGMENT"}                             # multi-block -> deep reconstruction


def classify_remaining(limit=None):
    """Classify the near-miss band (0<pct<100) via nmdiag into MATCHABLE / CEILING / HARD and emit the
    switch-gears signal. Needs the build (nmdiag.diag runs a per-function objdiff). `limit` caps how many
    are classified (for a quick sample); None = all."""
    import verify, nmdiag
    from collections import Counter
    rep = verify.load_report()
    c = Counter()
    n = 0
    for _u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (0.0 < pct < 100.0):
            continue
        name = dem if (dem and "@" in dem) else fn
        try:
            c[nmdiag.diag(name, pct)["klass"]] += 1
        except Exception:
            c["(error)"] += 1
        n += 1
        if limit and n >= limit:
            break
    matchable = sum(c[k] for k in _MATCHABLE)
    ceiling = sum(c[k] for k in _CEILING)
    hard = sum(c[k] for k in _HARD)
    print("=== near-miss classification (%d functions%s) ===" % (n, " sampled" if limit else ""))
    for k, v in c.most_common():
        print("  %-16s %4d" % (k, v))
    print("  MATCHABLE (bank now, phase 1)        : %d" % matchable)
    print("  CEILING   (intra-obj-call, phase 2)  : %d" % ceiling)
    print("  HARD      (multi-block reconstruct)  : %d" % hard)
    switch = matchable < SWITCH_THRESHOLD
    print("  SWITCH TO PHASE 2 (clean-C + md5)?   : %s" % (
        "YES - matchable classes exhausted" if switch else "NOT YET - %d matchable remain" % matchable))
    return {"counts": dict(c), "matchable": matchable, "ceiling": ceiling, "hard": hard, "switch": switch}


def current_release_md5():
    """Hash the EXISTING release exe (no rebuild) -- the FAST phase-2 ground-truth check. Returns
    (md5_or_None, ok). Build-independent: confirms the binary is still byte-exact without touching a build,
    so it's safe to run while other builds are going. (Validated: a clean build yields 174b1a64...)"""
    import hashlib
    if not os.path.exists(RELEASE_EXE):
        return None, False
    md5 = hashlib.md5(open(RELEASE_EXE, "rb").read()).hexdigest()
    return md5, (md5 == RELEASE_MD5)


def release_md5():
    """Rebuild the release preset, then hash the produced exe (the PHASE-2 gate). SLOW (full build).
    Hashing RELEASE_EXE directly is authoritative -- no fragile build-log parsing. (md5, ok, detail)."""
    r = subprocess.run(["cmake", "--workflow", "--preset", "release"], cwd=ROOT, capture_output=True, text=True)
    md5, ok = current_release_md5()
    detail = "build rc=%d" % r.returncode + ("" if ok else " | md5=%s expected=%s" % (md5, RELEASE_MD5))
    return md5, ok, detail


def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    b = _bucket([100.0, 100.0, 50.0, 0.0, None, 99.9])
    chk(b == {"total": 6, "banked": 2, "near": 2, "stub": 2}, "bucket: 2 banked / 2 near / 2 stub")
    chk(_bucket([])["total"] == 0, "bucket: empty")
    chk(_bucket([100.0])["banked"] == 1 and _bucket([0.0])["stub"] == 1, "bucket: edges (100 banked, 0 stub)")
    chk(_MATCHABLE.isdisjoint(_CEILING) and _MATCHABLE.isdisjoint(_HARD), "class groups are disjoint")
    chk(RELEASE_MD5 == "174b1a64e74b2321f3c38ccc8a511e78", "release md5 ground truth")
    chk(RELEASE_EXE.endswith("runblack-reassembled.exe"), "release exe path")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1


if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if "--release-check" in a:
        md5, okk = current_release_md5()
        print("current release exe md5:", md5, "->", "OK byte-exact (174b1a64)" if okk else "MISMATCH / not built")
    elif "--release" in a:
        md5, okk, detail = release_md5()
        print("release md5:", md5, "->", "OK (byte-exact)" if okk else "MISMATCH", "|", detail)
    elif "--classify" in a:
        lim = next((int(x) for x in a if x.isdigit()), None)
        classify_remaining(lim)
    else:
        dashboard()
