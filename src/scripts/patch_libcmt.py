import ctypes
from pathlib import Path
from enum import IntEnum, Enum

class COFFHeader(ctypes.LittleEndianStructure):
    _fields_ = [
        ("Machine", ctypes.c_uint16),
        ("NumberOfSections", ctypes.c_uint16),
        ("TimeDateStamp", ctypes.c_uint32),
        ("PointerToSymbolTable", ctypes.c_uint32),
        ("NumberOfSymbols", ctypes.c_uint32),
        ("SizeOfOptionalHeader", ctypes.c_uint16),
        ("Characteristics", ctypes.c_uint16),
    ]


class SectionHeader(ctypes.LittleEndianStructure):
    _fields_ = [
        ("Name", ctypes.c_char * 8),
        ("VirtualSize", ctypes.c_uint32),     # Misc.VirtualSize
        ("VirtualAddress", ctypes.c_uint32),
        ("SizeOfRawData", ctypes.c_uint32),
        ("PointerToRawData", ctypes.c_uint32),
        ("PointerToRelocations", ctypes.c_uint32),
        ("PointerToLinenumbers", ctypes.c_uint32),
        ("NumberOfRelocations", ctypes.c_uint16),
        ("NumberOfLinenumbers", ctypes.c_uint16),
        ("Characteristics", ctypes.c_uint32),
    ]

    def get_name(self):
        return self.Name.rstrip(b'\x00').decode('ascii', errors='ignore')


class ImageScnType(Enum):
    NO_PAD = 0x00000008
    COPY = 0x00000010
    INITIALIZED_DATA = 0x00000040
    UNINITIALIZED_DATA = 0x00000080
    LNK_INFO = 0x00000200
    LNK_REMOVE = 0x00000800
    LNK_COMDAT = 0x00001000
    NO_DEFER_SPEC_EXC = 0x00004000
    GPREL = 0x00008000
    ALIGN_1BYTES = 0x00100000
    ALIGN_2BYTES = 0x00200000
    ALIGN_4BYTES = 0x00300000
    ALIGN_8BYTES = 0x00400000
    ALIGN_16BYTES = 0x00500000
    ALIGN_32BYTES = 0x00600000
    ALIGN_64BYTES = 0x00700000
    ALIGN_128BYTES = 0x00800000
    ALIGN_256BYTES = 0x00900000
    ALIGN_512BYTES = 0x00A00000
    ALIGN_1024BYTES = 0x00B00000
    ALIGN_2048BYTES = 0x00C00000
    ALIGN_4096BYTES = 0x00D00000
    ALIGN_8192BYTES = 0x00E00000
    LNK_NRELOC_OVFL = 0x01000000
    MEM_DISCARDABLE = 0x02000000
    MEM_NOT_CACHED = 0x04000000
    MEM_NOT_PAGED = 0x08000000
    MEM_SHARED = 0x10000000
    MEM_EXECUTE = 0x20000000
    MEM_READ = 0x40000000
    MEM_WRITE = 0x80000000


def get_sections(data, num, offset) -> tuple[int, SectionHeader]:
    sections = []
    for i in range(num):
        section_offset = offset + i * ctypes.sizeof(SectionHeader)
        section = SectionHeader.from_buffer_copy(data[section_offset:])
        sections.append((section_offset, section))
    return sections


def patch_libcmt(input_file: Path, output_file: Path, no_pad: bool):
    with open(input_file, 'rb') as fin:
        data = bytearray(fin.read())

    coff_header = COFFHeader.from_buffer_copy(data)
    assert(coff_header.SizeOfOptionalHeader == 0)
    sections = get_sections(data, coff_header.NumberOfSections, ctypes.sizeof(COFFHeader) + coff_header.SizeOfOptionalHeader)

    if no_pad:
        data[sections[0][0] + SectionHeader.Characteristics.offset] |= ImageScnType.NO_PAD.value

    with open(output_file, 'wb') as fout:
        fout.write(data)


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Patch libcmt COFF object file.")
    parser.add_argument("input_file", type=Path, help="Path to the input object file")
    parser.add_argument("output_file", type=Path, help="Path to the output object file")
    parser.add_argument("--no-pad", action="store_true", help="Set IMAGE_SCN_TYPE_NO_PAD on the first section, thereby removing padding before this obj.")

    args = parser.parse_args()
    patch_libcmt(args.input_file, args.output_file, args.no_pad)
