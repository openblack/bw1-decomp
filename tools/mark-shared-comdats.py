#!/usr/bin/env python3
"""Give `comdat` to the symbols.txt entries that a recompiled unit emits as a shared COMDAT.

cl.exe emits inline functions, vftables, RTTI, string literals and `__real@` constants as
ANY (vftables LARGEST) COMDATs, and link.exe kept the first copy on its command line. The
split must carry the image's copy as a COMDAT too: lld-link then keeps it, as the first in
link order, and discards the recompiled units' copies. For each link of a version (after a
build) that is not an ICF link, this reads the recompiled units the link takes as compiled
and marks every entry one of them leads an ANY or LARGEST COMDAT with.

Entries whose range overlaps another without being equal to it cannot be cut into a COMDAT
of their own; they are listed for a fix by hand instead of marked. With --fix-sizes, such an
entry gets the size cl.exe gives the COMDAT (less the vftable's locator) when that ends it
before the next, and an entry that runs into a shared COMDAT (an `lbl_` dtk sized up to the
next symbol it knew of, or a vftable sized over the data after it) is cut back to its start.
An entry that runs on over the locator pointer in front of a shared vftable (cl.exe emits
the two as one COMDAT) is cut back to end before it, and a shared vftable shorter than cl.exe's
copy (a version with more virtuals) grows over the `lbl_` entries dtk put in the rest of it,
where the image holds code pointers there.

  python tools/mark-shared-comdats.py --version BW1W120           # report
  python tools/mark-shared-comdats.py --version BW1W120 --apply   # rewrite symbols.txt
"""

import argparse
import glob
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
from decomp_binary import Coff  # noqa: E402

SEL_ANY, SEL_LARGEST = 2, 6
SCN_LNK_COMDAT = 0x1000
ENTRY = re.compile(r"^(\S+) = \S+:0x([0-9A-Fa-f]+);(.*)$")


def link_inputs(target):
    """The explicit inputs of the build's link of `target`, in order."""
    out = subprocess.run(["ninja", "-t", "query", target], cwd=ROOT, capture_output=True, text=True).stdout
    inputs, on = [], False
    for line in out.splitlines():
        if line.startswith("  input:"):
            on = True
        elif on and line.startswith("    ") and not line.strip().startswith("|"):
            inputs.append(line.strip())
        elif on:
            break
    return inputs


def shared_comdats(path):
    """{name: (size, offset)} of what leads an ANY or LARGEST COMDAT section of the object
    at `path`: its offset in the section (4 for a vftable after its locator) and the size
    from there to the section's end."""
    coff = Coff.read(ROOT / path)
    selection = {}
    for s in coff.symbols.values():
        if s.storage == 3 and s.value == 0 and s.aux and s.section > 0 and s.name.startswith("."):
            if coff.sections[s.section - 1].flags & SCN_LNK_COMDAT:
                selection[s.section] = s.aux[0][14]
    leaders = {}
    for s in sorted(coff.symbols.values(), key=lambda s: s.index):
        if s.section > 0 and s.section not in leaders and not s.name.startswith(".") \
                and not (s.storage == 3 and s.aux):
            leaders[s.section] = s
    return {s.name: (coff.sections[k - 1].size - s.value, s.value)
            for k, s in leaders.items() if selection.get(k) in (SEL_ANY, SEL_LARGEST)}


def image_code(version):
    """(read the word at an address, start of .text, end of .text) of the version's image."""
    import pefile

    pe = pefile.PE(glob.glob(str(ROOT / "orig" / version / "*-decrypted.exe"))[0])
    base = pe.OPTIONAL_HEADER.ImageBase
    text = pe.sections[0]
    return (lambda a: int.from_bytes(pe.get_data(a - base, 4), "little"),
            base + text.VirtualAddress, base + text.VirtualAddress + text.Misc_VirtualSize)


def entries(lines):
    """(line index, name, address, size, is label) of each symbols.txt entry."""
    result = []
    for i, line in enumerate(lines):
        m = ENTRY.match(line)
        if m:
            size = re.search(r"size:0x([0-9A-Fa-f]+)", m.group(3))
            label = "type:label" in m.group(3) or re.search(r"\balias\b", m.group(3)) is not None
            result.append((i, m.group(1), int(m.group(2), 16), int(size.group(1), 16) if size else 0, label))
    return result


