#!/usr/bin/env python3
"""Build the objdiff base object for a linker-provided unit.

A linker-provided unit is a region the linker writes itself (an import or export
table, a debug directory); splits.txt marks its section `linker`, so no source
compiles to it and its split object stays out of the link. This compares what our final
image holds at each of the unit's ranges with the original image:

- identical: the output is a copy of the target object, so the unit matches;
- different: the output is the target object with its section data replaced by
  our image's bytes, so objdiff shows the difference.
"""

import argparse
import shutil
import struct
import sys
from pathlib import Path
from typing import Dict, Tuple


def image_bytes(path: Path, address: int, size: int) -> bytes:
    data = path.read_bytes()
    pe = struct.unpack_from("<I", data, 0x3C)[0]
    nsec = struct.unpack_from("<H", data, pe + 6)[0]
    optsz = struct.unpack_from("<H", data, pe + 20)[0]
    base = struct.unpack_from("<I", data, pe + 52)[0]
    for i in range(nsec):
        header = pe + 24 + optsz + i * 40
        vsize, va, rsize, raw = struct.unpack_from("<IIII", data, header + 8)
        start = base + va
        if start <= address and address + size <= start + max(vsize, rsize):
            offset = raw + address - start
            chunk = data[offset : offset + min(size, max(0, rsize - (address - start)))]
            return chunk + bytes(size - len(chunk))
    sys.exit(f"{path}: {address:#x}+{size:#x} is not inside a section")


def parse_range(text: str) -> Tuple[str, int, int]:
    section, _, span = text.rpartition("=")
    start, _, end = span.partition(":")
    return section, int(start, 0), int(end, 0)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--target", type=Path, required=True, help="split target object")
    parser.add_argument("--image", type=Path, required=True, help="our final image")
    parser.add_argument("--original", type=Path, required=True, help="original image")
    parser.add_argument(
        "--range",
        dest="ranges",
        type=parse_range,
        action="append",
        required=True,
        help="SECTION=START:END, one per section of the unit",
    )
    parser.add_argument("-o", "--output", type=Path, required=True)
    args = parser.parse_args()

    obj = bytearray(args.target.read_bytes())
    target = bytes(obj)
    nsec = struct.unpack_from("<H", obj, 2)[0]
    optsz = struct.unpack_from("<H", obj, 16)[0]
    symtab, nsyms = struct.unpack_from("<II", obj, 8)
    strtab = symtab + nsyms * 18
    headers: Dict[str, int] = {}
    for i in range(nsec):
        header = 20 + optsz + i * 40
        name = obj[header : header + 8].rstrip(b"\0").decode("ascii")
        if name.startswith("/"):
            # Names longer than 8 characters live in the string table.
            offset = strtab + int(name[1:])
            name = obj[offset : obj.index(b"\0", offset)].decode("ascii")
        if struct.unpack_from("<I", obj, header + 16)[0]:
            headers[name] = header

    identical = True
    differing = 0
    for section, start, end in args.ranges:
        header = headers.get(section)
        if header is None:
            sys.exit(f"{args.target}: no {section} section with data")
        size, raw = struct.unpack_from("<II", obj, header + 16)
        if size != end - start:
            sys.exit(f"{args.target}: {section} is {size:#x} bytes, range {start:#x}-{end:#x} is {end - start:#x}")
        ours = image_bytes(args.image, start, size)
        if ours != image_bytes(args.original, start, size):
            identical = False
        # Relocated fields keep the target's addends, so they still show as differing.
        obj[raw : raw + size] = ours
        differing += sum(a != b for a, b in zip(ours, target[raw : raw + size]))

    if identical:
        shutil.copyfile(args.target, args.output)
        return
    args.output.write_bytes(obj)
    print(f"{args.output}: {differing} byte(s) differ from the original image")


if __name__ == "__main__":
    main()
