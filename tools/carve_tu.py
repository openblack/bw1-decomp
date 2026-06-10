#!/usr/bin/env python3
r"""carve_tu.py - split one multi-class TU .cpp into per-object TUs by target address.

WHY (the detector->carve->lift loop): BW1E142's 0x401000-0x407840 is ONE dtk unit (Abode.cpp) holding
MANY interleaved classes (Base/GAbodeInfo/Fixed/MultiMapFixed/GameThingWithPos/Object/Abode/...). An
inherited virtual that's OVERRIDDEN through the chain (e.g. MultiMapFixed::GetCollideData, declared at
Object/Fixed/MultiMapFixed) is referenced only by ITS class's vtable, which Abode.cpp never instantiates
-> it compiles to an EMPTY symbol (0%). Giving that class its OWN TU makes its vtable (and thus its
overridden virtuals) emit. dtk supports NO holes (every unit = one contiguous .text range, verified: 0
of 224 units have >1 range), so carving a middle class is a 3-way split.

HOW: every method in the .cpp carries a `// win1.41 0xADDR Class::Method` comment. We slice the file into
PREAMBLE (everything before the first such comment = the #includes) + per-method BLOCKS (from one
`// win1.41 0x...` up to the next), read each block's address, and route blocks to the output TU whose
[start,end) range contains that address. Each new .cpp = full preamble + its blocks (copying all includes
is wasteful but always compiles). Blocks with no parseable address stay in the FALLBACK (main) TU.

It then prints the splits.txt edit (replace the source unit's .text range with the N new ranges; .rdata/
.data stay with the main TU) and the configure.py `Object(NonMatching, ...)` lines to add. With --apply it
writes the .cpp files + edits splits.txt; you still RE-RUN configure.py + ninja to pick them up (printed).

Usage (ranges are start:end:NewTUName, last one keeps the source name):
  python tools/carve_tu.py Abode 0x401000:0x401490:AbodeFront 0x401490:0x401640:MultiMapFixed 0x401640:0x407840:Abode
  python tools/carve_tu.py ... --apply
"""
import os, re, sys

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION", "BW1E142")
WIN = re.compile(r'//\s*win1\.41\s+(?:0x)?([0-9a-fA-F]{5,8})\b')  # comments use `win1.41 00402610` (no 0x)

def parse_blocks(text):
    """Return (preamble, [(addr|None, block_text), ...]) split on `// win1.41 0x...` lines."""
    lines = text.split("\n")
    starts = [i for i, l in enumerate(lines) if WIN.search(l)]
    if not starts:
        return text, []
    preamble = "\n".join(lines[:starts[0]])
    blocks = []
    for k, s in enumerate(starts):
        e = starts[k + 1] if k + 1 < len(starts) else len(lines)
        btxt = "\n".join(lines[s:e])
        m = WIN.search(btxt)
        addr = int(m.group(1), 16) if m else None
        blocks.append((addr, btxt))
    return preamble, blocks

