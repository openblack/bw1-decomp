#!/usr/bin/env python3
"""struct_sizes.py - cross-check declared struct sizes against BINARY GROUND TRUTH.

The decomp headers carry `static_assert(sizeof(struct X) == 0xN)`. Many are WRONG (the struct is
under-sized because fields aren't laid out). We can recover the TRUE size for any class that has a
scalar-deleting destructor `??_G`: when it deletes the object via the *sized* `operator delete`
(`??3Base@@SAXPAXI@Z`, i.e. `delete(void* p, unsigned int size)`), MSVC emits the idiom
`push <sizeof>; push this; call ??3...I@Z`, so the pushed immediate IS sizeof(X) as the linker saw
it in the original binary.

Recovery is precise about which delete is the object's own:
  * Only the SIZED form (`...I@Z`, the trailing `I` = the `unsigned int` size parameter) carries a
    size. The plain `operator delete(void*)` (`??3@YAXPAX@Z`) takes no size, so it is ignored.
  * A destructor may call `operator delete` several times - first the unsized member/sub-object
    deletes, then its own sized self-delete. We scan PAST the unsized calls and take the size from
    the first SIZED call, reading the immediate that sits immediately before the `push this`.

This finds every disagreement (declared vs binary-truth) and can correct it (`--fix` pads the struct
to the true size + updates the static_assert). Correct sizes (a) fix the decomp for upstream, and
(b) are the right TARGET for name_structs to lay fields out against (it trusts the static_assert).

Usage:
  python tools/struct_sizes.py                 # report disagreements
  python tools/struct_sizes.py --fix [N]       # pad the first N (or all) wrong structs to true size
  python tools/struct_sizes.py --self-test
"""
import os, re, sys, glob, bisect
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

def _ranges():
    """Index the lifted-asm files by the VA range encoded in their filename.

    The src/asm dumps are named `...<start>-<end>.asm`, where <start> and <end> are 8-hex-digit
    virtual addresses (e.g. `runblack.reassemble.0043c0c0-0043c2f0.asm`). Returns a sorted list of
    `(start, end, path)` tuples so `_body()` can bisect an address to the file that contains it.
    """
    R = []
    for f in glob.glob(os.path.join(ROOT, "src/asm/**/*.asm"), recursive=True):
        # `.<8 hex>-<8 hex>.asm` filename convention = the [start, end) VA range of that dump.
        # Case-insensitive so an uppercase-hex filename still matches.
        m = re.search(r"\.([0-9a-fA-F]{8})-([0-9a-fA-F]{8})\.asm$", f)
        if m: R.append((int(m.group(1), 16), int(m.group(2), 16), f))
    R.sort()
    return R

# How many asm lines after the function's entry to scan for the `push <size>; call ??3` delete.
# A scalar-deleting destructor can inline several member/sub-object destructors (each possibly a
# `call ??3` of its own) before reaching the object's OWN sized delete; the observed worst case is
# ~150 instructions, so 256 leaves comfortable headroom. (The old value, 24, silently dropped ~7%
# of classes whose delete sat past line 24 - a coverage bug, not a correctness one.)
_WINDOW = 256

_C = {}  # cache: asm file path -> its lines (read once, reused across lookups)
def _body(R, starts, addr):
    """Return the ~`_WINDOW` asm lines starting at the instruction tagged `// 0x<addr>`, or None.

    `R`/`starts` come from `_ranges()`. We bisect `starts` to find the dump whose [start, end) range
    contains `addr`, read it (cached in `_C`), then locate the line carrying the address comment the
    disassembler appends to each instruction. The returned window is the function body slice the
    caller scans for the operator-delete idiom.
    """
    i = bisect.bisect_right(starts, addr) - 1
    if i < 0 or not (R[i][0] <= addr < R[i][1]): return None
    f = R[i][2]
    if f not in _C:
        # latin-1: lossless byte passthrough for the asm dumps (no decode errors on stray bytes).
        with open(f, encoding="latin-1") as fh:
            _C[f] = fh.read().split("\n")
    L = _C[f]
    # Each instruction line ends with `// 0xAABBCCDD <bytes>`; this matches that exact 8-hex address
    # (followed by whitespace or end-of-line) so we land on the requested instruction, not a substr.
    nd = re.compile(r"//\s*0x%08x(?:\s|$)" % addr)
    for k, l in enumerate(L):
        if nd.search(l): return L[k:k + _WINDOW]
    return None

