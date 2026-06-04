#!/usr/bin/env python3

"""
Post-link patch script.
Applies version-specific binary fixups to the relinked executable,
producing the final output that is verified against build.sha1.

Usage (called by ninja automatically):
  python3 tools/post_link_patch.py --version BW1E100 <input.exe> <output.exe>
"""

import argparse
import json
import struct
import yaml
from datetime import datetime
from enum import IntEnum
from pathlib import Path
from typing import NamedTuple

import pefile


class RichProductID(IntEnum):
    IMPORT_OLD   = 0x0000  # pre-VC97 object with no product info
    IMPORT       = 0x0001  # object with no product info
    LINKER510    = 0x0002  # link.exe 5.10
    CVTOMF510    = 0x0003  # cvtomf.exe 5.10
    LINKER600    = 0x0004  # link.exe 6.00 (VS98)
    CVTOMF600    = 0x0005  # cvtomf.exe 6.00
    CVTRES       = 0x0006  # cvtres.exe (VS97/VS98)
    UTC11_BASIC  = 0x0007
    UTC11_C      = 0x0008
    UTC12_BASIC  = 0x0009
    UTC12_C      = 0x000A  # cl.exe C (VS98)
    UTC12_CPP    = 0x000B  # cl.exe C++ (VS98)
    ALIAS_OBJ    = 0x000C  # aliasobj.exe
    VBSCRIPT     = 0x000D
    MASM613      = 0x000E  # masm.exe 6.13
    MASM710      = 0x000F
    LINKER700    = 0x0010
    CVTOMF700    = 0x0011
    MASM614      = 0x0012
    LINKER600SP5 = 0x0013  # link.exe 6.00 SP5


class RichRecord(NamedTuple):
    product: RichProductID
    build: int   # tool internal build number
    count: int   # number of object files compiled with this tool version


# Rich header structure.
# link.exe writes it between the DOS stub and IMAGE_NT_HEADERS.
# lld-link never emits one, so we inject it as a post-link patch.
#
# Every 32-bit field is XOR'd with the key, except 'Rich' and the key itself.
#
RICH_PREAMBLE     = b'DanS' + b'\x00' * 12  # DanS + three zero padding dwords (before XOR)
RICH_TRAILER      = b'Rich' + b'\x00' * 4   # 'Rich' + key placeholder (key filled in at write time)
RICH_RECORD_SIZE  = struct.calcsize('<II')   # two u32: (product << 16 | build) and use_count

# link.exe always adds 3 reserved record-slots of zero padding after the trailer
# before IMAGE_NT_HEADERS (observed consistently across BW1E100 and BW1E142).
RICH_HEADER_RESERVED_SLOTS = 3
RICH_HEADER_PAD  = RICH_HEADER_RESERVED_SLOTS * RICH_RECORD_SIZE  # = 0x18

# lld-link places IMAGE_NT_HEADERS here when it has no Rich header to emit.
# pe.DOS_HEADER.e_lfanew will equal this value on any lld-link output.
LLDLINK_STUB_SIZE = 0x80

# MZ header fields from MSVC 6.0's pre-compiled DOS stub binary.
# lld-link sets these to different values for its own shorter stub.
# e_cblp and e_cp describe the DOS program size in 512-byte pages; e_cp and
# e_sp are hardcoded constants in the stub binary with no derivable formula.
MSVC6_E_CP       = 3       # hardcoded in MSVC 6.0 pre-compiled DOS stub binary
MSVC6_E_MAXALLOC = 0xFFFF  # max heap paragraphs; MSVC sets to the maximum
MSVC6_E_SP       = 0x00B8  # hardcoded in MSVC 6.0 pre-compiled DOS stub binary

# SafeDisc2Cleaner v1.20 writes a marker 4 bytes before IMAGE_NT_HEADERS.
# The last 2 bytes are its signature: 0x2BAD is leet for "too bad".
SAFEDISC_CLEANER_SIGNATURE = (0x2BAD).to_bytes(2, 'big')


def rich_header_size(records):
    return len(RICH_PREAMBLE) + len(records) * RICH_RECORD_SIZE + len(RICH_TRAILER)


def pe_offset_after_rich_header(records):
    return LLDLINK_STUB_SIZE + rich_header_size(records) + RICH_HEADER_PAD


# Version-specific Rich header data, decoded from each original exe.
# The key is a checksum link.exe computes from the binary content at link time.

BW1E100_RICH_KEY = 0x1B5AC95C   # extracted from original exe at offset 0x11c

