from datetime import datetime, timezone
from pathlib import Path
from typing import Optional, Union

import pefile


RICH_HEADER_MASK = 0x0a8ee120


def align_up(addr: int, alignment: int) -> int:
    return (addr + alignment - 1) & ~(alignment - 1)


def find_section_header(pe, name: str):
    return next(s for s in pe.__structures__ if s.name == 'IMAGE_SECTION_HEADER' and s.Name.startswith(bytearray(name, 'ascii')))


def find_directory(pe, name: str):
    return next(s for s in pe.__structures__ if s.name == name)


def patch_directory(pe, name: str, address: Optional[int]=None, size: Optional[int]=None):
    directory = find_directory(pe, name)
    if address is not None:
        directory.VirtualAddress = address - pe.OPTIONAL_HEADER.ImageBase
    if size is not None:
        directory.Size = size


def fix_section_size(pe, name: str, last_addr: int = None, size: int = None):
    section = find_section_header(pe, name)
    if size is None:
        size = last_addr - section.VirtualAddress - pe.OPTIONAL_HEADER.ImageBase
    section.Misc_VirtualSize = size


def clear_bytes(pe, start, end):
    size = end - start
    pe.__data__[start:end] = b'\0' * size


def embed_string(pe, addr: int, string: Union[str, bytearray]):
    end = addr + len(string)
    if type(string) is str:
        string = bytearray(string, 'ascii')
    pe.__data__[addr:end] = string


def embed_xorddw(pe, addr: int, value: int):
    key = RICH_HEADER_MASK
    pe.__data__[addr:addr+4] = (key ^ value).to_bytes(4, 'little')


def embed_product(pe, addr: int, product_id: int, build_id):
    combined = int.from_bytes((int.to_bytes(product_id, 2) + int.to_bytes(build_id, 2)))
    embed_xorddw(pe, addr, combined)


def embed_rich_table_record(pe, addr: int, product_id: int, build_id: int, use_count: int):
    embed_product(pe, addr, product_id, build_id)
    embed_xorddw(pe, addr + 4, use_count)


def embed_rich_table_records(pe, addr: int, records: list[tuple[int, int, int]]):
    offset = 0x10
    for product_id, build_id, use_count in records:
        embed_rich_table_record(pe, addr + offset, product_id, build_id, use_count)
        offset += 8


