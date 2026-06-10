#!/usr/bin/env python3
"""struct_apply.py - robust, gated applicator for binary-truth struct sizes (bank the ??_G wins safely).

struct_sizes.py finds structs whose declared size != binary truth (from the ??_G `push <size>`).
Padding a struct to truth makes its ??_G verify (+1). But headers feed BOTH objdiff and release, and
sizes cascade through inheritance/containment, so a naive apply breaks the build or regresses. This
applies with every lesson baked in:
  - GROWTH-ONLY: skip truth<=declared (mis-read ??_G, e.g. GContainerInfo 328->20; can't shrink anyway)
  - BASE-RELATIVE padding: subtract a fixed base's growth (C++ `:public` AND C `struct super;`)
  - COMPILE-GATE loop: clean-build; on static_assert failure, skip the culprit structs and retry
  - REGRESSION-GATE: never bank if any previously-verified fn drops (ratchet); fold_graph explains folds
  - RELEASE-SAFE: caller must confirm the release md5 is unchanged before recording (headers are shared)

Usage:
  python tools/struct_apply.py --dry            # converge to a clean+regression-free set, REPORT, revert
  python tools/struct_apply.py --apply          # same, but leave the safe wins staged (then verify md5)
  python tools/struct_apply.py --revert
  python tools/struct_apply.py --self-test

Known limitations (the gates catch the fallout safely, but be aware):
  - BASE-RELATIVE padding only subtracts the DIRECT base's growth (apply_all). If a grandparent
    grows while the direct parent does not, the derived struct's pad is off; the compile gate then
    rejects+skips it (correct outcome, just fewer wins). Deep hierarchies are not auto-handled.
  - Regression attribution (run) splits the objdiff entry on '::' and takes the last segment as the
    mangled function. A demangled name that itself contains '::' would attribute to the wrong
    fragment; in practice the entries are 'unit::<mangled>' so this is fine.
  - A failed release build is reported as a BUILD error (not a false 'release-unsafe'), see
    _release_md5 / run; the tree is still reverted.
"""
import os, re, sys, glob, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def revert_headers():
    """Discard ALL uncommitted edits under black/ (git checkout). Used to roll the headers
    back to the committed baseline between rounds and on every abort/exit path, so a partial
    apply never leaks into the working tree."""
    subprocess.run(["git", "checkout", "--", "black/"], cwd=ROOT, capture_output=True)

def bases():
    """Return {struct: direct_base} for every struct that has one base, read from the headers.

    Two declaration shapes are recognised (the decomp uses both):
      - C   composition-as-inheritance:  `struct D { struct B super; ... };`
      - C++ real inheritance:            `class D : public B { ... };`
    setdefault keeps the FIRST base seen for a name (the two forms describe the same struct in
    the C and C++ sections of a header, so they agree)."""
    out = {}
    for hf in glob.glob(os.path.join(ROOT, "black/*.h")):
        # latin-1 = lossless byte passthrough; headers are ASCII-ish. `with` closes the handle
        # promptly so a later `git checkout`/rebuild in the same run can't hit a locked file.
        with open(hf, encoding="latin-1") as fh:
            t = fh.read()
        for m in re.finditer(r"\nstruct (\w+)\s*\{\s*\n\s*struct (\w+) super;", t):
            out.setdefault(m.group(1), m.group(2))
        for m in re.finditer(r"\nclass (\w+)\s*:\s*public\s+(\w+)", t):
            out.setdefault(m.group(1), m.group(2))
    return out

_GRAPH = None
def _graph():
    """{struct: {direct deps}} = base (C/C++) + every `struct X <name>;` member (incl arrays), cached."""
    global _GRAPH
    if _GRAPH is not None: return _GRAPH
    g = {}; B = bases()
    for hf in glob.glob(os.path.join(ROOT, "black/*.h")):
        with open(hf, encoding="latin-1") as fh:   # `with`: close before any later git op
            t = fh.read()
        for m in re.finditer(r"\nstruct (\w+)\s*\{(.*?)\n\};", t, re.S):
            cls, body = m.group(1), m.group(2)
            # Capture every member's TYPE name. The regex `(?:struct )?(\w+)\s+\w+(?:[...])?;`
            # matches `Type name;` and `Type name[N];`, with or without the `struct` keyword
            # (C++ writes `Type name;`). It over-captures scalar/typedef typenames too, but those
            # are not structs and get filtered out downstream (only deps that are themselves
            # in-mods / grown structs ever matter), so the over-capture is harmless.
            d = set(re.findall(r"\n\s*(?:struct )?(\w+)\s+\w+\s*(?:\[[^\]]*\])?;", body))
            if B.get(cls): d.add(B[cls])
            g.setdefault(cls, set()).update(d)
    for c, b in B.items():
        g.setdefault(c, set()).add(b)
    _GRAPH = g
    return g

