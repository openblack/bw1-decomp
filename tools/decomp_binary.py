"""Bounded, read-only readers for the project's i386 COFF objects and PE32 images.

No loader emulation: virtual/BSS bytes are deliberately not returned as file bytes.
Bigobj, archives, PE32+, and unsupported relocation encodings fail explicitly.
"""

from dataclasses import dataclass, field
from pathlib import Path
import struct


class BinaryError(ValueError):
    pass


class Unresolved(ValueError):
    pass


def bounded(data, offset, size, what="data"):
    if offset < 0 or size < 0 or offset > len(data) or size > len(data) - offset:
        raise BinaryError(f"{what}: range {offset:#x}+{size:#x} outside {len(data):#x} bytes")
    return data[offset:offset + size]


def unpack(data, fmt, offset, what="header"):
    return struct.unpack(fmt, bounded(data, offset, struct.calcsize(fmt), what))


# IMAGE_REL_I386_*: width is the operand width, not the instruction width.
RELOCATIONS = {
    0: ("ABSOLUTE", 0), 1: ("DIR16", 2), 2: ("REL16", 2),
    6: ("DIR32", 4), 7: ("DIR32NB", 4), 10: ("SECTION", 2),
    11: ("SECREL", 4), 20: ("REL32", 4),
}


@dataclass(frozen=True)
class Relocation:
    offset: int
    symbol_index: int
    type: int

    @property
    def width(self):
        return RELOCATIONS[self.type][1]

    @property
    def name(self):
        return "IMAGE_REL_I386_" + RELOCATIONS[self.type][0]


@dataclass(frozen=True)
class Symbol:
    index: int
    name: str
    value: int
    section: int
    type: int
    storage: int
    aux: tuple = ()


@dataclass
class Section:
    index: int
    name: str
    size: int
    raw_offset: int
    flags: int
    address: int = 0
    virtual_size: int = 0
    relocations: list = field(default_factory=list)

    @property
    def bss(self):
        return bool(self.flags & 0x80) and not self.raw_offset


class Coff:
    def __init__(self, data):
        self.data = data
        machine, count, _, symoff, nsym, opt, _ = unpack(data, "<HHIIIHH", 0, "COFF header")
        if machine != 0x14C or opt:
            raise BinaryError(f"unsupported COFF: machine={machine:#x}, optional header={opt}")
        bounded(data, 20, count * 40, "section table")
        header_end = 20 + count * 40
        if nsym and not symoff:
            raise BinaryError("nonempty symbol table has null pointer")
        if symoff and symoff < header_end:
            raise BinaryError("COFF symbol table overlaps headers")
        bounded(data, symoff, nsym * 18, "symbol table")
        strings = b""
        if symoff:
            start = symoff + nsym * 18
            length, = unpack(data, "<I", start, "string table length")
            if length < 4:
                raise BinaryError("string table length is less than four")
            strings = bounded(data, start, length, "string table")

        def string(offset):
            if not 4 <= offset < len(strings):
                raise BinaryError(f"invalid string table offset {offset:#x}")
            end = strings.find(b"\0", offset)
            if end < 0:
                raise BinaryError("unterminated COFF string")
            return strings[offset:end].decode("ascii", errors="strict")

        def name(raw, section=False):
            if section and raw.startswith(b"/"):
                try:
                    offset = int(raw[1:].rstrip(b"\0"), 10)
                except ValueError as exc:
                    raise BinaryError("unsupported COFF section name encoding") from exc
                return string(offset)
            if not section and raw[:4] == b"\0" * 4:
                return string(struct.unpack("<I", raw[4:])[0])
            return raw.split(b"\0", 1)[0].decode("ascii", errors="strict")

        self.symbols = {}
        i = 0
        while i < nsym:
            raw, value, sec, typ, storage, naux = unpack(data, "<8sIhHBB", symoff + i * 18)
            if i + naux >= nsym:
                raise BinaryError(f"symbol {i}: auxiliary records exceed symbol table")
            if sec < -2 or sec > count:
                raise BinaryError(f"symbol {i}: invalid section {sec}")
            aux = tuple(bounded(data, symoff + (i + n + 1) * 18, 18) for n in range(naux))
            self.symbols[i] = Symbol(i, name(raw), value, sec, typ, storage, aux)
            i += naux + 1

        self.sections = []
        for i in range(count):
            raw, vsize, va, size, ptr, relptr, lineptr, nrel, nline, flags = unpack(
                data, "<8sIIIIIIHHI", 20 + i * 40)
            sec = Section(i + 1, name(raw, True), size, ptr, flags, va, vsize)
            if va:
                raise BinaryError(f"section {sec.name}: unsupported nonzero COFF section address {va:#x}")
            if size and ptr:
                if ptr < header_end:
                    raise BinaryError(f"section {sec.name}: raw bytes overlap COFF headers")
                bounded(data, ptr, size, f"section {sec.name}")
            elif size and not sec.bss:
                raise BinaryError(f"section {sec.name}: missing raw bytes")
            if nline:
                if not lineptr:
                    raise BinaryError("null line-number table pointer")
                bounded(data, lineptr, nline * 6, "line-number table")
            if flags & 0x01000000:
                raise BinaryError("unsupported COFF relocation-count overflow encoding")
            if nrel and not relptr:
                raise BinaryError("null relocation table pointer")
            if nrel and relptr < header_end:
                raise BinaryError("COFF relocation table overlaps headers")
            bounded(data, relptr, nrel * 10, "relocation table")
            occupied = set()
            for r in range(nrel):
                off, idx, typ = unpack(data, "<IIH", relptr + r * 10)
                if typ not in RELOCATIONS:
                    raise BinaryError(f"section {sec.name}+{off:#x}: unsupported i386 relocation {typ:#x}")
                reloc = Relocation(off, idx, typ)
                if reloc.width:
                    if idx not in self.symbols:
                        raise BinaryError(f"relocation references missing/auxiliary symbol index {idx}")
                    if off + reloc.width > size or sec.bss:
                        raise BinaryError(f"relocation outside file-backed section {sec.name}")
                    span = set(range(off, off + reloc.width))
                    if occupied & span:
                        raise BinaryError(f"overlapping relocations in {sec.name}+{off:#x}")
                    occupied.update(span)
                sec.relocations.append(reloc)
            self.sections.append(sec)
        for sym in self.symbols.values():
            if sym.section > 0 and sym.value > self.sections[sym.section - 1].size:
                raise BinaryError(f"symbol {sym.name}: value outside section")

    @classmethod
    def read(cls, path):
        return cls(Path(path).read_bytes())

    def section(self, index):
        if not 1 <= index <= len(self.sections):
            raise BinaryError(f"invalid section index {index}")
        return self.sections[index - 1]

    def bytes(self, section, offset, size):
        sec = self.section(section)
        if sec.bss:
            raise Unresolved(f"{sec.name}: BSS has no file bytes")
        if offset < 0 or size < 0 or offset + size > sec.size:
            raise BinaryError(f"{sec.name}: operand/span exceeds section")
        return bounded(self.data, sec.raw_offset + offset, size, sec.name)

    def addend(self, section, reloc):
        return int.from_bytes(self.bytes(section, reloc.offset, reloc.width), "little", signed=True)


