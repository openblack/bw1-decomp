#!/usr/bin/env python3
"""Collect translation-unit boundary evidence for BW1W120 .text ranges.

Give consecutive sub-ranges of the executable, for example the pieces of a
splits.txt unit that look like several original objects:

    python tools/unit-evidence.py 4ff640-4ff910
    python tools/unit-evidence.py 4d22a0-4d28f0 4d28f0-4d3460 --mac

For each range it reports, from config/BW1W120/symbols.txt, splits.txt and the
original executable:

* the functions in the range and the end-of-unit markers in it
  (`crt_xc_fn_ctypeGuard_*`: MSVC6 emits this template-static initializer last
  in every object that includes it, so it closes a unit) and initializer thunks
  (`crt_xc_fn_*`, `_$E*`; header statics open a unit, but a static object
  defined mid-file also gets one, so a thunk alone does not prove a boundary);
* `.CRT$XCU` slots that point into the range;
* absolute data references, grouped by the splits.txt unit that currently owns
  them. Within one MSVC6 object .bss is laid out in reverse declaration order,
  and objects follow link order, so a later range whose statics sit *below* an
  earlier range's statics was declared later in the same object;
* path-like strings (`__FILE__` pushes) the range references;
* with --mac, where the same Class::Method names live in the BW1M119 binary and
  the next `.__sinit_*_cpp`. CodeWarrior emits a unit's functions in reverse
  source order followed by its `__sinit`, so code that follows a unit on
  Windows but sits at *higher* Mac addresses than it belongs to another unit.

Absolute references are read with llvm-objdump when it is available, otherwise
by scanning aligned dwords (noisier). Nothing is written.
"""

import argparse
import re
import shutil
import struct
import subprocess
import sys
from collections import Counter
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
sys.path.insert(0, str(ROOT / "tools"))
from decomp_binary import PE  # noqa: E402

SYMBOL_LINE = re.compile(r"(\S+) = (\.[\w$]+):0x([0-9A-Fa-f]+); // (.*)")


def load_symbols(path):
    out = []
    for line in Path(path).read_text(encoding="utf-8", errors="replace").splitlines():
        m = SYMBOL_LINE.match(line)
        if not m:
            continue
        size = re.search(r"size:0x([0-9A-Fa-f]+)", m.group(4))
        out.append((int(m.group(3), 16), int(size.group(1), 16) if size else 0, m.group(2), m.group(1)))
    out.sort()
    return out


def load_splits(path):
    out, unit = [], None
    for line in Path(path).read_text(encoding="utf-8").splitlines():
        m = re.match(r"^(\S.*):\s*$", line)
        if m:
            unit = m.group(1)
            continue
        m = re.match(r"\s+(\S+)\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)", line)
        if m and unit and unit != "Sections":
            out.append((int(m.group(2), 16), int(m.group(3), 16), m.group(1), unit))
    return out


def msvc_key(name):
    """Class::Method (or Method) of an MSVC mangled name, for matching Mac symbols."""
    m = re.match(r"\?\?([01])([^@]+)@", name)
    if m:
        return m.group(2) + ("::__ct" if m.group(1) == "0" else "::__dt")
    m = re.match(r"\?([^?@][^@]*)@([^@]+)@", name)
    if m:
        return m.group(2) + "::" + m.group(1)
    return None


def cw_key(name):
    """Class::Method of a CodeWarrior mangled `.code0` name."""
    name = name.lstrip(".")
    m = re.match(r"(.+?)__(\d+)", name[2:] if name.startswith("__") else name)
    if not m:
        return name
    base = name[:2] + m.group(1) if name.startswith("__") else m.group(1)
    start = (2 if name.startswith("__") else 0) + m.end(2)
    return name[start:start + int(m.group(2))] + "::" + base


def c_string(pe, address):
    try:
        data = pe.bytes(address, 160)
    except Exception:
        return None
    end = data.find(b"\0")
    text = data[:end] if end >= 0 else b""
    if len(text) >= 4 and all(32 <= c < 127 for c in text):
        return text.decode()
    return None


def objdump_refs(exe, lo, hi):
    tool = shutil.which("llvm-objdump") or shutil.which(str(ROOT / "build/tools/llvm/bin/llvm-objdump"))
    if not tool:
        return None
    out = subprocess.run([tool, "-d", "--no-show-raw-insn", "-M", "intel", f"--start-address={lo:#x}",
                          f"--stop-address={hi:#x}", str(exe)], capture_output=True, text=True).stdout
    refs = []
    for line in out.splitlines():
        m = re.match(r"\s*([0-9a-f]+):\s+(\S+)(.*)", line)
        if m and not m.group(2).startswith(("call", "j")):
            refs += [(int(m.group(1), 16), int(v, 16)) for v in re.findall(r"0x([0-9a-f]{6,8})\b", m.group(3))]
    return refs