BW1E100_RICH_RECORDS = [
    RichRecord(RichProductID.UTC12_C,      8447,  23),
    RichRecord(RichProductID.LINKER600SP5, 9049,  11),
    RichRecord(RichProductID.ALIAS_OBJ,    7291,  14),
    RichRecord(RichProductID.MASM613,      7299,  42),
    RichRecord(RichProductID.UTC12_CPP,    8797,  13),
    RichRecord(RichProductID.UTC12_C,      8797, 195),
    RichRecord(RichProductID.IMPORT_OLD,      0,   6),
    RichRecord(RichProductID.UTC12_C,      8799,  35),
    RichRecord(RichProductID.UTC12_C,      8168,   7),
    RichRecord(RichProductID.UTC12_CPP,    8168,  24),
    RichRecord(RichProductID.LINKER600,    8168,   2),
    RichRecord(RichProductID.LINKER600SP5, 8034,  21),
    RichRecord(RichProductID.IMPORT,          0, 565),
    RichRecord(RichProductID.UTC12_CPP,    8447,   2),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.UTC12_CPP,    8799, 643),
    RichRecord(RichProductID.LINKER600,    8447,  26),
]

BW1E110_RICH_KEY = 0xEA105BED   # extracted from original exe at offset 0x124
BW1E110_RICH_RECORDS = [
    RichRecord(RichProductID.UTC12_C,      8447,  23),
    RichRecord(RichProductID.UTC12_CPP,    8966,  62),
    RichRecord(RichProductID.ALIAS_OBJ,    7291,  14),
    RichRecord(RichProductID.UTC12_CPP,    8797,  13),
    RichRecord(RichProductID.MASM613,      7299,  43),
    RichRecord(RichProductID.UTC12_C,      8797, 196),
    RichRecord(RichProductID.LINKER600SP5, 9049,  11),
    RichRecord(RichProductID.UTC12_C,      8799,  35),
    RichRecord(RichProductID.UTC12_C,      8168,   7),
    RichRecord(RichProductID.UTC12_CPP,    8168,  24),
    RichRecord(RichProductID.LINKER600,    8168,   2),
    RichRecord(RichProductID.LINKER600SP5, 8034,  21),
    RichRecord(RichProductID.IMPORT,          0, 578),
    RichRecord(RichProductID.UTC12_CPP,    8447,   2),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.UTC12_CPP,    8799, 585),
    RichRecord(RichProductID.IMPORT_OLD,      0,   9),
    RichRecord(RichProductID.LINKER600,    8447,  26),
]

# TODO: 1.20 is not yet cracked
BW1E120_RICH_KEY = 0x0A8EE120   # extracted from original exe at offset 0x124
BW1E120_RICH_RECORDS = [
    # TODO
]

BW1E142_RICH_KEY = 0x0A8EE120   # extracted from original exe at offset 0x124
BW1E142_RICH_RECORDS = [
    RichRecord(RichProductID.UTC12_C,      8168,   1),
    RichRecord(RichProductID.UTC12_C,      8447,  23),
    RichRecord(RichProductID.ALIAS_OBJ,    7291,  14),
    RichRecord(RichProductID.MASM613,      7299,  43),
    RichRecord(RichProductID.LINKER600SP5, 9049,  11),
    RichRecord(RichProductID.UTC12_C,      8799,  35),
    RichRecord(RichProductID.UTC12_CPP,    8799,  30),
    RichRecord(RichProductID.UTC12_CPP,    8047,  26),
    RichRecord(RichProductID.UTC12_C,      8047, 202),
    RichRecord(RichProductID.UTC12_CPP,    8168,  12),
    RichRecord(RichProductID.LINKER600,    8168,   2),
    RichRecord(RichProductID.LINKER600SP5, 8034,  21),
    RichRecord(RichProductID.IMPORT,          0, 578),
    RichRecord(RichProductID.UTC12_CPP,    8447,   2),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.UTC12_CPP,    8966, 620),
    RichRecord(RichProductID.IMPORT_OLD,      0,   9),
    RichRecord(RichProductID.LINKER600,    8447,  26),
]


