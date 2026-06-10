#!/usr/bin/env python3
"""decl_fix.py - unlock MANGLE-MISMATCH functions by fixing the C++ header decl to match the binary's
ground-truth mangled symbol, then generating + verifying the (now-pairable) body.

THE CEILING THIS BREAKS (docs/port-banks/06): objdiff pairs target<->ours by MANGLED name, so a function
whose C++ decl mangles to a different symbol than the binary's real one scores 0 even when its instructions
are byte-identical. The binary symbol is GROUND TRUTH: demangle it, fix the decl, the body pairs + counts.

Modes (from mangle_worklist.py):
  bool : header bool32_t(->I) but binary bool(->_N)         -> decl ret -> bool
  enum : header named enum/typedef(?AW4..) but binary I/H.. -> decl ret -> the plain int type
  virtual: header virtual(->U) but binary non-virtual(->Q)  -> drop `virtual` (RISKIER; vtable implications)

For each chosen function:
  1. edit the header decl (return type and/or drop `virtual`) -- the SAME edit for every member of a
     virtual override family (covariant-return rule), so we group by (method) and edit the whole family.
  2. read the binary's exact instructions (objdiff left side, via gen_targeted.tu_asm) and synthesize a
     body with gen_targeted.shape_to_c -- ONLY simple shapes (getters/const/forward); skip the rest.
  3. inject the body into the committed TU that owns the address (inE) -- this is the verify_defs path.
  4. build EVERYTHING, objdiff, keep ONLY if fuzzy==100. Then a GLOBAL safety gate (caller) confirms the
     whole build is green + game TUs still 1876/158; anything that regresses is reverted by git.

This tool does inE (addresses inside existing splits ranges). outE addresses are handled by re-running
gen_targeted.py AFTER the header edits (the edits remove them from its skip-list automatically).

Usage:
  python tools/decl_fix.py --mode enum [--apply] [--only 0xADDR,..]
  python tools/decl_fix.py --revert-headers      # restore all black/*.h (undo decl edits)
"""
import json, os, sys, re, subprocess, glob

DTK = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))  # tools/archive/ -> repo root
DECOMP = os.path.join(os.path.dirname(DTK), "bw1-decomp")
VERSION = os.environ.get("BW1_VERSION", "BW1E142")
sys.path.insert(0, os.path.join(DTK, "tools"))
import gen_simple, gen_targeted as gt, gen_asm, measure_match
import verify_defs as vd
import mangle_worklist as mw


# The build #includes from dtk's include/black/ (NOT decomp's black/). gen_simple.header_index() reads
# from decomp's black/. The two trees are kept in sync, so we edit (and revert) BOTH.
HDR_DIRS = [os.path.join(DTK, "include", "black"), os.path.join(DECOMP, "black")]


def _git_decomp(*a):
    subprocess.run(["git", "-C", DECOMP] + list(a), capture_output=True)


def _git_dtk(*a):
    subprocess.run(["git", "-C", DTK] + list(a), capture_output=True)


def revert_headers():
    """Restore both header trees to git-clean. NOTE: dtk's include/black/ is git-IGNORED (a synced copy),
    so `git checkout` does nothing for it -- we must COPY the (now git-clean) decomp black/ over it."""
    import shutil
    _git_decomp("checkout", "HEAD", "--", "black/")
    inc = os.path.join(DTK, "include", "black")
    for h in glob.glob(os.path.join(DECOMP, "black", "*.h")):
        dst = os.path.join(inc, os.path.basename(h))
        if os.path.exists(dst):
            shutil.copyfile(h, dst)
    print("reverted all black/*.h header edits (decomp via git; include/black via copy)")