class PE:
    def __init__(self, data):
        self.data = data
        if bounded(data, 0, 2) != b"MZ":
            raise BinaryError("not a DOS/PE image")
        peoff, = unpack(data, "<I", 0x3C)
        if bounded(data, peoff, 4) != b"PE\0\0":
            raise BinaryError("invalid PE signature")
        machine, count, _, _, _, optsize, _ = unpack(data, "<HHIIIHH", peoff + 4)
        opt = bounded(data, peoff + 24, optsize, "PE optional header")
        magic, = unpack(opt, "<H", 0)
        if machine != 0x14C or magic != 0x10B or optsize < 96:
            raise BinaryError(f"unsupported PE: machine={machine:#x}, magic={magic:#x}")
        self.image_base, = unpack(opt, "<I", 28)
        self.header_size, = unpack(opt, "<I", 60)
        bounded(data, 0, self.header_size, "PE headers")
        ndirs, = unpack(opt, "<I", 92)
        bounded(opt, 96, ndirs * 8, "PE data directories")
        self.sections = []
        end_headers = peoff + 24 + optsize + count * 40
        if end_headers > self.header_size:
            raise BinaryError("PE section table extends beyond SizeOfHeaders")
        for i in range(count):
            raw, vsize, rva, size, ptr, _, _, _, _, flags = unpack(
                data, "<8sIIIIIIHHI", peoff + 24 + optsize + i * 40)
            if size:
                if not ptr:
                    raise BinaryError("PE raw data has null pointer")
                if ptr < self.header_size:
                    raise BinaryError("PE section raw data overlaps headers")
                bounded(data, ptr, size, "PE section bytes")
            sec = Section(i + 1, raw.rstrip(b"\0").decode("ascii"), size, ptr, flags,
                          self.image_base + rva, vsize)
            extent = max(size, vsize)
            if rva < self.header_size or sec.address + extent > 0x100000000:
                raise BinaryError("invalid PE virtual section range")
            for other in self.sections:
                if max(sec.address, other.address) < min(sec.address + extent,
                                                         other.address + max(other.size, other.virtual_size)):
                    raise BinaryError("overlapping PE virtual sections")
            self.sections.append(sec)

    @classmethod
    def read(cls, path):
        return cls(Path(path).read_bytes())

    def section_at(self, address):
        found = [s for s in self.sections if s.address <= address < s.address + max(s.size, s.virtual_size)]
        if len(found) != 1:
            raise Unresolved(f"VA {address:#010x} is not in a unique PE section")
        return found[0]

    def bytes(self, address, size):
        if size < 0:
            raise BinaryError("negative PE read size")
        if self.image_base <= address and address + size <= self.image_base + self.header_size:
            return bounded(self.data, address - self.image_base, size, "PE headers")
        sec = self.section_at(address)
        offset = address - sec.address
        if offset + size > sec.size or not sec.raw_offset:
            raise Unresolved(f"VA {address:#010x}+{size:#x}: virtual/BSS span has no PE file bytes")
        return bounded(self.data, sec.raw_offset + offset, size, "PE operand")


def resolve_relocation(kind, target, addend, place, pe):
    """Encode S+A, S+A-(P+width), RVA, section index, or section offset.

    16-bit encodings are checked for overflow; 32-bit arithmetic wraps as on i386.
    ABSOLUTE is a padding relocation and has no operand.
    """
    if kind not in RELOCATIONS or kind == 0:
        raise BinaryError(f"cannot encode relocation {kind:#x}")
    width = RELOCATIONS[kind][1]
    if kind in (1, 6):
        result = target + addend
    elif kind in (2, 20):
        result = target + addend - (place + width)
    elif kind == 7:
        result = target + addend - pe.image_base
    elif kind == 10:
        result = pe.section_at(target).index + addend
    else:  # SECREL: addend is relative to the referenced symbol, not an index.
        result = target - pe.section_at(target).address + addend
    if width == 2:
        low, high = (-0x8000, 0x7FFF) if kind == 2 else (0, 0xFFFF)
        if not low <= result <= high:
            raise Unresolved(f"{RELOCATIONS[kind][0]} overflow: {result:#x}")
    return (result & ((1 << (8 * width)) - 1)).to_bytes(width, "little")