BW1E100_LHAUDIO_RICH_KEY = 0x52ED8B05   # extracted from original dll at offset 0xec
BW1E100_LHAUDIO_RICH_SLOTS = 2
BW1E100_LHAUDIO_RICH_RECORDS = [
    RichRecord(RichProductID.ALIAS_OBJ,    7291,   2),
    RichRecord(RichProductID.UTC12_CPP,    8797,   8),
    RichRecord(RichProductID.MASM613,      7299,  30),
    RichRecord(RichProductID.UTC12_C,      8797, 119),
    RichRecord(RichProductID.UTC12_C,      8799,   9),
    RichRecord(RichProductID.IMPORT_OLD,      0,   2),
    RichRecord(RichProductID.LINKER600SP5, 8034,  11),
    RichRecord(RichProductID.IMPORT,          0, 140),
    RichRecord(RichProductID.UTC12_CPP,    8799,  19),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.LINKER600,    8447,  37),
]

BW1E100_LHLOG_RICH_KEY = 0xF22BBA49   # extracted from original dll at offset 0xdc
BW1E100_LHLOG_RICH_SLOTS = 3
BW1E100_LHLOG_RICH_RECORDS = [
    RichRecord(RichProductID.ALIAS_OBJ,    7291,   2),
    RichRecord(RichProductID.UTC12_CPP,    8797,  10),
    RichRecord(RichProductID.MASM613,      7299,  23),
    RichRecord(RichProductID.UTC12_C,      8797, 120),
    RichRecord(RichProductID.LINKER600SP5, 8034,  11),
    RichRecord(RichProductID.IMPORT,          0, 129),
    RichRecord(RichProductID.UTC12_CPP,    8799,   7),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.LINKER600,    8447,   1),
]

BW1E100_LHMULTIPLAYER_RICH_KEY = 0x741C518F   # extracted from original dll at offset 0xec
BW1E100_LHMULTIPLAYER_RICH_SLOTS = 2
BW1E100_LHMULTIPLAYER_RICH_RECORDS = [
    RichRecord(RichProductID.UTC12_C,      8799,  23),
    RichRecord(RichProductID.ALIAS_OBJ,    7291,   3),
    RichRecord(RichProductID.UTC12_CPP,    8797,  10),
    RichRecord(RichProductID.MASM613,      7299,  23),
    RichRecord(RichProductID.UTC12_C,      8797, 144),
    RichRecord(RichProductID.UTC12_C,      8447,  12),
    RichRecord(RichProductID.UTC12_CPP,    8168,   3),
    RichRecord(RichProductID.LINKER600SP5, 8034,  11),
    RichRecord(RichProductID.IMPORT,          0, 180),
    RichRecord(RichProductID.UTC12_CPP,    8799,  28),
    RichRecord(RichProductID.LINKER600,    8447,   3),
]

BW1E100_LHDIALOG_RICH_KEY = 0xEEAE27EE   # extracted from original dll at offset 0xcc
BW1E100_LHDIALOG_RICH_SLOTS = 1
BW1E100_LHDIALOG_RICH_RECORDS = [
    RichRecord(RichProductID.LINKER600SP5, 8034,   2),
    RichRecord(RichProductID.MASM613,      7299,   1),
    RichRecord(RichProductID.UTC12_C,      8447,   4),
    RichRecord(RichProductID.IMPORT,          0, 165),
    RichRecord(RichProductID.UTC12_CPP,    8447,  13),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.LINKER600,    8447,   6),
]

BW1E110_LHAUDIO_RICH_KEY = BW1E100_LHAUDIO_RICH_KEY
BW1E110_LHAUDIO_RICH_SLOTS = BW1E100_LHAUDIO_RICH_SLOTS
BW1E110_LHAUDIO_RICH_RECORDS = BW1E100_LHAUDIO_RICH_RECORDS

BW1E110_LHLOG_RICH_KEY = BW1E100_LHLOG_RICH_KEY
BW1E110_LHLOG_RICH_SLOTS = BW1E100_LHLOG_RICH_SLOTS
BW1E110_LHLOG_RICH_RECORDS = BW1E100_LHLOG_RICH_RECORDS

BW1E110_LHMULTIPLAYER_RICH_KEY = BW1E100_LHMULTIPLAYER_RICH_KEY
BW1E110_LHMULTIPLAYER_RICH_SLOTS = BW1E100_LHMULTIPLAYER_RICH_SLOTS
BW1E110_LHMULTIPLAYER_RICH_RECORDS = BW1E100_LHMULTIPLAYER_RICH_RECORDS

BW1E110_LHDIALOG_RICH_KEY = BW1E100_LHDIALOG_RICH_KEY
BW1E110_LHDIALOG_RICH_SLOTS = BW1E100_LHDIALOG_RICH_SLOTS
BW1E110_LHDIALOG_RICH_RECORDS = BW1E100_LHDIALOG_RICH_RECORDS

