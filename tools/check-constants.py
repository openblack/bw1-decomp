#!/usr/bin/env python3
"""Find float constants whose values differ from the original's.

objdiff can score a function 100% while one of its x87 instructions loads a different constant: the
instruction bytes match and only the relocation target differs. This compares the values instead.

For every function in both the target object and ours, it collects the operands of x87 instructions
that read a read-only constant from an absolute address (`fld`, `fmul`, `fcomp`, ... with `[disp32]`), in instruction order,
with their width (float or double):
  - the original's value is read from the original executable, at the address the target relocation
    names (symbols.txt, or the address in a `lbl_`/`gap_` name) plus its addend;
  - ours is read from our object's own constant data (MSVC's `__real@` COMDATs).
The two value sequences are aligned, and every position where both sides load a constant and the values
differ is reported. A wrong value there is a wrong constant in the source, whatever the match percentage.

A folded constant can show up too: `x * 2 * 0.004f` compiles to one multiply by 0.008 where the
original may multiply twice. That's a rounding-only difference; check the source before changing it.

Usage:
  python tools/check-constants.py Abode
  python tools/check-constants.py --all

Exit codes: 0 = no differences, 1 = differences found, 2 = invalid input or tool error.
"""

import argparse
import difflib
from pathlib import Path
import re
import struct
import sys

# Running an inspector should not create __pycache__ beside its imported helpers.
sys.dont_write_bytecode = True

from decomp_binary import BinaryError, Coff, PE, Unresolved
from decomp_common import ROOT, load_project, resolve_unit

DIR32 = 6
X87_OPCODES = range(0xD8, 0xE0)
ADDRESS_NAME = re.compile(r"(?:lbl_|gap_\d+_)([0-9A-Fa-f]{8})")


def x87_width(code, offset):
    """Operand width (4 or 8) of an x87 float load/arithmetic whose disp32 starts at offset, else None.

    `[disp32]` addressing is opcode, ModRM (mod 00, r/m 101), then the address. D8 and DC are the
    float and double arithmetic and compares; D9 /0 /2 /3 and DD /0 /2 /3 are fld/fst/fstp.
    Integer (DA, DE, DB /0, DF) and control-word forms aren't float constants.
    """
    if offset < 2:
        return None
    opcode, modrm = code[offset - 2], code[offset - 1]
    if opcode not in X87_OPCODES or modrm & 0xC7 != 0x05:
        return None
    reg = (modrm >> 3) & 7
    if opcode == 0xD8:
        return 4
    if opcode == 0xDC:
        return 8
    if opcode in (0xD9, 0xDD) and reg in (0, 2, 3):
        return 4 if opcode == 0xD9 else 8
    return None


def read_only(obj, sym, addend, width):
    """The value of a constant in an object's read-only data, or None for writable or BSS data."""
    section = obj.section(sym.section)
    if not section.name.startswith(".rdata") or section.bss:
        return None
    return decode(obj.bytes(sym.section, sym.value + addend, width))


def decode(raw):
    return struct.unpack("<f" if len(raw) == 4 else "<d", raw)[0]


def load_symbol_addresses(path):
    """{name: address} for names symbols.txt gives exactly one address."""
    seen = {}
    for line in Path(path).read_text().splitlines():
        match = re.match(r"(\S+) = \.[\w$]+:0x([0-9A-Fa-f]+);", line)
        if match:
            seen.setdefault(match[1], set()).add(int(match[2], 16))
    return {name: next(iter(addresses)) for name, addresses in seen.items() if len(addresses) == 1}


def functions(obj):
    """{name: (section index, start, end)} for the code symbols of an object."""
    code = [s for s in obj.symbols.values() if s.section > 0 and s.storage in (2, 3)
            and not s.name.startswith(("$", ".")) and obj.section(s.section).name.startswith(".text")]
    out = {}
    for sym in code:
        ends = [t.value for t in code if t.section == sym.section and t.value > sym.value]
        out[sym.name] = (sym.section, sym.value, min(ends, default=obj.section(sym.section).size))
    return out