def edit_decl_for_family(method, true_ret, drop_virtual, from_ret=None):
    """Edit `// win1.41`-decl lines for `method` so the in-class decl matches the binary, in BOTH header
    trees. If `from_ret` is given (enum/width/bool modes), ONLY rewrite decls whose CURRENT return type
    equals it -- this keeps two distinct override families that share a method name apart (e.g. the
    *Info::GetMesh family currently returns `MeshId`->binary `I`, while the runtime Animal/Tree::GetMesh
    family is already `int`->binary `H`; lumping them would re-break the already-banked `int` ones).
    Returns the changed lines (one entry per file changed)."""
    changed = []
    hdrs = []
    for d in HDR_DIRS:
        hdrs += glob.glob(os.path.join(d, "*.h"))
    for h in hdrs:
        try:
            lines = open(h, encoding="latin-1").read().split("\n")
        except Exception:
            continue
        out = []
        dirty = False
        for i, l in enumerate(lines):
            # the in-class decl: [virtual] <ret> Method() [const];   (no params -> ...())
            m = re.match(r"^(\s*)((?:virtual\s+)?)([\w :\*&<>]+?)\s+(%s)\(\s*\)\s*(const)?\s*;\s*$"
                         % re.escape(method), l)
            if m:
                indent, virt, ret, meth, cst = m.groups()
                if from_ret is not None and ret.strip() != from_ret:
                    out.append(l); continue   # different family / type -- leave it
                new_virt = "" if drop_virtual else virt
                new_ret = true_ret if true_ret else ret
                newl = "%s%s%s %s()%s;" % (indent, new_virt, new_ret, meth, (" const" if cst else ""))
                if newl != l:
                    changed.append((os.path.basename(h), l.strip(), newl.strip()))
                    out.append(newl)
                    dirty = True
                    continue
            out.append(l)
        if dirty:
            open(h, "w", encoding="latin-1").write("\n".join(out))
    return changed


def inject_additive(gen):
    """Append each body to the committed TU that owns its address, prepending the #include. UNLIKE
    vd.inject this does NOT git-checkout src/Black first (so bodies kept by earlier families in the same
    run survive). Idempotent: skips a body whose first line is already present. Returns the TUs touched."""
    rng = vd._ranges()
    bytu = {}
    for a, rec in gen.items():
        ai = int(a, 16)
        tu = next((n for n, (lo, hi) in rng.items() if lo <= ai < hi), None)
        if tu:
            bytu.setdefault(tu, []).append(rec)
    for tu, recs in bytu.items():
        p = os.path.join(DTK, "src", "Black", tu + ".cpp")
        txt = open(p, encoding="latin-1").read()
        recs = [r for r in recs if r["def"].split("\n", 1)[0] not in txt]
        if not recs:
            continue
        incs = "".join('#include "%s"\n' % r["inc"] for r in recs
                       if r.get("inc") and ('#include "%s"' % r["inc"]) not in txt)
        body = "\n\n".join(r["def"] for r in recs)
        open(p, "w", encoding="latin-1").write(incs + txt + "\n\n" + body + "\n")
    return list(bytu.keys())


def clean_build():
    """CLEAN-rebuild every src/Black obj (stale .o silently inflate the match count -- hurdle #2), then
    compile every base obj objdiff reads. Returns True if the build is GREEN (no missing base obj)."""
    for o in glob.glob(os.path.join(DTK, "build", VERSION, "src", "Black", "*.o")):
        os.remove(o)
    gt.reconfigure()
    gt.build()
    o = json.load(open(os.path.join(DTK, "objdiff.json")))
    missing = [u for u in o.get("units", [])
               if u.get("base_path") and not os.path.exists(os.path.join(DTK, u["base_path"]))]
    return (len(missing) == 0), [os.path.basename(u.get("name") or "") for u in missing]


def report_counts():
    """(game_byte_exact, game_tus, global_matched). game_* from measure_match (our 158 TUs); global =
    every fuzzy==100 across all units (the deliverable's matched_functions)."""
    p = os.path.join(DTK, "rep.json")
    subprocess.run([gt.OBJDIFF, "report", "generate", "-p", ".", "-o", "rep.json"], cwd=DTK, capture_output=True)
    if not os.path.exists(p):
        return None
    f, t, mt, n = measure_match.measure(p)
    d = json.load(open(p))
    gm = sum(1 for u in d.get("units", []) for x in u.get("functions", [])
             if (x.get("fuzzy_match_percent") or 0) >= 100)
    os.remove(p)
    return f, mt, gm