BW1E142_LHAUDIO_RICH_KEY = BW1E100_LHAUDIO_RICH_KEY
BW1E142_LHAUDIO_RICH_SLOTS = BW1E100_LHAUDIO_RICH_SLOTS
BW1E142_LHAUDIO_RICH_RECORDS = BW1E100_LHAUDIO_RICH_RECORDS

BW1E142_LHLOG_RICH_KEY = 0x042055C6   # extracted from original dll at offset 0xdc
BW1E142_LHLOG_RICH_SLOTS = 3
BW1E142_LHLOG_RICH_RECORDS = [
    RichRecord(RichProductID.ALIAS_OBJ,    7291,   2),
    RichRecord(RichProductID.UTC12_CPP,    8047,  10),
    RichRecord(RichProductID.MASM613,      7299,  23),
    RichRecord(RichProductID.UTC12_C,      8047, 120),
    RichRecord(RichProductID.LINKER600SP5, 8034,  11),
    RichRecord(RichProductID.IMPORT,          0, 129),
    RichRecord(RichProductID.UTC12_CPP,    8966,   7),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.LINKER600,    8447,   1),
]

BW1E142_LHMULTIPLAYER_RICH_KEY = 0x40924540   # extracted from original dll at offset 0xec
BW1E142_LHMULTIPLAYER_RICH_SLOTS = 3
BW1E142_LHMULTIPLAYER_RICH_RECORDS = [
    RichRecord(RichProductID.UTC12_C,      8799,  23),
    RichRecord(RichProductID.ALIAS_OBJ,    7291,   5),
    RichRecord(RichProductID.UTC12_CPP,    8047,  10),
    RichRecord(RichProductID.MASM613,      7299,  23),
    RichRecord(RichProductID.UTC12_C,      8047, 146),
    RichRecord(RichProductID.UTC12_C,      8447,  12),
    RichRecord(RichProductID.UTC12_CPP,    8168,   3),
    RichRecord(RichProductID.LINKER600SP5, 8034,  11),
    RichRecord(RichProductID.IMPORT,          0, 180),
    RichRecord(RichProductID.UTC12_CPP,    8966,  28),
    RichRecord(RichProductID.LINKER600,    8447,   3),
]

BW1E142_LHDIALOG_RICH_KEY = BW1E100_LHDIALOG_RICH_KEY
BW1E142_LHDIALOG_RICH_SLOTS = BW1E100_LHDIALOG_RICH_SLOTS
BW1E142_LHDIALOG_RICH_RECORDS = BW1E100_LHDIALOG_RICH_RECORDS


# Rich header write helpers

def write_bytes(pe, offset, data):
    pe.__data__[offset:offset + len(data)] = data


def xor_dword(key, value):
    return struct.pack('<I', value ^ key)


def find_section_header(pe, name: str):
    return next(s for s in pe.__structures__ if s.name == 'IMAGE_SECTION_HEADER' and s.Name.startswith(bytearray(name, 'ascii')))


def find_directory(pe, name: str):
    return next(s for s in pe.__structures__ if s.name == name)


def patch_directory(pe, name: str, address: int|None=None, size: int|None=None):
    directory = find_directory(pe, name)
    if address is not None:
        directory.VirtualAddress = address - pe.OPTIONAL_HEADER.ImageBase
    if size is not None:
        directory.Size = size


def write_rich_header(pe, addr, key, records):
    # XOR-encode and write preamble (DanS + 3 zero dwords)
    off = addr
    for i in range(0, len(RICH_PREAMBLE), 4):
        val = struct.unpack_from('<I', RICH_PREAMBLE, i)[0]
        write_bytes(pe, off, xor_dword(key, val))
        off += 4
    # Write records
    for record in records:
        write_bytes(pe, off,     xor_dword(key, (record.product << 16) | record.build))
        write_bytes(pe, off + 4, xor_dword(key, record.count))
        off += RICH_RECORD_SIZE
    # Write trailer: 'Rich' (plain) + key (plain)
    write_bytes(pe, off,     b'Rich')
    write_bytes(pe, off + 4, struct.pack('<I', key))


