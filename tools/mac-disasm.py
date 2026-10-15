#!/usr/bin/env python3

"""Disassemble BW1M119 functions straight from the Mac binary.

The Mac build kept its symbols, and its function bodies answer many questions the
Windows code leaves open: what an out-of-line destructor does, the argument order of
a small helper (PowerPC passes floats in f1, f2, f3...), whether a call is made at
all. This prints the PowerPC code of the functions you name, with every `bl`/`b`
target annotated with its symbol name.

Only the main PEF fragment (the data fork, `.code0` in config/BW1M119/symbols.txt)
is supported. The resource-fork modules (LHCombined Release, ZonicLib Release, ...)
are not.

Select functions by a regular expression on the mangled symbol name, or by an
address (a function that contains the address is shown whole):

  python tools/mac-disasm.py '^\\.boundf__Ffff$'
  python tools/mac-disasm.py '^\\.__dt__.*LHListHead' --limit 1
  python tools/mac-disasm.py 0x01310160

Use the `.`-prefixed code symbol, not the transition vector without the dot.
Capstone does not decode fcmpo/fcmpu; they are decoded here by hand.

Requires `pip install capstone`.
"""

import argparse
import bisect
import re
import struct
import sys

# Address at which decomp-toolkit places the main fragment's code section (.code0).
CODE_BASE = 0x01000000
SYMBOL_RE = re.compile(r"^(\S+) = \.code0:0x([0-9A-Fa-f]+); // type:function size:0x([0-9A-Fa-f]+)")


def load_code(path):
    with open(path, "rb") as f:
        data = f.read()
    if data[:8] != b"Joy!peff":
        sys.exit(f"{path}: not a PEF container (expected the data fork of the Mac executable)")
    section_count = struct.unpack(">H", data[0x20:0x22])[0]
    for i in range(section_count):
        header = 40 + 28 * i
        _, _, _, _, packed, offset, kind = struct.unpack(">iIIIIIB", data[header : header + 25])
        if kind == 0:  # code section, stored unpacked
            return data[offset : offset + packed]
    sys.exit(f"{path}: no code section")


def load_symbols(path):
    symbols = []
    with open(path) as f:
        for line in f:
            m = SYMBOL_RE.match(line)
            if m:
                symbols.append((int(m.group(2), 16), int(m.group(3), 16), m.group(1)))
    symbols.sort()
    return symbols


def decode_fcmp(word):
    """Capstone 5 leaves fcmpu/fcmpo undecoded."""
    if word >> 26 != 63:
        return None
    name = {0: "fcmpu", 32: "fcmpo"}.get((word >> 1) & 0x3FF)
    if name is None:
        return None
    return f"{name} cr{(word >> 23) & 7}, f{(word >> 16) & 31}, f{(word >> 11) & 31}"


def disassemble(md, code, address, size, names):
    start = address - CODE_BASE
    body = code[start : start + size]
    for offset in range(0, len(body) - 3, 4):
        here = address + offset
        word_bytes = body[offset : offset + 4]
        insns = list(md.disasm(word_bytes, here))
        if not insns:
            word = int.from_bytes(word_bytes, "big")
            text = decode_fcmp(word) or f".long {word:#x}"
            print(f"  {here:08x}: {word:08x}  {text}")
            continue
        ins = insns[0]
        note = ""
        if ins.mnemonic in ("bl", "b"):
            target = int(ins.op_str, 16)
            note = f"  ; {names.get(target, '?')}"
        print(f"  {here:08x}: {ins.bytes.hex()}  {ins.mnemonic} {ins.op_str}{note}")


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("queries", nargs="+", help="symbol name regex, or a hex address (0x...)")
    parser.add_argument("--binary", default="orig/BW1M119/Black & White", help="Mac executable (data fork)")
    parser.add_argument("--symbols", default="config/BW1M119/symbols.txt", help="main fragment symbols")
    parser.add_argument("--limit", type=int, default=20, help="maximum functions per regex (default 20)")
    parser.add_argument(
        "--length", type=lambda s: int(s, 0), default=0x40, help="bytes to show at an address outside any function"
    )
    args = parser.parse_args()

    try:
        import capstone
    except ImportError:
        sys.exit("capstone is required: pip install capstone")

    code = load_code(args.binary)
    symbols = load_symbols(args.symbols)
    starts = [s[0] for s in symbols]
    names = {address: name for address, _, name in symbols}
    md = capstone.Cs(capstone.CS_ARCH_PPC, capstone.CS_MODE_32 | capstone.CS_MODE_BIG_ENDIAN)

    for query in args.queries:
        if re.fullmatch(r"0x[0-9a-fA-F]+", query):
            address = int(query, 16)
            i = bisect.bisect_right(starts, address) - 1
            if i >= 0 and address < symbols[i][0] + symbols[i][1]:
                hits = [symbols[i]]
            else:
                hits = [(address, args.length, "?")]
        else:
            pattern = re.compile(query)
            hits = [s for s in symbols if pattern.search(s[2])]
            if not hits:
                print(f"no function matches {query!r}", file=sys.stderr)
            elif len(hits) > args.limit:
                print(f"{len(hits)} functions match {query!r}; showing {args.limit} (--limit)", file=sys.stderr)
                hits = hits[: args.limit]
        for address, size, name in hits:
            print(f"== {name} @ {address:#010x} size {size:#x}")
            disassemble(md, code, address, size, names)


if __name__ == "__main__":
    main()