def constant_loads(obj, span, value_of):
    """[(offset, value)] of the x87 constant operands in a function, in instruction order.

    value_of(symbol, addend, width) returns the value or None when it can't be known."""
    index, start, end = span
    section = obj.section(index)
    code = obj.bytes(index, 0, section.size)
    loads = []
    for reloc in sorted(section.relocations, key=lambda r: r.offset):
        if reloc.type != DIR32 or not start <= reloc.offset < end:
            continue
        width = x87_width(code, reloc.offset)
        if width is None:
            continue
        value = value_of(obj.symbols[reloc.symbol_index], obj.addend(index, reloc), width)
        if value is not None:
            loads.append((reloc.offset - start, value))
    return loads


def differences(original, ours):
    """[(original (offset, value), our (offset, value))] where the aligned constants differ.

    Values are aligned as float32, so a float and a double spelling of one constant line up."""
    def key(loads):
        return [struct.unpack("<f", struct.pack("<f", v))[0] if abs(v) < 3.4e38 else v for _, v in loads]

    out = []
    matcher = difflib.SequenceMatcher(None, key(original), key(ours), autojunk=False)
    for op, i1, i2, j1, j2 in matcher.get_opcodes():
        if op == "replace" and i2 - i1 == j2 - j1:
            for a, b in zip(original[i1:i2], ours[j1:j2]):
                if a[1] != b[1] and not (a[1] and abs(a[1] - b[1]) <= 1e-6 * abs(a[1])):
                    out.append((a, b))
    return out


def check_unit(unit, exe, addresses):
    target, ours = Coff.read(ROOT / unit["target_path"]), Coff.read(ROOT / unit["base_path"])

    def original_value(sym, addend, width):
        if sym.section > 0:
            return read_only(target, sym, addend, width)
        match = ADDRESS_NAME.fullmatch(sym.name)
        address = int(match[1], 16) if match else addresses.get(sym.name)
        if address is None:
            return None
        try:
            if exe.section_at(address + addend).name != ".rdata":
                return None
            return decode(exe.bytes(address + addend, width))
        except (Unresolved, BinaryError):
            return None

    def our_value(sym, addend, width):
        if sym.section <= 0:
            return None  # defined in another of our objects: its value isn't known here
        return read_only(ours, sym, addend, width)

    found = []
    target_functions, our_functions = functions(target), functions(ours)
    for name in sorted(set(target_functions) & set(our_functions)):
        pairs = differences(constant_loads(target, target_functions[name], original_value),
                            constant_loads(ours, our_functions[name], our_value))
        found.extend((name, a, b) for a, b in pairs)
    return found


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__.split("\n\n")[0],
                                     formatter_class=argparse.RawDescriptionHelpFormatter, epilog=__doc__)
    parser.add_argument("units", nargs="*", help="objdiff unit names or unique basenames")
    parser.add_argument("--all", action="store_true", help="every unit of the module with built objects")
    parser.add_argument("--module", default="runblack", help="module for --all (default: runblack)")
    parser.add_argument("--version", default="BW1W120")
    parser.add_argument("--exe", help="original executable (default: orig/<version>/runblack-decrypted.exe)")
    args = parser.parse_args(argv)
    if bool(args.units) == args.all:
        parser.error("give unit names or --all")
    try:
        exe = PE.read(Path(args.exe) if args.exe else ROOT / "orig" / args.version / "runblack-decrypted.exe")
        addresses = load_symbol_addresses(ROOT / "config" / args.version / "symbols.txt")
        if args.all:
            units = [u for u in load_project()["units"] if u.get("name", "").startswith(args.module + "/")
                     and u.get("target_path") and u.get("base_path")
                     and (ROOT / u["target_path"]).exists() and (ROOT / u["base_path"]).exists()]
        else:
            units = [resolve_unit(unit=name) for name in args.units]
        found = 0
        for unit in units:
            for name, (toff, tval), (ooff, oval) in check_unit(unit, exe, addresses):
                found += 1
                print(f"{unit['name']}: {name}: original {tval:g} (+{toff:#x}), ours {oval:g} (+{ooff:#x})")
    except (OSError, ValueError, BinaryError) as exc:
        print(f"error: {exc}", file=sys.stderr)
        return 2
    print(f"{found} differing constant(s) in {len(units)} unit(s)", file=sys.stderr)
    return 1 if found else 0


if __name__ == "__main__":
    sys.exit(main())