def _self_test():
    """Pin the parser+router so they can't silently regress (the win1.41 format, no-0x addrs, routing)."""
    ok = True
    def chk(c, n):
        nonlocal ok; ok = ok and c; print(("  PASS " if c else "  FAIL ") + n)
    sample = ('#include "a.h"\n#include "b.h"\n\n'
              '// win1.41 00401000 mac 1 A::foo(void)\nvoid A::foo() {}\n\n'
              '// win1.41 0x401500 B::bar(void)\nint B::bar() { return 0; }\n\n'
              '// win1.41 00402000 A::baz(void)\nvoid A::baz() {}\n')
    pre, blocks = parse_blocks(sample)
    chk("#include" in pre and "win1.41" not in pre, "preamble = includes only")
    chk(len(blocks) == 3, "3 method-blocks parsed (got %d)" % len(blocks))
    chk([b[0] for b in blocks] == [0x401000, 0x401500, 0x402000],
        "addrs parsed incl no-0x AND 0x forms (got %s)" % [hex(b[0]) for b in blocks])
    # route: [0x401000,0x401600)->Mid gets foo+bar; [0x401600,0x403000)->Rest gets baz
    ranges = [(0x401000, 0x401600, "Mid"), (0x401600, 0x403000, "Rest")]
    buckets = {n: [] for _, _, n in ranges}
    for addr, btxt in blocks:
        for lo, hi, name in ranges:
            if lo <= addr < hi:
                buckets[name].append(btxt); break
    chk(len(buckets["Mid"]) == 2 and len(buckets["Rest"]) == 1, "routing by address range")
    chk("A::foo" in buckets["Mid"][0] and "B::bar" in buckets["Mid"][1], "block text carried with addr")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def main():
    a = sys.argv[1:]
    if "--self-test" in a:
        sys.exit(_self_test())
    if len(a) < 3:
        print(__doc__); return
    apply = "--apply" in a
    force = "--force" in a
    a = [x for x in a if x not in ("--apply", "--force")]
    src_tu = a[0]
    ranges = []
    for spec in a[1:]:
        lo, hi, name = spec.split(":")
        ranges.append((int(lo, 16), int(hi, 16), name))
    src_path = os.path.join(DTK, "src", "Black", src_tu + ".cpp")
    text = open(src_path, encoding="utf-8").read()
    preamble, blocks = parse_blocks(text)
    # route each block
    buckets = {name: [] for _, _, name in ranges}
    fallback = ranges[-1][2]
    unrouted = 0
    for addr, btxt in blocks:
        if addr is None:
            buckets[fallback].append(btxt); unrouted += 1; continue
        for lo, hi, name in ranges:
            if lo <= addr < hi:
                buckets[name].append(btxt); break
        else:
            buckets[fallback].append(btxt)
    print("CARVE %s.cpp -> %d TUs  (%d method-blocks, %d had no addr -> %s)"
          % (src_tu, len(ranges), len(blocks), unrouted, fallback))
    for lo, hi, name in ranges:
        print("  %-16s 0x%06x-0x%06x  %d blocks" % (name, lo, hi, len(buckets[name])))
    print("\n--- splits.txt: replace the %s .text range with ---" % src_tu)
    for lo, hi, name in ranges:
        print("  (TU %s) .text start:0x%08X end:0x%08X" % (name, lo, hi))
    print("--- configure.py: add Object lines for NEW TUs ---")
    for lo, hi, name in ranges:
        if name != src_tu:
            print('  Object(NonMatching, "Black/%s.cpp"),' % name)
    # CLOBBER GUARD (learned the hard way): the project pre-registers ~hundreds of class names as empty
    # NonMatching stub .cpp files in configure.py. A carve target may ALREADY exist as such a stub -- and
    # the right move is to POPULATE that stub, not blow it away. Report existing non-source outputs.
    existing = [name for lo, hi, name in ranges if name != src_tu
                and os.path.exists(os.path.join(DTK, "src", "Black", name + ".cpp"))]
    if existing:
        print("\nNOTE: these output TUs ALREADY EXIST (likely registered stubs): %s" % ", ".join(existing))
        print("      -> use the existing stub (don't add a duplicate Object) %s"
              % ("and re-run with --force to populate it" if not ("--force" in sys.argv) else ""))
        if "--force" not in sys.argv and apply:
            print("ABORTED apply to avoid clobbering. Re-run with --force once you've confirmed."); return
    if not apply:
        print("\n(dry-run; re-run with --apply to write .cpp files + splits.txt, then configure.py + ninja)")
        return
    # APPLY: write each new .cpp (preamble + blocks); overwrite source for its own bucket
    for lo, hi, name in ranges:
        body = preamble + "\n\n" + "\n".join(buckets[name]).strip() + "\n"
        p = os.path.join(DTK, "src", "Black", name + ".cpp")
        open(p, "w", encoding="utf-8", newline="\n").write(body)
        print("wrote", p, "(%d blocks)" % len(buckets[name]))
    print("\nNEXT: edit config/%s/splits.txt (3-way .text) + configure.py (Object lines above)," % VER)
    print("then: python configure.py && ninja  (verify no byte-exact regression)")

if __name__ == "__main__":
    main()
