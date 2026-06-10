#!/usr/bin/env python3
"""retwidth.py - sweep the return-width class to STRICT byte-exact 100%.

The class: virtuals whose target is a 1-byte `al` result under an `I`-mangled symbol (a VC6 /O2 quirk
-- no real-C type yields `I`-mangle + `al`-codegen). The staging C++ `bool32_t` body emits `eax`
(off by the 1-byte vs 4-byte write). The faithful byte-exact form is MSVC inline asm in the staging
.cpp (same asm-tier the repo already uses; precedent: src/staging/...0722...). For TRIVIAL targets
(constant return: `mov al, IMM` / `xor al, al`) the inline-asm body is unambiguous and proven 100%.

Usage:
  python tools/retwidth.py --survey [MINPCT]   # list al-target return-width near-misses + shape
  python tools/retwidth.py --sweep  [--apply]  # gate the trivial ones (apply=keep the 100% wins)
  python tools/retwidth.py --self-test
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def _asm_file(unit_cpp):
    """staging .cpp -> the unprocessed target .asm (same stem)."""
    stem = os.path.basename(unit_cpp)
    if stem.endswith(".cpp"): stem = stem[:-4]
    p = os.path.join(ROOT, "src/asm/unprocessed", stem + ".asm")
    return p if os.path.exists(p) else None

import re as _re, glob as _glob
_INDEX = None
def _asm_index():
    """{mangled_symbol: [(mnemonic, operands)]} (first up-to-8 instrs of the WHOLE symbol body, NOT
    truncated at the first ret) from ALL asm, parsed ONCE. Capturing past the ret lets inline_body
    reject early-return functions (whose body has code after the first ret) as non-trivial."""
    global _INDEX
    if _INDEX is not None: return _INDEX
    idx = {}; lab = _re.compile(r"^([A-Za-z_?][\w?@$]*):$")   # a bare "symbol:" label line (no operands)
    for f in _glob.glob(os.path.join(ROOT, "src/asm/unprocessed", "*.asm")):
        cur = None
        # latin-1: lossless byte passthrough for the asm dumps; `with` closes the handle each iteration
        # (a plain `for line in open(...)` leaks descriptors across this many-file glob loop).
        with open(f, encoding="latin-1") as fh:
            for line in fh:
                s = line.rstrip("\n").strip()
                m = lab.match(s)
                if m:
                    # Only track real mangled/decorated symbols (?-mangled or containing @); a plain
                    # local label resets `cur` to None so its instructions aren't attributed to a method.
                    cur = m.group(1) if (m.group(1).startswith("?") or "@" in m.group(1)) else None
                    if cur: idx.setdefault(cur, [])
                    continue
                # Cap at 8 instrs: enough to judge triviality / spot small patterns. (The report-based
                # fallback _target_from_report caps at 10; both caps comfortably exceed the 1-instr+ret
                # the trivial-stub check needs, so the mismatch is intentional and harmless.)
                if not cur or len(idx[cur]) >= 8: continue
                code = s.split("//", 1)[0].strip()
                code = _re.sub(r"^\{disp\d+\}\s*", "", code)  # strip the reassembler {disp8}/{disp32} prefix
                if not code: continue
                parts = code.split(None, 1)
                mn = parts[0].split(".")[0]                   # drop any size/suffix (e.g. "ret.something")
                idx[cur].append((mn, parts[1].strip() if len(parts) > 1 else ""))
    _INDEX = idx
    return idx

def _target_from_report(fn):
    """fallback target instructions from the objdiff REPORT (covers COMDAT-folded / cross-tier functions
    that have NO own label in src/asm/unprocessed, so the source-file index misses them). Reads the
    target .obj only via objdiff-cli (no build, no report-write -> race-free alongside the fan-out)."""
    import iterate, verify
    loc = verify.unit_for_function(fn)
    if not loc: return None
    mg = iterate._mangled_of(fn)
    obj = iterate._diff_json(loc[0], mg)
    L = iterate._sym(obj, "left", mg) if obj else None
    if not L: return None
    out = []
    for w in L.get("instructions", []):
        ins = w.get("instruction", w)
        f = (ins.get("formatted") or "").strip()
        if not f: continue
        parts = f.split(None, 1)
        out.append((parts[0].split(".")[0], parts[1].strip() if len(parts) > 1 else ""))
        # Stop at the first ret, or cap at 10 instrs. (The source-file index _asm_index() caps at 8; the
        # slightly higher cap here is intentional and harmless -- inline_body only reads up to the ret.)
        if out[-1][0] == "ret" or len(out) >= 10: break
    return out or None

def target_instrs(fn):
    """instruction (mnemonic, operands) list of fn's target. Source-file index FIRST (fast, cached);
    falls back to the objdiff report for folded/cross-tier functions the index can't see."""
    import iterate
    mg = iterate._mangled_of(fn)
    hit = (_asm_index().get(mg) if mg else None)
    return hit if hit else _target_from_report(fn)

_PAD = ("nop", "int3")
def inline_body(instrs):
    """if the WHOLE target function is a TRIVIAL al-constant (`mov al,IMM; ret` / `xor al,al; ret`,
       trailing inter-fn padding allowed), return the __asm body; else None. Rejects early-return
       functions (real code after the first ret) -- those are not constant-return stubs."""
    if not instrs: return None
    try: ri = next(i for i, x in enumerate(instrs) if x[0] == "ret")
    except StopIteration: return None
    pre, post = instrs[:ri], instrs[ri + 1:]
    if any(m[0] not in _PAD for m in post): return None   # real code after ret -> not a trivial stub
    if len(pre) != 1: return None
    mn, ops = pre[0]
    o = ops.replace(" ", "")                                   # space-stripped so the regex below is anchored
    # Accept a constant load into al only: either a hex immediate (`al,0x1f`) OR a decimal one (`al,7`).
    # The two alternations are needed because the disassembler may render the immediate in either base;
    # both upper- and lower-case hex digits are matched ([0-9a-fA-F]).
    if mn == "mov" and re.match(r"^al,0x[0-9a-fA-F]+$|^al,\d+$", o):
        return "__asm { mov al, %s }" % ops.split(",", 1)[1].strip()
    if mn == "xor" and o == "al,al":
        return "__asm { xor al, al }"
    return None