def _deps_transitive(cls):
    """all structs `cls` transitively builds on (base + member containment closure)."""
    g = _graph(); seen = set(); stack = list(g.get(cls, ()))
    while stack:
        x = stack.pop()
        if x in seen: continue
        seen.add(x); stack.extend(g.get(x, ()))
    return seen

def disagreements_growth():
    """only GROWTH disagreements (truth > declared); filters mis-read ??_G shrinks."""
    import struct_sizes
    return [(c, d, t, h) for c, d, t, h in struct_sizes.disagreements() if t > d]

def apply_all(skip=()):
    """apply growth fixes (minus skip) with base-relative padding. returns {cls: hdr}."""
    import struct_sizes
    dis = disagreements_growth()
    grow = {c: t - d for c, d, t, h in dis}     # grow[cls] = bytes this struct must gain
    B = bases()
    mods = {}
    for cls, d, t, hdr in dis:
        if cls in skip: continue
        base = B.get(cls)
        # base_growth = how much the DIRECT base grew. A derived struct's declared size already
        # includes the base's OLD size, so when the base is also being padded we must subtract its
        # growth to avoid double-counting (the base's new bytes already push everything down). If
        # the base is being skipped (reverted to its old size) it does NOT grow, so bg=0.
        # NOTE: only the direct base is considered; a one-level single-inheritance assumption.
        bg = grow.get(base, 0) if (base and base not in skip) else 0
        if struct_sizes.fix_struct(cls, d, t, hdr, base_growth=bg): mods[cls] = hdr
    return mods

def _clean_build():
    """Do a full clean rebuild of the objdiff preset. Clean (not incremental) so no stale .obj
    survives from a previous round's edits. Returns (ok, log): ok=True iff the build exited 0,
    log = combined stdout+stderr (scanned by _failing_structs for static_assert failures)."""
    r = subprocess.run(["cmake", "--build", "cmake-build-presets/objdiff", "--clean-first"],
                       cwd=ROOT, capture_output=True, text=True, errors="ignore")
    return r.returncode == 0, (r.stdout or "") + (r.stderr or "")

def _failing_structs(log):
    """Parse the build log for the struct names in failed `static_assert(sizeof(struct X)==N)`
    lines. The static_assert text always reads `sizeof(struct <Name>)`, so the names of all
    structs whose padding made their size-assert fail are recovered as a set."""
    return set(re.findall(r"sizeof\(struct (\w+)\)", log))

_HDR = None
def _header_of():
    """Return (and cache) {class_name: header_path} for every declared struct, so a culprit can
    be mapped back to the header it lives in (used by the header-mate fallback in _culprits)."""
    global _HDR
    if _HDR is None:
        import struct_sizes
        _HDR = {c: h for c, (s, h) in struct_sizes.declared_sizes().items()}
    return _HDR

def _culprits(failing, mods):
    """map each failing struct to in-mods struct(s) to skip: its TRANSITIVE fixed deps (prefer skipping
    the grown base/member, not the victim); self if fixed; else FALLBACK to applied header-mates
    (the culprit almost always lives in the same header) so convergence is guaranteed."""
    cul = set(); hdr = _header_of()
    for f in failing:
        # TIER 1: the failing struct's transitive deps that we grew -> skip the grown base/member,
        # not the victim (the victim's assert failed only because something under it moved).
        deps = {x for x in _deps_transitive(f) if x in mods}
        if deps: cul |= deps
        # TIER 2: nothing under it was grown but IT was -> skip itself.
        elif f in mods: cul.add(f)
        # TIER 3 (fallback): unattributable -> skip every applied struct in its header. The
        # culprit almost always shares the header, so this guarantees forward progress and
        # therefore convergence (some struct gets skipped every failing round).
        else:
            fh = hdr.get(f)
            cul |= {c for c in mods if hdr.get(c) == fh}
    return cul

