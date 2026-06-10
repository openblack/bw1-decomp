#!/usr/bin/env python3
"""label_split.py - fix BOUNDARY ARTIFACTS by labeling the trailing function in the reassembled asm.

A boundary artifact (found by boundary.diff_scan) is a function whose stub is ALREADY correct C, but
the reassembly left the NEXT function unlabeled, so the target symbol over-includes it and objdiff
scores <100%. The fix: insert a label at the trailing function's start so the symbol ends at the real
function's `ret`. A label emits NO bytes -> the assembled output is identical -> release md5 is
preserved; only the symbol table changes (the over-sized symbol shrinks to its true boundary, and the
trailing code becomes a new symbol = a fresh near-miss to decompile later).

GATED like struct_apply: apply -> clean rebuild -> keep ONLY if the target function reaches 100% with
NO regression and the release md5 is unchanged; else revert (git checkout the asm).

Usage:
  python tools/label_split.py --list [MINPCT]        # boundary artifacts that are splittable
  python tools/label_split.py --one <Name@Class>     # apply+gate one split (keep iff it banks safely)
  python tools/label_split.py --sweep [MINPCT]       # apply all, clean-rebuild, keep the safe net
  python tools/label_split.py --revert               # git checkout src/asm/
  python tools/label_split.py --self-test
"""
import os, re, sys, glob, subprocess
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
BASELINE_MD5 = "174b1a64e74b2321f3c38ccc8a511e78"

def revert_asm():
    """Undo every uncommitted edit under src/asm/ (`git checkout`).

    Used as the safety net by the gated apply paths: any split that does not bank
    cleanly (no 100%, a regression, or a changed release md5) is rolled back here so
    the working tree is always returned to the last committed state."""
    subprocess.run(["git", "checkout", "--", "src/asm/"], cwd=ROOT, capture_output=True)

def _def_file(mangled):
    """the CODE .asm defining `mangled` (the `<sym>:` label line), NOT a vtable `.long` ref. -> (file, lines, idx)."""
    for f in glob.glob(os.path.join(ROOT, "src/asm/unprocessed", "*.asm")):
        if "vftables" in os.path.basename(f): continue
        with open(f, encoding="latin-1") as fh:           # latin-1 = lossless byte round-trip for asm dumps
            lines = fh.read().split("\n")
        for i, ln in enumerate(lines):
            if ln.strip() == mangled + ":": return f, lines, i
    return None, None, None

def _instr_addr(line):
    """Return the lower-cased hex VA of an instruction line, or None.

    Every disassembled instruction line in the reassembly carries a `// 0xADDR ...`
    trailer (the original virtual address). We key off that comment to read the
    address. Hex is normalized to lower-case so callers can compare addresses
    case-insensitively (the asm dumps are lower-case, but we don't rely on it)."""
    # `// 0x<hex>` -> capture the hex digits (both cases accepted).
    m = re.search(r"//\s*0x([0-9a-fA-F]+)", line)
    return m.group(1).lower() if m else None
def _is_instr(line):
    """True iff `line` is a real instruction line (not a label, blank, or directive).

    Convention used throughout the reassembly: an instruction line always ends with a
    `// 0xADDR ...` address comment, so we require that marker AND that the line is
    non-blank AND does not end in `:` (which would make it a label, e.g. `?sym@@...:`
    or an internal `.Lbl_addr_0x...:`)."""
    return bool(re.search(r"//\s*0x[0-9a-fA-F]+", line)) and line.strip() and not line.strip().endswith(":")

