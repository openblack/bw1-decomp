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


class SymbolTableEntry(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("Name", ctypes.c_char * 8),
        ("Value", ctypes.c_uint32),
        ("SectionNumber", ctypes.c_int16),
        ("Type", ctypes.c_uint16),
        ("StorageClass", ctypes.c_uint8),
        ("NumberOfAuxSymbols", ctypes.c_uint8),
    ]

    def get_name(self):
        return self.Name.rstrip(b'\x00').decode('ascii', errors='ignore')

    def __repr__(self):
        storage_class_name = getattr(StorageClass, f"IMAGE_SYM_CLASS_{self.StorageClass}", self.StorageClass)
        return (f"SymbolTableEntry(Name='{self.get_name()}', "
                f"Value=0x{self.Value:08x}, "
                f"SectionNumber={self.SectionNumber}, "
                f"Type=0x{self.Type:04x}, "
                f"StorageClass={storage_class_name}, "
                f"NumberOfAuxSymbols={self.NumberOfAuxSymbols})")


class AuxSectionDefinition(ctypes.LittleEndianStructure):
    _fields_ = [
        ("Length", ctypes.c_uint32),
        ("NumberOfRelocations", ctypes.c_uint16),
        ("NumberOfLinenumbers", ctypes.c_uint16),
        ("Checksum", ctypes.c_uint32),
        ("Number", ctypes.c_uint16),
        ("Selection", ctypes.c_uint8),
        ("bReserved", ctypes.c_uint8),
        ("HighNumber", ctypes.c_uint16),
    ]


class AuxSectionSymbol(ctypes.LittleEndianStructure):
    _pack_ = 1
    _fields_ = [
        ("Length", ctypes.c_uint32),           # Size of section
        ("NumberOfRelocations", ctypes.c_uint16),
        ("NumberOfLinenumbers", ctypes.c_uint16),
        ("CheckSum", ctypes.c_uint32),         # CRC checksum
        ("Number", ctypes.c_uint16),           # Associated section number
        ("Selection", ctypes.c_uint8),         # COMDAT selection type
        ("bReserved", ctypes.c_uint8),
        ("HighNumber", ctypes.c_uint16),       # High part of associated section
    ]

    def __repr__(self):
        try:
            selection_name = ComdatSelection(self.Selection).name
        except ValueError:
            selection_name = f"UNKNOWN_{self.Selection}"

        return (f"AuxSectionSymbol(Length=0x{self.Length:08x}, "
                f"NumberOfRelocations={self.NumberOfRelocations}, "
                f"NumberOfLinenumbers={self.NumberOfLinenumbers}, "
                f"CheckSum=0x{self.CheckSum:08x}, "
                f"Number={self.Number}, "
                f"Selection={selection_name}, "
                f"HighNumber={self.HighNumber})")


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


class StorageClass(IntEnum):
    IMAGE_SYM_CLASS_EXTERNAL = 2
    IMAGE_SYM_CLASS_STATIC = 3
    IMAGE_SYM_CLASS_LABEL = 6
    IMAGE_SYM_CLASS_FUNCTION = 101
    IMAGE_SYM_CLASS_FILE = 103


class ComdatSelection(IntEnum):
    IMAGE_COMDAT_SELECT_NODUPLICATES = 1
    IMAGE_COMDAT_SELECT_ANY = 2
    IMAGE_COMDAT_SELECT_SAME_SIZE = 3
    IMAGE_COMDAT_SELECT_EXACT_MATCH = 4
    IMAGE_COMDAT_SELECT_ASSOCIATIVE = 5
    IMAGE_COMDAT_SELECT_LARGEST = 6


def get_sections(data, num, offset) -> tuple[int, SectionHeader]:
    sections = []
    for i in range(num):
        section_offset = offset + i * ctypes.sizeof(SectionHeader)
        section = SectionHeader.from_buffer_copy(data[section_offset:])
        sections.append((section_offset, section))
    return sections


def get_symbols_with_aux(data, num, offset):
    """Parse symbols and their auxiliary entries"""
    symbols = []
    i = 0

    while i < num:
        entry_offset = offset + i * ctypes.sizeof(SymbolTableEntry)
        entry = SymbolTableEntry.from_buffer_copy(data[entry_offset:])

        aux_entries = []
        # Parse auxiliary symbols if present
        for aux_idx in range(entry.NumberOfAuxSymbols):
            aux_offset = entry_offset + (aux_idx + 1) * ctypes.sizeof(SymbolTableEntry)

            # For section symbols, parse as AuxSectionSymbol
            if (entry.StorageClass == StorageClass.IMAGE_SYM_CLASS_STATIC and
                entry.SectionNumber > 0):
                aux_entry = AuxSectionSymbol.from_buffer_copy(data[aux_offset:])
                aux_entries.append((aux_offset, 'section', aux_entry))
            else:
                # For other types, just store raw bytes
                aux_data = data[aux_offset:aux_offset + ctypes.sizeof(SymbolTableEntry)]
                aux_entries.append((aux_offset, 'raw', aux_data))

        symbols.append((entry_offset, entry, aux_entries))
        i += 1 + entry.NumberOfAuxSymbols  # Skip main entry + aux entries

    return symbols


def patch_coff_object_file(input_file: Path, output_file: Path, no_pad: bool, remove_associative_flags: bool):
    with open(input_file, 'rb') as fin:
        data = bytearray(fin.read())

    coff_header = COFFHeader.from_buffer_copy(data)
    assert(coff_header.SizeOfOptionalHeader == 0)
    sections = get_sections(data, coff_header.NumberOfSections, ctypes.sizeof(COFFHeader) + coff_header.SizeOfOptionalHeader)
    symbols = get_symbols_with_aux(data, coff_header.NumberOfSymbols, coff_header.PointerToSymbolTable)

    if no_pad:
        data[sections[0][0] + SectionHeader.Characteristics.offset] |= ImageScnType.NO_PAD.value

    if remove_associative_flags:
        for sym_offset, sym, sym_aux in symbols:
            for aux_offset, aux_type, aux in sym_aux:
                if type(aux) is AuxSectionSymbol and aux.Selection == ComdatSelection.IMAGE_COMDAT_SELECT_ASSOCIATIVE.value:
                    data[AuxSectionSymbol.Selection.offset + aux_offset] = ComdatSelection.IMAGE_COMDAT_SELECT_ANY.value

    with open(output_file, 'wb') as fout:
        fout.write(data)


if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Patch COFF object file.")
    parser.add_argument("input_file", type=Path, help="Path to the input object file")
    parser.add_argument("output_file", type=Path, help="Path to the output object file")
    parser.add_argument("--no-pad", action="store_true", help="Set IMAGE_SCN_TYPE_NO_PAD on the first section, thereby removing padding before this obj.")
    parser.add_argument("--remove-associative-flags", action="store_true", help="Replace IMAGE_COMDAT_SELECT_ASSOCIATIVE flag with IMAGE_COMDAT_SELECT_ANY on all comdat section thereby preventing re-ordering.")

    args = parser.parse_args()
    patch_coff_object_file(args.input_file, args.output_file, args.no_pad, args.remove_associative_flags)
