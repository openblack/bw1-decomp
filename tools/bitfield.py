#!/usr/bin/env python3
"""bitfield.py - sweep the byte/word BITFIELD-PREDICATE class to strict 100%.

A huge family of Is*/Has*/Can*/Get* predicates read a NARROW field (a byte or word, not a 32-bit
word) and bit-extract it. MSVC zero-extends the narrow load (`xor eax,eax; mov al,[this+OFF]` or
`mov ax,...`), optionally `not`s it at the narrow width, then `shr`/`and`. The staging stub usually
mis-types the field as `bool32_t`/`uint32_t` (a 32-bit `mov eax`), so it's a near-miss. The fix is the
correct narrow type. This detects the asm shape and generates `[~](uint8_t|uint16_t)*(..*)(this+OFF)
>> N & M`, gated STRICT (banks only byte-exact wins, never marginal).

Recognised shape (in order, padding/ret tolerant):
  [xor eax,eax]  mov al|ax,[ecx+OFF]   [not al|ax]   [shr eax,N]   and eax,M   ret

Usage:
  python tools/bitfield.py --survey [MINPCT]
  python tools/bitfield.py --sweep [--apply] [MINPCT]
  python tools/bitfield.py --self-test
"""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

_PAD = ("nop", "int3")
def match(instrs):
    """instrs (mnemonic, operands) -> C body string for the bitfield predicate, or None."""
    if not instrs: return None
    def norm(o):
        for q in ("byte ptr", "word ptr", "dword ptr"): o = o.replace(q, "")
        return o.replace(" ", "")
    seq = []
    for mn, ops in instrs:
        if mn == "ret": break
        if mn in _PAD: continue
        seq.append((mn, norm(ops)))
    if not seq: return None
    i = 0
    # optional `xor eax,eax` (the narrow-load zero-extend idiom)
    zext = seq[0] == ("xor", "eax,eax")
    if zext: i = 1
    if i >= len(seq): return None
    mn, o = seq[i]
    # The narrow load: either `mov reg,[ecx+0xNN]` (2 capture groups: reg, offset)
    # or `mov reg,[ecx]` (1 capture group: reg, implicit offset 0). `ecx` is the
    # thiscall `this` pointer. Accept both upper- and lower-case hex offsets so the
    # shape is recognised regardless of the disassembler's hex casing.
    m = re.match(r"^(al|ax|eax),\[ecx\+0x([0-9a-fA-F]+)\]$", o) or re.match(r"^(al|ax|eax),\[ecx\]$", o)
    if mn != "mov" or not m: return None
    reg = m.group(1)
    # m.lastindex >= 2 only for the `[ecx+0xNN]` alternation (it has 2 groups);
    # the bare `[ecx]` alternation has 1 group, so the field offset is 0.
    off = int(m.group(2), 16) if m.lastindex and m.lastindex >= 2 else 0
    ty = {"al": "uint8_t", "ax": "uint16_t", "eax": "uint32_t"}[reg]
    # A narrow load (al/ax) writes only the low 8/16 bits of eax, leaving the upper
    # bits as whatever was there before. Without a preceding `xor eax,eax` those upper
    # bits are garbage, so the later `shr`/`and` would NOT be a clean field extraction
    # and the generated zero-extended C `*(uint8_t*)...` would not match the asm. Reject.
    if reg in ("al", "ax") and not zext: return None
    i += 1
    neg = False
    if i < len(seq) and seq[i][0] == "not" and seq[i][1] in ("al", "ax", "eax"):
        neg = True; i += 1
    shift = 0
    if i < len(seq) and seq[i][0] == "shr" and seq[i][1].startswith("eax,"):
        shift = int(seq[i][1].split(",")[1], 16); i += 1
    if i >= len(seq) or seq[i][0] != "and" or not seq[i][1].startswith("eax,"): return None
    mask = int(seq[i][1].split(",")[1], 16); i += 1
    if i != len(seq): return None                      # nothing else allowed (else not this shape)
    # Build the C expression that reproduces the asm exactly. Subtlety: the asm `not`
    # runs at the NARROW width (al/ax), but `shr`/`and` run on the full 32-bit eax.
    # So we cast the field to its narrow type, apply `~` at that narrow width
    # `(uint8_t)~field` / `(uint16_t)~field` (the cast keeps the complement narrow,
    # matching the byte/word `not`), then let C's implicit integer promotion widen the
    # result to int for the `>>`/`&`. The parentheses below are deliberate:
    #   - `(uint16_t)~*(...)` keeps the negation narrow before promotion;
    #   - wrapping the whole shifted/negated expr in `(...)` before `& mask` is needed
    #     because `&` binds looser than `>>`, and so the `& mask` applies to the final
    #     value rather than to the shift amount.
    acc = "*(%s*)((char*)this + 0x%x)" % (ty, off) if off else "*(%s*)this" % ty
    if neg: acc = "(%s)~%s" % (ty, acc)
    if shift: acc = "%s >> %d" % (acc, shift)
    return "return (%s) & %d;" % (acc, mask) if (shift or neg) else "return %s & %d;" % (acc, mask)