def gen_bodies(funcs):
    """For inE funcs (addr in a committed splits range), read asm + synthesize body with the CORRECTED
    decl. Returns {addr: {def, inc, tu}} for the simple shapes only (unrecognised shapes skipped)."""
    rng = vd._ranges()
    a2m = gen_asm._addr2mangled()
    hdr = gen_simple.header_index()   # re-read AFTER header edits so ret/virtual reflect the fix
    cache = {}
    out = {}
    skipped = []
    for w in funcs:
        a = int(w["addr"], 16)
        tu = next((n for n, (lo, hi) in rng.items() if lo <= a < hi), None)
        if tu is None:
            continue  # outE: handled by gen_targeted, not here
        if tu not in cache:
            cache[tu] = gt.tu_asm(tu)
        mg = a2m.get(a)
        instrs = cache[tu].get(mg)
        if not instrs:
            skipped.append((w["addr"], "NO_ASM")); continue
        h = hdr.get(a)
        if not h:
            skipped.append((w["addr"], "NO_HDR")); continue
        body = gt.shape_to_c(instrs, h)
        if body is None:
            skipped.append((w["addr"], "no shape: " + "|".join(instrs[:3]))); continue
        const = " const" if h["const"] else ""
        out["0x%08x" % a] = {
            "def": "%s %s::%s()%s\n{\n    %s\n}" % (h["ret"], h["cls"], h["method"], const, body),
            "inc": gt.def_header(h["cls"]) or h["inc"], "tu": tu,
        }
    return out, skipped


def _byte_exact_addrs():
    """addrs that are fuzzy==100 in a fresh report (across ALL units)."""
    p = os.path.join(DTK, "rep.json")
    subprocess.run([gt.OBJDIFF, "report", "generate", "-p", ".", "-o", "rep.json"], cwd=DTK, capture_output=True)
    if not os.path.exists(p):
        return set()
    d = json.load(open(p)); os.remove(p)
    n2a = gt.name2a()
    hit = set()
    for u in d.get("units", []):
        for fn in u.get("functions", []):
            nm = fn.get("name", "") or ""
            if nm in n2a and (fn.get("fuzzy_match_percent") or 0) >= 100:
                hit.add(n2a[nm])
    return hit


