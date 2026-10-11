#!/usr/bin/env python3
"""Build the objdiff base object for a linker-provided unit.

A linker-provided unit is a region the linker writes itself (an export table, a
debug directory), so no source compiles to it. The build holds back the split
object for that region and lets the linker fill it. This compares what our
final image holds there with the original image:

- identical: the output is a copy of the target object, so the unit matches;
- different: the output is the target object with its section data replaced by
  our image's bytes, so objdiff shows the difference.
"""

import argparse
import shutil
import struct
import sys
from pathlib import Path


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


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument("--target", type=Path, required=True, help="split target object")
    parser.add_argument("--image", type=Path, required=True, help="our final image")
    parser.add_argument("--original", type=Path, required=True, help="original image")
    parser.add_argument("--address", type=lambda s: int(s, 0), required=True, help="region start")
    parser.add_argument("-o", "--output", type=Path, required=True)
    args = parser.parse_args()

    obj = bytearray(args.target.read_bytes())
    nsec = struct.unpack_from("<H", obj, 2)[0]
    optsz = struct.unpack_from("<H", obj, 16)[0]
    sections = [20 + optsz + i * 40 for i in range(nsec)]
    data_sections = [h for h in sections if struct.unpack_from("<I", obj, h + 16)[0]]
    if len(data_sections) != 1:
        sys.exit(f"{args.target}: expected one section with data, found {len(data_sections)}")
    header = data_sections[0]
    size, raw = struct.unpack_from("<II", obj, header + 16)

    ours = image_bytes(args.image, args.address, size)
    if ours == image_bytes(args.original, args.address, size):
        shutil.copyfile(args.target, args.output)
        return
    # Relocated fields keep the target's addends, so they still show as differing.
    obj[raw : raw + size] = ours
    args.output.write_bytes(obj)
    differing = sum(a != b for a, b in zip(ours, args.target.read_bytes()[raw : raw + size]))
    print(f"{args.output}: {differing} byte(s) differ from the original image")


if __name__ == "__main__":
    main()