def candidates(min_pct=80.0):
    """al-target return-width near-misses (effmatch effective + reg_map has an 8-bit reg)."""
    import verify, propose, effmatch
    rep = verify.load_report(); H = propose._syms(); out = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        try: e = effmatch.classify(name)
        except Exception: continue
        rm = e.get("reg_map", {})
        # reg_map relates the target's registers to the candidate's; scan BOTH its keys and its values
        # (list(rm) yields keys, list(rm.values()) the values) so an 8-bit register appearing on either
        # side flags this as an al-class return-width near-miss.
        if e.get("effective") and any(r in ("al", "ah", "bl", "cl", "dl") for r in list(rm) + list(rm.values())):
            out.append((name, pct))
    return out

def candidates_broad(min_pct=0.0):
    """ANY near-miss whose TARGET is a trivial al-constant (mov al,IMM / xor al,al) -- regardless of
    current pct or effmatch. These are constant-return fns with a wrong stub; inline asm = byte-exact."""
    import verify, propose
    rep = verify.load_report(); H = propose._syms(); out = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        if inline_body(target_instrs(name)): out.append((name, pct))
    return out

def survey(min_pct=80.0):
    """Print every al-class return-width near-miss (>= min_pct, < 100%) with its target shape.

    Each line is tagged "TRIVIAL <inline-asm>" when inline_body() recognises a constant-return stub
    (sweepable now), or "complex: ..." (the first few target instrs) otherwise. A footer reports how
    many of the candidates are trivial. Read-only: surveys but never edits.
    """
    triv = 0
    for name, pct in candidates(min_pct):
        instrs = target_instrs(name); ib = inline_body(instrs)
        tag = "TRIVIAL " + ib if ib else "complex: " + (" / ".join("%s %s" % i for i in (instrs or [])[:3]))
        if ib: triv += 1
        print("  %-44s %5.1f%%  %s" % (name[:44], pct, tag))
    print("\n%d candidates; %d trivial (sweepable now)" % (len(candidates(min_pct)), triv))

def sweep(apply=False, min_pct=80.0, broad=False):
    """Survey (or, with apply=True, gate) every trivial al-constant return-width near-miss.

    min_pct  -- lower bound (exclusive of 100) for the candidate near-miss filter.
    broad    -- True selects candidates_broad() (ANY trivial al-constant target regardless of
                pct/effmatch); False selects candidates() (effmatch-effective al-reg near-misses).
    apply    -- False is a DRY-RUN that only prints the bodies it WOULD gate; True actually splices
                each body and gates it.

    Gating is strict=True, so liftgate banks ONLY a byte-exact 100% win and reverts everything else
    (the staging tree never regresses). `banked` counts those byte-exact wins.
    """
    import liftgate
    banked = 0; tried = 0
    cands = candidates_broad(min_pct) if broad else candidates(min_pct)
    for name, pct in cands:
        ib = inline_body(target_instrs(name))
        if not ib: continue
        tried += 1
        if not apply:
            print("  WOULD gate %-44s <- %s" % (name[:44], ib)); continue
        r = liftgate.gate(name, ib, strict=True)              # only bank byte-exact 100%, never marginal
        # Trust liftgate's structured `kept` flag rather than sniffing the human-readable message:
        # under strict=True a True `kept` is always a banked byte-exact 100% win, and reading the
        # field decouples this accounting from gate()'s message wording.
        banked += 1 if r.get("kept") else 0
        print("  %-44s %s" % (name[:44], r.get("msg", "")))
    print("\n%s: %d trivial, %d banked" % ("SWEEP" if apply else "DRY-RUN", tried, banked))

def _self_test():
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    chk(inline_body([("mov", "al, 0x01"), ("ret", "")]) == "__asm { mov al, 0x01 }", "mov al,imm -> inline")
    chk(inline_body([("xor", "al, al"), ("ret", "")]) == "__asm { xor al, al }", "xor al,al -> inline")
    chk(inline_body([("mov", "eax, 0x01"), ("ret", "")]) is None, "eax target -> not trivial")
    chk(inline_body([("push", "esi"), ("mov", "al, 1"), ("ret", "")]) is None, "multi-instr -> not trivial")
    chk(inline_body([("mov", "al, 1"), ("ret", ""), ("push", "ebp")]) is None, "early-ret + real code -> not trivial")
    chk(inline_body([("mov", "al, 1"), ("ret", ""), ("nop", "")]) == "__asm { mov al, 1 }", "trailing pad -> trivial")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    # Optional positional MINPCT: the first arg made entirely of digits/dots (e.g. "90" or "85.0") is
    # taken as the near-miss lower bound; flags (which contain "-") are skipped. Defaults to 80.0.
    mp = next((float(x) for x in a if x.replace(".", "").isdigit()), 80.0)
    if "--survey" in a: survey(mp)
    elif "--sweep" in a: sweep(apply="--apply" in a, min_pct=mp, broad="--broad" in a)
    else: print(__doc__)