def insert_rich_header(pe, key, records, reserved_slots=RICH_HEADER_RESERVED_SLOTS):
    # pefile gives us the current stub end (lld-link always sets e_lfanew = LLDLINK_STUB_SIZE)
    rich_start = pe.DOS_HEADER.e_lfanew
    gap = rich_header_size(records) + reserved_slots * RICH_RECORD_SIZE

    # Shift IMAGE_NT_HEADERS back to make room. pefile's set_file_offset
    # updates section PointerToRawData, data directories, etc. automatically.
    pe.DOS_HEADER.e_lfanew += gap
    for structure in pe.__structures__:
        if 0 < structure.get_file_offset() < 0x1000:
            structure.set_file_offset(structure.get_file_offset() + gap)
    write_bytes(pe, rich_start, b'\x00' * gap)

    # e_cblp: bytes on the last DOS page. The MSVC stub ends at rich_start + preamble.
    pe.DOS_HEADER.e_cblp     = rich_start + len(RICH_PREAMBLE)
    pe.DOS_HEADER.e_cp       = MSVC6_E_CP
    pe.DOS_HEADER.e_maxalloc = MSVC6_E_MAXALLOC
    pe.DOS_HEADER.e_sp       = MSVC6_E_SP

    write_rich_header(pe, rich_start, key, records)


def zero_code_section_padding(pe):
    """Zero out the gap between VirtualSize and SizeOfRawData in code sections.

    lld-link fills this trailing padding with 0x90 (NOP); MSVC link.exe uses zeros.
    """
    IMAGE_SCN_CNT_CODE = 0x00000020
    for section in pe.sections:
        if not (section.Characteristics & IMAGE_SCN_CNT_CODE):
            continue
        pad_start = section.PointerToRawData + section.Misc_VirtualSize
        pad_end   = section.PointerToRawData + section.SizeOfRawData
        if pad_end > pad_start:
            write_bytes(pe, pad_start, b'\x00' * (pad_end - pad_start))


# SafeDisc2Cleaner artifacts. These are breadcrumbs written by the decryption tool,
# not original linker output. Isolated here for future removal once decryption is
# handled offline as a pre-analysis step.
def apply_patch_safedisc(pe, cfg):
    # SafeDisc protection magic also written into the header padding.
    write_bytes(pe, 0x0FD4, b'BoG_ *90.0&!!  Yy>')
    # Safedisc version
    safe_disc_version = cfg.get("safe_disc_version").split(".")
    write_bytes(pe, 0x0FF4, struct.pack('<3I', *map(int, safe_disc_version)))
    # The original compilation date
    timestamp = cfg.get("timestamp")
    if timestamp:
        pe.FILE_HEADER.TimeDateStamp = int(datetime.fromisoformat(timestamp).timestamp())


def apply_BW1_common_patch(pe, cfg):
    # Don't put anything in DllCharacteristics
    pe.OPTIONAL_HEADER.DllCharacteristics = 0
    # Striping characteristics are removed, probably by safedisc 2
    pe.FILE_HEADER.Characteristics |= pefile.IMAGE_CHARACTERISTICS['IMAGE_FILE_LINE_NUMS_STRIPPED']
    pe.FILE_HEADER.Characteristics |= pefile.IMAGE_CHARACTERISTICS['IMAGE_FILE_LOCAL_SYMS_STRIPPED']

    # Override the linker version to the original one (we're using lld-link)
    linker_version = cfg.get("linker_version")
    if linker_version:
        pe.OPTIONAL_HEADER.MajorLinkerVersion, pe.OPTIONAL_HEADER.MinorLinkerVersion = map(int, linker_version.split("."))
    
    # Size of code and size of Initialized Data might not match
    # TODO: Is this a sign of bad objs or link arguments or something missing from the linker?
    size_of_code = cfg.get("size_of_code")
    if size_of_code:
        pe.OPTIONAL_HEADER.SizeOfCode = size_of_code
    size_of_initialized_data = cfg.get("size_of_initialized_data")
    if size_of_initialized_data:
        pe.OPTIONAL_HEADER.SizeOfInitializedData = size_of_initialized_data
    size_of_image = cfg.get("size_of_image")
    if size_of_image:
        pe.OPTIONAL_HEADER.SizeOfImage = size_of_image
    # Patch directories which aren't set to the same place with this linker
    # TODO: Why are these bad?
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_EXPORT', cfg.get("entry_export_addr"), cfg.get("entry_export_size"))
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_IMPORT', cfg.get("entry_import_addr"), cfg.get("entry_import_size"))
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_RESOURCE', cfg.get("entry_resource_addr"), cfg.get("entry_resource_size"))

    # Point to .rdata
    # TODO: Why is this set to 0?
    pe.OPTIONAL_HEADER.BaseOfData = find_section_header(pe, '.rdata').get_PointerToRawData_adj()