# A `push` of an immediate, e.g. `push 0x148` or `push 0x00000148`. Case-insensitive hex so an
# uppercase-hex dump still parses. A non-matching push (a register, e.g. `push esi` = `push this`)
# is recorded as a NON-immediate so the sized-delete idiom check below can tell the two apart.
_PUSH_IMM = re.compile(r"0x([0-9a-fA-F]+)$")
# The SIZED `operator delete(void*, unsigned int)` - mangled `...I@Z` where the trailing `I` is the
# size parameter (`??3Base@@SAXPAXI@Z`). Only this form carries sizeof; the plain
# `operator delete(void*)` (`??3@YAXPAX@Z`) does not and must be skipped.
_SIZED_DELETE = re.compile(r"\?\?3.*I@Z")

def truth_sizes():
    """Recover `{class_name: sizeof}` from each `??_G` scalar-deleting destructor.

    For every `??_G` symbol (a class scalar-deleting destructor) we read its body and look for the
    MSVC sized-delete idiom `push <sizeof>; push this; call ??3...I@Z`. The size is the immediate
    that sits immediately before the `push this` register push. Unsized member/sub-object deletes
    (`call ??3@YAXPAX@Z`, no size argument) are skipped, and we keep scanning so a self-delete that
    follows those still gets picked up. Only classes whose body yields this idiom are returned.
    """
    import propose, gpr
    H = propose._syms(); R = _ranges(); starts = [r[0] for r in R]
    out = {}
    for f in H.by_mangled.values():
        if not (f.mangled and f.mangled.startswith("??_G") and f.addr and f.cls): continue
        b = _body(R, starts, int(f.addr, 16))
        if not b: continue
        # Track the two most-recent pushes as ("imm", value) or ("reg", text). The sized-delete
        # idiom is `push <size>(imm); push this(reg); call ??3...I@Z`, so at the sized call the size
        # is prev2 (the immediate) when prev1 is the `push this` register push.
        prev2 = prev1 = None
        for l in b:
            mn, o = gpr.parse(l)
            if mn == "push":
                g = _PUSH_IMM.match(o or "")
                prev2, prev1 = prev1, (("imm", int(g.group(1), 16)) if g else ("reg", o))
            elif mn == "call" and "??3" in (o or ""):
                if (_SIZED_DELETE.search(o or "") and prev2 and prev2[0] == "imm"
                        and prev1 and prev1[0] == "reg"):
                    out[f.cls] = prev2[1]; break   # found the sized self-delete -> sizeof
                # Unsized member-delete (or a non-conforming call): reset the push window and keep
                # scanning for the object's own sized delete later in the destructor.
                prev2 = prev1 = None
    return out

def declared_sizes():
    """Return `{class_name: (declared_size, header_path)}` from `static_assert`s in black/*.h.

    Each decomp header asserts its struct's size as `static_assert(sizeof(struct X) == 0xN, ...)`.
    We harvest every such assertion (the size is what the decomp currently CLAIMS, which is what
    `disagreements()` checks against the binary truth). Hex is matched case-insensitively.
    """
    out = {}
    for hf in glob.glob(os.path.join(ROOT, "black/*.h")):
        with open(hf, encoding="latin-1") as fh:
            t = fh.read()
        for m in re.finditer(r"static_assert\(sizeof\(struct (\w+)\) == 0x([0-9a-fA-F]+)", t):
            out[m.group(1)] = (int(m.group(2), 16), hf)
    return out

def disagreements():
    """Join binary truth against the headers and return the size mismatches.

    For every class that has BOTH a recovered binary-truth size (`truth_sizes()`) and a declared
    `static_assert` size (`declared_sizes()`), emit a `(class, declared, true, header_path)` tuple
    when the two differ. Result is sorted (by class name) for stable output. This is the core entry
    point: the CLI report and `--fix` both drive off it.
    """
    truth = truth_sizes(); decl = declared_sizes()
    bad = []
    for cls, t in truth.items():
        if cls in decl and decl[cls][0] != t:
            bad.append((cls, decl[cls][0], t, decl[cls][1]))
    return sorted(bad)