def run_oute(mode, outs, apply):
    """outE candidates live OUTSIDE every splits range -> they have no target obj until tiled. We fix
    their (non-virtual, standalone) headers so gen_targeted stops skipping them, then run gen_targeted's
    OWN verified tile+generate+keep (it already preserves game TUs + keeps only fuzzy==100). Finally we
    revert the header edit of any candidate that did NOT become byte-exact (so headers stay minimal/clean).
    Virtual outE families are excluded here (covariant-return inconsistency -- see the doc)."""
    import gen_simple as gs
    hdr = gs.header_index()
    # gen_targeted only synthesizes SIMPLE-shape klasses; editing a MULTI_BLOCK header gains no body and
    # only risks a caller cascade -> restrict to the klasses gen_targeted can actually land.
    GEN_KLASSES = {"CONST_RETURN", "GETTER", "SETTER", "FORWARD", "VIRTUAL_FORWARD",
                   "BITFIELD", "INTRA_OBJ_CALL", "TINY"}
    cands = [w for w in outs if not (hdr.get(int(w["addr"], 16)) or {}).get("virtual")
             and w["klass"] in GEN_KLASSES]
    klasses = sorted({w["klass"] for w in cands})
    print("outE non-virtual candidates: %d  klasses=%s" % (len(cands), klasses))
    for w in cands:
        print("   %-13s %s %s (%s->%s)" % (w["klass"], w["addr"], w["cls"] + "::" + w["method"],
                                           w["ret"], "bool" if mode == "bool" else w["true_ret"]))
    if not apply:
        return
    # edit headers per family (each is standalone here, but edit_decl_for_family is family-safe anyway)
    by_family = {}
    for w in cands:
        by_family.setdefault((w["method"], w["ret"]), []).append(w)
    edited = []
    for (meth, cur_ret), ws in by_family.items():
        rets = {w["true_ret"] for w in ws if w["true_ret"]}
        true_ret = "bool" if mode == "bool" else (next(iter(rets)) if len(rets) == 1 else None)
        if true_ret is None:
            continue
        edit_decl_for_family(meth, true_ret, drop_virtual=False, from_ret=cur_ret)
        edited.append((meth, cur_ret, true_ret))
    # run gen_targeted's verified pipeline for exactly these klasses (it tiles + keeps fuzzy==100 only)
    gt_klasses = ",".join(k for k in klasses if k in
                          {"CONST_RETURN", "GETTER", "SETTER", "FORWARD", "VIRTUAL_FORWARD",
                           "BITFIELD", "INTRA_OBJ_CALL", "TINY"})
    print("running gen_targeted --klass %s ..." % gt_klasses)
    subprocess.run(["python", "tools/gen_targeted.py", "--klass", gt_klasses], cwd=DTK)
    # which candidates actually landed byte-exact? revert headers of the rest.
    clean_build_ok, _ = clean_build()
    hits = _byte_exact_addrs()
    landed = [w for w in cands if int(w["addr"], 16) in hits]
    missed_meths = {(w["method"], w["ret"]) for w in cands if int(w["addr"], 16) not in hits}
    # a family is fully-missed only if NONE of its members landed -> safe to revert its header edit.
    landed_meths = {(w["method"], w["ret"]) for w in landed}
    revert_meths = [(m, cr, tr) for (m, cr, tr) in edited if (m, cr) not in landed_meths]
    if revert_meths:
        # revert just those families: clean both header trees, then re-apply the LANDED families' edits.
        revert_headers()
        for (m, cr, tr) in edited:
            if (m, cr) in landed_meths:
                edit_decl_for_family(m, tr, drop_virtual=False, from_ret=cr)
        clean_build()
    final = report_counts()
    print("\n=== outE %s DONE ===" % mode)
    print("landed byte-exact:", [w["cls"] + "::" + w["method"] for w in landed])
    print("reverted header families (no member landed):", [m for m, _, _ in revert_meths])
    print("FINAL: game_byte_exact=%d game_tus=%d global=%d" % final)