def apply_intel_strings(pe, cfg):
    # Weird leaked icc compiler strings for certain files  that were compiled with icc
    write_bytes(pe, 0x390, b"Intel(R) C++ Compiler for 32-bit applications, Version 5.0 Build 001120  : C:\\Dev\\libs\\LIONHEAD\\LH3DLIB\\DEVELOPMENT\\LH3DP3.cpp : -Qvc6 -Qlocation,link,C:\\Program Files\\Microsoft Visual Studio\\VC98\\bin -nologo -G6 -MT -W3 -GX -Zi -O2 -Ob1 -D NDEBUG -D _LH_LIB_RELEASE -D WIN32 -D _WINDOWS -D _LH_3D_LIB_ -D _GOLD -D _GOLD_ -D _USE_INTEL_COMPILER -FAcs -FaGold/ -FoGold/ -FdGold/ -FD -QxiW -G7 -c"[24:])
    write_bytes(pe, 0x503, b"Intel(R) C++ Compiler for 32-bit applications, Version 5.0.1 Beta  Build 010214Z  : cpu_disp.c : -I../ -Zl -Zp8 -DVX -DWMT -DMULTI_THREADED -Focpu_disp_mt.obj -c")
    write_bytes(pe, 0x5a5, b"Intel(R) C++ Compiler for 32-bit applications, Version 5.0 Beta  Build 001024  : C:\\PROJECTS\\MathTest\\AMaths.c : -Qvc6 -Qlocation,link,C:\\Program Files\\Microsoft Visual Studio\\VC98\\bin -nologo -G6 -ML -W3 -GX -O2 -D WIN32 -D NDEBUG -D _WINDOWS -D _USE_INTEL_COMPILER -D _KATMAI_STEP_B -FpRelease/AMaths.pch -YX -FoRelease/ -FdRelease/ -FD -QxiMKW -c")


def apply_BW1E100_patch_safedisc_cleaner(pe):
    # SafeDisc2Cleaner wrote its author handle into the COFF timestamp field.
    pe.FILE_HEADER.TimeDateStamp = int.from_bytes(b'eYes', 'little')
    # 4-byte marker immediately before IMAGE_NT_HEADERS.
    # First 2 bytes are version-specific; last 2 are the 0x2BAD "too bad" signature.
    write_bytes(pe, pe_offset_after_rich_header(BW1E100_RICH_RECORDS) - 4, bytes([0x0C, 0x00]) + SAFEDISC_CLEANER_SIGNATURE)
    # Author credit string in the header padding area (between section table and .text).
    write_bytes(pe, 0x0310, b'Safedisc2Cleaner (c) bOOls eYe, waste_me & r!sc boolseye.cjb.net')


def apply_BW1E110_patch_safedisc_cleaner(pe):
    # SafeDisc2Cleaner wrote its author handle into the COFF timestamp field.
    pe.FILE_HEADER.TimeDateStamp = int.from_bytes(b'eYes', 'little')
    # 4-byte marker immediately before IMAGE_NT_HEADERS.
    # First 2 bytes are version-specific; last 2 are the 0x2BAD "too bad" signature.
    write_bytes(pe, pe_offset_after_rich_header(BW1E110_RICH_RECORDS) - 4, bytes([0x0D, 0x00]) + SAFEDISC_CLEANER_SIGNATURE)
    # Author credit string in the header padding area (between section table and .text).
    write_bytes(pe, 0x0340, b'Safedisc2Cleaner (c) bOOls eYe, waste_me & r!sc boolseye.cjb.net')


def apply_BW1E120_patch_safedisc_cleaner(pe):
    raise NotImplementedError("BW1E120 not yet decrytped by safedisc cleaner 2")


def apply_BW1E142_patch_safedisc_cleaner(pe):
    # 4-byte marker immediately before IMAGE_NT_HEADERS.
    # First 2 bytes are version-specific; last 2 are the 0x2BAD "too bad" signature.
    write_bytes(pe, pe_offset_after_rich_header(BW1E142_RICH_RECORDS) - 4, bytes([0x0D, 0x00]) + SAFEDISC_CLEANER_SIGNATURE)