def split_point(lines, def_idx, base_count):
    """line index of the TRAILING function's first instruction (= base_count+1-th instr after the def),
       and its address. None if already labeled there or shape doesn't hold."""
    cnt = 0
    for i in range(def_idx + 1, len(lines)):
        s = lines[i].strip()
        if not s: continue
        if s.endswith(":"):
            if s.startswith("?"): return None, None       # next FUNCTION label before base ended -> mismatch
            continue                                        # internal label (.Lbl_addr/LAB/bsplit) -> skip, keep counting
        if _is_instr(lines[i]):
            cnt += 1
            if cnt == base_count:                         # this is the base's last instr (the ret)
                # Scan forward to the trailing function's first instruction. If we hit a
                # label first, a label already separates the two functions -> nothing to
                # do (already split), so bail. Otherwise the first instruction line is the
                # trailing function's start and is where we insert the boundary label.
                for j in range(i + 1, len(lines)):
                    if lines[j].strip().endswith(":"): return None, None   # already split
                    if _is_instr(lines[j]): return j, _instr_addr(lines[j])
                return None, None
    return None, None

def apply_split(f, lines, split_idx, addr):
    """Insert a byte-neutral boundary label at `split_idx`; return the new symbol (or None).

    Writes two lines into `f`: a `bsplit_<addr>:` label immediately before the trailing
    function's first instruction, and a matching `.globl bsplit_<addr>` declaration after
    the file's last existing `.globl` directive. A label emits no bytes, so the assembled
    output is unchanged; only the symbol table gains the new boundary. Returns None if the
    label is already present (idempotent re-apply)."""
    sym = "bsplit_%s" % addr                              # NOT 'L...' (GNU as treats L-prefix as local -> .globl fails)
    # Idempotency guard: bail if the label/globl already exists. Match the WHOLE token
    # (`sym:` or `.globl sym`) rather than a bare substring, so a short hex addr can't be
    # mistaken for "already done" because it appears inside a longer bsplit_<addr> symbol.
    label_line, globl_line = sym + ":", ".globl " + sym
    if any(ln.strip() == label_line or ln.strip() == globl_line for ln in lines): return None
    # Place the .globl after the last existing .globl so it stays in the file's globl block
    # (GNU `as` requires .globl to make the new label externally visible to objdiff).
    last_globl = max((k for k, ln in enumerate(lines) if ln.lstrip().startswith(".globl ")), default=None)
    new = list(lines)
    new.insert(split_idx, label_line)
    if last_globl is not None: new.insert(last_globl + 1, globl_line)
    with open(f, "w", encoding="latin-1") as fh:
        fh.write("\n".join(new))
    return sym

def _artifacts(min_pct):
    """Boundary-artifact candidates at >= `min_pct` (delegates to boundary.diff_scan).

    Returns a list of (name, pct, split_instr, base_count) tuples: the over-included
    function's name, its current objdiff percent, the disassembly of the first trailing
    instruction, and base_count = the number of instructions that truly belong to the
    target (where the label should be inserted, just after instruction #base_count)."""
    import boundary
    cands, _ = boundary.diff_scan(min_pct)
    return cands                                           # (name, pct, split_instr, base_count)

def _mangled(name):
    """Map a human `Method@Class` (or `Func`) name to its MSVC-mangled symbol, or None.

    Thin wrapper over iterate._mangled_of so this module's mangling source matches the
    rest of the toolkit (the same name -> symbol resolution used by the gate/verify path)."""
    import iterate
    return iterate._mangled_of(name)

def list_splittable(min_pct=40.0):
    """Print + return the boundary artifacts (>= `min_pct`) whose shape actually admits a split.

    For each candidate from _artifacts, resolve its mangled symbol, find the defining code
    .asm, and probe split_point. Prints one line per candidate (`split@0xADDR in <file>` if
    splittable, else `shape mismatch`/`(no code .asm)`) and returns the splittable subset as
    a list of (name, mangled, file, split_idx, addr) tuples for the --one / driver paths."""
    out = []
    for name, pct, si, bc in _artifacts(min_pct):
        mg = _mangled(name)
        f, lines, idx = _def_file(mg) if mg else (None, None, None)
        if f is None: print("  (no code .asm) %-40s" % name[:40]); continue
        sj, addr = split_point(lines, idx, bc)
        ok = sj is not None
        print("  %5.1f%%  %-40s  %s" % (pct, name[:40], ("split@0x%s in %s" % (addr, os.path.basename(f))) if ok else "shape mismatch"))
        if ok: out.append((name, mg, f, sj, addr))
    print("\n%d splittable boundary artifacts" % len(out))
    return out