def patch_black(input_path: Path, output_path: Path, turn_off_fullscreen: bool, debug: bool):
    size_of_code = 0x4ae000
    size_of_data = 0x71d000
    msvc_linker_version = (6, 0)
    offset_for_rich_header = 0xc0
    rich_header_addr = 0x80
    rich_header_size = 0xa8
    timestamp = datetime(2002, 6, 18, 6, 13, 22, tzinfo=timezone.utc)
    last_text_layout_asm_addr = 0x008a895d
    header_characteristics_bits_to_clear = pefile.IMAGE_CHARACTERISTICS['IMAGE_FILE_DEBUG_STRIPPED']
    strings_to_embed = []
    if not debug:
        strings_to_embed += [
            (0x13c, b"\x0d\x00\x2b\xad"),
            # Signature by no-cd patch?
            # https://www.beatport.com/nl/track/crazy-bad-bwoy/682050
            (0x340, " crazy bad bwoy "),
            # Information about the original linker
            (0x390, "Intel(R) C++ Compiler for 32-bit applications, Version 5.0 Build 001120  : C:\\Dev\\libs\\LIONHEAD\\LH3DLIB\\DEVELOPMENT\\LH3DP3.cpp : -Qvc6 -Qlocation,link,C:\\Program Files\\Microsoft Visual Studio\\VC98\\bin -nologo -G6 -MT -W3 -GX -Zi -O2 -Ob1 -D NDEBUG -D _LH_LIB_RELEASE -D WIN32 -D _WINDOWS -D _LH_3D_LIB_ -D _GOLD -D _GOLD_ -D _USE_INTEL_COMPILER -FAcs -FaGold/ -FoGold/ -FdGold/ -FD -QxiW -G7 -c"[24:]),
            (0x503, "Intel(R) C++ Compiler for 32-bit applications, Version 5.0.1 Beta  Build 010214Z  : cpu_disp.c : -I../ -Zl -Zp8 -DVX -DWMT -DMULTI_THREADED -Focpu_disp_mt.obj -c"),
            (0x5a5, "Intel(R) C++ Compiler for 32-bit applications, Version 5.0 Beta  Build 001024  : C:\\PROJECTS\\MathTest\\AMaths.c : -Qvc6 -Qlocation,link,C:\\Program Files\\Microsoft Visual Studio\\VC98\\bin -nologo -G6 -ML -W3 -GX -O2 -D WIN32 -D NDEBUG -D _WINDOWS -D _USE_INTEL_COMPILER -D _KATMAI_STEP_B -FpRelease/AMaths.pch -YX -FoRelease/ -FdRelease/ -FD -QxiMKW -c"),
            # Probably random garbage, but easy to just encode as string
            (0xfd4, "BoG_ *90.0&!!  Yy>"),
            (0xff4, '\2'),
            (0xff8, "<"),
            (0xffc, "4"),
            # libcmt mismatch for the __Strftime function in strftime.obj (possible different version of msvc libs)
            (0x003cbe23, b'U\x8b\xecQQ\x8bE\x0cSVW\xbf\xc8\xdc\xfa\x00\x89E\xfcW\xff\x15\x10\x93\x8a\x00\x8b\x1d\x14\x93\x8a\x003\xf695\xc4\xdc\xfa\x00t\x14W\xff\xd3j\x13\xe8_\xf8\xff\xffY\xc7E\xf8\x01\x00\x00\x00\xeb\x03\x89u\xf8\x8bE\x18;\xc6u\x05\xa18\xdd\xc2\x009u\xfc\x89E\x18vw\x8bu\x10\x8a\x06\x84\xc0tn<%t2\x8b\x15 \xdb\xc2\x00\x0f\xb6\xc8\xf6DJ\x01\x80t\x12\x83}\xfc\x01v\x0c\x8bM\x08\x88\x01\xffE\x08F\xffM\xfc\x8bM\x08\x8a\x06\x88\x01\xffE\x08F\xffM\xfc\xeb2\x83%\xb0\xcc\xfa\x00\x00F\x80>#u\x0b\xc7\x05\xb0\xcc\xfa\x00\x01\x00\x00\x00F\xffu\x18\x8dE\xfcP\x8dE\x08P\x8a\x06\xffu\x14P\xe88\x00\x00\x00\x83\xc4\x14F\x83}\xfc\x00w\x8c\x83}\xf8\x00t\nj\x13\xe8\x1b\xf8\xff\xffY\xeb\x03W\xff\xd3\x83}\xfc\x00_^[v\x0e\x8bE\x08\x80 \x00\x8bE\x0c+E\xfc\xc9\xc33\xc0\xc9\xc3'),
            # libcmt padding is 0xCC
            (0x003c60e4, b"\xCC" * 0xc),
            (0x003c6cd2, b"\xCC" * 0xe),
            (0x003c6ead, b"\xCC" * 3),
            (0x003c76db, b"\xCC" * 5),
            (0x003c7ad9, b"\xCC" * 7),
            (0x003c7cfd, b"\xCC" * 3),
            (0x003c8032, b"\xCC" * 0xe),
            (0x003c8515, b"\xCC" * 3),
            (0x003c8ce2, b"\xCC" * 14),
            (0x003c8d2e, b"\xCC" * 2),
            (0x003c9093, b"\xCC" * 13),
            (0x003c919e, b"\xCC" * 2),
            (0x003c91d8, b"\xCC" * 8),
            (0x003c955b, b"\xCC" * 5),
            (0x003c9e04, b"\xCC" * 12),
            (0x003c9e78, b"\xCC" * 8),
            (0x003c9ff2, b"\xCC" * 14),
            (0x003ca66b, b"\xCC" * 1),
            (0x003ca68b, b"\xCC" * 5),
            (0x003ca9c5, b"\xCC" * 11),
            (0x003ca04f, b"\xCC" * 1),
            (0x003ca021, b"\xCC" * 15),
            (0x003cb0f5, b"\xCC" * 11),
            (0x003cce01, b"\xCC" * 15),
            (0x003d19d8, b"\xCC" * 8),
            (0x003d1baa, b"\xCC" * 6),
            (0x003d1c03, b"\xCC" * 13),
            (0x003d2be2, b"\xCC" * 14),
            (0x003d2f8c, b"\xCC" * 4),
            (0x003d31fa, b"\xCC" * 6),
            (0x003d47b4, b"\xCC" * 12),
            (0x003d5061, b"\xCC" * 15),
            (0x003d7aec, b"\xCC" * 4),
            (0x003d8991, b"\xCC" * 3),
            (0x003d8fe3, b"\xCC" * 13),
            (0x003da70e, b"\xCC" * 2),
            (0x003db40c, b"\xCC" * 4),
            (0x004a645b, b"\xCC" * 1),
            (0x004a6281, b"\xCC" * 3),
            (0x004a62Fd, b"\xCC" * 3),
            (0x004a8970, b"\x00" * 1680),
            (0x004a6057, b"\xCC" * 9),
            # Garbage string in the rsrc
            (0x008428F8, "property of their respective owners".encode("utf-16-le")),
        ]
    unmarked_object_old = 0x0000
    unmarked_object = 0x0001
    linker_vs98 = 0x0004
    cvtres_vs97 = 0x0006
    compiler_vs98_c = 0x000a
    compiler_vs98_cpp = 0x000b
    compiler_unknown_c = 0x000c
    compiler_unknown_e = 0x000e
    compiler_unknown_13 = 0x0013
    table_records = [
        (compiler_vs98_c, 8168, 1),      # 0x0400090
        (compiler_vs98_c, 8447, 23),     # 0x0400098
        (compiler_unknown_c, 7291, 14),  # 0x04000a0
        (compiler_unknown_e, 7299, 43),  # 0x04000a8
        (compiler_unknown_13, 9049, 11), # 0x04000b0
        (compiler_vs98_c, 8799, 35),     # 0x04000b8
        (compiler_vs98_cpp, 8799, 30),   # 0x04000c0
        (compiler_vs98_cpp, 8047, 26),   # 0x04000c8
        (compiler_vs98_c, 8047, 202),    # 0x04000d0
        (compiler_vs98_cpp, 8168, 12),   # 0x04000d8
        (linker_vs98, 8168, 2),          # 0x04000e0
        (compiler_unknown_13, 8034, 21), # 0x04000e8
        (unmarked_object, 0, 578),       # 0x04000f0
        (compiler_vs98_cpp, 8447, 2),    # 0x04000f8
        (cvtres_vs97, 1735, 1),          # 0x0400100
        (compiler_vs98_cpp, 8966, 620),  # 0x0400108
        (unmarked_object_old, 0, 9),     # 0x0400110
        (linker_vs98, 8447, 26),         # 0x0400118
    ]

    pe = pefile.PE(data=bytearray(input_path.open("rb").read()))

    # Make room for rich header
    old_lfanew = pe.DOS_HEADER.e_lfanew
    pe.DOS_HEADER.e_cblp = 0x90
    pe.DOS_HEADER.e_cp = 0x03
    pe.DOS_HEADER.e_maxalloc = 0xffff
    pe.DOS_HEADER.e_sp = 0xb8
    pe.DOS_HEADER.e_lfanew += offset_for_rich_header
    for structure in pe.__structures__:
        if 0 < structure.get_file_offset() < 0x1000:
            structure.set_file_offset(structure.get_file_offset() + offset_for_rich_header)
    embed_string(pe, old_lfanew, '\0' * offset_for_rich_header)

    clear_bytes(pe, rich_header_addr, rich_header_size)
    embed_xorddw(pe, rich_header_addr + 0x00, int.from_bytes(b'DanS', 'little'))
    embed_xorddw(pe, rich_header_addr + 0x04, 0)
    embed_xorddw(pe, rich_header_addr + 0x08, 0)
    embed_xorddw(pe, rich_header_addr + 0x0c, 0)
    embed_rich_table_records(pe, rich_header_addr, table_records)
    embed_string(pe, rich_header_addr + 0xa0, 'Rich')
    embed_string(pe, rich_header_addr + 0xa4, RICH_HEADER_MASK.to_bytes(4, 'little'))

    # Patch directories which aren't set to the same place with this linker
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_EXPORT', 0x009c51e0, 0x365)
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_IMPORT', 0x009bf6e8, 0x1b8)
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_RESOURCE', find_section_header(pe, '.rsrc').VirtualAddress + pe.OPTIONAL_HEADER.ImageBase, 0x38F8)
    if not debug:
        patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_DEBUG', 0x008a99c0, 0x1c)

    # Setting the time
    pe.NT_HEADERS.FILE_HEADER.TimeDateStamp = int(timestamp.timestamp())
    pe.NT_HEADERS.FILE_HEADER.Characteristics |= pefile.IMAGE_CHARACTERISTICS['IMAGE_FILE_LINE_NUMS_STRIPPED']
    pe.NT_HEADERS.FILE_HEADER.Characteristics |= pefile.IMAGE_CHARACTERISTICS['IMAGE_FILE_LOCAL_SYMS_STRIPPED']

    if not debug:
        pe.FILE_HEADER.Characteristics &= ~header_characteristics_bits_to_clear

    # Set to msvc 6.0
    pe.OPTIONAL_HEADER.MajorLinkerVersion = msvc_linker_version[0]
    pe.OPTIONAL_HEADER.MinorLinkerVersion = msvc_linker_version[1]

    # No clue why it takes this value (0xd000) more than size of .text
    pe.OPTIONAL_HEADER.SizeOfCode = size_of_code
    pe.OPTIONAL_HEADER.SizeOfInitializedData = size_of_data

    # Missing checksum
    pe.OPTIONAL_HEADER.CheckSum = 0

    pe.OPTIONAL_HEADER.DllCharacteristics = 0

    # Point to .rdata rather than .data
    pe.OPTIONAL_HEADER.BaseOfData = find_section_header(pe, '.rdata').get_PointerToRawData_adj()

    # rsrc should not be writable
    find_section_header(pe, ".rsrc").Characteristics &= ~pefile.SECTION_CHARACTERISTICS['IMAGE_SCN_MEM_WRITE']

    # Fix .data virtual size after deleting .CRT
    find_section_header(pe, ".data").Misc_VirtualSize = 0x5f9e00

    # Some random strings are hanging out in header
    for offset, string in strings_to_embed:
        embed_string(pe, offset, string)

    # Linker added some crap at the end of the text section
    clear_bytes(pe, last_text_layout_asm_addr - pe.OPTIONAL_HEADER.ImageBase, align_up(last_text_layout_asm_addr - pe.OPTIONAL_HEADER.ImageBase + 0x10, 0x10))

    data = pe.write()

    if turn_off_fullscreen:
        data[0x3dd0d6] = 0xeb

    pe.close()
    with output_path.open("wb+") as f:
        f.write(data)

if __name__ == "__main__":
    import argparse
    parser = argparse.ArgumentParser(description="Patch the PE header of re-assembled black & white.")
    parser.add_argument("--input", "-i", type=Path, default=Path("runblack.reassemble.unpatched.exe"), help="Input file for the binary code")
    parser.add_argument("--output", "-o", type=Path, default=Path("runblack.reassemble.exe"), help="Output file for patched output")
    parser.add_argument("--turn-off-fullscreen", action='store_true', help="Apply a no-fullscreen patch")
    parser.add_argument("--debug", action='store_true', help="Do not overwrite debug sections and characteristics.")
    args = parser.parse_args()

    patch_black(args.input, args.output, args.turn_off_fullscreen, args.debug)