def overlaps(ents):
    """(earlier, later) entries whose ranges overlap without starting at the same address."""
    spans = sorted((a, a + s, n, i) for i, n, a, s, label in ents if s and not label)
    return [(x, y) for x, y in zip(spans, spans[1:]) if y[0] < x[1] and y[0] != x[0]]


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--version", default="BW1W120")
    ap.add_argument("--apply", action="store_true", help="add the marks to symbols.txt")
    ap.add_argument("--fix-sizes", action="store_true",
                    help="resize the overlapping entries that keep a shared COMDAT from being marked")
    args = ap.parse_args()

    build = Path("build") / args.version
    failed = False
    for target in sorted([*(ROOT / build).glob("*-linked.exe"), *(ROOT / build).glob("*-linked.dll")]):
        name = target.name.split("-linked.")[0]
        inputs = link_inputs(str(build / target.name))
        if any(p.endswith(".fold.o") for p in inputs):
            print(f"{name}: an ICF link, its units are folded")
            continue
        recompiled = [p for p in inputs if p.startswith(f"{build}/src/")]
        shared = {}
        for p in recompiled:
            shared.update(shared_comdats(p))
        config = Path("config") / args.version
        sym_path = config / "symbols.txt" if name == "runblack" else config / name / "symbols.txt"
        lines = (ROOT / sym_path).read_text().splitlines()
        ents = entries(lines)
        cut = 0
        if args.fix_sizes:
            spans = sorted((a, a + s, n, i) for i, n, a, s, label in ents if s and not label)
            for (a0, e0, n0, i0), (a1, _, n1, _) in zip(spans, spans[1:]):
                if e0 == a1 and a0 < a1 - 4 and n1 in shared and shared[n1][1] == 4:
                    lines[i0] = re.sub(r"size:0x[0-9A-Fa-f]+", f"size:0x{a1 - 4 - a0:X}", lines[i0], count=1)
                    cut += 1
            ents = entries(lines)
            drop = set()
            image = image_code(args.version) if name == "runblack" else None
            for k, (i, n, a, size, label) in enumerate(ents):
                if not n.startswith("??_7") or n not in shared or label or not size or shared[n][0] <= size:
                    continue
                end = a + shared[n][0]
                if image is None or not all(image[1] <= image[0](w) < image[2] for w in range(a + size, end, 4)):
                    continue
                inside = [e for e in ents[k + 1:] if a < e[2] < end]
                after = next((e for e in ents[k + 1:] if e[2] >= end), None)
                if all(e[1].startswith("lbl_") for e in inside) and (after is None or after[2] >= end):
                    lines[i] = re.sub(r"size:0x[0-9A-Fa-f]+", f"size:0x{shared[n][0]:X}", lines[i], count=1)
                    drop |= {e[0] for e in inside}
                    cut += 1
            lines = [line for j, line in enumerate(lines) if j not in drop]
            ents = entries(lines)
        for (a0, _, n0, i0), (a1, _, n1, _) in overlaps(ents) if args.fix_sizes else []:
            size = None
            if n0 in shared and shared[n0][0] <= a1 - a0:
                size = shared[n0][0]
            elif n1 in shared or (n0.startswith("lbl_") and n0 in shared):
                size = a1 - a0
            if size:
                lines[i0] = re.sub(r"size:0x[0-9A-Fa-f]+", f"size:0x{size:X}", lines[i0], count=1)
                cut += 1
        if cut:
            print(f"{name}: {cut} overlapping entries resized")
            ents = entries(lines)
        bad = {n for x, y in overlaps(ents) for n in (x[2], y[2]) if n in shared}
        marked = 0
        for i, sym, _, _, label in ents:
            if sym in shared and sym not in bad and not label and not re.search(r"\bcomdat\b", lines[i]):
                lines[i] += " comdat"
                marked += 1
        print(f"{name}: {len(recompiled)} recompiled units, {marked} entries to mark comdat in {sym_path}")
        for sym in sorted(bad):
            print(f"  overlaps another entry, not marked: {sym}")
            failed = True
        if args.apply and (marked or cut):
            (ROOT / sym_path).write_text("\n".join(lines) + "\n")
    return 1 if failed else 0


if __name__ == "__main__":
    sys.exit(main())