def candidates(min_pct=0.0):
    """Find near-miss functions whose asm matches the bitfield-predicate shape.

    Loads the objdiff match report, walks every function whose match percent is in
    [min_pct, 100.0) (i.e. not already byte-exact, but at least `min_pct`), resolves
    its mangled name to a class/method via the symbol DB, disassembles its target
    instructions, and runs `match()` on them.

    Returns a list of (name, pct, body) tuples for the functions that DO match the
    shape, where `name` is "method@class", `pct` is the current match percent, and
    `body` is the generated C return-statement that `match()` produced.
    """
    import verify, propose, retwidth
    rep = verify.load_report(); H = propose._syms(); out = []
    for u, fn, pct, dem in verify.iter_functions(rep):
        if pct is None or not (min_pct <= pct < 100.0): continue
        f = H.by_mangled.get(fn)
        if not (f and f.cls and f.method): continue
        name = "%s@%s" % (f.method, f.cls)
        b = match(retwidth.target_instrs(name))
        if b: out.append((name, pct, b))
    return out

def survey(min_pct=0.0):
    """Print every bitfield-predicate candidate (>= min_pct) with its proposed C body.

    Read-only: lists candidates sorted by descending match percent so the closest
    near-misses appear first. Makes no edits; use sweep(apply=True) to bank them.
    """
    c = candidates(min_pct)
    for name, pct, b in sorted(c, key=lambda x: -x[1]): print("  %5.1f%%  %-40s %s" % (pct, name[:40], b))
    print("\n%d bitfield-predicate candidates (>=%.0f%%)" % (len(c), min_pct))

def sweep(apply=False, min_pct=0.0):
    """Apply (or dry-run) the bitfield fix to every candidate, banking only exact wins.

    For each candidate (see `candidates`):
      - apply=False (dry run): just print "WOULD <name> <- <body>" and bank nothing.
      - apply=True: feed the generated body through `liftgate.gate(..., strict=True)`,
        which edits the staging stub, recompiles, and keeps the change only if it
        reaches a byte-exact 100% match (reverting otherwise). STRICT means marginal
        improvements are never banked, so this can only ever help the match rate.

    Prints a per-function result line and a final "N candidates, M banked" summary.
    """
    import liftgate
    banked = tried = 0
    for name, pct, b in candidates(min_pct):
        tried += 1
        if not apply: print("  WOULD %-40s <- %s" % (name[:40], b)); continue
        r = liftgate.gate(name, b, strict=True)
        ok = "reached 100" in r.get("msg", "")
        banked += 1 if ok else 0
        print("  %-40s %s" % (name[:40], r.get("msg", "")[:48]))
    print("\n%s: %d candidates, %d banked" % ("SWEEP" if apply else "DRY", tried, banked))

def _self_test():
    """Pure-logic self-test of `match()` on the canonical bitfield shapes.

    Exercises byte/word loads, the optional narrow `not`, `shr`+`and` field extraction,
    and the two rejection cases (narrow load without zero-extend; a non-bitfield body).
    Touches no files or external state; returns 0 on success, 1 on any failure.
    """
    ok = True
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n + ("" if c else "  got:%r" % (got,)))
    g = match([("xor", "eax, eax"), ("mov", "al, byte ptr [ecx + 0xb4]"), ("shr", "eax, 6"), ("and", "eax, 0x1"), ("ret", "")])
    chk(g == "return (*(uint8_t*)((char*)this + 0xb4) >> 6) & 1;", "byte shr+and (+disp/byte ptr)", g)
    g = match([("xor", "eax, eax"), ("mov", "al, [ecx+0xa]"), ("not", "al"), ("and", "eax, 0x1"), ("ret", "")])
    chk(g == "return ((uint8_t)~*(uint8_t*)((char*)this + 0xa)) & 1;", "byte not", g)
    g = match([("xor", "eax, eax"), ("mov", "ax, [ecx+0x24]"), ("not", "ax"), ("shr", "eax, 0xd"), ("and", "eax, 0x1"), ("ret", "")])
    chk(g == "return ((uint16_t)~*(uint16_t*)((char*)this + 0x24) >> 13) & 1;", "word not+shr (CanBePickedUp)", g)
    chk(match([("mov", "al, [ecx+0x4]"), ("ret", "")]) is None, "narrow load w/o zero-extend -> reject")
    chk(match([("push", "esi"), ("ret", "")]) is None, "non-bitfield -> None")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if __name__ == "__main__":
    a = sys.argv[1:]
    if "--self-test" in a: sys.exit(_self_test())
    # Optional positional MINPCT: pick the first bare numeric token (ignoring flags like
    # --survey/--sweep/--apply). `.replace(".","").isdigit()` accepts plain integers and
    # simple decimals (e.g. "40", "92.5") while skipping flags; it intentionally does NOT
    # accept negatives or scientific notation. Defaults to 0.0 (all near-misses) if absent.
    mp = next((float(x) for x in a if x.replace(".", "").isdigit()), 0.0)
    if "--survey" in a: survey(mp)
    elif "--sweep" in a: sweep(apply="--apply" in a, min_pct=mp)
    else: print(__doc__)