def dword_refs(pe, lo, hi):
    data = pe.bytes(lo, hi - lo)
    return [(lo + i, struct.unpack_from("<I", data, i)[0]) for i in range(0, len(data) - 3)]


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("ranges", nargs="+", help="hex .text ranges lo-hi (no 0x needed)")
    ap.add_argument("--version", default="BW1W120")
    ap.add_argument("--mac", action="store_true", help="also locate the ranges' named functions in BW1M119")
    args = ap.parse_args()

    ranges = []
    for text in args.ranges:
        lo, hi = (int(x, 16) for x in text.split("-"))
        ranges.append((lo, hi))
    config = ROOT / "config" / args.version
    exe = ROOT / "orig" / args.version / "runblack-decrypted.exe"
    symbols = load_symbols(config / "symbols.txt")
    splits = load_splits(config / "splits.txt")
    pe = PE.read(exe)
    text_starts = {a for a, _, sec, _ in symbols if sec == ".text"}

    def owner(address):
        for lo, hi, sec, unit in splits:
            if lo <= address < hi:
                return f"{sec}@{unit.split('/')[-1]}"
        try:
            return "unsplit " + pe.section_at(address).name
        except Exception:
            return None

    xcu_slots = []
    for lo, hi, sec, unit in splits:
        if sec == ".CRT$XCU":
            for place in range(lo, hi, 4):
                xcu_slots.append((place, struct.unpack("<I", pe.bytes(place, 4))[0]))

    mac = None
    if args.mac:
        mac = [s for s in load_symbols(ROOT / "config/BW1M119/symbols.txt") if s[2] == ".code0" and s[3].startswith(".")]
        mac_index = {}
        for i, s in enumerate(mac):
            mac_index.setdefault(cw_key(s[3]), []).append(i)
        sinits = [(a, n) for a, _, _, n in mac if n.startswith(".__sinit_")]

    for lo, hi in ranges:
        print(f"== {lo:08x}-{hi:08x}  (current split: {owner(lo)})")
        funcs = [(a, s, n) for a, s, sec, n in symbols if sec == ".text" and lo <= a < hi]
        markers = [f"{a:x} {n}" for a, s, n in funcs if "ctypeGuard" in n]
        inits = [f"{a:x}" for a, s, n in funcs if n.startswith(("crt_xc_fn_", "_$E")) and "ctypeGuard" not in n
                 and "atexitCleanupReg" not in n]
        named = [n for a, s, n in funcs if not n.startswith(("crt_xc_", "_$E", "fn_", "gap_", "lbl_"))]
        print(f"   functions: {len(funcs)} symbols, {len(named)} named, "
              f"{sum(1 for a, s, n in funcs if n.startswith('fn_'))} unnamed")
        print(f"   ctype guards (unit ends): {markers or 'none'}")
        print(f"   initializer functions: {' '.join(inits) or 'none'}")
        slots = [f"{p:x}->{v:x}" for p, v in xcu_slots if lo <= v < hi]
        print(f"   .CRT$XCU slots: {' '.join(slots) or 'none'}")
        refs = objdump_refs(exe, lo, hi)
        if refs is None:
            print("   (llvm-objdump not found: scanning raw dwords, expect noise)")
            refs = dword_refs(pe, lo, hi)
        groups, strings = {}, Counter()
        for place, value in refs:
            if not 0x8A9000 <= value < 0x1000000 or value in text_starts:
                continue
            where = owner(value)
            if where is None:
                continue
            groups.setdefault(where, set()).add(value)
            s = c_string(pe, value)
            if s and ("\\" in s or s.lower().endswith((".cpp", ".h", ".inl"))):
                strings[(value, s)] += 1
        for where, values in sorted(groups.items()):
            values = sorted(values)
            print(f"   refs {where:40s} n={len(values):3d} {values[0]:x}..{values[-1]:x}")
        for (value, s), n in strings.items():
            print(f"   string x{n}: {value:x} \"{s}\"")
        if mac is not None:
            hits = sorted({i for a, s, n in funcs for i in mac_index.get(msvc_key(n) or "", [])})
            if not hits:
                print("   mac: no named function found")
            clusters = []
            for i in hits:
                if clusters and i - clusters[-1][-1] <= 8:
                    clusters[-1].append(i)
                else:
                    clusters.append([i])
            for c in clusters:
                a0, a1 = mac[c[0]][0], mac[c[-1]][0]
                nxt = next(((a, n) for a, n in sinits if a > a1), None)
                print(f"   mac {a0:x}-{a1:x} ({len(c)} hits) after {cw_key(mac[c[0] - 1][3])}, "
                      f"before {cw_key(mac[c[-1] + 1][3])}; next {nxt[1] + '@' + format(nxt[0], 'x') if nxt else '-'}")


if __name__ == "__main__":
    main()