def main():
    args = sys.argv[1:]
    if "--revert-headers" in args:
        revert_headers(); return
    mode = args[args.index("--mode") + 1] if "--mode" in args else "enum"
    apply = "--apply" in args
    only = None
    if "--only" in args:
        only = set(args[args.index("--only") + 1].split(","))

    wl = mw.worklist()
    funcs = [w for w in wl if w["mode"] == mode]
    if mode == "virtual":
        # Only DROP-virtual cases: binary non-virtual (Q/A/I) but header `virtual`. Removing a slot the
        # binary never had is the safe direction (and what pairs the symbol Q vs U). The reverse (binary
        # `U`, header non-virtual -> ADD `virtual`) INSERTS a vtable slot, shifting object layout/vtable
        # for the whole class -- excluded (would regress far more than it gains).
        funcs = [w for w in funcs if gt._mangled_is_virtual(w["mangled"]) is False and w["virtual"]]
    if only:
        funcs = [w for w in funcs if w["addr"] in only]
    print("mode=%s: %d funcs (inE=%d outE=%d)" % (
        mode, len(funcs), sum(w["inE"] for w in funcs), sum(not w["inE"] for w in funcs)))

    if "--oute" in args:
        return run_oute(mode, [w for w in funcs if not w["inE"]], apply)

    # group by (method, current-header-ret) -> a covariant override family edited atomically.
    drop_virtual = (mode == "virtual")
    by_family = {}
    for w in funcs:
        by_family.setdefault((w["method"], w["ret"]), []).append(w)

    if not apply:  # dry-run: just show what each family edit would touch
        for (meth, cur_ret), ws in by_family.items():
            rets = {w["true_ret"] for w in ws if w["true_ret"]}
            true_ret = "bool" if mode == "bool" else (next(iter(rets)) if len(rets) == 1 else None)
            ch = edit_decl_for_family(meth, true_ret, drop_virtual,
                                      from_ret=(cur_ret if mode != "virtual" else None))
            print("  %-24s (%s->%s) virt_drop=%s : %d header lines" %
                  (meth, cur_ret, true_ret, drop_virtual, len(ch)))
        revert_headers()
        return

    # APPLY: per-family verified loop. Each family is edited + its inE bodies generated/injected +
    # CLEAN-rebuilt; KEEP only if (a) build green, (b) game TUs >= baseline, (c) global match went UP.
    # Else REVERT that family (git) so a covariant inconsistency or cascade never regresses the build.
    clean_build()   # MUST clean-rebuild first: stale .o from prior runs inflate the baseline (hurdle #2)
    base = report_counts()
    assert base, "baseline report failed"
    print("baseline: game_byte_exact=%d game_tus=%d global=%d" % base)
    kept_families = []; reverted = []
    cur_global = base[2]
    kept_edits = []   # (meth, cur_ret, true_ret) for every KEPT family -- replayed on each revert
    kept_gen = {}      # all KEPT inE bodies -- re-injected on each revert

    def reapply_kept():
        """Restore the accepted state after a git-checkout: replay kept header edits + kept bodies."""
        for m2, cr2, tr2 in kept_edits:
            edit_decl_for_family(m2, tr2, drop_virtual, from_ret=(cr2 if mode != "virtual" else None))
        inject_additive(kept_gen)

    def restore_clean_then_kept():
        """git-clean both trees, then replay every ACCEPTED family (headers + bodies)."""
        revert_headers()
        vd._git("checkout", "HEAD", "--", "src/Black/")
        reapply_kept()

    for (meth, cur_ret), ws in by_family.items():
        rets = {w["true_ret"] for w in ws if w["true_ret"]}
        if mode == "virtual":
            true_ret = None   # virtual mode keeps the return type; the edit only drops the `virtual` kw
        else:
            true_ret = "bool" if mode == "bool" else (next(iter(rets)) if len(rets) == 1 else None)
            if true_ret is None:
                print("  SKIP %s (ambiguous true_ret %s)" % (meth, rets)); continue
        # body probe FIRST (cheap): this driver can only LAND inE bodies it can synthesize. If a family
        # has none, a decl-only change can't add a match (these fns are unbanked) -- only risk a cascade.
        # Skip the (expensive) build for those. (outE handled separately by gen_targeted, post-edit.)
        edit_decl_for_family(meth, true_ret, drop_virtual,
                             from_ret=(cur_ret if mode != "virtual" else None))
        gen, _ = gen_bodies([w for w in ws if w["inE"]])
        if not gen:
            print("  skip   %-22s : no synthesizable inE body" % meth)
            restore_clean_then_kept(); continue
        inject_additive(gen)
        green, missing = clean_build()

        def do_revert(why):
            restore_clean_then_kept()
            clean_build()
            reverted.append((meth, why))

        if not green:
            print("  REVERT %-22s : build RED (%d missing: %s)" % (meth, len(missing), ",".join(missing[:4])))
            do_revert("red"); continue
        cnt = report_counts()
        if cnt[0] < base[0] or cnt[2] <= cur_global:
            print("  REVERT %-22s : no net gain / regression (game %d->%d global %d->%d)" %
                  (meth, base[0], cnt[0], cur_global, cnt[2]))
            do_revert("no-gain"); continue
        print("  KEEP   %-22s : +%d (game %d->%d global %d->%d) [%d bodies]" %
              (meth, cnt[2] - cur_global, base[0], cnt[0], cur_global, cnt[2], len(gen)))
        kept_families.append((meth, cnt[2] - cur_global)); cur_global = cnt[2]
        kept_edits.append((meth, cur_ret, true_ret)); kept_gen.update(gen)
    final = report_counts()
    print("\n=== mode %s DONE ===" % mode)
    print("kept families:", kept_families)
    print("reverted:", reverted)
    print("FINAL: game_byte_exact=%d game_tus=%d global=%d (baseline global %d, net +%d)" %
          (final[0], final[1], final[2], base[2], final[2] - base[2]))


if __name__ == "__main__":
    main()