def _clean_build_and_check(names):
    """Clean-rebuild the objdiff preset and score the result; return (build_ok, after, lost, got).

    `--clean-first` forces a full rebuild so an incremental build can't silently skip stale
    units and mis-score. Returns:
      build_ok: True iff the cmake build returncode was 0 (a FAILED build must be treated as
                "do not bank" by the caller -- the scores below would otherwise reflect a stale
                or partial build).
      after:    the set of currently-verified (100%) functions (ratchet.current_verified()).
      lost:     functions verified before but not now -- i.e. regressions (compare()[0], the
                first element of ratchet.compare's (lost, gained) result).
      got:      {name: current match percent} for each requested function name."""
    import ratchet, verify
    # --clean-first: full rebuild so no stale .obj distorts the score (see ratchet.py).
    rc = subprocess.run(
        ["cmake", "--build", "cmake-build-presets/objdiff", "--clean-first"], cwd=ROOT, capture_output=True)
    build_ok = rc.returncode == 0
    after = ratchet.current_verified()
    lost = ratchet.compare(after, ratchet._load())[0]      # compare -> (lost, gained); [0] = regressions
    got = {n: verify.function_match(n) for n in names}
    return build_ok, after, lost, got

def _release_md5():
    """Clean-rebuild the RELEASE preset and return its exe's md5 (or "NO-EXE" if not produced).

    The whole point of a label split is byte-neutrality: this md5 must equal BASELINE_MD5,
    proving the assembled release binary is byte-for-byte unchanged. A clean rebuild is used
    so the hash reflects the edited asm and not a stale incremental artifact."""
    import hashlib
    subprocess.run(["cmake", "--build", "cmake-build-presets/release", "--clean-first"], cwd=ROOT, capture_output=True)
    exe = os.path.join(ROOT, "cmake-build-presets/release/runblack-reassembled.exe")
    if not os.path.exists(exe): return "NO-EXE"
    with open(exe, "rb") as fh:
        return hashlib.md5(fh.read()).hexdigest()

def sweep(min_pct=40.0, do_release=True):
    """Apply every splittable boundary artifact (>= `min_pct`), clean-rebuild, and bank the safe net.

    Reverts first for a clean slate, then inserts every split (re-finding each def + split point on
    the CURRENT file so earlier inserts' line shifts never invalidate a later index). After a clean
    objdiff rebuild it keeps the batch ONLY if: the build succeeded, there were no regressions, and
    (when `do_release`) the release md5 still equals BASELINE_MD5; otherwise it reverts ALL splits."""
    revert_asm()
    arts = _artifacts(min_pct)
    applied = []
    # apply one at a time, RE-FINDING the def + split point on the CURRENT file each time, so prior
    # edits' line shifts (label + .globl inserts) never invalidate a later split index.
    for name, pct, si, bc in arts:
        mg = _mangled(name)
        if not mg: continue
        f, lines, idx = _def_file(mg)
        if f is None: continue
        sj, addr = split_point(lines, idx, bc)
        if sj is None: continue
        sym = apply_split(f, lines, sj, addr)
        if sym: applied.append(name)
    print("\napplied %d splits; clean rebuild ..." % len(applied))
    try:
        build_ok, after, lost, got = _clean_build_and_check(applied)
    except Exception as e:
        print("  build/report failed (%s) -> reverting all asm splits" % str(e)[:80]); revert_asm(); return
    # A nonzero build returncode (no exception) must still revert: the scores below would
    # otherwise reflect a stale/partial build and we could "bank" a change that didn't compile.
    if not build_ok:
        print("  BUILD FAILED -> reverting all asm splits"); revert_asm(); return
    banked = [n for n in applied if (got.get(n) or 0) >= 100.0]
    print("BANKED %d / %d; regressions: %d" % (len(banked), len(applied), len(lost)))
    if lost:
        print("  REGRESSION -> reverting all asm splits"); revert_asm(); return
    if do_release:
        md5 = _release_md5()
        if md5 != BASELINE_MD5:
            print("  RELEASE MD5 CHANGED (%s) -> reverting" % md5); revert_asm(); return
        print("  release md5 preserved.")
    print("SAFE: %d boundary artifacts banked. `ratchet.py record` then commit src/asm." % len(banked))