def run(apply=False, max_rounds=6):
    """Converge to the largest safe set of struct-size fixes, then (if apply) leave it staged.

    Each round re-applies ALL growth fixes minus an accumulating `skip` set, then runs three
    gates in order; any failure adds the offending structs to `skip` and starts the next round:
      1. COMPILE gate    -- clean objdiff build must succeed (static_assert(sizeof)==truth);
                            culprits = the fixed structs blamed for the failing asserts.
      2. REGRESSION gate -- no previously-verified function may drop (ratchet high-water);
                            culprits = the fixed structs owning the regressed symbols.
      3. RELEASE-MD5 gate (apply only) -- a clean release rebuild must still hash to BASELINE_MD5,
                            proving the shared headers did not change release codegen.
    On a clean+regression-free round it reports the wins; with apply=True it also runs the md5
    gate and, if safe, leaves the edits staged (caller then records + commits). Every abort path
    reverts black/. Returns None (it is a driver; results are printed)."""
    import ratchet
    skip = set()
    for rnd in range(1, max_rounds + 1):
        # Re-apply from scratch each round (revert -> apply_all minus skip) rather than
        # incrementally undoing the last culprit: this keeps base_growth correct (a struct's
        # padding depends on whether its base is in `skip` this round) and guarantees a clean tree.
        revert_headers()
        mods = apply_all(skip)
        ok, log = _clean_build()
        if not ok:
            fails = _failing_structs(log)
            cul = _culprits(fails, mods)
            print("round %d: applied %d -> BUILD FAILED (%d struct asserts); skipping %d culprits"
                  % (rnd, len(mods), len(fails), len(cul)))
            if not cul:
                print("   unattributable failing structs:", sorted(fails)[:12])
                print("   reverting all"); revert_headers(); return
            skip |= cul; continue
        # clean build OK -> measure objdiff regressions vs the trusted high-water
        before = ratchet._load()
        after = ratchet.current_verified()                       # report off the just-built clean objs
        lost, gained = ratchet.compare(after, before)
        print("round %d: applied %d, BUILD OK -> +%d wins, %d regressions" % (rnd, len(mods), len(gained), len(lost)))
        if lost:
            cul = set()
            for r in sorted(lost):
                # Each regressed entry is "unit::function"; take the trailing function (its
                # MSVC-mangled name) and recover the owning class from one of two shapes:
                #   ??_G<Class>@@...  -> the scalar-deleting-destructor / vtable marker
                #   ?<method>@<Class>@@... -> an ordinary member function
                # If that class is one we just grew, blame it (add to culprits to skip next round).
                tail = r.split("::")[-1]
                m = re.match(r"\?\?_G(\w+)@@", tail) or re.match(r"\?\w+@(\w+)@@", tail)
                if m and m.group(1) in mods: cul.add(m.group(1))
            print("   regressions:", [r.split("::")[-1][:40] for r in sorted(lost)][:8])
            if not cul:
                print("   regressions not attributable to a fixed struct -> reverting all"); revert_headers(); return
            skip |= cul; continue
        # clean objdiff build + no regression -> now the RELEASE-MD5 gate (headers are shared)
        print("\nobjdiff: +%d struct/??_G wins, 0 regressions (skipped %d culprits)" % (len(gained), len(skip)))
        if not apply:
            revert_headers(); print("(dry run -- reverted)"); return
        print("verifying release md5 (clean release rebuild) ...")
        md5 = _release_md5()
        if md5 in ("BUILD-FAILED", "NO-EXE"):
            # A failed release build is a BUILD error, not proof the edits changed codegen --
            # report it as such (still revert so the tree is left clean).
            print("RELEASE BUILD FAILED (%s) -> cannot verify release safety; reverting ALL" % md5)
            revert_headers(); return
        if md5 != BASELINE_MD5:
            print("RELEASE MD5 CHANGED (%s != baseline) -> struct edits are NOT release-safe; reverting ALL" % md5)
            revert_headers(); return
        print("RELEASE MD5 PRESERVED (%s). SAFE: +%d wins staged." % (md5, len(gained)))
        print("NEXT: `python tools/ratchet.py record` to bank, then commit headers.")
        return
    print("did not converge in %d rounds -> reverting" % max_rounds); revert_headers()

BASELINE_MD5 = "174b1a64e74b2321f3c38ccc8a511e78"
def _release_md5():
    """Clean-rebuild the RELEASE preset and return the md5 of the resulting exe.

    Returns the hex digest on success, or the sentinel "BUILD-FAILED" / "NO-EXE" on failure.
    The build returncode IS checked: a release build that fails to compile is a *build error*,
    not evidence that the struct edits changed release codegen -- distinguishing the two lets the
    caller report it as a build failure instead of falsely flagging the edits as release-unsafe."""
    import hashlib
    r = subprocess.run(["cmake", "--build", "cmake-build-presets/release", "--clean-first"],
                       cwd=ROOT, capture_output=True)
    if r.returncode != 0:
        return "BUILD-FAILED"
    exe = os.path.join(ROOT, "cmake-build-presets/release/runblack-reassembled.exe")
    if not os.path.exists(exe):
        return "NO-EXE"
    with open(exe, "rb") as fh:      # `with`: release the exe handle before any later git op
        return hashlib.md5(fh.read()).hexdigest()

def _self_test():
    """Pure-logic smoke checks (no build/git): _culprits self-blame and _failing_structs parsing.
    Returns 0 on all-pass, 1 otherwise (used as the process exit code)."""
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(_culprits({"D"}, {"D": "h"}) == {"D"}, "failing fixed struct -> skip itself")
    chk(_failing_structs("error: sizeof(struct Foo) == 8 failed") == {"Foo"}, "parse failing struct")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--revert" in a: revert_headers(); print("reverted black/"); sys.exit()
    if "--apply" in a: run(apply=True)
    elif "--dry" in a: run(apply=False)
    else: print(__doc__)