def apply_BW1E100_patch(pe, cfg, out_dir, modules):
    apply_patch_safedisc(pe, cfg)
    apply_BW1E100_patch_safedisc_cleaner(pe)
    apply_BW1_common_patch(pe, cfg)

    # Possible memdump metadata
    write_bytes(pe, 0x00763000, bytes(
        b'_ii.../..000000_'              # stale data
        b'!!!?'                          # marker
        b'\x0b\xfe'                      # non-printable
        b'#hhs_____'                     # tag
        b'0x622958ac'                    # formatted pointer
        + struct.pack('<I', 0x81444ba5)  # little-endian native value
    ))

    apply_modules_patch(out_dir, cfg, modules)


def apply_BW1E110_patch(pe, cfg, out_dir, modules):
    apply_patch_safedisc(pe, cfg)
    apply_BW1E110_patch_safedisc_cleaner(pe)
    apply_BW1_common_patch(pe, cfg)
    apply_intel_strings(pe, cfg)

    # This version has an existing but deleted debug directory
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_DEBUG', 0x008999c0, 0x1c)

    write_bytes(pe, 0x00832000, (
        struct.pack(
            "<4sIII",
            b"NB10",
            0x00000000,
            0x3B1BA029,
            0x00000010,
        )
        + b"C:\\dev\\Black\\Gold\\Black.pdb\x00"
         # garbage?
        + b"\x5f\x69\x69\x2e"
        + b"\x2e\x2e\x2f\x2e\x2e"
        + b"\x30\x30\x30\x30\x30\x30"
        + b"\x5f"
        + b"\x21\x21\x21"
        + b"\x53\xf3\xe1\x75\x68\x68\x73"
        + b"\x5f\x5f\x5f\x5f\x5f"
        + b"\x30\x78\x36\x32\x32\x39\x35\x38\x61\x63\xa5\x4b\x44\x81"
    ))

    apply_modules_patch(out_dir, cfg, modules)


def apply_BW1E120_patch(pe, cfg, out_dir, modules):
    raise NotImplementedError("BW1E120 not yet decrypted")


def apply_BW1E142_patch(pe, cfg, out_dir, modules):
    apply_patch_safedisc(pe, cfg)
    apply_BW1E142_patch_safedisc_cleaner(pe)
    apply_BW1_common_patch(pe, cfg)
    apply_intel_strings(pe, cfg)

    # Different safedisc decryptor easter egg
    # https://www.beatport.com/nl/track/crazy-bad-bwoy/682050
    write_bytes(pe, 0x00000340, bytes(b' crazy bad bwoy '))

    # This version has an existing but deleted debug directory
    patch_directory(pe, 'IMAGE_DIRECTORY_ENTRY_DEBUG', 0x008a99c0, 0x1c)

    apply_modules_patch(out_dir, cfg, modules)


PATCHES = {
    "BW1E100": (BW1E100_RICH_KEY, BW1E100_RICH_RECORDS, apply_BW1E100_patch, {
        "LHAudio":       (BW1E100_LHAUDIO_RICH_KEY,       BW1E100_LHAUDIO_RICH_RECORDS,       BW1E100_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1E100_LHLOG_RICH_KEY,         BW1E100_LHLOG_RICH_RECORDS,         BW1E100_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1E100_LHMULTIPLAYER_RICH_KEY, BW1E100_LHMULTIPLAYER_RICH_RECORDS, BW1E100_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1E100_LHDIALOG_RICH_KEY,      BW1E100_LHDIALOG_RICH_RECORDS,      BW1E100_LHDIALOG_RICH_SLOTS),
    }),
    "BW1E110": (BW1E110_RICH_KEY, BW1E110_RICH_RECORDS, apply_BW1E110_patch, {
        "LHAudio":       (BW1E110_LHAUDIO_RICH_KEY,       BW1E110_LHAUDIO_RICH_RECORDS,       BW1E110_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1E110_LHLOG_RICH_KEY,         BW1E110_LHLOG_RICH_RECORDS,         BW1E110_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1E110_LHMULTIPLAYER_RICH_KEY, BW1E110_LHMULTIPLAYER_RICH_RECORDS, BW1E110_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1E110_LHDIALOG_RICH_KEY,      BW1E110_LHDIALOG_RICH_RECORDS,      BW1E110_LHDIALOG_RICH_SLOTS),
    }),
    "BW1E120": (BW1E120_RICH_KEY, BW1E120_RICH_RECORDS, apply_BW1E120_patch, {}),
    "BW1E142": (BW1E142_RICH_KEY, BW1E142_RICH_RECORDS, apply_BW1E142_patch, {
        "LHAudio":       (BW1E142_LHAUDIO_RICH_KEY,       BW1E142_LHAUDIO_RICH_RECORDS,       BW1E142_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1E142_LHLOG_RICH_KEY,         BW1E142_LHLOG_RICH_RECORDS,         BW1E142_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1E142_LHMULTIPLAYER_RICH_KEY, BW1E142_LHMULTIPLAYER_RICH_RECORDS, BW1E142_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1E142_LHDIALOG_RICH_KEY,      BW1E142_LHDIALOG_RICH_RECORDS,      BW1E142_LHDIALOG_RICH_SLOTS),
    }),
}


