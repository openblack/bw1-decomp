"""MSVC6 C++ exception-handling tables (/GX), read from an image or from a COFF object.

A function compiled with /GX registers a handler stub in .text$x,

    mov eax, offset FuncInfo      ; B8 imm32
    jmp ___CxxFrameHandler        ; E9 rel32

either with `push stub` (68 imm32, the inline prolog) or with `mov eax, stub; call __EH_prolog`
(B8 imm32 E8 rel32, the library prolog). The FuncInfo in .xdata$x (or .rdata) is

    magic 0x19930520, maxState, pUnwindMap, nTryBlocks, pTryBlockMap, (two unused words)

The unwind map has one 8-byte entry per state, {toState, action}: the action is an unwind
funclet ($L<n>, the destructor calls an exception runs) or null. The try-block map has one
0x14-byte entry per try block, {tryLow, tryHigh, catchHigh, nCatches, pHandlerArray}, and each
handler entry is 0x10 bytes, {adjectives, pType, dispCatchObj, addressOfHandler}.

The walk is the same in both kinds of file; only following a pointer differs. In an image a
pointer is the 32-bit value stored there; in an object it is the dir32 relocation at that field
(its symbol plus the addend). A reader supplies the three accessors below, and the walk returns
locations in the reader's terms (a VA, or a (section, offset) pair).

Users: tools/funclets.py (relabel: pair funclet labels with the compiled objects; owners/holders:
which unit owns each .text$x byte) and tools/port_version.py (each unit's .text$x/.xdata$x ranges).
"""

from dataclasses import dataclass, field
import struct

EH_MAGIC = 0x19930520
FUNCINFO_SIZE = 0x1C
UNWIND_ENTRY = 8
TRY_ENTRY = 0x14
CATCH_ENTRY = 0x10
STUB_SIZE = 10  # mov eax, imm32; jmp rel32
MOV_EAX, JMP, PUSH, CALL = 0xB8, 0xE9, 0x68, 0xE8


@dataclass
class TryBlock:
    low: int
    high: int
    catch_high: int
    catches: int
    handler_array: object  # location of the handler entries, or None
    handlers: list = field(default_factory=list)  # addressOfHandler of each catch, location or None


@dataclass
class FuncInfo:
    at: object  # location of the FuncInfo
    states: int
    unwind_map: object  # location or None
    tries: int
    try_map: object  # location or None
    actions: list = field(default_factory=list)  # unwind action of each state, location or None
    blocks: list = field(default_factory=list)  # TryBlock per try block

    def tables(self):
        """(location, size) of each table: the FuncInfo, its unwind map, its try-block map and the
        handler array of each try block, the empty ones left out."""
        out = [(self.at, FUNCINFO_SIZE)]
        if self.unwind_map is not None and self.states:
            out.append((self.unwind_map, UNWIND_ENTRY * self.states))
        if self.try_map is not None and self.tries:
            out.append((self.try_map, TRY_ENTRY * self.tries))
        for block in self.blocks:
            if block.handler_array is not None and block.catches:
                out.append((block.handler_array, CATCH_ENTRY * block.catches))
        return out


class ImageReader:
    """Locations are VAs. `read(va, n)` returns the bytes there; a pointer is the stored value,
    and a null one is None."""

    def __init__(self, read):
        self.read = read

    def u32(self, loc, offset=0):
        return struct.unpack("<I", self.read(loc + offset, 4))[0]

    def ptr(self, loc, offset=0):
        return self.u32(loc, offset) or None

    def code(self, loc, n):
        return self.read(loc, n)


class CoffReader:
    """Locations are (section, offset) in a decomp_binary.Coff. A pointer is the dir32
    relocation at that field: its symbol's (section, value + addend), or None where there is no
    such relocation or it names an undefined symbol. BSS reads as zeros."""

    DIR32 = 6

    def __init__(self, coff):
        self.coff = coff
        self.relocs = {sec.index: {r.offset: r for r in sec.relocations if r.type == self.DIR32}
                       for sec in coff.sections}

    def code(self, loc, n):
        section, offset = loc
        sec = self.coff.section(section)
        if sec.bss or offset + n > sec.size:
            return b""
        return self.coff.bytes(section, offset, n)

    def u32(self, loc, offset=0):
        data = self.code((loc[0], loc[1] + offset), 4)
        return struct.unpack("<I", data)[0] if data else 0

    def ptr(self, loc, offset=0):
        section, at = loc[0], loc[1] + offset
        reloc = self.relocs[section].get(at)
        if reloc is None:
            return None
        sym = self.coff.symbols[reloc.symbol_index]
        if sym.section <= 0:
            return None
        return sym.section, sym.value + self.coff.addend(section, reloc)


def stub_funcinfo(reader, stub):
    """The FuncInfo a handler stub at `stub` loads, or None if it is not a handler stub."""
    code = reader.code(stub, STUB_SIZE)
    if len(code) < STUB_SIZE or code[0] != MOV_EAX or code[5] != JMP:
        return None
    return reader.ptr(stub, 1)


def read_funcinfo(reader, info, limit=None, valid=None, catches=True):
    """The FuncInfo at `info`, or None if its magic is wrong. `limit` rejects state or try-block
    counts above it; `valid(loc, size)` rejects a FuncInfo whose header or tables fall outside
    where tables can be. `catches=False` stops at the try-block map (the handler arrays are not
    read)."""
    if valid is not None and not valid(info, FUNCINFO_SIZE):
        return None
    if reader.u32(info) != EH_MAGIC:
        return None
    states, tries = reader.u32(info, 4), reader.u32(info, 12)
    if limit is not None and (states > limit or tries > limit):
        return None
    out = FuncInfo(info, states, reader.ptr(info, 8), tries, reader.ptr(info, 16))
    if valid is not None:
        # a count with a null table is not a FuncInfo either
        if (states and out.unwind_map is None) or (tries and out.try_map is None):
            return None
        if not all(valid(loc, size) for loc, size in out.tables()):
            return None
    if out.unwind_map is not None:
        out.actions = [reader.ptr(out.unwind_map, UNWIND_ENTRY * k + 4) for k in range(states)]
    if out.try_map is not None:
        for k in range(tries):
            entry = TRY_ENTRY * k
            block = TryBlock(reader.u32(out.try_map, entry), reader.u32(out.try_map, entry + 4),
                             reader.u32(out.try_map, entry + 8), reader.u32(out.try_map, entry + 12),
                             reader.ptr(out.try_map, entry + 16))
            out.blocks.append(block)
            if not catches or not block.catches:
                continue
            if valid is not None and (block.handler_array is None
                                      or not valid(block.handler_array, CATCH_ENTRY * block.catches)):
                return None
            if block.handler_array is None:
                continue
            block.handlers = [reader.ptr(block.handler_array, CATCH_ENTRY * c + 12) for c in range(block.catches)]
    return out