def _placeholders(declared, true, indent):
    """fill [declared, true) with `uint32_t field_0xNN;` at 4-byte offsets (project convention),
       plus a char[] for any sub-4 remainder. (placeholders for not-yet-named fields)."""
    lines = []; off = declared
    while off + 4 <= true:
        lines.append("%suint32_t field_0x%x;" % (indent, off)); off += 4
    if true - off:
        lines.append("%schar field_0x%x[0x%x];" % (indent, off, true - off))
    return "\n".join(lines)

def fix_struct(cls, declared, true, hdr, base_growth=0):
    """grow the C++ class + C struct of `cls` to `true` size with `field_0xNN` placeholders and update
       its static_assert. Matches the project convention (named-where-known + field_0xNN, explicit
       offsets); name_structs can later replace placeholders with real names.

       base_growth: bytes the struct's BASE grew (when the base is ALSO resized). The own padding must
       START after the new base (declared+base_growth) so sizeof lands on `true` rather than
       overshooting by the base's growth (the inheritance-cascade bug)."""
    with open(hdr, encoding="latin-1") as fh:
        t = fh.read()
    start = declared + base_growth
    if true - start <= 0: return False
    cpp = _placeholders(start, true, "    ")   # C++ class section: 4-space indent
    cst = _placeholders(start, true, "  ")     # C struct section:  2-space indent
    # Splice the placeholder block in just before the closing `\n};` of each definition. The
    # non-greedy `.*?` with re.S spans the whole (multi-line) body up to the FIRST closing brace;
    # `count=1` edits only the first matching definition of this class.
    # C++: `class <Cls> [: bases] {  ... }` - `[^{]*` skips an optional base-class list before `{`.
    n = re.sub(r"(class %s\b[^{]*\{.*?)(\n\};)" % re.escape(cls), r"\1\n%s\2" % cpp, t, count=1, flags=re.S)
    # C: `struct <Cls> { ... }` - the plain C mirror of the same struct.
    n = re.sub(r"(struct %s\s*\{.*?)(\n\};)" % re.escape(cls), r"\1\n%s\2" % cst, n, count=1, flags=re.S)
    n = n.replace("sizeof(struct %s) == 0x%x" % (cls, declared), "sizeof(struct %s) == 0x%x" % (cls, true))
    # Bail if nothing changed or the first placeholder field never landed (regex missed the def).
    if n == t or ("field_0x%x" % start not in n): return False
    with open(hdr, "w", encoding="latin-1") as fh:
        fh.write(n)
    return True

def _self_test():
    """Sanity-check the core regexes on synthetic text (no asm/header I/O needed)."""
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    # parsing helpers are pure-ish; just sanity the regexes on synthetic text
    chk(bool(re.search(r"static_assert\(sizeof\(struct (\w+)\) == 0x([0-9a-fA-F]+)",
                       "static_assert(sizeof(struct Foo) == 0x10")), "static_assert regex")
    chk(_PUSH_IMM.match("0x48").group(1) == "48", "push imm regex")
    chk(_PUSH_IMM.match("0x4C").group(1) == "4C", "push imm regex (uppercase hex)")
    chk(_PUSH_IMM.match("esi") is None, "push reg is not an immediate")
    # sized delete (carries sizeof) vs plain operator delete (no size)
    chk(bool(_SIZED_DELETE.search("??3Base@@SAXPAXI@Z")), "sized-delete regex matches ...I@Z")
    chk(not _SIZED_DELETE.search("??3@YAXPAX@Z"), "plain operator delete is NOT sized")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    bad = disagreements()
    print("structs with WRONG declared size (declared vs binary-truth): %d" % len(bad))
    if "--fix" in a:
        idx = a.index("--fix")
        # Optional positional count right after `--fix`: `--fix 5` fixes the first 5, bare `--fix`
        # fixes all. Guarded so a missing/non-digit token falls back to "all" (no IndexError/crash).
        n = int(a[idx + 1]) if idx + 1 < len(a) and a[idx + 1].isdigit() else len(bad)
        done = 0
        for cls, d, t, hdr in bad[:n]:
            if fix_struct(cls, d, t, hdr): done += 1; print("  fixed %-28s 0x%x -> 0x%x" % (cls, d, t))
        print("applied %d size corrections (pad + static_assert)" % done)
    else:
        for cls, d, t, hdr in bad[:40]:
            print("  %-30s declared 0x%-5x  ACTUAL 0x%-5x  (%s)" % (cls, d, t, os.path.basename(hdr)))
        print("\n(run with --fix [N] to pad to true size; gate with a full rebuild + ratchet)")