def apply_module_patch(pe, cfg, pe_metadata):
    # Override the linker version to the original one (we're using lld-link)
    linker_version = cfg.get("linker_version")
    if linker_version:
        pe.OPTIONAL_HEADER.MajorLinkerVersion, pe.OPTIONAL_HEADER.MinorLinkerVersion = map(int, linker_version.split("."))
    # Header fields lld-link reproduces differently, taken from the original PE
    # (captured by dtk at split time into config.json).
    pe.FILE_HEADER.TimeDateStamp = pe_metadata["timestamp"]
    pe.FILE_HEADER.Characteristics = pe_metadata["characteristics"]
    pe.OPTIONAL_HEADER.DllCharacteristics = pe_metadata["dll_characteristics"]
    pe.OPTIONAL_HEADER.BaseOfData = pe_metadata["base_of_data"]
    pe.OPTIONAL_HEADER.SizeOfCode = pe_metadata["size_of_code"]
    pe.OPTIONAL_HEADER.SizeOfInitializedData = pe_metadata["size_of_initialized_data"]
    pe.OPTIONAL_HEADER.SizeOfImage = pe_metadata["size_of_image"]
    # Data directories (lld-link leaves export/import/IAT/debug/delay-import unset)
    for i, (rva, size) in enumerate(pe_metadata["data_directories"]):
        pe.OPTIONAL_HEADER.DATA_DIRECTORY[i].VirtualAddress = rva
        pe.OPTIONAL_HEADER.DATA_DIRECTORY[i].Size = size
    # The original linker's .reloc VirtualSize differs from lld-link's
    find_section_header(pe, '.reloc').Misc_VirtualSize = pe_metadata["reloc_virtual_size"]


def apply_modules_patch(out_dir, cfg, modules):
    build_config = json.loads((out_dir / "config.json").read_text())
    metadata = {m["name"]: m.get("pe_metadata") for m in build_config.get("modules", [])}
    for name, (rich_key, rich_records, rich_slots) in modules.items():
        pe_metadata = metadata.get(name)

        data = bytearray((out_dir / f"{name}-linked.dll").read_bytes())
        pe   = pefile.PE(data=data)

        insert_rich_header(pe, rich_key, rich_records, rich_slots)
        zero_code_section_padding(pe)
        if pe_metadata:
            apply_module_patch(pe, cfg, pe_metadata)

        data[:] = pe.write()
        # Trailing data (e.g. the CodeView debug record) that lld-link drops.
        if pe_metadata:
            data += bytes(pe_metadata["trailing_data"])
        pe.close()

        (out_dir / f"{name}.dll").write_bytes(data)


def main():
    parser = argparse.ArgumentParser(
        description="Apply post-link binary patches to the relinked executable."
    )
    parser.add_argument("input",   type=Path, help="Linked executable produced by lld-link")
    parser.add_argument("output",  type=Path, nargs="?", default=None,
                        help="Patched output path (default: patch input in place)")
    parser.add_argument("--version", required=True, choices=list(PATCHES), help="Game version")
    args = parser.parse_args()

    rich_key, rich_records, apply_safedisc, modules = PATCHES[args.version]

    cfg_path  = Path("config") / args.version / "config.yml"
    cfg       = yaml.safe_load(cfg_path.read_text())
    force_size = cfg.get("force_size")

    out = args.output if args.output is not None else args.input
    out.parent.mkdir(parents=True, exist_ok=True)

    data = bytearray(args.input.read_bytes())
    pe   = pefile.PE(data=data)

    insert_rich_header(pe, rich_key, rich_records)
    zero_code_section_padding(pe)
    apply_safedisc(pe, cfg, out.parent, modules)

    data[:] = pe.write()
    if force_size:
        print(f"size is {hex(len(data))}, expanding to {hex(force_size)}")
        data += b'\0' * (force_size - len(data))
    pe.close()

    out.write_bytes(data)


if __name__ == "__main__":
    main()