def _self_test():
    """Pure-logic regression check (no build): exercises split_point + _is_instr on tiny fixtures.

    Validates the trailing-instruction finder for the simple case, the past-end (None) case, the
    internal-.Lbl skip (big-function) case, and the instruction-vs-label detector. Returns an exit
    code (0 = all pass)."""
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    L = ["?F@@QAEXXZ:", "  xor eax,eax  // 0x100 33c0", "  ret  // 0x102 c3",
         "  call X  // 0x103 e8aa", "?G@@QAEXXZ:", "  ret  // 0x108 c3"]
    sj, addr = split_point(L, 0, 2)                       # base = 2 instrs (xor, ret) -> split at the call
    chk((sj, addr) == (3, "103"), "split_point finds trailing instr", (sj, addr))
    chk(split_point(L, 0, 99)[0] is None, "base_count past end -> None")
    Li = ["?F@@QAEXXZ:", "  jmp .Lbl  // 0x100 eb", ".Lbl_addr_0x102:", "  ret  // 0x102 c3",
          "  call X  // 0x103 e8aa", "?G@@QAEXXZ:"]
    chk(split_point(Li, 0, 2) == (4, "103"), "skips internal .Lbl label (big-fn case)", split_point(Li, 0, 2))
    chk(_is_instr("  ret  // 0x102 c3") and not _is_instr("?F@@QAEXXZ:"), "instr detector")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    if "--revert" in a: revert_asm(); print("reverted src/asm/"); sys.exit()
    # The `--one` value is a function name (which can be all digits/dots), so exclude it from the
    # positional-MINPCT scan -- otherwise a numeric name would be swallowed as the threshold.
    one_val = a[a.index("--one") + 1] if "--one" in a and a.index("--one") + 1 < len(a) else None
    # MINPCT is the first bare numeric positional (a float like 40 or 12.5). `replace('.','').isdigit()`
    # sniffs a numeric-looking token; `try float()` guards malformed forms like '1.2.3' (default 40.0).
    def _as_pct(x):
        try: return float(x)
        except ValueError: return None
    mp = next((p for x in a if x is not one_val and x.replace(".", "").isdigit()
               and (p := _as_pct(x)) is not None), 40.0)
    if "--list" in a: list_splittable(mp)
    elif "--sweep" in a: sweep(mp)
    elif "--one" in a:
        if one_val is None:                                # --one needs a following Name@Class argument
            print("usage: --one <Name@Class>"); sys.exit(2)
        name = one_val
        sp = [s for s in list_splittable(mp) if s[0] == name]
        if not sp: print("not a splittable boundary artifact:", name); sys.exit()
        revert_asm()
        nm, mg, f, sj, addr = sp[0]
        with open(f, encoding="latin-1") as fh:
            lines = fh.read().split("\n")
        sym = apply_split(f, lines, sj, addr); print("applied", sym)
        build_ok, after, lost, got = _clean_build_and_check([name])
        print("%s -> %s%%  regressions=%d" % (name, got.get(name), len(lost)))
        # Bank only on a successful build with no regression that actually reaches 100%.
        if build_ok and (got.get(name) or 0) >= 100 and not lost: print("SAFE (verify md5, ratchet record, commit)")
        else: revert_asm(); print("reverted (did not bank cleanly)" if build_ok else "reverted (build failed)")
    else: print(__doc__)
