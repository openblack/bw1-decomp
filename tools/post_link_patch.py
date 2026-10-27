#!/usr/bin/env python3

"""
Post-link patch script.
Applies version-specific binary fixups to the relinked executable,
producing the final output that is verified against build.sha1.

Usage (called by ninja automatically):
  python3 tools/post_link_patch.py --version BW1W100 <input.exe> <output.exe>
"""

import argparse
import base64
import json
import struct
import zlib
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
    IMPORT_VS2002 = 0x0019  # VS2002 (7.0) import library record
    UTC70_C      = 0x001C  # cl.exe C (VS2002 .NET, build 9466)
    UTC70_CPP    = 0x001D  # cl.exe C++ (VS2002 .NET, build 9466)
    ALIASOBJ70   = 0x0027  # aliasobj.exe (VS2002 7.0)
    LINKER70     = 0x003D  # link.exe (VS2002 .NET, build 9466)
    EXP70        = 0x003F  # export record (VS2002 .NET, build 9466)
    MASM70       = 0x0040  # ml.exe (VS2002 .NET, build 9466)
    CVTRES70     = 0x0045  # cvtres.exe (VS2002 .NET, build 9466)


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
# before IMAGE_NT_HEADERS (observed consistently across BW1W100 and BW1W120).
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

# Per-title dword stamped at the end of the SafeDisc mastering tail tag (see
# exe_tail_tag): constant across all four B&W masterings, differs per title
# (MechWarrior 4 has a different value).
SAFEDISC_TITLE_STAMP = 0x81444BA5

# Two timestamps per shipped image: the link time the debug directory records,
# and the .pdb creation time in the CodeView record it names. SafeDisc Cleaner
# overwrote the PE header's copy of 1.10's link time with its author handle (see
# apply_BW1W110_patch_safedisc_cleaner), leaving the debug directory as the only
# place it survives; 1.20's is the same instant as config.yml's timestamp.
BW1W110_LINK_TIME = datetime.fromisoformat('2001-06-26T15:07:58+00:00')
BW1W110_PDB_TIME = datetime.fromisoformat('2001-06-04T14:50:17+00:00')
BW1W120_LINK_TIME = datetime.fromisoformat('2002-06-18T06:13:22+00:00')
BW1W120_PDB_TIME = datetime.fromisoformat('2002-05-27T11:24:14+00:00')
BW1W130_LINK_TIME = datetime.fromisoformat('2003-03-06T21:30:42+00:00')

# The CodeView record an IMAGE_DEBUG_DIRECTORY of type IMAGE_DEBUG_TYPE_CODEVIEW
# points at: a reference to the (unshipped) .pdb rather than debug info itself.
# MSVC 6 leaves it at the end of the file, outside any section; lld-link emits
# the newer RSDS / CV_INFO_PDB70 form instead, so we write this one ourselves.
# Followed by PdbFileName, a NUL-terminated ASCII path.
__CV_INFO_PDB20_format__ = ('CV_INFO_PDB20', [
    '4s,CvSignature',  # always b'NB10'
    'I,Offset',        # 0 when the debug info lives in a separate .pdb
    'I,Signature',     # the .pdb's creation time, as time_t
    'I,Age',           # bumped by every incremental link
])


# 1.30 has two reserved slots after the Rich header where every earlier version has three.
RICH_RESERVED_SLOTS = {"BW1W130": 2}


def rich_header_size(records):
    return len(RICH_PREAMBLE) + len(records) * RICH_RECORD_SIZE + len(RICH_TRAILER)


def pe_offset_after_rich_header(records, reserved_slots=RICH_HEADER_RESERVED_SLOTS):
    return LLDLINK_STUB_SIZE + rich_header_size(records) + reserved_slots * RICH_RECORD_SIZE


# Version-specific Rich header data, decoded from each original exe.
# The key is a checksum link.exe computes from the binary content at link time.

BW1W100_RICH_KEY = 0x1B5AC95C   # extracted from original exe at offset 0x11c

BW1W100_RICH_RECORDS = [
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

BW1W110_RICH_KEY = 0xEA105BED   # extracted from original exe at offset 0x124
BW1W110_RICH_RECORDS = [
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

BW1W120_RICH_KEY = 0x0A8EE120   # extracted from original exe at offset 0x124
BW1W120_RICH_RECORDS = [
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


BW1W130_RICH_KEY = 0x10EE403D   # extracted from original exe at offset 0x134
BW1W130_RICH_RECORDS = [
    RichRecord(RichProductID.UTC12_C,      8168,   1),
    RichRecord(RichProductID.UTC12_C,      8447,  23),
    RichRecord(RichProductID.UTC70_CPP,    9178,   1),
    RichRecord(RichProductID.ALIAS_OBJ,    7291,  14),
    RichRecord(RichProductID.MASM613,      7299,  43),
    RichRecord(RichProductID.UTC70_C,      9178,   1),
    RichRecord(RichProductID.IMPORT_VS2002, 9210,  6),
    RichRecord(RichProductID.UTC12_C,      8799,  35),
    RichRecord(RichProductID.UTC12_CPP,    8799,   7),
    RichRecord(RichProductID.UTC12_CPP,    8047,  26),
    RichRecord(RichProductID.UTC12_C,      8047, 202),
    RichRecord(RichProductID.UTC12_CPP,    8168,  12),
    RichRecord(RichProductID.LINKER600,    8168,   2),
    RichRecord(RichProductID.LINKER600SP5, 8034,  21),
    RichRecord(RichProductID.IMPORT,          0, 588),
    RichRecord(RichProductID.UTC12_CPP,    8447,   2),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.UTC12_CPP,    8966, 645),
    RichRecord(RichProductID.IMPORT_OLD,      0,   7),
    RichRecord(RichProductID.LINKER600,    8447,  28),
]


BW1WCI_LHAUDIO_RICH_KEY = 0x07EFD270   # extracted from original dll at offset 0xf4
BW1WCI_LHAUDIO_RICH_SLOTS = 1
BW1WCI_LHAUDIO_RICH_RECORDS = [
    RichRecord(RichProductID.ALIAS_OBJ,    7291,   2),
    RichRecord(RichProductID.UTC12_CPP,    8797,   8),
    RichRecord(RichProductID.MASM613,      7299,  30),
    RichRecord(RichProductID.UTC12_C,      8797, 119),
    RichRecord(RichProductID.UTC12_C,      8799,   9),
    RichRecord(RichProductID.UTC70_CPP,    8830,   1),
    RichRecord(RichProductID.IMPORT_OLD,      0,   1),
    RichRecord(RichProductID.LINKER600SP5, 8034,  11),
    RichRecord(RichProductID.IMPORT,          0, 142),
    RichRecord(RichProductID.UTC12_CPP,    8799,  22),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.LINKER600,    8447,  37),
]

BW1WCI_LHMULTIPLAYER_RICH_KEY = 0xE12299CA   # extracted from original dll at offset 0xec
BW1WCI_LHMULTIPLAYER_RICH_SLOTS = 3
BW1WCI_LHMULTIPLAYER_RICH_RECORDS = [
    RichRecord(RichProductID.UTC12_C,      8799,  23),
    RichRecord(RichProductID.ALIAS_OBJ,    7291,   3),
    RichRecord(RichProductID.UTC12_CPP,    8047,  10),
    RichRecord(RichProductID.MASM613,      7299,  23),
    RichRecord(RichProductID.UTC12_C,      8047, 144),
    RichRecord(RichProductID.UTC12_C,      8447,  12),
    RichRecord(RichProductID.UTC12_CPP,    8168,   3),
    RichRecord(RichProductID.LINKER600SP5, 8034,  11),
    RichRecord(RichProductID.IMPORT,          0, 182),
    RichRecord(RichProductID.UTC12_CPP,    8966,  28),
    RichRecord(RichProductID.LINKER600,    8447,   3),
]

BW1W100_LHAUDIO_RICH_KEY = 0x52ED8B05   # extracted from original dll at offset 0xec
BW1W100_LHAUDIO_RICH_SLOTS = 2
BW1W100_LHAUDIO_RICH_RECORDS = [
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

BW1W100_LHLOG_RICH_KEY = 0xF22BBA49   # extracted from original dll at offset 0xdc
BW1W100_LHLOG_RICH_SLOTS = 3
BW1W100_LHLOG_RICH_RECORDS = [
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

BW1W100_LHMULTIPLAYER_RICH_KEY = 0x741C518F   # extracted from original dll at offset 0xec
BW1W100_LHMULTIPLAYER_RICH_SLOTS = 2
BW1W100_LHMULTIPLAYER_RICH_RECORDS = [
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

BW1W100_LHDIALOG_RICH_KEY = 0xEEAE27EE   # extracted from original dll at offset 0xcc
BW1W100_LHDIALOG_RICH_SLOTS = 1
BW1W100_LHDIALOG_RICH_RECORDS = [
    RichRecord(RichProductID.LINKER600SP5, 8034,   2),
    RichRecord(RichProductID.MASM613,      7299,   1),
    RichRecord(RichProductID.UTC12_C,      8447,   4),
    RichRecord(RichProductID.IMPORT,          0, 165),
    RichRecord(RichProductID.UTC12_CPP,    8447,  13),
    RichRecord(RichProductID.CVTRES,       1735,   1),
    RichRecord(RichProductID.LINKER600,    8447,   6),
]

BW1W110_LHAUDIO_RICH_KEY = BW1W100_LHAUDIO_RICH_KEY
BW1W110_LHAUDIO_RICH_SLOTS = BW1W100_LHAUDIO_RICH_SLOTS
BW1W110_LHAUDIO_RICH_RECORDS = BW1W100_LHAUDIO_RICH_RECORDS

BW1W110_LHLOG_RICH_KEY = BW1W100_LHLOG_RICH_KEY
BW1W110_LHLOG_RICH_SLOTS = BW1W100_LHLOG_RICH_SLOTS
BW1W110_LHLOG_RICH_RECORDS = BW1W100_LHLOG_RICH_RECORDS

BW1W110_LHMULTIPLAYER_RICH_KEY = BW1W100_LHMULTIPLAYER_RICH_KEY
BW1W110_LHMULTIPLAYER_RICH_SLOTS = BW1W100_LHMULTIPLAYER_RICH_SLOTS
BW1W110_LHMULTIPLAYER_RICH_RECORDS = BW1W100_LHMULTIPLAYER_RICH_RECORDS

BW1W110_LHDIALOG_RICH_KEY = BW1W100_LHDIALOG_RICH_KEY
BW1W110_LHDIALOG_RICH_SLOTS = BW1W100_LHDIALOG_RICH_SLOTS
BW1W110_LHDIALOG_RICH_RECORDS = BW1W100_LHDIALOG_RICH_RECORDS

BW1W120_LHAUDIO_RICH_KEY = BW1W100_LHAUDIO_RICH_KEY
BW1W120_LHAUDIO_RICH_SLOTS = BW1W100_LHAUDIO_RICH_SLOTS
BW1W120_LHAUDIO_RICH_RECORDS = BW1W100_LHAUDIO_RICH_RECORDS

BW1W120_LHLOG_RICH_KEY = 0xE4859AE9   # extracted from original dll at offset 0xdc
BW1W120_LHLOG_RICH_SLOTS = 3
BW1W120_LHLOG_RICH_RECORDS = [
    RichRecord(RichProductID.ALIASOBJ70,    9162,   2),
    RichRecord(RichProductID.MASM70,        9466,  23),
    RichRecord(RichProductID.UTC70_C,       9466, 126),
    RichRecord(RichProductID.IMPORT_VS2002, 9210,  11),
    RichRecord(RichProductID.IMPORT,           0, 131),
    RichRecord(RichProductID.UTC70_CPP,     9466,  18),
    RichRecord(RichProductID.EXP70,         9466,   1),
    RichRecord(RichProductID.CVTRES70,      9466,   1),
    RichRecord(RichProductID.LINKER70,      9466,   1),
]

BW1W120_LHMULTIPLAYER_RICH_KEY = 0x40924540   # extracted from original dll at offset 0xec
BW1W120_LHMULTIPLAYER_RICH_SLOTS = 3
BW1W120_LHMULTIPLAYER_RICH_RECORDS = [
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

BW1W120_LHDIALOG_RICH_KEY = BW1W100_LHDIALOG_RICH_KEY
BW1W120_LHDIALOG_RICH_SLOTS = BW1W100_LHDIALOG_RICH_SLOTS
BW1W120_LHDIALOG_RICH_RECORDS = BW1W100_LHDIALOG_RICH_RECORDS


# Rich header write helpers

def write_bytes(pe, offset, data):
    pe.__data__[offset:offset + len(data)] = data


def mark_imports_bound(pe):
    """SafeDisc stamps every import descriptor as bound (TimeDateStamp and
    ForwarderChain 0xFFFFFFFF), with no bound import directory and the IAT left
    unbound."""
    # pefile writes its parsed descriptors back over the raw bytes, so stamp
    # those.
    if not hasattr(pe, 'DIRECTORY_ENTRY_IMPORT'):
        pe.parse_data_directories(directories=[pefile.DIRECTORY_ENTRY['IMAGE_DIRECTORY_ENTRY_IMPORT']])
    for entry in pe.DIRECTORY_ENTRY_IMPORT:
        entry.struct.TimeDateStamp = 0xFFFFFFFF
        entry.struct.ForwarderChain = 0xFFFFFFFF


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
    # updates section PointerToRawData, data directories, etc. automatically;
    # insert_header_padding moves the free-floating header bytes pefile does not
    # track (e.g. exestr comments).
    pe.DOS_HEADER.e_lfanew += gap
    for structure in pe.__structures__:
        if 0 < structure.get_file_offset() < 0x1000:
            structure.set_file_offset(structure.get_file_offset() + gap)
    insert_header_padding(pe, rich_start, gap)

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

    # Once the import table is carved into real .idata$N sub-sections, lld-link's
    # locateImportTables() sets DataDirectory[IAT] from our .idata$5 chunk. The
    # SafeDisc decryptor zeroed this directory in the decrypted image we match
    # against, so re-zero it here. (No-op for versions not yet carved.)
    iat_dir = find_directory(pe, 'IMAGE_DIRECTORY_ENTRY_IAT')
    iat_dir.VirtualAddress = 0
    iat_dir.Size = 0

    # Point to .rdata
    # TODO: Why is this set to 0?
    pe.OPTIONAL_HEADER.BaseOfData = find_section_header(pe, '.rdata').get_PointerToRawData_adj()


# Two section headers SafeDisc inserts after the section table.
SAFEDISC_SECTION_BUMP = 0x50
# Bytes zeroed off the front of the first exestr comment.
EXESTR_PREFIX_ERASE = 24


def section_table_end(pe):
    return (pe.DOS_HEADER.e_lfanew + 4 + 20
            + pe.FILE_HEADER.SizeOfOptionalHeader
            + pe.FILE_HEADER.NumberOfSections * 40)


# We link ICC 5.0.115's cpu_disp_mt.obj; BW1 shipped the 5.0.1 beta's. The
# banner differs, as do ten code bytes below. 1.1 and 1.2 ship the same object.
CPU_DISP_EXESTR_SUBSTITUTION = (b"Version 5.0.1   Build 010525Z",
                                b"Version 5.0.1 Beta  Build 010214Z")


def substitute_exestr(pe, old, new):
    """Rewrite one exestr comment in the header padding, shifting the records after it."""
    ste = section_table_end(pe)
    soh = pe.OPTIONAL_HEADER.SizeOfHeaders
    blob = bytes(pe.__data__[ste:soh])
    at = blob.find(old)
    if at < 0:
        if blob.find(new) >= 0:
            return
        raise SystemExit(f"exestr comment {old!r} not found in the header padding")
    patched = blob[:at] + new + blob[at + len(old):]
    if len(patched.rstrip(b'\x00')) > soh - ste:
        raise SystemExit("exestr substitution overflows SizeOfHeaders")
    pe.__data__[ste:soh] = patched[:soh - ste]


# These seem to be differences in codegen between 5.0.115 build 010525Z and the
# 5.0.1 beta build 010214Z BW1 shipped. Offsets are from the object's .text, which
# 1.1 and 1.2 place at different addresses.
CPU_DISP_CODEGEN = (
    (0x003, b'\x83\xec\x08', b'\x83\xc4\xf8'),  # sub esp,8       -> add esp,-8
    (0x08A, b'\x89\x45\xfc', b'\x89\x45\xf8'),  # mov [ebp-4],eax -> mov [ebp-8],eax
    (0x08D, b'\x89\x55\xf8', b'\x89\x55\xfc'),  # mov [ebp-8],edx -> mov [ebp-4],edx
    (0x095, b'\xc7\x45\xfc', b'\xc7\x45\xf8'),  # mov [ebp-4],0   -> mov [ebp-8],0
    (0x09C, b'\xc7\x45\xf8', b'\xc7\x45\xfc'),  # mov [ebp-8],0   -> mov [ebp-4],0
    (0x0A3, b'\x8b\x55\xfc', b'\x8b\x55\xf8'),  # mov edx,[ebp-4] -> mov edx,[ebp-8]
    (0x0D0, b'\x8b\x55\xf8', b'\x8b\x55\xfc'),  # mov edx,[ebp-8] -> mov edx,[ebp-4]
    (0x0F7, b'\x8b\x55\xf8', b'\x8b\x55\xfc'),  # mov edx,[ebp-8] -> mov edx,[ebp-4]
    (0x138, b'\x8b\x55\xf8', b'\x8b\x55\xfc'),  # mov edx,[ebp-8] -> mov edx,[ebp-4]
)
BW1W110_CPU_DISP_TEXT = 0x008923C0
BW1W120_CPU_DISP_TEXT = 0x008A25B0


def call_rel32(target):
    """`call target`, encoded for the address it is placed at."""
    return lambda pe, address: b'\xe8' + ((target - (address + 5)) & 0xFFFFFFFF).to_bytes(4, 'little')


def call_indirect(slot):
    """`call [slot]`, an absolute indirect call such as through an import slot."""
    return lambda pe, address: b'\xff\x15' + slot.to_bytes(4, 'little')


def call_filler(target, filler):
    """1.30's six-byte padding run: `call target` and one byte of filler."""
    return lambda pe, address: call_rel32(target)(pe, address) + bytes([filler])


def marked(copy):
    """Code as 1.30's SafeDisc copied it into padding: it had already marked the import calls
    it redirects, so each `call [slot]` reads `81 15` instead of `ff 15`."""
    return copy.replace(b'\xff\x15', b'\x81\x15')


def jmp_run(target):
    """1.30's padding run up to the next 16-byte boundary: a copy of the bytes in front of
    `target` (see `marked`) whose last five are replaced by `jmp target`."""

    def encode(pe, address):
        end = (address | 0xF) + 1
        offset = pe.get_offset_from_rva(target - pe.OPTIONAL_HEADER.ImageBase)
        copy = marked(bytes(pe.__data__[offset - (end - address):offset - 5]))
        return copy + b'\xe9' + ((target - end) & 0xFFFFFFFF).to_bytes(4, 'little')

    return encode


def copy_run(source):
    """1.30's padding run up to the next 16-byte boundary: a plain copy of the bytes in front
    of `source` (see `marked`), with no `jmp`."""

    def encode(pe, address):
        end = (address | 0xF) + 1
        offset = pe.get_offset_from_rva(source - pe.OPTIONAL_HEADER.ImageBase)
        return marked(bytes(pe.__data__[offset - (end - address):offset]))

    return encode


# SafeDisc left calls in inter-function padding that cl6 fills with nops. Absolute
# addresses; each call is restored over nops of its own length, and rows are skipped
# where it is already present (the owning unit is still linked from its split object).
BW1W120_SAFEDISC_CALLS = (
    (0x00426B3B, call_rel32(0x00401879)),  # Audio
    (0x00426C9B, call_rel32(0x00401879)),  # Audio
    (0x004271FA, call_indirect(0x008A98A8)),  # Audio: __imp__waveInClose@4
    (0x004282AB, call_rel32(0x00401879)),  # Audio
    (0x0043641B, call_rel32(0x00401879)),  # Base
    (0x0043681B, call_rel32(0x00401879)),  # Base
    (0x0043686B, call_rel32(0x00401879)),  # Base
    (0x00436C2A, call_indirect(0x008A9114)),  # Base: __imp__ImmReleaseContext@4
    (0x004370CB, call_rel32(0x00401879)),  # Base
    (0x0044ABCA, call_indirect(0x008A9190)),  # CameraModeDance: __imp__RemoveDirectoryA@4
    (0x0044AC8B, call_rel32(0x00401879)),  # CameraModeDance
    (0x0044ACCA, call_indirect(0x008A96C4)),  # CameraModeDance: __imp__LHWaveGetQMixerDirectSoundObject...
    (0x0044D89B, call_rel32(0x00401879)),  # CameraModeFollowHeading
    (0x00460ECA, call_indirect(0x008A9310)),  # CameraModePath
    (0x00460F4B, call_rel32(0x00401879)),  # CameraModePath
    (0x0046113B, call_rel32(0x00401879)),  # CameraModeScript
    (0x004611FB, call_rel32(0x00401879)),  # CameraModeScript
    (0x0046126A, call_indirect(0x008A96F4)),  # CameraModeScript: __imp__LHAtmosProcess...
    (0x004616EA, call_indirect(0x008A9958)),  # CameraModeScript
    (0x004619AA, call_indirect(0x008A9970)),  # CameraModeScript
    (0x00461B7B, call_rel32(0x00401879)),  # CameraModeScript
    (0x0046B7AB, call_rel32(0x00401879)),  # Container
    (0x00471ADB, call_rel32(0x00401879)),  # CPUCheck
    (0x004C4C5B, call_rel32(0x00401879)),  # CreatureAttitudeToCreature
    (0x004C4F5A, call_indirect(0x008A900C)),  # CreatureAttitudeToCreature: __imp__GetUserNameA@4
    (0x004C4FAA, call_indirect(0x008A9888)),  # CreatureAttitudeToCreature: __imp__mmioAscend@4
    (0x004C502B, call_rel32(0x00401879)),  # CreatureDecision
    (0x004C765B, call_rel32(0x00401879)),  # CreatureDump
    (0x004C7E2B, call_rel32(0x00401879)),  # CreatureEmpathy
    (0x004C80EA, call_indirect(0x008A9328)),  # CreatureEmpathy: __imp_LHEditBox...
    (0x004C812A, call_indirect(0x008A901C)),  # CreatureEmpathy: __imp__TrackMouseEvent@4
    (0x004C840B, call_rel32(0x00401879)),  # CreatureEmpathy
    (0x004CE31B, call_rel32(0x00401879)),  # CreatureLeash
    (0x004CE6DB, call_rel32(0x00401879)),  # CreatureLeash
    (0x004CF05A, call_indirect(0x008A991C)),  # CreatureLeash: __imp__ioctlsocket@4
    (0x004CF09A, call_indirect(0x008A935C)),  # CreatureLeash: __imp_??0LHSPrintf@@QAA@PADZZ
    (0x004CF0DA, call_indirect(0x008A9124)),  # CreatureLeash: __imp__ImmGetCandidateListA@4
    (0x004CF11A, call_indirect(0x008A905C)),  # CreatureLeash: __imp__GetDeviceCaps@4
    (0x004CF1EB, call_rel32(0x00401879)),  # CreatureLessonChooser
    (0x004CF21B, call_rel32(0x00401879)),  # CreatureLessonChooser
    (0x004CF8EB, call_rel32(0x00401879)),  # CreatureLessonChooser
    (0x004CFC6A, call_indirect(0x008A9328)),  # CreatureLessonChooser: __imp_LHEditBox...
    (0x004CFC7A, call_indirect(0x008A901C)),  # CreatureLessonChooser: __imp__TrackMouseEvent@4
    (0x004CFE8A, call_indirect(0x008A97AC)),  # CreatureLessonChooser: __imp__ShellExecuteA@4
    (0x004D021B, call_rel32(0x00401879)),  # CreatureLessonChooser
    (0x004D02BB, call_rel32(0x00401879)),  # CreatureLessonChooser
    (0x004D293B, call_rel32(0x00401879)),  # CreatureMentalActionTests
    (0x004D2A1A, call_indirect(0x008A93CC)),  # CreatureMentalActionTests: __imp___0LHVersion__QAE_PAULHVersionBlock___Z@4
    (0x004D2C7B, call_rel32(0x00401879)),  # CreatureMentalActionTests
    (0x004D342A, call_indirect(0x008A911C)),  # CreatureMentalActionTests: __imp__ImmSetCompositionStringA@4
    (0x004D968B, call_rel32(0x00401879)),  # CreatureMentalBeliefs
    (0x004DA00A, call_indirect(0x008A9944)),  # CreatureMentalBeliefs: __imp__BinkNextFrame@4
    (0x004DA5DA, call_indirect(0x008A9970)),  # CreatureMentalBeliefs: __imp__GetOpenFileNameA@4
    (0x004DA6EB, call_rel32(0x00401879)),  # CreatureMentalBeliefs
    (0x004DA6FB, call_rel32(0x00401879)),  # CreatureMentalBeliefs
    (0x004DA8AA, call_indirect(0x008A9028)),  # CreatureMentalBeliefs: __imp__DirectDrawEnumerateA@4
    (0x004DADBA, call_indirect(0x008A9124)),  # CreatureMentalBeliefs: __imp__ImmGetCandidateListA@4
    (0x004DE8DB, call_rel32(0x00401879)),  # CreatureMentalDesireSourceValues
    (0x004DE94A, call_indirect(0x008A9328)),  # CreatureMentalDesireSourceValues: __imp_LHEditBox...
    (0x004DE96A, call_indirect(0x008A901C)),  # CreatureMentalDesireSourceValues: __imp__TrackMouseEvent@4
    (0x004DE9AA, call_indirect(0x008A97AC)),  # CreatureMentalDesireSourceValues: __imp__ShellExecuteA@4
    (0x004DEC5A, call_indirect(0x008A998C)),  # CreatureMentalDesireSourceValues: __imp_GetNoDialUpConnections...
    (0x004DEC9A, call_indirect(0x008A920C)),  # CreatureMentalDesireSourceValues: __imp__SetEndOfFile@4
    (0x004DF08B, call_rel32(0x00401879)),  # CreatureMentalDesireTests
    (0x004DF26B, call_rel32(0x00401879)),  # CreatureMentalEditor
    (0x004E028B, call_rel32(0x00401879)),  # CreatureMentalLearn
    (0x004E0FBB, call_rel32(0x00401879)),  # CreatureMentalLearn
    (0x004E152A, call_indirect(0x008A9024)),  # CreatureMentalLearn: __imp__DirectDrawCreateEx@4
    (0x004E2D0B, call_rel32(0x00401879)),  # CreatureMentalMisc
    (0x004E35BB, call_rel32(0x00401879)),  # CreatureMentalObjectMultipliers
    (0x004F036B, call_rel32(0x00401879)),  # CreaturePlan
    (0x004F11AB, call_rel32(0x00401879)),  # CreaturePlan
    (0x004F126B, call_rel32(0x00401879)),  # CreaturePlan
    (0x004F12AB, call_rel32(0x00401879)),  # CreaturePlan
    (0x004F1B5B, call_rel32(0x00401879)),  # CreaturePlan
    (0x004F218B, call_rel32(0x00401879)),  # CreaturePreviousActionContext
    (0x004F231B, call_rel32(0x00401879)),  # CreaturePreviousContext
    (0x0052DB8B, call_rel32(0x00401879)),  # Fixed
    (0x0052E3FA, call_indirect(0x008A901C)),  # Fixed: __imp__TrackMouseEvent@4
    (0x0052EE0A, call_indirect(0x008A97AC)),  # Fixed: __imp__ShellExecuteA@4
    (0x0052EFBB, call_rel32(0x00401879)),  # Fixed
    (0x0052F0CB, call_rel32(0x00401879)),  # Fixed
    (0x0052F1EB, call_rel32(0x00401879)),  # Fixed
    (0x0052F50B, call_rel32(0x00401879)),  # Fixed
    (0x005649EB, call_rel32(0x004017F9)),  # GameStats
    (0x00564ADA, call_indirect(0x008A90A0)),  # GameStats: __imp_?GetCurrentPosition@CImmMouse@@UAEHAAJ0@Z
    (0x00564EDB, call_rel32(0x004017F9)),  # GameStats
    (0x00564EFB, call_rel32(0x004017F9)),  # GameStats
    (0x00564F1B, call_rel32(0x004017F9)),  # GameStats
    (0x00564F3B, call_rel32(0x004017F9)),  # GameStats
    (0x00564F5B, call_rel32(0x004017F9)),  # GameStats
    (0x00564F7B, call_rel32(0x004017F9)),  # GameStats
    (0x00564F9B, call_rel32(0x004017F9)),  # GameStats
    (0x00564FBB, call_rel32(0x004017F9)),  # GameStats
    (0x00564FDB, call_rel32(0x004017F9)),  # GameStats
    (0x0056535A, call_indirect(0x008A903C)),  # GameStats: __imp__DirectXSetupGetVersion
    (0x0056544B, call_rel32(0x004017F9)),  # GameStats
    (0x0056A26B, call_rel32(0x004017F9)),  # GameStats
    (0x0056A36A, call_indirect(0x008A901C)),  # GameStats: __imp__TrackMouseEvent@4
    (0x0056A38A, call_indirect(0x008A97AC)),  # GameStats: __imp__ShellExecuteA@4
    (0x0056A3AA, call_indirect(0x008A9980)),  # GameStats: __imp_??0Dialup@@QAE@XZ
    (0x0056F9DB, call_rel32(0x004017F9)),  # GameThing
    (0x0056FB0B, call_rel32(0x004017F9)),  # GameThing
    (0x005703CA, call_indirect(0x008A96E4)),  # GameThing: __imp__LHSampleSetVolume...
    (0x00578B0A, call_indirect(0x008A903C)),  # GestureSystem: __imp__DirectXSetupGetVersion
    (0x00578E1A, call_indirect(0x008A97B8)),  # GestureSystemData
    (0x00578E9A, call_indirect(0x008A9490)),  # GestureSystemData
    (0x00578F2B, call_rel32(0x004017F9)),  # GestureSystemData
    (0x0057901B, call_rel32(0x004017F9)),  # GestureSystemData
    (0x005799FB, call_rel32(0x004017F9)),  # GestureSystemDataList
    (0x00579AAA, call_indirect(0x008A9978)),  # GestureSystemDataList: __imp__CoFileTimeToDosDateTime@12
    (0x00579AEA, call_indirect(0x008A9180)),  # GestureSystemDataList: __imp__EnterCriticalSection@4
    (0x00583E6B, call_rel32(0x004017F9)),  # GJProperty
    (0x005854AA, call_indirect(0x008A9034)),  # GJProperty: __imp__DirectInputCreateA@4
    (0x0058600A, call_indirect(0x008A90A0)),  # GJProperty: __imp_?GetCurrentPosition@CImmMouse@@UAEHAAJ0@Z
    (0x00586BAB, call_rel32(0x004017F9)),  # GJProperty
    (0x00588C7A, call_indirect(0x008A903C)),  # GJProperty: __imp__DirectXSetupGetVersion
    (0x0058A10B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058A6FB, call_rel32(0x004017F9)),  # GJProperty
    (0x0058A78A, call_indirect(0x008A97F8)),  # GJProperty: __imp__GetFocus@0
    (0x0058ACAB, call_rel32(0x004017F9)),  # GJProperty
    (0x0058AD3A, call_indirect(0x008A9540)),  # GJProperty: __imp____7LHConnection__6B_@4
    (0x0058B17B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058B20A, call_indirect(0x008A9978)),  # GJProperty: __imp__CoFileTimeToDosDateTime@12
    (0x0058B64B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058B6DA, call_indirect(0x008A9014)),  # GJProperty: __imp__RegSetValueExA@4
    (0x0058BB1B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058BBAA, call_indirect(0x008A9898)),  # GJProperty: __imp__timeSetEvent@4
    (0x0058BFEB, call_rel32(0x004017F9)),  # GJProperty
    (0x0058C35B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058C5CB, call_rel32(0x004017F9)),  # GJProperty
    (0x0058C5EB, call_rel32(0x004017F9)),  # GJProperty
    (0x0058D74B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058D90B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058DC6B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058DE0B, call_rel32(0x004017F9)),  # GJProperty
    (0x0058F7CB, call_rel32(0x004017F9)),  # GJProperty
    (0x005912FB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005914CB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059419A, call_indirect(0x008A9970)),  # GlobalGameList: __imp__GetOpenFileNameA@4
    (0x0059424B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005942FB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005943AB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059445B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059450B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005945BB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059466B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059472A, call_indirect(0x008A9028)),  # GlobalGameList: __imp__DirectDrawEnumerateA@4
    (0x005947EB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059489B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059495A, call_indirect(0x008A9034)),  # GlobalGameList: __imp__DirectInputCreateA@4
    (0x00594A1A, call_indirect(0x008A9088)),  # GlobalGameList: __imp___GetNumEffectsFromIFR_CImmProject__QAEHXZ@4
    (0x00594ADB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00594B8B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00594C3B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00594CEB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00594D9B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00594E4B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00594F0B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00594FCB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059508B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059514B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059520B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005952CB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059537B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059543B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005954FB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005955AB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059566B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x0059572B, call_rel32(0x004017F9)),  # GlobalGameList
    (0x005957EB, call_rel32(0x004017F9)),  # GlobalGameList
    (0x00595ADA, call_indirect(0x008A903C)),  # GlobalGameList: __imp__DirectXSetupGetVersion
    (0x00595BFA, call_indirect(0x008A97C4)),  # GlobalGameList: __imp__LoadImageA@4
    (0x00606D5B, call_rel32(0x004017F9)),  # MobileObject
    (0x00606ECA, call_indirect(0x008A9260)),  # MobileObject: __imp__GetLocaleInfoW@16
    (0x0060714B, call_rel32(0x004017F9)),  # MobileObject
    (0x0060755A, call_indirect(0x008A9774)),  # MobileObject: __imp__LHGlobalSwitch_LH_AudioSystem...
    (0x006079EB, call_rel32(0x004017F9)),  # MobileObject
    (0x00607BEB, call_rel32(0x004017F9)),  # MobileObject
    (0x0060812B, call_rel32(0x004017F9)),  # MobileObject
    (0x006083BB, call_rel32(0x004017F9)),  # MobileObject
    (0x0060843A, call_indirect(0x008A9960)),  # MobileObject: __imp__BinkGetSummary@8
    (0x006362FB, call_rel32(0x004017F9)),  # Object
    (0x0063673B, call_rel32(0x004017F9)),  # Object
    (0x006377BB, call_rel32(0x004017F9)),  # Object
    (0x006377DB, call_rel32(0x004017F9)),  # Object
    (0x006378DB, call_rel32(0x004017F9)),  # Object
    (0x00638AFB, call_rel32(0x004017F9)),  # Object
    (0x00638C2B, call_rel32(0x004017F9)),  # Object
    (0x00639B6B, call_rel32(0x004017F9)),  # Object
    (0x00639EAB, call_rel32(0x004017F9)),  # Object
    (0x0063A7FB, call_rel32(0x004017F9)),  # Object
    (0x0063AB7B, call_rel32(0x004017F9)),  # Object3D
    (0x0063B0AB, call_rel32(0x004017F9)),  # Object3D
    (0x0063B8CB, call_rel32(0x004017F9)),  # OnMapTrajectory
)


# 1.30's SafeDisc left jumps instead: each run of padding nops up to the next 16-byte
# boundary ends in a `jmp` back to the start of an earlier run (see `jmp_run`), or repeats
# the bytes in front of one (see `copy_run`).
BW1W130_SAFEDISC_CALLS = (
    (0x00426B13, jmp_run(0x00426AB7)),  # Audio
    (0x00426B3B, call_rel32(0x00403C49)),  # Audio
    (0x00426B75, jmp_run(0x00426B3B)),  # Audio
    (0x00426B96, jmp_run(0x00426B75)),  # Audio
    (0x00426C9B, call_rel32(0x00403C49)),  # Audio
    (0x00426F96, jmp_run(0x00426C9B)),  # Audio
    (0x00426FDA, jmp_run(0x00426F96)),  # Audio
    (0x00427076, jmp_run(0x00426FD1)),  # Audio
    (0x004271FA, call_indirect(0x008AE060)),  # Audio
    (0x00427453, jmp_run(0x004271FA)),  # Audio
    (0x00427582, copy_run(0x00427453)),  # Audio
    (0x004279B5, jmp_run(0x00427582)),  # Audio
    (0x00427B54, jmp_run(0x004279B5)),  # Audio
    (0x00427C96, jmp_run(0x00427B54)),  # Audio
    (0x00428189, copy_run(0x00427C96)),  # Audio
    (0x00428225, copy_run(0x00428189)),  # Audio
    (0x00428248, copy_run(0x00428225)),  # Audio
    (0x004282AB, call_rel32(0x00403C49)),  # Audio
    (0x00428305, copy_run(0x004282AB)),  # Audio
    (0x00428611, jmp_run(0x00428305)),  # Audio
    (0x00428671, jmp_run(0x00428611)),  # Audio
    (0x004286D1, jmp_run(0x00428671)),  # Audio
    (0x00428701, copy_run(0x004286D1)),  # Audio
    (0x00428731, jmp_run(0x00428701)),  # Audio
    (0x004287B5, jmp_run(0x00428731)),  # Audio
    (0x004287F2, jmp_run(0x004287B5)),  # Audio
    (0x00428812, jmp_run(0x004287F2)),  # Audio
    (0x0043641B, call_rel32(0x00403C49)),  # Base
    (0x00436443, copy_run(0x0043641B)),  # Base
    (0x004366E5, copy_run(0x00436443)),  # Base
    (0x00436759, jmp_run(0x004366E5)),  # Base
    (0x004367C9, copy_run(0x00436759)),  # Base
    (0x0043681B, call_rel32(0x00403C49)),  # Base
    (0x0043686B, call_rel32(0x00403C49)),  # Base
    (0x004369C1, copy_run(0x0043686B)),  # Base
    (0x00436AA1, copy_run(0x004369C1)),  # Base
    (0x00436AE6, copy_run(0x00436AA1)),  # Base
    (0x00436B12, jmp_run(0x00436AE6)),  # Base
    (0x00436B72, jmp_run(0x00436B12)),  # Base
    (0x00436BF5, jmp_run(0x00436B72)),  # Base
    (0x00436C2A, call_indirect(0x008AE01C)),  # Base
    (0x00436C52, jmp_run(0x00436C2A)),  # Base
    (0x00437089, copy_run(0x00436C52)),  # Base
    (0x004370CB, call_rel32(0x00403C49)),  # Base
    (0x00437113, jmp_run(0x004370CB)),  # Base
    (0x0044B338, jmp_run(0x0044B2CB)),  # CameraModeDance
    (0x0044B3A6, copy_run(0x0044B338)),  # CameraModeDance
    (0x0044B3DA, jmp_run(0x0044B3A6)),  # CameraModeDance
    (0x0044B42B, call_rel32(0x00403C49)),  # CameraModeDance
    (0x0044B46A, call_indirect(0x008AE664)),  # CameraModeDance
    (0x0044B492, jmp_run(0x0044B46A)),  # CameraModeDance
    (0x0044E03B, call_rel32(0x00403C49)),  # CameraModeFollowHeading
    (0x0044E0B6, jmp_run(0x0044E03B)),  # CameraModeFollowHeading
    (0x0044E4FA, jmp_run(0x0044E0B6)),  # CameraModeFollowHeading
    (0x0044E5F7, jmp_run(0x0044E4F6)),  # CameraModeFollowHeading
    (0x00461C0B, call_rel32(0x00403C49)),  # CameraModeScript
    (0x00461C45, copy_run(0x00461C0B)),  # CameraModeScript
    (0x00461D06, copy_run(0x00461C43)),  # CameraModeScript
    (0x00461D3A, call_indirect(0x008AE290)),  # CameraModeScript
    (0x00461D78, jmp_run(0x00461D3A)),  # CameraModeScript
    (0x00461E32, jmp_run(0x00461D78)),  # CameraModeScript
    (0x00461EF2, jmp_run(0x00461E32)),  # CameraModeScript
    (0x004621BA, call_indirect(0x008AE7C4)),  # CameraModeScript
    (0x0046247A, call_indirect(0x008AE32C)),  # CameraModeScript
    (0x004624B7, jmp_run(0x0046247A)),  # CameraModeScript
    (0x00462521, copy_run(0x004624B7)),  # CameraModeScript
    (0x00462548, copy_run(0x00462521)),  # CameraModeScript
    (0x00462573, jmp_run(0x00462548)),  # CameraModeScript
    (0x00462607, copy_run(0x00462573)),  # CameraModeScript
    (0x0046264B, call_rel32(0x00403C49)),  # CameraModeScript
    (0x00463399, jmp_run(0x00462FC1)),  # CarriedObject
    (0x004633E4, copy_run(0x00463399)),  # CarriedObject
    (0x0046C27B, call_rel32(0x00403C49)),  # Container
    (0x0046C2A5, copy_run(0x0046C27B)),  # Container
    (0x0046C429, copy_run(0x0046C2A3)),  # Container
    (0x0046C469, copy_run(0x0046C429)),  # Container
    (0x00473DB2, jmp_run(0x00473D55)),  # CPUCheck
    (0x00473E1B, call_rel32(0x00403C49)),  # CPUCheck
    (0x00473E48, copy_run(0x00473E1B)),  # CPUCheck
    (0x00473F14, jmp_run(0x00473E48)),  # CPUCheck
    (0x004749E2, copy_run(0x00473F14)),  # CPUCheck
    (0x00474A06, copy_run(0x004749E2)),  # CPUCheck
    (0x004C6FC3, copy_run(0x004C6F65)),  # CreatureAttitudeToCreature
    (0x004C6FEB, call_rel32(0x00403C49)),  # CreatureAttitudeToCreature
    (0x004C7006, copy_run(0x004C6FEB)),  # CreatureAttitudeToCreature
    (0x004C70A5, copy_run(0x004C7006)),  # CreatureAttitudeToCreature
    (0x004C72EA, call_indirect(0x008AE814)),  # CreatureAttitudeToCreature
    (0x004C733A, call_indirect(0x008AE080)),  # CreatureAttitudeToCreature
    (0x004C7393, jmp_run(0x004C733A)),  # CreatureDecision
    (0x004C73BB, call_rel32(0x00403C49)),  # CreatureDecision
    (0x004C74B5, jmp_run(0x004C73BB)),  # CreatureDecision
    (0x004C7605, copy_run(0x004C74B3)),  # CreatureDecision
    (0x004C7885, copy_run(0x004C7605)),  # CreatureDecision
    (0x004C99C3, copy_run(0x004C9966)),  # CreatureDump
    (0x004C99EB, call_rel32(0x00403C49)),  # CreatureDump
    (0x004C9A51, jmp_run(0x004C99EB)),  # CreatureDump
    (0x004C9C45, copy_run(0x004C9A51)),  # CreatureDump
    (0x004C9D68, copy_run(0x004C9C45)),  # CreatureDump
    (0x004C9DA4, copy_run(0x004C9D68)),  # CreatureDump
    (0x004C9DE4, copy_run(0x004C9DA4)),  # CreatureDump
    (0x004C9E24, copy_run(0x004C9DE4)),  # CreatureDump
    (0x004C9E64, copy_run(0x004C9E24)),  # CreatureDump
    (0x004C9EA4, copy_run(0x004C9E64)),  # CreatureDump
    (0x004C9EE4, copy_run(0x004C9EA4)),  # CreatureDump
    (0x004C9F24, copy_run(0x004C9EE4)),  # CreatureDump
    (0x004C9F64, copy_run(0x004C9F24)),  # CreatureDump
    (0x004C9FA4, copy_run(0x004C9F64)),  # CreatureDump
    (0x004C9FE4, copy_run(0x004C9FA4)),  # CreatureDump
    (0x004CA103, copy_run(0x004C9FE4)),  # CreatureDump
    (0x004CA132, jmp_run(0x004CA103)),  # CreatureDump
    (0x004CA193, jmp_run(0x004CA132)),  # CreatureEmpathy
    (0x004CA1BB, call_rel32(0x00403C49)),  # CreatureEmpathy
    (0x004CA1D5, jmp_run(0x004CA1BB)),  # CreatureEmpathy
    (0x004CA233, jmp_run(0x004CA1D4)),  # CreatureEmpathy
    (0x004CA251, jmp_run(0x004CA233)),  # CreatureEmpathy
    (0x004CA2E5, copy_run(0x004CA251)),  # CreatureEmpathy
    (0x004CA389, copy_run(0x004CA2E5)),  # CreatureEmpathy
    (0x004CA3D3, jmp_run(0x004CA389)),  # CreatureEmpathy
    (0x004CA438, jmp_run(0x004CA3D3)),  # CreatureEmpathy
    (0x004CA47A, call_indirect(0x008AE6A4)),  # CreatureEmpathy
    (0x004CA4BA, call_indirect(0x008AE03C)),  # CreatureEmpathy
    (0x004CA521, copy_run(0x004CA4BA)),  # CreatureEmpathy
    (0x004CA553, jmp_run(0x004CA521)),  # CreatureEmpathy
    (0x004CA579, jmp_run(0x004CA553)),  # CreatureEmpathy
    (0x004CA5B5, jmp_run(0x004CA579)),  # CreatureEmpathy
    (0x004CA79B, call_rel32(0x00403C49)),  # CreatureEmpathy
    (0x004D0683, copy_run(0x004D0622)),  # CreatureLeash
    (0x004D06AB, call_rel32(0x00403C49)),  # CreatureLeash
    (0x004D0A6B, call_rel32(0x00403C49)),  # CreatureLeash
    (0x004D0C62, copy_run(0x004D0A6B)),  # CreatureLeash
    (0x004D1077, jmp_run(0x004D0C62)),  # CreatureLeash
    (0x004D13EA, call_indirect(0x008AE958)),  # CreatureLeash
    (0x004D142A, call_indirect(0x008AE2B0)),  # CreatureLeash
    (0x004D146A, call_indirect(0x008AE828)),  # CreatureLeash
    (0x004D14AA, call_indirect(0x008AE090)),  # CreatureLeash
    (0x004D14F5, jmp_run(0x004D14AA)),  # CreatureLeash
    (0x004D1553, jmp_run(0x004D14F5)),  # CreatureLessonChooser
    (0x004D157B, call_rel32(0x00403C49)),  # CreatureLessonChooser
    (0x004D15AB, call_rel32(0x00403C49)),  # CreatureLessonChooser
    (0x004D15F4, jmp_run(0x004D15AB)),  # CreatureLessonChooser
    (0x004D1C84, copy_run(0x004D15F4)),  # CreatureLessonChooser
    (0x004D1D6C, copy_run(0x004D1C84)),  # CreatureLessonChooser
    (0x004D1D81, copy_run(0x004D1D68)),  # CreatureLessonChooser
    (0x004D1F44, copy_run(0x004D1D81)),  # CreatureLessonChooser
    (0x004D1F93, jmp_run(0x004D1F44)),  # CreatureLessonChooser
    (0x004D200A, call_indirect(0x008AE02C)),  # CreatureLessonChooser
    (0x004D21E9, copy_run(0x004D200A)),  # CreatureLessonChooser
    (0x004D221A, call_indirect(0x008AE0FC)),  # CreatureLessonChooser
    (0x004D2277, jmp_run(0x004D221A)),  # CreatureLessonChooser
    (0x004D23B2, jmp_run(0x004D2277)),  # CreatureLessonChooser
    (0x004D2461, copy_run(0x004D23B2)),  # CreatureLessonChooser
    (0x004D25AB, call_rel32(0x00403C49)),  # CreatureLessonChooser
    (0x004D264B, call_rel32(0x00403C49)),  # CreatureLessonChooser
    (0x004D4CA3, copy_run(0x004D4BF3)),  # CreatureMentalActionTests
    (0x004D4CCB, call_rel32(0x00403C49)),  # CreatureMentalActionTests
    (0x004D4DAA, call_indirect(0x008AE050)),  # CreatureMentalActionTests
    (0x004D4EA9, copy_run(0x004D4DAA)),  # CreatureMentalActionTests
    (0x004D4F21, copy_run(0x004D4EA9)),  # CreatureMentalActionTests
    (0x004D4FB1, jmp_run(0x004D4F21)),  # CreatureMentalActionTests
    (0x004D500B, call_rel32(0x00403C49)),  # CreatureMentalActionTests
    (0x004D5032, jmp_run(0x004D500B)),  # CreatureMentalActionTests
    (0x004D50A5, copy_run(0x004D5032)),  # CreatureMentalActionTests
    (0x004D50E5, copy_run(0x004D50A5)),  # CreatureMentalActionTests
    (0x004D5227, copy_run(0x004D513C)),  # CreatureMentalActionTests
    (0x004D52D3, jmp_run(0x004D5227)),  # CreatureMentalActionTests
    (0x004D53A8, copy_run(0x004D52D3)),  # CreatureMentalActionTests
    (0x004D53C4, copy_run(0x004D53A8)),  # CreatureMentalActionTests
    (0x004D53E4, copy_run(0x004D53C4)),  # CreatureMentalActionTests
    (0x004D5404, copy_run(0x004D53E4)),  # CreatureMentalActionTests
    (0x004D5466, copy_run(0x004D5404)),  # CreatureMentalActionTests
    (0x004D5496, jmp_run(0x004D5466)),  # CreatureMentalActionTests
    (0x004D54C6, copy_run(0x004D5496)),  # CreatureMentalActionTests
    (0x004D5516, jmp_run(0x004D54C6)),  # CreatureMentalActionTests
    (0x004D5557, jmp_run(0x004D5516)),  # CreatureMentalActionTests
    (0x004D5586, copy_run(0x004D5557)),  # CreatureMentalActionTests
    (0x004D56E7, copy_run(0x004D564D)),  # CreatureMentalActionTests
    (0x004D5757, jmp_run(0x004D56E7)),  # CreatureMentalActionTests
    (0x004D5793, jmp_run(0x004D5757)),  # CreatureMentalActionTests
    (0x004D57BA, call_indirect(0x008AE3E0)),  # CreatureMentalActionTests
    (0x004DB9F3, jmp_run(0x004DB994)),  # CreatureMentalBeliefs
    (0x004DBA1B, call_rel32(0x00403C49)),  # CreatureMentalBeliefs
    (0x004DBB84, copy_run(0x004DBA1B)),  # CreatureMentalBeliefs
    (0x004DBD65, copy_run(0x004DBB84)),  # CreatureMentalBeliefs
    (0x004DBF27, copy_run(0x004DBD65)),  # CreatureMentalBeliefs
    (0x004DC017, jmp_run(0x004DBF27)),  # CreatureMentalBeliefs
    (0x004DC0E1, copy_run(0x004DC017)),  # CreatureMentalBeliefs
    (0x004DC203, copy_run(0x004DC0E1)),  # CreatureMentalBeliefs
    (0x004DC39A, call_indirect(0x008AE12C)),  # CreatureMentalBeliefs
    (0x004DC543, copy_run(0x004DC39A)),  # CreatureMentalBeliefs
    (0x004DC6E3, copy_run(0x004DC543)),  # CreatureMentalBeliefs
    (0x004DC7D1, jmp_run(0x004DC6E3)),  # CreatureMentalBeliefs
    (0x004DC96A, call_indirect(0x008AE934)),  # CreatureMentalBeliefs
    (0x004DCA8B, call_rel32(0x00403C49)),  # CreatureMentalBeliefs
    (0x004DCC3A, call_indirect(0x008AE00C)),  # CreatureMentalBeliefs
    (0x004DCD53, jmp_run(0x004DCC3A)),  # CreatureMentalBeliefs
    (0x004DCE32, jmp_run(0x004DCD53)),  # CreatureMentalBeliefs
    (0x004DCE71, jmp_run(0x004DCE32)),  # CreatureMentalBeliefs
    (0x004DCEB1, jmp_run(0x004DCE71)),  # CreatureMentalBeliefs
    (0x004DCEF1, jmp_run(0x004DCEB1)),  # CreatureMentalBeliefs
    (0x004DCF31, jmp_run(0x004DCEF1)),  # CreatureMentalBeliefs
    (0x004DCF71, jmp_run(0x004DCF31)),  # CreatureMentalBeliefs
    (0x004DCFB1, jmp_run(0x004DCF71)),  # CreatureMentalBeliefs
    (0x004DCFF1, jmp_run(0x004DCFB1)),  # CreatureMentalBeliefs
    (0x004DD031, jmp_run(0x004DCFF1)),  # CreatureMentalBeliefs
    (0x004DD071, jmp_run(0x004DD031)),  # CreatureMentalBeliefs
    (0x004DD095, jmp_run(0x004DD071)),  # CreatureMentalBeliefs
    (0x004DD14A, call_indirect(0x008AE624)),  # CreatureMentalBeliefs
    (0x004DD1F7, jmp_run(0x004DD14A)),  # CreatureMentalBeliefs
    (0x004DD2E5, copy_run(0x004DD1F7)),  # CreatureMentalBeliefs
    (0x004DD3F5, jmp_run(0x004DD2E5)),  # CreatureMentalBeliefs
    (0x004DD461, copy_run(0x004DD3F5)),  # CreatureMentalBeliefs
    (0x004DD501, copy_run(0x004DD461)),  # CreatureMentalBeliefs
    (0x004DD5A4, copy_run(0x004DD501)),  # CreatureMentalBeliefs
    (0x004E0C43, copy_run(0x004E0BE4)),  # CreatureMentalDesireSourceValues
    (0x004E0CFA, call_indirect(0x008AE01C)),  # CreatureMentalDesireSourceValues
    (0x004E0D73, jmp_run(0x004E0CFA)),  # CreatureMentalDesireSourceValues
    (0x004E0D9A, jmp_run(0x004E0D73)),  # CreatureMentalDesireSourceValues
    (0x004E0E55, jmp_run(0x004E0D99)),  # CreatureMentalDesireSourceValues
    (0x004E0F15, jmp_run(0x004E0E55)),  # CreatureMentalDesireSourceValues
    (0x004E0F97, jmp_run(0x004E0F15)),  # CreatureMentalDesireSourceValues
    (0x004E0FEA, call_indirect(0x008AE050)),  # CreatureMentalDesireSourceValues
    (0x004E102A, call_indirect(0x008AE350)),  # CreatureMentalDesireSourceValues
    (0x004E1087, copy_run(0x004E102A)),  # CreatureMentalDesireSourceValues
    (0x004E1165, copy_run(0x004E1087)),  # CreatureMentalDesireSourceValues
    (0x004E11E6, copy_run(0x004E1165)),  # CreatureMentalDesireSourceValues
    (0x004E1393, jmp_run(0x004E11E6)),  # CreatureMentalDesireSourceValues
    (0x004E13F3, jmp_run(0x004E1393)),  # CreatureMentalDesireTests
    (0x004E141B, call_rel32(0x00403C49)),  # CreatureMentalDesireTests
    (0x004E1445, copy_run(0x004E141B)),  # CreatureMentalDesireTests
    (0x004E1493, jmp_run(0x004E1445)),  # CreatureMentalDesireTests
    (0x004E1516, jmp_run(0x004E1493)),  # CreatureMentalDesireTests
    (0x004E154A, copy_run(0x004E1516)),  # CreatureMentalDesireTests
    (0x004E157B, jmp_run(0x004E1543)),  # CreatureMentalDesireTests
    (0x004E15D3, jmp_run(0x004E1579)),  # CreatureMentalEditor
    (0x004E16D1, jmp_run(0x004E15D3)),  # CreatureMentalEditor
    (0x004E25F3, jmp_run(0x004E1FF4)),  # CreatureMentalLearn
    (0x004E261B, call_rel32(0x00403C49)),  # CreatureMentalLearn
    (0x004E2755, jmp_run(0x004E261B)),  # CreatureMentalLearn
    (0x004E2798, jmp_run(0x004E2753)),  # CreatureMentalLearn
    (0x004E334B, call_rel32(0x00403C49)),  # CreatureMentalLearn
    (0x004E3408, copy_run(0x004E334B)),  # CreatureMentalLearn
    (0x004E3544, copy_run(0x004E3408)),  # CreatureMentalLearn
    (0x004E38BA, call_indirect(0x008AE990)),  # CreatureMentalLearn
    (0x004E3927, copy_run(0x004E38BA)),  # CreatureMentalLearn
    (0x004E3966, copy_run(0x004E3927)),  # CreatureMentalLearn
    (0x004E3F06, copy_run(0x004E3966)),  # CreatureMentalLearn
    (0x004E4049, copy_run(0x004E3F06)),  # CreatureMentalLearn
    (0x004E4075, jmp_run(0x004E4049)),  # CreatureMentalLearn
    (0x004E40B7, jmp_run(0x004E4075)),  # CreatureMentalLearn
    (0x004E4129, copy_run(0x004E40B7)),  # CreatureMentalLearn
    (0x004E4159, jmp_run(0x004E4129)),  # CreatureMentalLearn
    (0x004E4184, copy_run(0x004E4159)),  # CreatureMentalLearn
    (0x004E41A7, copy_run(0x004E4184)),  # CreatureMentalLearn
    (0x004E41D3, jmp_run(0x004E41A7)),  # CreatureMentalLearn
    (0x004E42F3, jmp_run(0x004E41D3)),  # CreatureMentalLearn
    (0x004E44F9, jmp_run(0x004E42F3)),  # CreatureMentalLearn
    (0x004E5073, jmp_run(0x004E5014)),  # CreatureMentalMisc
    (0x004E509B, call_rel32(0x00403C49)),  # CreatureMentalMisc
    (0x004E57C5, copy_run(0x004E509B)),  # CreatureMentalMisc
    (0x004E5861, copy_run(0x004E57C2)),  # CreatureMentalMisc
    (0x004E5923, copy_run(0x004E5861)),  # CreatureMentalObjectMultipliers
    (0x004E594B, call_rel32(0x00403C49)),  # CreatureMentalObjectMultipliers
    (0x004E5973, jmp_run(0x004E594B)),  # CreatureMentalObjectMultipliers
    (0x004E59C4, copy_run(0x004E5973)),  # CreatureMentalObjectMultipliers
    (0x004F26D3, jmp_run(0x004F2672)),  # CreaturePlan
    (0x004F26FB, call_rel32(0x00403C49)),  # CreaturePlan
    (0x004F2887, copy_run(0x004F26FB)),  # CreaturePlan
    (0x004F28E7, copy_run(0x004F2887)),  # CreaturePlan
    (0x004F29A3, copy_run(0x004F28E7)),  # CreaturePlan
    (0x004F2C59, jmp_run(0x004F29A3)),  # CreaturePlan
    (0x004F2D07, copy_run(0x004F2C59)),  # CreaturePlan
    (0x004F2DF9, jmp_run(0x004F2D07)),  # CreaturePlan
    (0x004F2F94, jmp_run(0x004F2DF9)),  # CreaturePlan
    (0x004F2FB8, jmp_run(0x004F2F94)),  # CreaturePlan
    (0x004F2FD5, jmp_run(0x004F2FB8)),  # CreaturePlan
    (0x004F32F3, jmp_run(0x004F2FD5)),  # CreaturePlan
    (0x004F3426, copy_run(0x004F32F3)),  # CreaturePlan
    (0x004F353B, call_rel32(0x00403C49)),  # CreaturePlan
    (0x004F35B2, jmp_run(0x004F353B)),  # CreaturePlan
    (0x004F35FB, call_rel32(0x00403C49)),  # CreaturePlan
    (0x004F363B, call_rel32(0x00403C49)),  # CreaturePlan
    (0x004F36C3, copy_run(0x004F363B)),  # CreaturePlan
    (0x004F3702, copy_run(0x004F36C3)),  # CreaturePlan
    (0x004F3794, jmp_run(0x004F3702)),  # CreaturePlan
    (0x004F37D5, jmp_run(0x004F3794)),  # CreaturePlan
    (0x004F3808, copy_run(0x004F37D5)),  # CreaturePlan
    (0x004F38B9, jmp_run(0x004F3808)),  # CreaturePlan
    (0x004F38E7, copy_run(0x004F38B9)),  # CreaturePlan
    (0x004F3985, copy_run(0x004F38E7)),  # CreaturePlan
    (0x004F3A41, copy_run(0x004F3985)),  # CreaturePlan
    (0x004F3EEB, call_rel32(0x00403C49)),  # CreaturePlan
    (0x004F3FC2, copy_run(0x004F3EEB)),  # CreaturePlan
    (0x004F40D5, jmp_run(0x004F3FC2)),  # CreaturePlan
    (0x004F4195, jmp_run(0x004F40D5)),  # CreaturePlan
    (0x004F4272, jmp_run(0x004F4195)),  # CreaturePlan
    (0x004F4374, jmp_run(0x004F4272)),  # CreaturePlan
    (0x004F43C9, copy_run(0x004F4374)),  # CreaturePlan
    (0x004F43F3, jmp_run(0x004F43C9)),  # CreaturePlan
    (0x004F4491, jmp_run(0x004F43F3)),  # CreaturePlan
    (0x004F44F3, jmp_run(0x004F4491)),  # CreaturePreviousActionContext
    (0x004F451B, call_rel32(0x00403C49)),  # CreaturePreviousActionContext
    (0x004F4545, copy_run(0x004F451B)),  # CreaturePreviousActionContext
    (0x004F4568, copy_run(0x004F4542)),  # CreaturePreviousActionContext
    (0x004F4683, copy_run(0x004F4568)),  # CreaturePreviousContext
    (0x004F46AB, call_rel32(0x00403C49)),  # CreaturePreviousContext
    (0x004F4745, copy_run(0x004F46AB)),  # CreaturePreviousContext
    (0x004F4958, jmp_run(0x004F4743)),  # CreaturePreviousContext
    (0x004F4988, copy_run(0x004F4958)),  # CreaturePreviousContext
    (0x00530CB3, jmp_run(0x00530C52)),  # Fixed
    (0x00530CDB, call_rel32(0x00403C49)),  # Fixed
    (0x00530D59, jmp_run(0x00530CDB)),  # Fixed
    (0x00530DD7, jmp_run(0x00530D59)),  # Fixed
    (0x00530E93, jmp_run(0x00530DD7)),  # Fixed
    (0x00530EC3, copy_run(0x00530E93)),  # Fixed
    (0x00530EE2, copy_run(0x00530EC3)),  # Fixed
    (0x00530F62, copy_run(0x00530EE2)),  # Fixed
    (0x00530FE2, copy_run(0x00530F62)),  # Fixed
    (0x00531026, copy_run(0x00530FE2)),  # Fixed
    (0x00531066, copy_run(0x00531026)),  # Fixed
    (0x00531096, jmp_run(0x00531066)),  # Fixed
    (0x00531227, copy_run(0x00531096)),  # Fixed
    (0x00531281, copy_run(0x00531227)),  # Fixed
    (0x005313C9, copy_run(0x00531281)),  # Fixed
    (0x005313F2, jmp_run(0x005313C9)),  # Fixed
    (0x005314B3, jmp_run(0x005313F2)),  # Fixed
    (0x0053154A, call_indirect(0x008AE024)),  # Fixed
    (0x00531568, copy_run(0x0053154A)),  # Fixed
    (0x005315D9, jmp_run(0x00531568)),  # Fixed
    (0x00531639, jmp_run(0x005315D9)),  # Fixed
    (0x00531676, jmp_run(0x00531639)),  # Fixed
    (0x00531709, copy_run(0x00531676)),  # Fixed
    (0x00531741, copy_run(0x00531709)),  # Fixed
    (0x00531761, copy_run(0x00531741)),  # Fixed
    (0x00531792, jmp_run(0x00531761)),  # Fixed
    (0x00531983, copy_run(0x00531792)),  # Fixed
    (0x00531C58, jmp_run(0x00531983)),  # Fixed
    (0x00531C84, copy_run(0x00531C58)),  # Fixed
    (0x00531CF8, jmp_run(0x00531C84)),  # Fixed
    (0x00531DB8, jmp_run(0x00531CF8)),  # Fixed
    (0x00531DE8, copy_run(0x00531DB8)),  # Fixed
    (0x00531E83, copy_run(0x00531DE8)),  # Fixed
    (0x00531F5A, call_indirect(0x008AE10C)),  # Fixed
    (0x00531FC9, copy_run(0x00531F5A)),  # Fixed
    (0x00532005, copy_run(0x00531FC9)),  # Fixed
    (0x00532058, jmp_run(0x00532005)),  # Fixed
    (0x00532093, jmp_run(0x00532058)),  # Fixed
    (0x00532117, jmp_run(0x00532093)),  # Fixed
    (0x0053221B, call_rel32(0x00403C49)),  # Fixed
    (0x005322A8, copy_run(0x0053221B)),  # Fixed
    (0x005322C7, copy_run(0x005322A8)),  # Fixed
    (0x00532302, copy_run(0x005322C7)),  # Fixed
    (0x0053233B, call_rel32(0x00403C49)),  # Fixed
    (0x00532359, jmp_run(0x0053233B)),  # Fixed
    (0x00532455, jmp_run(0x00532359)),  # Fixed
    (0x00532515, jmp_run(0x00532455)),  # Fixed
    (0x005325D3, jmp_run(0x00532515)),  # Fixed
    (0x0053265B, call_rel32(0x00403C49)),  # Fixed
    (0x00532697, jmp_run(0x0053265B)),  # Fixed
    (0x005326D7, jmp_run(0x00532697)),  # Fixed
    (0x00532723, copy_run(0x005326D7)),  # Fixed
    (0x00532815, jmp_run(0x00532723)),  # Fixed
    (0x00532845, copy_run(0x00532815)),  # Fixed
    (0x00532865, copy_run(0x00532845)),  # Fixed
    (0x00572F83, copy_run(0x00572F23)),  # GameThing
    (0x00572FAB, call_rel32(0x00403C49)),  # GameThing
    (0x00572FD3, jmp_run(0x00572FAB)),  # GameThing
    (0x00573011, jmp_run(0x00572FD3)),  # GameThing
    (0x005730DB, call_rel32(0x00403C49)),  # GameThing
    (0x00573139, jmp_run(0x005730DB)),  # GameThing
    (0x005732B2, jmp_run(0x00573139)),  # GameThing
    (0x00573363, copy_run(0x005732B2)),  # GameThing
    (0x005733C6, copy_run(0x00573363)),  # GameThing
    (0x00573437, jmp_run(0x005733C6)),  # GameThing
    (0x005734E3, copy_run(0x00573437)),  # GameThing
    (0x00573517, jmp_run(0x005734E3)),  # GameThing
    (0x00573546, copy_run(0x00573517)),  # GameThing
    (0x005736F6, jmp_run(0x00573546)),  # GameThing
    (0x00573723, copy_run(0x005736F6)),  # GameThing
    (0x00573875, jmp_run(0x00573723)),  # GameThing
    (0x005738A7, copy_run(0x00573875)),  # GameThing
    (0x005738F8, jmp_run(0x005738A7)),  # GameThing
    (0x00573916, jmp_run(0x005738F8)),  # GameThing
    (0x00573965, copy_run(0x00573916)),  # GameThing
    (0x005739B3, jmp_run(0x00573965)),  # GameThing
    (0x00573A61, copy_run(0x005739B3)),  # GameThing
    (0x00573B27, copy_run(0x00573A61)),  # GameThing
    (0x00573BE5, copy_run(0x00573B27)),  # GameThing
    (0x0057BB39, jmp_run(0x0057B8F9)),  # GestureSystem
    (0x0057BB89, copy_run(0x0057BB39)),  # GestureSystem
    (0x0057BBB9, jmp_run(0x0057BB89)),  # GestureSystem
    (0x0057BCC9, copy_run(0x0057BBB9)),  # GestureSystem
    (0x0057BE56, jmp_run(0x0057BCC9)),  # GestureSystem
    (0x0057BE96, jmp_run(0x0057BE56)),  # GestureSystem
    (0x0057C0DA, call_filler(0x004034F9, 0xFF)),  # GestureSystem
    (0x0057C969, copy_run(0x0057C931)),  # GestureSystemDataList
    (0x0057C9B9, jmp_run(0x0057C969)),  # GestureSystemDataList
    (0x0057C9E9, copy_run(0x0057C9B9)),  # GestureSystemDataList
    (0x0057CC53, jmp_run(0x0057C9E9)),  # GestureSystemDataList
    (0x0057CCED, copy_run(0x0057CC53)),  # GestureSystemDataList
    (0x0057CFCB, call_rel32(0x00403C49)),  # GestureSystemDataList
    (0x0057D001, copy_run(0x0057CFCB)),  # GestureSystemDataList
    (0x0057D047, copy_run(0x0057D001)),  # GestureSystemDataList
    (0x0057D07A, call_filler(0x004034F9, 0xFF)),  # GestureSystemDataList
    (0x0057D0BA, call_filler(0x004034F9, 0xFF)),  # GestureSystemDataList
    (0x0057D245, copy_run(0x0057D0BA)),  # GestureSystemDataList
    (0x0057D28B, copy_run(0x0057D245)),  # GestureSystemDataList
    (0x0058743B, call_rel32(0x00403C49)),  # GJProperty
    (0x00587465, copy_run(0x0058743B)),  # GJProperty
    (0x00587513, jmp_run(0x00587463)),  # GJProperty
    (0x00587792, jmp_run(0x00587513)),  # GJProperty
    (0x00587A38, jmp_run(0x00587791)),  # GJProperty
    (0x00587E62, copy_run(0x00587A38)),  # GJProperty
    (0x00587F72, jmp_run(0x00587E62)),  # GJProperty
    (0x005881C2, copy_run(0x00587F72)),  # GJProperty
    (0x005882D5, jmp_run(0x005881C2)),  # GJProperty
    (0x005883E5, copy_run(0x005882D5)),  # GJProperty
    (0x005885B7, jmp_run(0x005883E5)),  # GJProperty
    (0x00588699, jmp_run(0x005885B7)),  # GJProperty
    (0x005887C1, copy_run(0x00588699)),  # GJProperty
    (0x00588949, copy_run(0x005887C1)),  # GJProperty
    (0x00588A7A, call_filler(0x004034F9, 0xFF)),  # GJProperty
    (0x00588B5A, jmp_run(0x00588A7A)),  # GJProperty
    (0x00588CA4, copy_run(0x00588B59)),  # GJProperty
    (0x00588D0C, copy_run(0x00588CA4)),  # GJProperty
    (0x00589033, jmp_run(0x00588D09)),  # GJProperty
    (0x005895DA, call_filler(0x004034F9, 0xFF)),  # GJProperty
    (0x00589917, jmp_run(0x005895DA)),  # GJProperty
    (0x005899F9, jmp_run(0x00589917)),  # GJProperty
    (0x00589B35, jmp_run(0x005899F9)),  # GJProperty
    (0x0058A17B, call_rel32(0x00403C49)),  # GJProperty
    (0x0058A316, jmp_run(0x0058A17B)),  # GJProperty
    (0x0058A5E3, copy_run(0x0058A316)),  # GJProperty
    (0x0058A9A6, copy_run(0x0058A5E3)),  # GJProperty
    (0x0058BE12, jmp_run(0x0058A9A6)),  # GJProperty
    (0x0058BEF9, jmp_run(0x0058BE12)),  # GJProperty
    (0x0058C24A, call_filler(0x004034F9, 0xC3)),  # GJProperty
    (0x0058C369, copy_run(0x0058C24A)),  # GJProperty
    (0x0058C3A5, copy_run(0x0058C369)),  # GJProperty
    (0x0058C3C9, copy_run(0x0058C3A5)),  # GJProperty
    (0x0058C405, copy_run(0x0058C3C9)),  # GJProperty
    (0x0058C448, copy_run(0x0058C405)),  # GJProperty
    (0x0058C475, jmp_run(0x0058C448)),  # GJProperty
    (0x0058C4E3, copy_run(0x0058C475)),  # GJProperty
    (0x0058C9D5, jmp_run(0x0058C4E3)),  # GJProperty
    (0x0058CA91, jmp_run(0x0058C9D5)),  # GJProperty
    (0x0058CF67, copy_run(0x0058CA91)),  # GJProperty
    (0x0058D015, jmp_run(0x0058CF67)),  # GJProperty
    (0x0058D6DB, call_rel32(0x00403C49)),  # GJProperty
    (0x0058D732, jmp_run(0x0058D6DB)),  # GJProperty
    (0x0058D796, jmp_run(0x0058D732)),  # GJProperty
    (0x0058DBC5, copy_run(0x0058D796)),  # GJProperty
    (0x0058DC52, jmp_run(0x0058DBC5)),  # GJProperty
    (0x0058DCCB, call_rel32(0x00403C49)),  # GJProperty
    (0x0058DD5A, call_filler(0x004034F9, 0xFF)),  # GJProperty
    (0x0058DDA3, copy_run(0x0058DD5A)),  # GJProperty
    (0x0058E1A9, copy_run(0x0058DDA3)),  # GJProperty
    (0x0058E232, jmp_run(0x0058E1A9)),  # GJProperty
    (0x0058E27B, call_rel32(0x00403C49)),  # GJProperty
    (0x0058E30A, call_filler(0x004034F9, 0x00)),  # GJProperty
    (0x0058E709, copy_run(0x0058E30A)),  # GJProperty
    (0x0058E74B, call_rel32(0x00403C49)),  # GJProperty
    (0x0058E7DA, call_filler(0x004034F9, 0xFF)),  # GJProperty
    (0x0058EBD9, jmp_run(0x0058E7DA)),  # GJProperty
    (0x0058EC1B, call_rel32(0x00403C49)),  # GJProperty
    (0x0058ECAA, call_filler(0x004034F9, 0x00)),  # GJProperty
    (0x0058F0A9, copy_run(0x0058ECAA)),  # GJProperty
    (0x0058F0EB, call_rel32(0x00403C49)),  # GJProperty
    (0x0058F17A, call_filler(0x004034F9, 0xFF)),  # GJProperty
    (0x0058F579, jmp_run(0x0058F17A)),  # GJProperty
    (0x0058F5BB, call_rel32(0x00403C49)),  # GJProperty
    (0x0058F5D6, jmp_run(0x0058F5BB)),  # GJProperty
    (0x0058F843, copy_run(0x0058F5D6)),  # GJProperty
    (0x0058F8A2, copy_run(0x0058F843)),  # GJProperty
    (0x0058F906, copy_run(0x0058F8A2)),  # GJProperty
    (0x0058F92B, call_rel32(0x00403C49)),  # GJProperty
    (0x0058FB9B, call_rel32(0x00403C49)),  # GJProperty
    (0x0058FBBB, call_rel32(0x00403C49)),  # GJProperty
    (0x0058FC11, jmp_run(0x0058FBBB)),  # GJProperty
    (0x0058FC71, jmp_run(0x0058FC11)),  # GJProperty
    (0x0058FCC3, copy_run(0x0058FC71)),  # GJProperty
    (0x0058FD13, jmp_run(0x0058FCC3)),  # GJProperty
    (0x0058FD63, copy_run(0x0058FD13)),  # GJProperty
    (0x0058FDB3, jmp_run(0x0058FD63)),  # GJProperty
    (0x005907C8, copy_run(0x0058FDB3)),  # GJProperty
    (0x00590951, jmp_run(0x005907C8)),  # GJProperty
    (0x00590993, jmp_run(0x00590951)),  # GJProperty
    (0x00590D1B, call_rel32(0x00403C49)),  # GJProperty
    (0x00590EDB, call_rel32(0x00403C49)),  # GJProperty
    (0x00591097, jmp_run(0x00590EDB)),  # GJProperty
    (0x0059123B, call_rel32(0x00403C49)),  # GJProperty
    (0x005913DB, call_rel32(0x00403C49)),  # GJProperty
    (0x00592348, copy_run(0x005913DB)),  # GJProperty
    (0x00592438, jmp_run(0x00592348)),  # GJProperty
    (0x00592507, copy_run(0x00592438)),  # GJProperty
    (0x00592B67, copy_run(0x00592507)),  # GJProperty
    (0x00592C06, copy_run(0x00592B67)),  # GJProperty
    (0x00592C63, copy_run(0x00592C06)),  # GJProperty
    (0x00592CB5, jmp_run(0x00592C63)),  # GJProperty
    (0x00592D9B, call_rel32(0x00403C49)),  # GJProperty
    (0x00592E16, jmp_run(0x00592D9B)),  # GJProperty
    (0x005931B6, jmp_run(0x00592E16)),  # GJProperty
    (0x005935A1, copy_run(0x005931B6)),  # GJProperty
    (0x005948A3, copy_run(0x005946B1)),  # GlobalGameList
    (0x005948CB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00594936, jmp_run(0x005948CB)),  # GlobalGameList
    (0x00594A9B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00594AE9, copy_run(0x00594A9B)),  # GlobalGameList
    (0x00595608, copy_run(0x00594AE9)),  # GlobalGameList
    (0x00595BC4, copy_run(0x00595608)),  # GlobalGameList
    (0x00595C36, jmp_run(0x00595BC4)),  # GlobalGameList
    (0x00595C75, jmp_run(0x00595C36)),  # GlobalGameList
    (0x00595D54, jmp_run(0x00595C75)),  # GlobalGameList
    (0x00595DA2, copy_run(0x00595D54)),  # GlobalGameList
    (0x00595DC9, copy_run(0x00595DA2)),  # GlobalGameList
    (0x00595E54, jmp_run(0x00595DC9)),  # GlobalGameList
    (0x00595F24, copy_run(0x00595E54)),  # GlobalGameList
    (0x00595F94, jmp_run(0x00595F24)),  # GlobalGameList
    (0x00596024, copy_run(0x00595F94)),  # GlobalGameList
    (0x005960C7, copy_run(0x00596024)),  # GlobalGameList
    (0x00596164, copy_run(0x005960C7)),  # GlobalGameList
    (0x005962A7, copy_run(0x00596164)),  # GlobalGameList
    (0x00596347, copy_run(0x005962A7)),  # GlobalGameList
    (0x005963E4, copy_run(0x00596347)),  # GlobalGameList
    (0x00596484, copy_run(0x005963E4)),  # GlobalGameList
    (0x00596524, copy_run(0x00596484)),  # GlobalGameList
    (0x005965C4, copy_run(0x00596524)),  # GlobalGameList
    (0x00596664, copy_run(0x005965C4)),  # GlobalGameList
    (0x00596704, copy_run(0x00596664)),  # GlobalGameList
    (0x005967A4, copy_run(0x00596704)),  # GlobalGameList
    (0x00596847, copy_run(0x005967A4)),  # GlobalGameList
    (0x00596984, copy_run(0x00596847)),  # GlobalGameList
    (0x00596A27, copy_run(0x00596984)),  # GlobalGameList
    (0x00596AC7, copy_run(0x00596A27)),  # GlobalGameList
    (0x00596C04, copy_run(0x00596AC7)),  # GlobalGameList
    (0x00596CA4, copy_run(0x00596C04)),  # GlobalGameList
    (0x00596D44, copy_run(0x00596CA4)),  # GlobalGameList
    (0x00596DE4, copy_run(0x00596D44)),  # GlobalGameList
    (0x00596E84, copy_run(0x00596DE4)),  # GlobalGameList
    (0x005972E4, copy_run(0x00596E84)),  # GlobalGameList
    (0x005974C4, copy_run(0x005972E4)),  # GlobalGameList
    (0x0059776A, call_filler(0x004034F9, 0x00)),  # GlobalGameList
    (0x0059781B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x005978CB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059797B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00597A2B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00597ADB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00597B8B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00597C3B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00597CFA, call_filler(0x004034F9, 0xFF)),  # GlobalGameList
    (0x00597DBB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00597E6B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00597F2A, call_filler(0x004034F9, 0x00)),  # GlobalGameList
    (0x00597FEA, call_filler(0x004034F9, 0x00)),  # GlobalGameList
    (0x005980AB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059815B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059820B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x005982BB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059836B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059841B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x005984DB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059859B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059865B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059871B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x005987DB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059889B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x0059894B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00598A0B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00598ACB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00598B7B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00598C3B, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00598CFB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00598DBB, call_rel32(0x00403C49)),  # GlobalGameList
    (0x00598E13, jmp_run(0x00598DBB)),  # GlobalGameList
    (0x00598E73, jmp_run(0x00598E13)),  # GlobalGameList
    (0x00598EE6, copy_run(0x00598E73)),  # GlobalGameList
    (0x00598F56, jmp_run(0x00598EE6)),  # GlobalGameList
    (0x00598FB3, jmp_run(0x00598F56)),  # GlobalGameList
    (0x005990AA, call_filler(0x004034F9, 0x00)),  # GlobalGameList
    (0x00599103, copy_run(0x005990AA)),  # GlobalGameList
    (0x00599163, copy_run(0x00599103)),  # GlobalGameList
    (0x005991CA, call_filler(0x004034F9, 0x00)),  # GlobalGameList
    (0x005AFFA8, copy_run(0x0059C182)),  # GStates
    (0x005B3359, jmp_run(0x005AFFA8)),  # GStates
    (0x0060A717, jmp_run(0x0060A511)),  # Mobile
    (0x0060A7E4, copy_run(0x0060A717)),  # Mobile
    (0x0060A843, copy_run(0x0060A7E3)),  # MobileObject
    (0x0060A86B, copy_run(0x0060A843)),  # MobileObject
    (0x0060A913, jmp_run(0x0060A86B)),  # MobileObject
    (0x0060A943, copy_run(0x0060A913)),  # MobileObject
    (0x0060A9DA, jmp_run(0x0060A943)),  # MobileObject
    (0x0060AA06, copy_run(0x0060A9DA)),  # MobileObject
    (0x0060AB01, copy_run(0x0060AA06)),  # MobileObject
    (0x0060AC36, jmp_run(0x0060AB01)),  # MobileObject
    (0x0060AC5B, jmp_run(0x0060AC36)),  # MobileObject
    (0x0060AD13, jmp_run(0x0060AC5B)),  # MobileObject
    (0x0060AF16, jmp_run(0x0060AD13)),  # MobileObject
    (0x0060AF63, copy_run(0x0060AF16)),  # MobileObject
    (0x0060AFE9, copy_run(0x0060AF63)),  # MobileObject
    (0x0060B06A, copy_run(0x0060AFE9)),  # MobileObject
    (0x0060B1C4, copy_run(0x0060B06A)),  # MobileObject
    (0x0060B292, jmp_run(0x0060B1C4)),  # MobileObject
    (0x0060B4D6, jmp_run(0x0060B292)),  # MobileObject
    (0x0060B5B6, jmp_run(0x0060B4D6)),  # MobileObject
    (0x0060B676, jmp_run(0x0060B5B6)),  # MobileObject
    (0x0060B6FB, jmp_run(0x0060B676)),  # MobileObject
    (0x0060B807, copy_run(0x0060B6FB)),  # MobileObject
    (0x0060B8D6, jmp_run(0x0060B807)),  # MobileObject
    (0x0060B919, jmp_run(0x0060B8D6)),  # MobileObject
    (0x0060B948, copy_run(0x0060B919)),  # MobileObject
    (0x0060BC16, jmp_run(0x0060B948)),  # MobileObject
    (0x0060BC3B, jmp_run(0x0060BC16)),  # MobileObject
    (0x0060BC51, jmp_run(0x0060BC3B)),  # MobileObject
    (0x0060BCE8, copy_run(0x0060BC51)),  # MobileObject
    (0x0060BD42, copy_run(0x0060BCE8)),  # MobileObject
    (0x0060BDB5, jmp_run(0x0060BD42)),  # MobileObject
    (0x0060BDF6, jmp_run(0x0060BDB5)),  # MobileObject
    (0x0060BE66, copy_run(0x0060BDF6)),  # MobileObject
    (0x0060BE93, jmp_run(0x0060BE66)),  # MobileObject
    (0x0060BEE6, copy_run(0x0060BE93)),  # MobileObject
    (0x00639FD3, jmp_run(0x00639F7A)),  # Object
    (0x00639FFB, jmp_run(0x00639FD3)),  # Object
    (0x0063A023, copy_run(0x00639FFB)),  # Object
    (0x0063A0B3, jmp_run(0x0063A023)),  # Object
    (0x0063A0E3, copy_run(0x0063A0B3)),  # Object
    (0x0063A197, jmp_run(0x0063A0E3)),  # Object
    (0x0063A1E2, copy_run(0x0063A197)),  # Object
    (0x0063A216, jmp_run(0x0063A1E2)),  # Object
    (0x0063A2E8, copy_run(0x0063A216)),  # Object
    (0x0063A334, jmp_run(0x0063A2E8)),  # Object
    (0x0063A365, copy_run(0x0063A334)),  # Object
    (0x0063A396, jmp_run(0x0063A365)),  # Object
    (0x0063A43B, jmp_run(0x0063A396)),  # Object
    (0x0063A527, copy_run(0x0063A43B)),  # Object
    (0x0063A7A6, copy_run(0x0063A527)),  # Object
    (0x0063A7EA, copy_run(0x0063A7A6)),  # Object
    (0x0063A816, jmp_run(0x0063A7EA)),  # Object
    (0x0063A9C2, copy_run(0x0063A816)),  # Object
    (0x0063AA28, copy_run(0x0063A9C2)),  # Object
    (0x0063AA94, jmp_run(0x0063AA28)),  # Object
    (0x0063ABF1, jmp_run(0x0063AA94)),  # Object
    (0x0063B368, copy_run(0x0063ABF1)),  # Object
    (0x0063B397, jmp_run(0x0063B368)),  # Object
    (0x0063B426, copy_run(0x0063B397)),  # Object
    (0x0063B4E3, copy_run(0x0063B426)),  # Object
    (0x0063B562, copy_run(0x0063B4E3)),  # Object
    (0x0063B5DB, jmp_run(0x0063B562)),  # Object
    (0x0063B5F5, jmp_run(0x0063B5DB)),  # Object
    (0x0063B627, copy_run(0x0063B5F5)),  # Object
    (0x0063B671, jmp_run(0x0063B627)),  # Object
    (0x0063B917, jmp_run(0x0063B671)),  # Object
    (0x0063B9B3, jmp_run(0x0063B917)),  # Object
    (0x0063B9F5, jmp_run(0x0063B9B3)),  # Object
    (0x0063BA71, jmp_run(0x0063B9F5)),  # Object
    (0x0063BAF8, jmp_run(0x0063BA71)),  # Object
    (0x0063BB25, copy_run(0x0063BAF8)),  # Object
    (0x0063BB57, jmp_run(0x0063BB25)),  # Object
    (0x0063BCA4, copy_run(0x0063BB57)),  # Object
    (0x0063BD38, jmp_run(0x0063BCA4)),  # Object
    (0x0063BD68, copy_run(0x0063BD38)),  # Object
    (0x0063BDB7, jmp_run(0x0063BD68)),  # Object
    (0x0063BDD1, jmp_run(0x0063BDB7)),  # Object
    (0x0063BE01, copy_run(0x0063BDD1)),  # Object
    (0x0063BE48, copy_run(0x0063BE01)),  # Object
    (0x0063BE76, jmp_run(0x0063BE48)),  # Object
    (0x0063BEF2, jmp_run(0x0063BE76)),  # Object
    (0x0063C142, copy_run(0x0063BEF2)),  # Object
    (0x0063C172, jmp_run(0x0063C142)),  # Object
    (0x0063C1B1, jmp_run(0x0063C172)),  # Object
    (0x0063C25A, jmp_run(0x0063C1B1)),  # Object
    (0x0063C2D7, jmp_run(0x0063C25A)),  # Object
    (0x0063C433, jmp_run(0x0063C2D7)),  # Object
    (0x0063C7FB, jmp_run(0x0063C433)),  # Object
    (0x0063C8F6, jmp_run(0x0063C7FB)),  # Object
    (0x0063C937, jmp_run(0x0063C8F6)),  # Object
    (0x0063C968, copy_run(0x0063C937)),  # Object
    (0x0063C9A4, copy_run(0x0063C968)),  # Object
    (0x0063C9F7, jmp_run(0x0063C9A4)),  # Object
    (0x0063CC73, jmp_run(0x0063C9F7)),  # Object
    (0x0063CF53, jmp_run(0x0063CC73)),  # Object
    (0x0063CFB9, jmp_run(0x0063CF53)),  # Object
    (0x0063D106, copy_run(0x0063CFB9)),  # Object
    (0x0063D21A, jmp_run(0x0063D106)),  # Object
    (0x0063D245, copy_run(0x0063D21A)),  # Object
    (0x0063D2B4, jmp_run(0x0063D245)),  # Object
    (0x0063D331, jmp_run(0x0063D2B4)),  # Object
    (0x0063D4B4, jmp_run(0x0063D331)),  # Object
    (0x0063D554, jmp_run(0x0063D4B4)),  # Object
    (0x0063D5F8, jmp_run(0x0063D554)),  # Object
    (0x0063D652, jmp_run(0x0063D5F8)),  # Object
    (0x0063D6C2, copy_run(0x0063D652)),  # Object
    (0x0063D703, copy_run(0x0063D6C2)),  # Object
    (0x0063D73A, jmp_run(0x0063D703)),  # Object
    (0x0063D751, jmp_run(0x0063D73A)),  # Object
    (0x0063D797, jmp_run(0x0063D751)),  # Object
    (0x0063D7BA, jmp_run(0x0063D797)),  # Object
    (0x0063D885, copy_run(0x0063D7BA)),  # Object
    (0x0063DBAB, copy_run(0x0063D885)),  # Object
    (0x0063DD1A, jmp_run(0x0063DBAB)),  # Object
    (0x0063DE8A, copy_run(0x0063DD1A)),  # Object
    (0x0063DEA3, copy_run(0x0063DE8A)),  # Object
    (0x0063DF27, copy_run(0x0063DEA3)),  # Object
    (0x0063E369, copy_run(0x0063DF27)),  # Object
    (0x0063E396, jmp_run(0x0063E369)),  # Object
    (0x0063E4C4, copy_run(0x0063E396)),  # Object
    (0x0063E50A, copy_run(0x0063E4C4)),  # Object
    (0x0063E5D5, jmp_run(0x0063E50A)),  # Object
    (0x0063E635, jmp_run(0x0063E5D5)),  # Object
    (0x0063E7E5, copy_run(0x0063E635)),  # Object
    (0x0063E828, copy_run(0x0063E7E5)),  # Object
    (0x0063E87B, jmp_run(0x0063E828)),  # Object3D
    (0x0063E8A5, copy_run(0x0063E87B)),  # Object3D
    (0x0063ECB1, jmp_run(0x0063E8A3)),  # Object3D
    (0x0063ECD5, jmp_run(0x0063ECB1)),  # Object3D
    (0x0063ED35, jmp_run(0x0063ECD5)),  # Object3D
    (0x0063ED5A, jmp_run(0x0063ED35)),  # Object3D
    (0x0063EDAB, copy_run(0x0063ED5A)),  # Object3D
    (0x0063EE96, jmp_run(0x0063EDAB)),  # Object3D
    (0x0063EF86, copy_run(0x0063EE96)),  # Object3D
    (0x0063F024, copy_run(0x0063EF86)),  # Object3D
    (0x0063F377, jmp_run(0x0063F024)),  # Object3D
    (0x0063F438, jmp_run(0x0063F377)),  # Object3D
    (0x0063F4D7, jmp_run(0x0063F438)),  # Object3D
    (0x0063F54A, copy_run(0x0063F4D7)),  # Object3D
    (0x0063F5A3, copy_run(0x0063F54A)),  # OnMapTrajectory
    (0x0063F5CB, copy_run(0x0063F5A3)),  # OnMapTrajectory
    (0x0063F635, jmp_run(0x0063F5CB)),  # OnMapTrajectory
    (0x0063F6A3, copy_run(0x0063F633)),  # OnMapTrajectory
    (0x0063F892, jmp_run(0x0063F6A3)),  # OnMapTrajectory
    (0x006AF833, jmp_run(0x006AF72B)),  # PSysProperties
    (0x006AF867, copy_run(0x006AF833)),  # PSysProperties
    (0x006AFA8B, copy_run(0x006AF867)),  # PSysProperties
    (0x006AFB22, copy_run(0x006AFA8B)),  # PSysProperties
    (0x006AFB82, copy_run(0x006AFB22)),  # PSysProperties
    (0x006AFBE2, copy_run(0x006AFB82)),  # PSysProperties
    (0x006AFEEB, copy_run(0x006AFBE2)),  # PSysProperties
    (0x006B0092, jmp_run(0x006AFEEB)),  # PSysProperties
    (0x006B01EB, copy_run(0x006B0092)),  # PSysProperties
    (0x006B0487, copy_run(0x006B01EB)),  # PSysProperties
    (0x006B05BA, jmp_run(0x006B0487)),  # PSysProperties
    (0x006B09B4, jmp_run(0x006B05BA)),  # PSysProperties
    (0x006B09E4, copy_run(0x006B09B4)),  # PSysProperties
    (0x006B0A1B, jmp_run(0x006B09E4)),  # PSysProperties
    (0x006B0A3B, jmp_run(0x006B0A14)),  # PSysProperties
    (0x006B0A95, jmp_run(0x006B0A33)),  # PSysProperties
    (0x006B0C8A, copy_run(0x006B0A95)),  # PSysProperties
    (0x006B0F46, copy_run(0x006B0C8A)),  # PSysProperties
    (0x006B0F94, jmp_run(0x006B0F41)),  # PSysProperties
    (0x006B1184, copy_run(0x006B0F94)),  # PSysProperties
    (0x006B12E3, copy_run(0x006B1184)),  # PSysProperties
    (0x006B1413, jmp_run(0x006B12E3)),  # PSysProperties
    (0x006B159A, jmp_run(0x006B1413)),  # PSysProperties
    (0x006B15CA, copy_run(0x006B159A)),  # PSysProperties
    (0x006B15FA, jmp_run(0x006B15CA)),  # PSysProperties
    (0x006B1658, jmp_run(0x006B15FA)),  # PSysProperties
    (0x006B1BF6, jmp_run(0x006B1658)),  # PSysProperties
    (0x006B1CCB, copy_run(0x006B1BF6)),  # PSysProperties
    (0x006B1E39, jmp_run(0x006B1CCB)),  # PSysProperties
    (0x006B26DA, jmp_run(0x006B1E39)),  # PSysProperties
    (0x006B29B5, jmp_run(0x006B26DA)),  # PSysProperties
    (0x006B2A51, jmp_run(0x006B29B5)),  # PSysProperties
    (0x006B2B24, copy_run(0x006B2A51)),  # PSysProperties
    (0x006B2ECA, copy_run(0x006B2B24)),  # PSysProperties
    (0x006B30D6, jmp_run(0x006B2ECA)),  # PSysProperties
    (0x006B31A4, copy_run(0x006B30D1)),  # PSysProperties
    (0x006B32E9, copy_run(0x006B31A4)),  # PSysProperties
    (0x006B3467, copy_run(0x006B32E9)),  # PSysProperties
    (0x006B349A, jmp_run(0x006B3467)),  # PSysProperties
    (0x006B3742, copy_run(0x006B349A)),  # PSysProperties
    (0x006B3A12, jmp_run(0x006B3742)),  # PSysProperties
    (0x006B3AB1, jmp_run(0x006B3A12)),  # PSysProperties
    (0x006B3B84, copy_run(0x006B3AB1)),  # PSysProperties
    (0x006B3C21, copy_run(0x006B3B84)),  # PSysProperties
    (0x006B3CF4, jmp_run(0x006B3C21)),  # PSysProperties
    (0x006B3E23, copy_run(0x006B3CF4)),  # PSysProperties
    (0x006B3E87, copy_run(0x006B3E23)),  # PSysProperties
    (0x006B3FD2, jmp_run(0x006B3E87)),  # PSysProperties
    (0x006B41C8, copy_run(0x006B3FD2)),  # PSysProperties
    (0x006B4268, copy_run(0x006B41C8)),  # PSysProperties
    (0x006B42AA, copy_run(0x006B4268)),  # PSysProperties
    (0x006B4371, jmp_run(0x006B42AA)),  # PSysProperties
    (0x006B4406, copy_run(0x006B4371)),  # PSysProperties
    (0x006B4468, copy_run(0x006B4406)),  # PSysProperties
    (0x006B4652, jmp_run(0x006B4468)),  # PSysProperties
    (0x006B4687, copy_run(0x006B4652)),  # PSysProperties
    (0x006B4BE5, copy_run(0x006B4687)),  # PSysProperties
    (0x006B4D41, copy_run(0x006B4BE5)),  # PSysProperties
    (0x006B4E44, copy_run(0x006B4D41)),  # PSysProperties
    (0x006B520A, copy_run(0x006B4E44)),  # PSysProperties
    (0x006B5477, jmp_run(0x006B520A)),  # PSysProperties
    (0x006B5A95, jmp_run(0x006B5477)),  # PSysProperties
    (0x006B5AD7, jmp_run(0x006B5A95)),  # PSysProperties
    (0x006B5E08, copy_run(0x006B5AD7)),  # PSysProperties
    (0x006B5E68, copy_run(0x006B5E08)),  # PSysProperties
    (0x006B60CA, copy_run(0x006B5E68)),  # PSysProperties
    (0x006B6212, jmp_run(0x006B60CA)),  # PSysProperties
    (0x006B6271, jmp_run(0x006B6212)),  # PSysProperties
    (0x006B6476, jmp_run(0x006B6271)),  # PSysProperties
    (0x006B64A3, copy_run(0x006B6476)),  # PSysProperties
    (0x006B64E3, copy_run(0x006B64A3)),  # PSysProperties
    (0x006B6545, copy_run(0x006B64E3)),  # PSysProperties
    (0x006B665A, jmp_run(0x006B6545)),  # PSysProperties
    (0x006B66B5, jmp_run(0x006B665A)),  # PSysProperties
    (0x006B6723, copy_run(0x006B66B5)),  # PSysProperties
    (0x006B6842, copy_run(0x006B6723)),  # PSysProperties
    (0x006B6998, jmp_run(0x006B6842)),  # PSysProperties
    (0x006B6A64, copy_run(0x006B6998)),  # PSysProperties
    (0x006B6DB5, jmp_run(0x006B6A64)),  # PSysProperties
    (0x006B6DEA, copy_run(0x006B6DB5)),  # PSysProperties
    (0x006B7192, jmp_run(0x006B6DEA)),  # PSysProperties
    (0x006B71C3, copy_run(0x006B7192)),  # PSysProperties
    (0x006B72D4, jmp_run(0x006B71C3)),  # PSysProperties
    (0x006B7512, jmp_run(0x006B72D4)),  # PSysProperties
    (0x006B7BF1, jmp_run(0x006B7512)),  # PSysProperties
    (0x006B7C6A, copy_run(0x006B7BF1)),  # PSysProperties
    (0x006B7DA9, copy_run(0x006B7C6A)),  # PSysProperties
    (0x006B808B, copy_run(0x006B7DA9)),  # PSysProperties
    (0x006B819B, jmp_run(0x006B808B)),  # PSysProperties
    (0x006B8253, jmp_run(0x006B819B)),  # PSysProperties
    (0x006B83F7, jmp_run(0x006B8253)),  # PSysProperties
    (0x006B84E4, copy_run(0x006B83F7)),  # PSysProperties
    (0x006B8652, jmp_run(0x006B84E4)),  # PSysProperties
    (0x006B89A9, copy_run(0x006B8652)),  # PSysProperties
    (0x006B8C66, copy_run(0x006B89A9)),  # PSysProperties
    (0x006B925A, jmp_run(0x006B8C66)),  # PSysProperties
    (0x006B92A1, copy_run(0x006B925A)),  # PSysProperties
    (0x006B934A, copy_run(0x006B92A1)),  # PSysProperties
    (0x006B9421, copy_run(0x006B934A)),  # PSysProperties
    (0x006B945A, jmp_run(0x006B9421)),  # PSysProperties
    (0x006B94A1, copy_run(0x006B945A)),  # PSysProperties
    (0x006B94F1, jmp_run(0x006B94A1)),  # PSysProperties
    (0x006B9523, copy_run(0x006B94F1)),  # PSysProperties
    (0x006B979B, jmp_run(0x006B9523)),  # PSysProperties
    (0x006BA479, jmp_run(0x006B979B)),  # PSysProperties
    (0x006BA4AB, copy_run(0x006BA479)),  # PSysProperties
    (0x006BA4DB, jmp_run(0x006BA4AB)),  # PSysProperties
    (0x006BA508, copy_run(0x006BA4DB)),  # PSysProperties
    (0x006BA538, jmp_run(0x006BA508)),  # PSysProperties
    (0x006BA56B, copy_run(0x006BA538)),  # PSysProperties
    (0x006BA59B, jmp_run(0x006BA56B)),  # PSysProperties
    (0x006BA5C8, copy_run(0x006BA59B)),  # PSysProperties
    (0x006BA5F8, jmp_run(0x006BA5C8)),  # PSysProperties
    (0x006BA666, copy_run(0x006BA5F8)),  # PSysProperties
    (0x006BA6F6, jmp_run(0x006BA666)),  # PSysProperties
    (0x006BA728, copy_run(0x006BA6F6)),  # PSysProperties
    (0x006BA758, jmp_run(0x006BA728)),  # PSysProperties
    (0x006BA788, copy_run(0x006BA758)),  # PSysProperties
    (0x006BA7B8, jmp_run(0x006BA788)),  # PSysProperties
    (0x006BA7E8, copy_run(0x006BA7B8)),  # PSysProperties
    (0x006BA818, jmp_run(0x006BA7E8)),  # PSysProperties
    (0x006BA84B, copy_run(0x006BA818)),  # PSysProperties
    (0x006BA87B, jmp_run(0x006BA84B)),  # PSysProperties
    (0x006BA8A8, copy_run(0x006BA87B)),  # PSysProperties
    (0x006BA8D8, jmp_run(0x006BA8A8)),  # PSysProperties
    (0x006BA90B, copy_run(0x006BA8D8)),  # PSysProperties
    (0x006BA93B, jmp_run(0x006BA90B)),  # PSysProperties
    (0x006BA968, copy_run(0x006BA93B)),  # PSysProperties
    (0x006BA998, jmp_run(0x006BA968)),  # PSysProperties
    (0x006BA9CB, copy_run(0x006BA998)),  # PSysProperties
    (0x006BA9FB, jmp_run(0x006BA9CB)),  # PSysProperties
    (0x006BB705, copy_run(0x006BA9FB)),  # PSysProperties
    (0x006BB7AB, copy_run(0x006BB705)),  # PSysProperties
    (0x006BB809, copy_run(0x006BB7A9)),  # PSysProperties
    (0x006BB849, copy_run(0x006BB809)),  # PSysProperties
    (0x006BB8A9, copy_run(0x006BB849)),  # PSysProperties
    (0x006BB915, jmp_run(0x006BB8A9)),  # PSysProperties
    (0x006BB97B, jmp_run(0x006BB915)),  # PSysProperties
    (0x006BB9B9, jmp_run(0x006BB979)),  # PSysProperties
    (0x006BBA19, jmp_run(0x006BB9B9)),  # PSysProperties
    (0x006BBA59, jmp_run(0x006BBA19)),  # PSysProperties
    (0x006BBAB9, jmp_run(0x006BBA59)),  # PSysProperties
    (0x006BBAF9, jmp_run(0x006BBAB9)),  # PSysProperties
    (0x006BBB59, jmp_run(0x006BBAF9)),  # PSysProperties
    (0x006BBBA7, copy_run(0x006BBB59)),  # PSysProperties
    (0x006BBC17, jmp_run(0x006BBBA7)),  # PSysProperties
    (0x006BBCF9, jmp_run(0x006BBC17)),  # PSysProperties
    (0x006BBD59, jmp_run(0x006BBCF9)),  # PSysProperties
    (0x006BBDA7, copy_run(0x006BBD59)),  # PSysProperties
    (0x006BBE17, jmp_run(0x006BBDA7)),  # PSysProperties
    (0x006BBF02, copy_run(0x006BBE17)),  # PSysProperties
    (0x006BBF72, jmp_run(0x006BBF02)),  # PSysProperties
    (0x006BBFC2, copy_run(0x006BBF72)),  # PSysProperties
    (0x006BC032, jmp_run(0x006BBFC2)),  # PSysProperties
    (0x006BC259, jmp_run(0x006BC032)),  # PSysProperties
    (0x006BC2B9, jmp_run(0x006BC259)),  # PSysProperties
    (0x006BC2F9, jmp_run(0x006BC2B9)),  # PSysProperties
    (0x006BC359, jmp_run(0x006BC2F9)),  # PSysProperties
    (0x006BC439, jmp_run(0x006BC359)),  # PSysProperties
    (0x006BC499, jmp_run(0x006BC439)),  # PSysProperties
    (0x006BC9B4, jmp_run(0x006BC499)),  # PSysProperties
    (0x006BCA43, copy_run(0x006BC9B4)),  # PSysProperties
    (0x006BCA74, jmp_run(0x006BCA43)),  # PSysProperties
    (0x006BCB0A, copy_run(0x006BCA74)),  # PSysProperties
    (0x006BCB34, jmp_run(0x006BCB0A)),  # PSysProperties
    (0x006BCB8A, copy_run(0x006BCB34)),  # PSysProperties
    (0x006BCBDA, jmp_run(0x006BCB8A)),  # PSysProperties
    (0x006BCC04, copy_run(0x006BCBDA)),  # PSysProperties
    (0x006BCC5A, jmp_run(0x006BCC04)),  # PSysProperties
    (0x006BCCAA, copy_run(0x006BCC5A)),  # PSysProperties
    (0x006BCCD4, jmp_run(0x006BCCAA)),  # PSysProperties
    (0x006BCD2A, copy_run(0x006BCCD4)),  # PSysProperties
    (0x006BCD94, jmp_run(0x006BCD2A)),  # PSysProperties
    (0x006BCE44, copy_run(0x006BCD94)),  # PSysProperties
    (0x006BFE4B, copy_run(0x006BCE44)),  # PSysProperties
    (0x006BFF38, jmp_run(0x006BFE4B)),  # PSysProperties
    (0x006BFF68, copy_run(0x006BFF38)),  # PSysProperties
    (0x006BFFE4, copy_run(0x006BFF68)),  # PSysProperties
    (0x006C0084, copy_run(0x006BFFE4)),  # PSysProperties
    (0x006C00B4, jmp_run(0x006C0084)),  # PSysProperties
    (0x006C0104, copy_run(0x006C00B4)),  # PSysProperties
    (0x006C0174, jmp_run(0x006C0104)),  # PSysProperties
    (0x006C0247, copy_run(0x006C0174)),  # PSysProperties
    (0x006C0274, jmp_run(0x006C0247)),  # PSysProperties
    (0x006C02A4, copy_run(0x006C0274)),  # PSysProperties
    (0x006C0337, jmp_run(0x006C02A4)),  # PSysProperties
    (0x006C03BA, jmp_run(0x006C0337)),  # PSysProperties
    (0x006C03E4, copy_run(0x006C03BA)),  # PSysProperties
    (0x006C046A, copy_run(0x006C03E4)),  # PSysProperties
    (0x006C04EA, copy_run(0x006C046A)),  # PSysProperties
    (0x006C0514, jmp_run(0x006C04EA)),  # PSysProperties
    (0x006C059A, jmp_run(0x006C0514)),  # PSysProperties
    (0x006C05D9, jmp_run(0x006C059A)),  # PSysProperties
    (0x006C0604, copy_run(0x006C05D9)),  # PSysProperties
    (0x006C0649, copy_run(0x006C0604)),  # PSysProperties
    (0x006C06A5, copy_run(0x006C0649)),  # PSysProperties
    (0x006C06D4, jmp_run(0x006C06A5)),  # PSysProperties
    (0x006C0735, jmp_run(0x006C06D4)),  # PSysProperties
    (0x006C0798, jmp_run(0x006C0735)),  # PSysProperties
    (0x006C07C4, copy_run(0x006C0798)),  # PSysProperties
    (0x006C0828, copy_run(0x006C07C4)),  # PSysProperties
    (0x006C08A4, copy_run(0x006C0828)),  # PSysProperties
    (0x006C094B, copy_run(0x006C08A4)),  # PSysProperties
    (0x006C0974, jmp_run(0x006C094B)),  # PSysProperties
    (0x006C09CB, copy_run(0x006C0974)),  # PSysProperties
    (0x006C0A09, copy_run(0x006C09CB)),  # PSysProperties
    (0x006C0A34, jmp_run(0x006C0A09)),  # PSysProperties
    (0x006C0A79, jmp_run(0x006C0A34)),  # PSysProperties
    (0x006C0ACB, copy_run(0x006C0A79)),  # PSysProperties
    (0x006C0AF4, jmp_run(0x006C0ACB)),  # PSysProperties
    (0x006C0B4B, copy_run(0x006C0AF4)),  # PSysProperties
    (0x006C0B89, copy_run(0x006C0B4B)),  # PSysProperties
    (0x006C0BB4, jmp_run(0x006C0B89)),  # PSysProperties
    (0x006C0BF9, jmp_run(0x006C0BB4)),  # PSysProperties
    (0x006C0C35, jmp_run(0x006C0BF9)),  # PSysProperties
    (0x006C0C64, copy_run(0x006C0C35)),  # PSysProperties
    (0x006C0CA5, copy_run(0x006C0C64)),  # PSysProperties
    (0x006C0CD8, jmp_run(0x006C0CA5)),  # PSysProperties
    (0x006C0D08, copy_run(0x006C0CD8)),  # PSysProperties
    (0x006C0D65, copy_run(0x006C0D08)),  # PSysProperties
    (0x006C0D94, jmp_run(0x006C0D65)),  # PSysProperties
    (0x006C0DF5, jmp_run(0x006C0D94)),  # PSysProperties
    (0x006C0E47, copy_run(0x006C0DF5)),  # PSysProperties
    (0x006C0E74, jmp_run(0x006C0E47)),  # PSysProperties
    (0x006C0EC7, copy_run(0x006C0E74)),  # PSysProperties
    (0x006C0F17, jmp_run(0x006C0EC7)),  # PSysProperties
    (0x006C0F44, copy_run(0x006C0F17)),  # PSysProperties
    (0x006C0F97, jmp_run(0x006C0F44)),  # PSysProperties
    (0x006C1014, jmp_run(0x006C0F97)),  # PSysProperties
    (0x006C10A9, copy_run(0x006C1014)),  # PSysProperties
    (0x006C10D4, jmp_run(0x006C10A9)),  # PSysProperties
    (0x006C1119, jmp_run(0x006C10D4)),  # PSysProperties
    (0x006C1184, copy_run(0x006C1119)),  # PSysProperties
    (0x006C1234, jmp_run(0x006C1184)),  # PSysProperties
    (0x006C12E4, copy_run(0x006C1234)),  # PSysProperties
    (0x006C1365, copy_run(0x006C12E4)),  # PSysProperties
    (0x006C1394, jmp_run(0x006C1365)),  # PSysProperties
    (0x006C13D5, jmp_run(0x006C1394)),  # PSysProperties
    (0x006C1415, jmp_run(0x006C13D5)),  # PSysProperties
    (0x006C1444, copy_run(0x006C1415)),  # PSysProperties
    (0x006C1485, copy_run(0x006C1444)),  # PSysProperties
    (0x006C14F4, jmp_run(0x006C1485)),  # PSysProperties
    (0x006C15A4, copy_run(0x006C14F4)),  # PSysProperties
    (0x006C1654, jmp_run(0x006C15A4)),  # PSysProperties
    (0x006C16D9, jmp_run(0x006C1654)),  # PSysProperties
    (0x006C1705, copy_run(0x006C16D9)),  # PSysProperties
    (0x006C1749, copy_run(0x006C1704)),  # PSysProperties
    (0x006C1797, jmp_run(0x006C1749)),  # PSysProperties
    (0x006C17C4, copy_run(0x006C1797)),  # PSysProperties
    (0x006C1817, jmp_run(0x006C17C4)),  # PSysProperties
    (0x006C184B, copy_run(0x006C1817)),  # PSysProperties
    (0x006C187B, jmp_run(0x006C184B)),  # PSysProperties
    (0x006C1932, jmp_run(0x006C187B)),  # PSysProperties
    (0x006C1972, jmp_run(0x006C1932)),  # PSysProperties
    (0x006C1A32, jmp_run(0x006C1972)),  # PSysProperties
    (0x006C1A68, copy_run(0x006C1A32)),  # PSysProperties
    (0x006C1A98, jmp_run(0x006C1A68)),  # PSysProperties
    (0x006C1ACB, copy_run(0x006C1A98)),  # PSysProperties
    (0x006C1AFB, jmp_run(0x006C1ACB)),  # PSysProperties
    (0x006C1B28, copy_run(0x006C1AFB)),  # PSysProperties
    (0x006C1B58, jmp_run(0x006C1B28)),  # PSysProperties
    (0x006C1BB2, jmp_run(0x006C1B58)),  # PSysProperties
    (0x006C1BE4, copy_run(0x006C1BB2)),  # PSysProperties
    (0x006C1C42, copy_run(0x006C1BE4)),  # PSysProperties
    (0x006C1CA8, copy_run(0x006C1C42)),  # PSysProperties
    (0x006C1CD4, jmp_run(0x006C1CA8)),  # PSysProperties
    (0x006C1D38, jmp_run(0x006C1CD4)),  # PSysProperties
    (0x006C1D92, jmp_run(0x006C1D38)),  # PSysProperties
    (0x006C1DC4, copy_run(0x006C1D92)),  # PSysProperties
    (0x006C1E22, copy_run(0x006C1DC4)),  # PSysProperties
    (0x006C1E58, jmp_run(0x006C1E22)),  # PSysProperties
    (0x006C1E88, copy_run(0x006C1E58)),  # PSysProperties
    (0x006C1F46, copy_run(0x006C1E88)),  # PSysProperties
    (0x006C1F74, jmp_run(0x006C1F46)),  # PSysProperties
    (0x006C2036, jmp_run(0x006C1F74)),  # PSysProperties
    (0x006C2068, copy_run(0x006C2036)),  # PSysProperties
    (0x006C2098, jmp_run(0x006C2068)),  # PSysProperties
    (0x006C20E4, copy_run(0x006C2098)),  # PSysProperties
    (0x006C2114, jmp_run(0x006C20E4)),  # PSysProperties
    (0x006C2164, copy_run(0x006C2114)),  # PSysProperties
    (0x006C2198, jmp_run(0x006C2164)),  # PSysProperties
    (0x006C21C8, copy_run(0x006C2198)),  # PSysProperties
    (0x006C2234, jmp_run(0x006C21C8)),  # PSysProperties
    (0x006C22E9, copy_run(0x006C2234)),  # PSysProperties
    (0x006C2314, jmp_run(0x006C22E9)),  # PSysProperties
    (0x006C2389, copy_run(0x006C2314)),  # PSysProperties
    (0x006C23B8, jmp_run(0x006C2389)),  # PSysProperties
    (0x006C23E8, copy_run(0x006C23B8)),  # PSysProperties
    (0x006C2454, jmp_run(0x006C23E8)),  # PSysProperties
    (0x006C2514, jmp_run(0x006C2454)),  # PSysProperties
    (0x006C25B3, jmp_run(0x006C2514)),  # PSysProperties
    (0x006C25F2, jmp_run(0x006C25B3)),  # PSysProperties
    (0x006C2643, copy_run(0x006C25F2)),  # PSysProperties
    (0x006C26E7, copy_run(0x006C2643)),  # PSysProperties
    (0x006C2722, copy_run(0x006C26E7)),  # PSysProperties
    (0x006C27C7, copy_run(0x006C2722)),  # PSysProperties
    (0x006C2839, jmp_run(0x006C27C7)),  # PSysProperties
    (0x006C2872, jmp_run(0x006C2839)),  # PSysProperties
    (0x006C28E9, copy_run(0x006C2872)),  # PSysProperties
    (0x006C2987, copy_run(0x006C28E9)),  # PSysProperties
    (0x006C29C2, copy_run(0x006C2987)),  # PSysProperties
    (0x006C2A67, copy_run(0x006C29C2)),  # PSysProperties
    (0x006C2B19, jmp_run(0x006C2A67)),  # PSysProperties
    (0x006C2B52, jmp_run(0x006C2B19)),  # PSysProperties
    (0x006C2C09, copy_run(0x006C2B52)),  # PSysProperties
    (0x006C2CE2, copy_run(0x006C2C09)),  # PSysProperties
    (0x006C2DBB, jmp_run(0x006C2CE2)),  # PSysProperties
    (0x006C2DEB, copy_run(0x006C2DBB)),  # PSysProperties
    (0x006C2E18, jmp_run(0x006C2DEB)),  # PSysProperties
    (0x006C2E48, copy_run(0x006C2E18)),  # PSysProperties
    (0x006C2ED2, jmp_run(0x006C2E48)),  # PSysProperties
    (0x006C2F5B, jmp_run(0x006C2ED2)),  # PSysProperties
    (0x006C2F8B, copy_run(0x006C2F5B)),  # PSysProperties
    (0x006C2FB8, jmp_run(0x006C2F8B)),  # PSysProperties
    (0x006C2FE8, copy_run(0x006C2FB8)),  # PSysProperties
    (0x006C3018, jmp_run(0x006C2FE8)),  # PSysProperties
    (0x006C3048, copy_run(0x006C3018)),  # PSysProperties
    (0x006C3078, jmp_run(0x006C3048)),  # PSysProperties
    (0x006C30A8, copy_run(0x006C3078)),  # PSysProperties
    (0x006C30D8, jmp_run(0x006C30A8)),  # PSysProperties
    (0x006C3108, copy_run(0x006C30D8)),  # PSysProperties
    (0x006C3138, jmp_run(0x006C3108)),  # PSysProperties
    (0x006C3168, copy_run(0x006C3138)),  # PSysProperties
    (0x006C3198, jmp_run(0x006C3168)),  # PSysProperties
    (0x006C31C8, copy_run(0x006C3198)),  # PSysProperties
    (0x006C3209, copy_run(0x006C31C8)),  # PSysProperties
    (0x006C3234, jmp_run(0x006C3209)),  # PSysProperties
    (0x006C3279, jmp_run(0x006C3234)),  # PSysProperties
    (0x006C32A8, copy_run(0x006C3279)),  # PSysProperties
    (0x006C32D8, jmp_run(0x006C32A8)),  # PSysProperties
    (0x006C3344, copy_run(0x006C32D8)),  # PSysProperties
    (0x006C33E5, copy_run(0x006C3344)),  # PSysProperties
    (0x006C3422, copy_run(0x006C33E5)),  # PSysProperties
    (0x006C3485, copy_run(0x006C3422)),  # PSysProperties
    (0x006C34B8, jmp_run(0x006C3485)),  # PSysProperties
    (0x006C34E8, copy_run(0x006C34B8)),  # PSysProperties
    (0x006C3582, copy_run(0x006C34E8)),  # PSysProperties
    (0x006C3682, copy_run(0x006C3582)),  # PSysProperties
    (0x006C3754, jmp_run(0x006C3682)),  # PSysProperties
    (0x006C37D9, jmp_run(0x006C3754)),  # PSysProperties
    (0x006C3804, copy_run(0x006C37D9)),  # PSysProperties
    (0x006C3849, copy_run(0x006C3804)),  # PSysProperties
    (0x006C3902, copy_run(0x006C3849)),  # PSysProperties
    (0x006C3A72, jmp_run(0x006C3902)),  # PSysProperties
    (0x006C3B58, jmp_run(0x006C3A72)),  # PSysProperties
    (0x006C3B88, copy_run(0x006C3B58)),  # PSysProperties
    (0x006C3BBB, jmp_run(0x006C3B88)),  # PSysProperties
    (0x006C3BEB, copy_run(0x006C3BBB)),  # PSysProperties
    (0x006C3C3B, jmp_run(0x006C3BEB)),  # PSysProperties
    (0x006C3C64, copy_run(0x006C3C3B)),  # PSysProperties
    (0x006C3CBB, jmp_run(0x006C3C64)),  # PSysProperties
    (0x006C3D0B, copy_run(0x006C3CBB)),  # PSysProperties
    (0x006C3D34, jmp_run(0x006C3D0B)),  # PSysProperties
    (0x006C3D8B, copy_run(0x006C3D34)),  # PSysProperties
    (0x006C3E25, copy_run(0x006C3D8B)),  # PSysProperties
    (0x006C3E62, copy_run(0x006C3E25)),  # PSysProperties
    (0x006C3F05, copy_run(0x006C3E62)),  # PSysProperties
    (0x006C3F38, jmp_run(0x006C3F05)),  # PSysProperties
    (0x006C3F68, copy_run(0x006C3F38)),  # PSysProperties
    (0x006C3FF8, jmp_run(0x006C3F68)),  # PSysProperties
    (0x006C4032, jmp_run(0x006C3FF8)),  # PSysProperties
    (0x006C40C8, copy_run(0x006C4032)),  # PSysProperties
    (0x006C4134, jmp_run(0x006C40C8)),  # PSysProperties
    (0x006C41E4, copy_run(0x006C4134)),  # PSysProperties
    (0x006C42F2, jmp_run(0x006C41E4)),  # PSysProperties
    (0x006C43B8, jmp_run(0x006C42F2)),  # PSysProperties
    (0x006C43E8, copy_run(0x006C43B8)),  # PSysProperties
    (0x006C4418, jmp_run(0x006C43E8)),  # PSysProperties
    (0x006C4448, copy_run(0x006C4418)),  # PSysProperties
    (0x006C44B3, jmp_run(0x006C4448)),  # PSysProperties
    (0x006C44F2, jmp_run(0x006C44B3)),  # PSysProperties
    (0x006C4563, copy_run(0x006C44F2)),  # PSysProperties
    (0x006C4612, jmp_run(0x006C4563)),  # PSysProperties
    (0x006C4713, jmp_run(0x006C4612)),  # PSysProperties
    (0x006C4752, jmp_run(0x006C4713)),  # PSysProperties
    (0x006C47E3, copy_run(0x006C4752)),  # PSysProperties
    (0x006C485B, jmp_run(0x006C47E3)),  # PSysProperties
    (0x006C4892, jmp_run(0x006C485B)),  # PSysProperties
    (0x006C490B, copy_run(0x006C4892)),  # PSysProperties
    (0x006C4938, jmp_run(0x006C490B)),  # PSysProperties
    (0x006C4968, copy_run(0x006C4938)),  # PSysProperties
    (0x006C4A22, copy_run(0x006C4968)),  # PSysProperties
    (0x006C4BB2, jmp_run(0x006C4A22)),  # PSysProperties
    (0x006C4D42, copy_run(0x006C4BB2)),  # PSysProperties
    (0x006C4D82, copy_run(0x006C4D42)),  # PSysProperties
    (0x006C4E42, copy_run(0x006C4D82)),  # PSysProperties
    (0x006C4E7B, jmp_run(0x006C4E42)),  # PSysProperties
    (0x006C4EAB, copy_run(0x006C4E7B)),  # PSysProperties
    (0x006C4ED8, jmp_run(0x006C4EAB)),  # PSysProperties
    (0x006C4F08, copy_run(0x006C4ED8)),  # PSysProperties
    (0x006C4F38, jmp_run(0x006C4F08)),  # PSysProperties
    (0x006C4F68, copy_run(0x006C4F38)),  # PSysProperties
    (0x006C4FF4, jmp_run(0x006C4F68)),  # PSysProperties
    (0x006C50D2, jmp_run(0x006C4FF4)),  # PSysProperties
    (0x006C5112, jmp_run(0x006C50D2)),  # PSysProperties
    (0x006C5192, jmp_run(0x006C5112)),  # PSysProperties
    (0x006C51C8, copy_run(0x006C5192)),  # PSysProperties
    (0x006C51F8, jmp_run(0x006C51C8)),  # PSysProperties
    (0x006C5255, jmp_run(0x006C51F8)),  # PSysProperties
    (0x006C5284, copy_run(0x006C5255)),  # PSysProperties
    (0x006C52E5, copy_run(0x006C5284)),  # PSysProperties
    (0x006C531B, jmp_run(0x006C52E5)),  # PSysProperties
    (0x006C534B, copy_run(0x006C531B)),  # PSysProperties
    (0x006C5397, jmp_run(0x006C534B)),  # PSysProperties
    (0x006C53C4, copy_run(0x006C5397)),  # PSysProperties
    (0x006C5417, jmp_run(0x006C53C4)),  # PSysProperties
    (0x006C5467, copy_run(0x006C5417)),  # PSysProperties
    (0x006C5494, jmp_run(0x006C5467)),  # PSysProperties
    (0x006C54E7, copy_run(0x006C5494)),  # PSysProperties
    (0x006C5554, jmp_run(0x006C54E7)),  # PSysProperties
    (0x006C55E7, copy_run(0x006C5554)),  # PSysProperties
    (0x006C5614, jmp_run(0x006C55E7)),  # PSysProperties
    (0x006C5667, copy_run(0x006C5614)),  # PSysProperties
    (0x006C56D4, jmp_run(0x006C5667)),  # PSysProperties
    (0x006C5767, copy_run(0x006C56D4)),  # PSysProperties
    (0x006C5799, jmp_run(0x006C5767)),  # PSysProperties
    (0x006C57D9, jmp_run(0x006C5794)),  # PSysProperties
    (0x006C5818, jmp_run(0x006C57D9)),  # PSysProperties
    (0x006C598A, copy_run(0x006C5818)),  # PSysProperties
    (0x006C5A31, jmp_run(0x006C598A)),  # PSysProperties
    (0x006C5B22, copy_run(0x006C5A31)),  # PSysProperties
    (0x006C5C01, copy_run(0x006C5B22)),  # PSysProperties
    (0x006C5D58, jmp_run(0x006C5C01)),  # PSysProperties
    (0x006C5EA8, copy_run(0x006C5D58)),  # PSysProperties
    (0x006C5F71, jmp_run(0x006C5EA8)),  # PSysProperties
    (0x006C60F1, jmp_run(0x006C5F71)),  # PSysProperties
    (0x006C61A1, copy_run(0x006C60F1)),  # PSysProperties
    (0x006C628A, copy_run(0x006C61A1)),  # PSysProperties
    (0x006C63BA, jmp_run(0x006C628A)),  # PSysProperties
    (0x006C64EA, copy_run(0x006C63BA)),  # PSysProperties
    (0x006C661A, jmp_run(0x006C64EA)),  # PSysProperties
    (0x006C674A, copy_run(0x006C661A)),  # PSysProperties
    (0x006C687A, jmp_run(0x006C674A)),  # PSysProperties
    (0x006C6CA5, copy_run(0x006C687A)),  # PSysProperties
    (0x006C6D1B, jmp_run(0x006C6CA5)),  # PSysProperties
    (0x006C6E17, jmp_run(0x006C6D1B)),  # PSysProperties
    (0x006C7047, copy_run(0x006C6E17)),  # PSysProperties
    (0x006C7066, copy_run(0x006C7047)),  # PSysProperties
    (0x006C7167, copy_run(0x006C7066)),  # PSysProperties
    (0x006C7186, copy_run(0x006C7167)),  # PSysProperties
    (0x006C7287, copy_run(0x006C7186)),  # PSysProperties
    (0x006C72A6, copy_run(0x006C7287)),  # PSysProperties
    (0x006C73A7, copy_run(0x006C72A6)),  # PSysProperties
    (0x006C73C6, copy_run(0x006C73A7)),  # PSysProperties
    (0x006C74C7, copy_run(0x006C73C6)),  # PSysProperties
    (0x006C74E6, copy_run(0x006C74C7)),  # PSysProperties
    (0x006C75C8, copy_run(0x006C74E6)),  # PSysProperties
    (0x006C7811, jmp_run(0x006C75C8)),  # PSysProperties
    (0x006C7A61, copy_run(0x006C7811)),  # PSysProperties
    (0x006C7A86, copy_run(0x006C7A61)),  # PSysProperties
    (0x006C7AA6, copy_run(0x006C7A86)),  # PSysProperties
    (0x006C7AC6, copy_run(0x006C7AA6)),  # PSysProperties
    (0x006C7AE6, copy_run(0x006C7AC6)),  # PSysProperties
    (0x006C7B06, copy_run(0x006C7AE6)),  # PSysProperties
    (0x006C7D7B, jmp_run(0x006C7B06)),  # PSysProperties
    (0x006C7FEB, copy_run(0x006C7D7B)),  # PSysProperties
    (0x006C825B, jmp_run(0x006C7FEB)),  # PSysProperties
    (0x006C84CB, copy_run(0x006C825B)),  # PSysProperties
    (0x006C89BB, jmp_run(0x006C84CB)),  # PSysProperties
    (0x006C8A12, jmp_run(0x006C89BB)),  # PSysProperties
    (0x006C8A76, jmp_run(0x006C8A12)),  # PSysProperties
    (0x006C8A9B, jmp_run(0x006C8A76)),  # PSysProperties
    (0x006C8AF1, jmp_run(0x006C8A9B)),  # PSysProperties
    (0x006C8B51, jmp_run(0x006C8AF1)),  # PSysProperties
    (0x006C8BB1, jmp_run(0x006C8B51)),  # PSysProperties
    (0x006C8C12, jmp_run(0x006C8BB1)),  # PSysProperties
    (0x006C8C76, jmp_run(0x006C8C12)),  # PSysProperties
    (0x006C8C9B, jmp_run(0x006C8C76)),  # PSysProperties
    (0x006C8CF1, jmp_run(0x006C8C9B)),  # PSysProperties
    (0x006C8D51, jmp_run(0x006C8CF1)),  # PSysProperties
    (0x006C8DB1, jmp_run(0x006C8D51)),  # PSysProperties
    (0x006C8EE1, copy_run(0x006C8DB1)),  # PSysProperties
    (0x006C9018, jmp_run(0x006C8EE1)),  # PSysProperties
    (0x006C9037, jmp_run(0x006C9018)),  # PSysProperties
    (0x006C9057, jmp_run(0x006C9037)),  # PSysProperties
    (0x006C9077, jmp_run(0x006C9057)),  # PSysProperties
    (0x006C9097, jmp_run(0x006C9077)),  # PSysProperties
    (0x006C90B7, jmp_run(0x006C9097)),  # PSysProperties
    (0x006C9111, jmp_run(0x006C90B7)),  # PSysProperties
    (0x006C91B5, jmp_run(0x006C9111)),  # PSysProperties
    (0x006C94B4, jmp_run(0x006C91B5)),  # PSysProperties
    (0x006C9579, jmp_run(0x006C94B4)),  # PSysProperties
    (0x006C96B6, jmp_run(0x006C9579)),  # PSysProperties
    (0x006C97F6, jmp_run(0x006C96B6)),  # PSysProperties
    (0x006C9827, copy_run(0x006C97F6)),  # PSysProperties
    (0x006C9A1A, jmp_run(0x006C9827)),  # PSysProperties
    (0x006C9B86, copy_run(0x006C9A1A)),  # PSysProperties
    (0x006C9CC6, copy_run(0x006C9B86)),  # PSysProperties
    (0x006C9CF7, jmp_run(0x006C9CC6)),  # PSysProperties
    (0x006C9E5A, jmp_run(0x006C9CF7)),  # PSysProperties
    (0x006C9EEA, copy_run(0x006C9E5A)),  # PSysProperties
    (0x006CA0CA, copy_run(0x006C9EEA)),  # PSysProperties
    (0x006CA226, copy_run(0x006CA0CA)),  # PSysProperties
    (0x006CA366, copy_run(0x006CA226)),  # PSysProperties
    (0x006CA397, jmp_run(0x006CA366)),  # PSysProperties
    (0x006CA56A, copy_run(0x006CA397)),  # PSysProperties
    (0x006CA667, copy_run(0x006CA56A)),  # PSysProperties
    (0x006CA7BA, jmp_run(0x006CA667)),  # PSysProperties
    (0x006CA84A, copy_run(0x006CA7BA)),  # PSysProperties
    (0x006CAA0A, copy_run(0x006CA84A)),  # PSysProperties
    (0x006CAB07, copy_run(0x006CAA0A)),  # PSysProperties
    (0x006CACCA, copy_run(0x006CAB07)),  # PSysProperties
    (0x006CADC7, copy_run(0x006CACCA)),  # PSysProperties
    (0x006CAF76, jmp_run(0x006CADC7)),  # PSysProperties
    (0x006CB0E4, copy_run(0x006CAF76)),  # PSysProperties
    (0x006CB176, jmp_run(0x006CB0E4)),  # PSysProperties
    (0x006CB1B7, jmp_run(0x006CB176)),  # PSysProperties
    (0x006CB346, copy_run(0x006CB1B7)),  # PSysProperties
    (0x006CB4B4, jmp_run(0x006CB346)),  # PSysProperties
    (0x006CB546, copy_run(0x006CB4B4)),  # PSysProperties
    (0x006CB587, copy_run(0x006CB546)),  # PSysProperties
    (0x006CB72A, copy_run(0x006CB587)),  # PSysProperties
    (0x006CB827, copy_run(0x006CB72A)),  # PSysProperties
    (0x006CBB55, jmp_run(0x006CB827)),  # PSysProperties
    (0x006CBC98, jmp_run(0x006CBB55)),  # PSysProperties
    (0x00764C73, jmp_run(0x00764C12)),  # VillagerHome
    (0x00764D52, jmp_run(0x00764C73)),  # VillagerHome
    (0x00764DE6, copy_run(0x00764D52)),  # VillagerHome
    (0x00764E26, copy_run(0x00764DE6)),  # VillagerHome
    (0x007652C9, copy_run(0x00764E26)),  # VillagerHome
    (0x00765707, copy_run(0x007652C9)),  # VillagerHome
    (0x00765906, copy_run(0x00765707)),  # VillagerHome
    (0x00765A55, jmp_run(0x00765906)),  # VillagerHome
    (0x00765A79, jmp_run(0x00765A55)),  # VillagerHome
    (0x00765B49, copy_run(0x00765A79)),  # VillagerHome
    (0x00765B8A, copy_run(0x00765B49)),  # VillagerHome
    (0x00765CB3, jmp_run(0x00765B8A)),  # VillagerHome
    (0x00765D2A, copy_run(0x00765CB3)),  # VillagerHome
    (0x00765D66, copy_run(0x00765D2A)),  # VillagerHome
    (0x00765E16, jmp_run(0x00765D66)),  # VillagerHome
    (0x00765E43, copy_run(0x00765E16)),  # VillagerHome
    (0x00765E69, copy_run(0x00765E43)),  # VillagerHome
    (0x00765EA9, copy_run(0x00765E69)),  # VillagerHome
    (0x00765F5A, jmp_run(0x00765EA9)),  # VillagerHome
    (0x00765F82, copy_run(0x00765F5A)),  # VillagerHome
    (0x00766139, jmp_run(0x00765F82)),  # VillagerHome
    (0x007661D6, jmp_run(0x00766139)),  # VillagerHome
    (0x00766211, jmp_run(0x007661D6)),  # VillagerHome
    (0x00766236, jmp_run(0x00766211)),  # VillagerHome
    (0x0076626A, copy_run(0x00766236)),  # VillagerHome
    (0x00766397, jmp_run(0x0076626A)),  # VillagerHome
    (0x00766691, jmp_run(0x00766397)),  # VillagerHome
    (0x00766752, jmp_run(0x00766691)),  # VillagerHome
    (0x007667D9, jmp_run(0x00766752)),  # VillagerHome
    (0x0076691B, call_rel32(0x004034F9)),  # VillagerHome
    (0x007707B6, jmp_run(0x007706F9)),  # VillagerTrader
    (0x00770813, jmp_run(0x007707B6)),  # VillagerWorshipper
    (0x0077083B, call_rel32(0x004034F9)),  # VillagerWorshipper
    (0x007709F7, jmp_run(0x0077083B)),  # VillagerWorshipper
    (0x00770A94, jmp_run(0x007709F7)),  # VillagerWorshipper
    (0x00770B77, jmp_run(0x00770A94)),  # VillagerWorshipper
    (0x00770C94, jmp_run(0x00770B77)),  # VillagerWorshipper
    (0x00770D7B, call_rel32(0x004034F9)),  # VillagerWorshipper
    (0x00770E51, jmp_run(0x00770D7B)),  # VillagerWorshipper
    (0x00770EF6, jmp_run(0x00770E51)),  # VillagerWorshipper
    (0x007710A2, copy_run(0x00770EF6)),  # VillagerWorshipper
    (0x00771193, jmp_run(0x007710A2)),  # VillagerWorshipper
    (0x007711CB, call_rel32(0x004034F9)),  # VillagerWorshipper
    (0x00771212, jmp_run(0x007711CB)),  # VillagerWorshipper
    (0x007713BA, jmp_run(0x00771212)),  # VillagerWorshipper
    (0x007714B3, jmp_run(0x007713BA)),  # VillagerWorshipper
    (0x007715D9, jmp_run(0x007714B3)),  # VillagerWorshipper
    (0x0077166A, copy_run(0x007715D9)),  # VillagerWorshipper
    (0x007716AA, copy_run(0x0077166A)),  # VillagerWorshipper
    (0x00771703, copy_run(0x007716AA)),  # VillagerWorshipper
    (0x00771803, copy_run(0x00771703)),  # VillagerWorshipper
    (0x007718D7, jmp_run(0x00771803)),  # VillagerWorshipper
    (0x00771952, jmp_run(0x007718D7)),  # VillagerWorshipper
    (0x0077198A, copy_run(0x00771952)),  # VillagerWorshipper
    (0x007719BA, jmp_run(0x0077198A)),  # VillagerWorshipper
    (0x007719DB, call_rel32(0x004034F9)),  # VillagerWorshipper
    (0x007839C3, copy_run(0x007838E6)),  # WorshipSiteUpgrade
    (0x00783A47, copy_run(0x007839C3)),  # WorshipSiteUpgrade
    (0x00783A79, jmp_run(0x00783A47)),  # WorshipSiteUpgrade
    (0x00783B54, jmp_run(0x00783A79)),  # WorshipSiteUpgrade
    (0x00783BA2, copy_run(0x00783B54)),  # WorshipSiteUpgrade
    (0x00783C74, jmp_run(0x00783BA2)),  # WorshipSiteUpgrade
    (0x00783D03, copy_run(0x00783C74)),  # WorshipSiteUpgrade
    (0x00783D9B, call_rel32(0x004034F9)),  # WorshipSiteUpgrade
    (0x0080A011, jmp_run(0x00809FF4)),  # LH3DMesh
    (0x0080A031, jmp_run(0x0080A011)),  # LH3DMesh
    (0x0080AE16, jmp_run(0x0080A031)),  # LH3DMesh
    (0x0080AE32, jmp_run(0x0080AE16)),  # LH3DMesh
    (0x0080B951, jmp_run(0x0080AE32)),  # LH3DMesh
    (0x0080BC2B, call_rel32(0x004034F9)),  # LH3DMesh
    (0x0080BD45, copy_run(0x0080BC2B)),  # LH3DMesh
    (0x0080BE62, copy_run(0x0080BD45)),  # LH3DMesh
    (0x0080CA25, copy_run(0x0080BE62)),  # LH3DMesh
    (0x0080CAD3, jmp_run(0x0080CA25)),  # LH3DMesh
    (0x0080CD46, copy_run(0x0080CAD3)),  # LH3DMesh
    (0x0080CDC8, copy_run(0x0080CD46)),  # LH3DMesh
    (0x0080CF79, jmp_run(0x0080CDC8)),  # LH3DMesh
    (0x0080CFA5, copy_run(0x0080CF79)),  # LH3DMesh
    (0x0080CFE6, copy_run(0x0080CFA5)),  # LH3DMesh
    (0x0080D098, jmp_run(0x0080CFE6)),  # LH3DMesh
    (0x0080D312, jmp_run(0x0080D098)),  # LH3DMesh
    (0x0080D4F7, jmp_run(0x0080D312)),  # LH3DMesh
    (0x0080D554, jmp_run(0x0080D4F7)),  # LH3DMesh
    (0x0080D644, copy_run(0x0080D554)),  # LH3DMesh
    (0x0080D6D1, jmp_run(0x0080D644)),  # LH3DMesh
    (0x0080D716, jmp_run(0x0080D6D1)),  # LH3DMesh
    (0x0080D779, jmp_run(0x0080D716)),  # LH3DMesh
    (0x0080D834, jmp_run(0x0080D779)),  # LH3DMesh
    (0x0080D8F4, jmp_run(0x0080D834)),  # LH3DMesh
    (0x0080D976, jmp_run(0x0080D8F4)),  # LH3DMesh
    (0x0080D9F6, jmp_run(0x0080D976)),  # LH3DMesh
    (0x0080E7FB, call_rel32(0x004034F9)),  # LH3DMesh
    (0x0080EA71, jmp_run(0x0080E7FB)),  # LH3DMesh
    (0x0080EC06, copy_run(0x0080EA71)),  # LH3DMesh
    (0x0080ED98, jmp_run(0x0080EC06)),  # LH3DMesh
    (0x0080EEE4, copy_run(0x0080ED98)),  # LH3DMesh
    (0x0080FEE2, copy_run(0x0080EEE4)),  # LH3DMesh
    (0x0080FF15, jmp_run(0x0080FEE2)),  # LH3DMesh
    (0x0080FFC8, copy_run(0x0080FF15)),  # LH3DMesh
    (0x00810109, copy_run(0x0080FFC8)),  # LH3DMesh
    (0x008101D9, jmp_run(0x00810109)),  # LH3DMesh
    (0x008102D9, jmp_run(0x008101D9)),  # LH3DMesh
    (0x008103D9, jmp_run(0x008102D9)),  # LH3DMesh
    (0x00810427, copy_run(0x008103D9)),  # LH3DMesh
    (0x00810469, copy_run(0x00810427)),  # LH3DMesh
    (0x0081DAA1, copy_run(0x0081D919)),  # LH3DTech
    (0x0081DB13, jmp_run(0x0081DAA1)),  # LH3DTech
    (0x0081DDE7, copy_run(0x0081DB13)),  # LH3DTech
    (0x0081E1B2, jmp_run(0x0081DDE7)),  # LH3DTech
    (0x0081E3B1, jmp_run(0x0081E1B2)),  # LH3DTech
    (0x0081E517, jmp_run(0x0081E3B1)),  # LH3DTech
    (0x0081E61A, jmp_run(0x0081E517)),  # LH3DTech
    (0x0081E736, jmp_run(0x0081E61A)),  # LH3DTech
    (0x0081E811, jmp_run(0x0081E736)),  # LH3DTech
    (0x0081EAA1, copy_run(0x0081E811)),  # LH3DTech
    (0x0081F8E1, copy_run(0x0081EAA1)),  # LH3DTech
    (0x0081FC3A, jmp_run(0x0081F8E1)),  # LH3DTech
    (0x0081FF72, jmp_run(0x0081FC3A)),  # LH3DTech
    (0x008205D5, jmp_run(0x0081FF72)),  # LH3DTech
    (0x00820828, copy_run(0x008205D5)),  # LH3DTech
    (0x00820928, copy_run(0x00820828)),  # LH3DTech
    (0x008209E3, copy_run(0x00820928)),  # LH3DTech
    (0x00820B45, copy_run(0x008209E3)),  # LH3DTech
    (0x00820D57, jmp_run(0x00820B45)),  # LH3DTech
    (0x00820D92, jmp_run(0x00820D57)),  # LH3DTech
    (0x00821218, jmp_run(0x00820D92)),  # LH3DTech
    (0x00821902, copy_run(0x00821218)),  # LH3DTech
    (0x00821E51, jmp_run(0x00821902)),  # LH3DTech
    (0x00822336, jmp_run(0x00821E51)),  # LH3DTech
    (0x00822677, jmp_run(0x00822336)),  # LH3DTech
    (0x0082291B, call_rel32(0x004034F9)),  # LH3DTech
    (0x00822F13, jmp_run(0x0082291B)),  # LH3DTech
    (0x00830379, jmp_run(0x00830053)),  # LH3DRender
    (0x008303A9, copy_run(0x00830379)),  # LH3DRender
    (0x00830413, jmp_run(0x008303A9)),  # LH3DRender
    (0x0083045B, call_rel32(0x004034F9)),  # LH3DRender
    (0x008304F2, jmp_run(0x0083045B)),  # LH3DRender
    (0x00830B48, copy_run(0x008304F2)),  # LH3DRender
    (0x00830B94, jmp_run(0x00830B48)),  # LH3DRender
    (0x00830D43, copy_run(0x00830B94)),  # LH3DRender
    (0x00831577, jmp_run(0x00830D43)),  # LH3DRender
    (0x008315B4, jmp_run(0x00831577)),  # LH3DRender
    (0x00832746, copy_run(0x008315B4)),  # LH3DRender
    (0x00832878, jmp_run(0x00832746)),  # LH3DRender
    (0x008329A8, copy_run(0x00832878)),  # LH3DRender
    (0x00832C2A, copy_run(0x008329A8)),  # LH3DRender
    (0x00832DA1, copy_run(0x00832C2A)),  # LH3DRender
    (0x0083309A, jmp_run(0x00832DA1)),  # LH3DRender
    (0x008335F5, jmp_run(0x0083309A)),  # LH3DRender
    (0x0083382B, call_rel32(0x004034F9)),  # LH3DRender
    (0x008339BB, call_rel32(0x004034F9)),  # LH3DRender
    (0x00833CDB, call_rel32(0x004034F9)),  # LH3DRender
    (0x00833E5B, call_rel32(0x004034F9)),  # LH3DRender
    (0x00833FD1, jmp_run(0x00833E5B)),  # LH3DRender
    (0x00833FF8, jmp_run(0x00833FD1)),  # LH3DRender
    (0x008340D9, jmp_run(0x00833FF8)),  # LH3DRender
    (0x00834269, copy_run(0x008340D9)),  # LH3DRender
    (0x00834441, copy_run(0x00834269)),  # LH3DRender
    (0x008345E3, copy_run(0x00834441)),  # LH3DRender
    (0x00834991, jmp_run(0x008345E3)),  # LH3DRender
    (0x00834C38, jmp_run(0x00834991)),  # LH3DRender
    (0x00834E59, jmp_run(0x00834C38)),  # LH3DRender
    (0x00834EB7, jmp_run(0x00834E59)),  # LH3DRender
    (0x00834EFB, call_rel32(0x004034F9)),  # LH3DRender
    (0x00835035, jmp_run(0x00834EFB)),  # LH3DRender
    (0x0083505B, call_rel32(0x004034F9)),  # LH3DRender
    (0x00835099, jmp_run(0x0083505B)),  # LH3DRender
    (0x008350D4, jmp_run(0x00835099)),  # LH3DRender
    (0x00835116, jmp_run(0x008350D4)),  # LH3DRender
    (0x00835188, copy_run(0x00835116)),  # LH3DRender
    (0x008351D2, jmp_run(0x00835188)),  # LH3DRender
)


BW1W100_GAMETHING_INCREMENTAL = (
    (0x840, b'\x33\xc0\xc3\x90\x90', b'\xe9\x7b\x5f\xec\xff'),  # 0053eee0: jmp 0x404e60 (GameThing::GetSaveType)
)
BW1W100_GAMETHING_TEXT = 0x0053E6A0


def substitute_code(pe, base, rows):
    for delta, linked, shipped in rows:
        address = base + delta
        offset = pe.get_offset_from_rva(address - pe.OPTIONAL_HEADER.ImageBase)
        found = bytes(pe.__data__[offset:offset + len(linked)])
        if found == shipped:
            continue
        if found != linked:
            raise SystemExit(f"{address:#010x}: found {found.hex()}, expected {linked.hex()}")
        write_bytes(pe, offset, shipped)


def restore_calls(pe, rows):
    code = []
    for address, call in rows:
        shipped = call(pe, address)
        code.append((address, b'\x90' * len(shipped), shipped))
    substitute_code(pe, 0, code)



def insert_header_padding(pe, at, count):
    # Shift the free-floating header bytes forward within SizeOfHeaders; pefile
    # structures are relocated separately via set_file_offset.
    soh = pe.OPTIONAL_HEADER.SizeOfHeaders
    content = bytes(pe.__data__[at:soh - count])
    pe.__data__[at + count:soh] = content
    pe.__data__[at:at + count] = b'\x00' * count


def apply_BW1W100_patch_safedisc_cleaner(pe):
    # SafeDisc2Cleaner wrote its author handle into the COFF timestamp field.
    pe.FILE_HEADER.TimeDateStamp = int.from_bytes(b'eYes', 'little')
    # 4-byte marker immediately before IMAGE_NT_HEADERS.
    # First 2 bytes are version-specific; last 2 are the 0x2BAD "too bad" signature.
    write_bytes(pe, pe_offset_after_rich_header(BW1W100_RICH_RECORDS) - 4, bytes([0x0C, 0x00]) + SAFEDISC_CLEANER_SIGNATURE)
    # Author credit string in the header padding area (between section table and .text).
    write_bytes(pe, 0x0310, b'Safedisc2Cleaner (c) bOOls eYe, waste_me & r!sc boolseye.cjb.net')


def apply_BW1W110_patch_safedisc_cleaner(pe):
    # SafeDisc2Cleaner wrote its author handle into the COFF timestamp field.
    pe.FILE_HEADER.TimeDateStamp = int.from_bytes(b'eYes', 'little')
    # 4-byte marker immediately before IMAGE_NT_HEADERS.
    # First 2 bytes are version-specific; last 2 are the 0x2BAD "too bad" signature.
    write_bytes(pe, pe_offset_after_rich_header(BW1W110_RICH_RECORDS) - 4, bytes([0x0D, 0x00]) + SAFEDISC_CLEANER_SIGNATURE)
    # Author credit string in the header padding area (between section table and .text).
    write_bytes(pe, 0x0340, b'Safedisc2Cleaner (c) bOOls eYe, waste_me & r!sc boolseye.cjb.net')


def apply_BW1W120_patch_safedisc_cleaner(pe):
    # 4-byte marker immediately before IMAGE_NT_HEADERS.
    # First 2 bytes are version-specific; last 2 are the 0x2BAD "too bad" signature.
    write_bytes(pe, pe_offset_after_rich_header(BW1W120_RICH_RECORDS) - 4, bytes([0x0D, 0x00]) + SAFEDISC_CLEANER_SIGNATURE)


def exe_tail_tag(build_field):
    """45-byte SafeDisc mastering tag appended at link.exe's true EOF.

    Sits immediately after the CodeView NB10 record in 1.10/1.20/1.30, and at
    the page where that record would start in 1.00 (shipped with debug info
    stripped); zero-padded to the next 0x1000 page, after which the SafeDisc
    payload begins.

    Written by the SafeDisc mastering step, not the linker: the unprotected LH
    DLLs from the same machines end byte-exact at their NB10 records, while the
    same tag (same template, different field values) appears in other SafeDisc
    2.x titles (verified against MechWarrior 4, SafeDisc 2.30.033). The ASCII
    fragments and the sprintf'd pointer string are a frozen template carried by
    the tool across at least versions 2.10-2.60, with two stamped fields:
      - build_field: differs on every mastering run (per-run nonce/serial?);
      - trailing dword: per-title -- 0x81444BA5 in all four B&W masterings
        across two years, a different value in MW4.
    Exact meaning of the stamped values unknown; the tag appears in no public
    SafeDisc documentation.
    """
    return (
        b'_ii.../..000000_'
        b'!!!'
        + struct.pack('<I', build_field)
        + b'hhs_____'
        + b'0x622958ac'                   # frozen in the tool's template
        + struct.pack('<I', SAFEDISC_TITLE_STAMP)
    )


def linker_eof(pe):
    """File offset where link.exe's output ends: right after the last section's
    raw data. The CodeView NB10 record (and the SafeDisc tail tag after it) is
    appended here."""
    return max(s.PointerToRawData + s.SizeOfRawData for s in pe.sections)


def write_codeview_record(pe, at, pdb_creation_time: datetime, age, pdb_path):
    """Write the CV_INFO_PDB20 record the debug directory points at.

    MSVC 6 leaves it at the end of the file, outside any section, so `at` is the
    linker's EOF -- the same place the SafeDisc tail tag that follows it starts.
    Returns the record's length, which is what the debug directory reports as
    SizeOfData.
    """
    cv = pefile.Structure(__CV_INFO_PDB20_format__)
    cv.CvSignature = b'NB10'
    cv.Offset      = 0
    cv.Signature   = int(pdb_creation_time.timestamp())
    cv.Age         = age
    record = cv.__pack__() + pdb_path.encode() + b'\x00'
    write_bytes(pe, at, record)
    return len(record)


def restore_debug_directory(pe, at, link_time: datetime, cv_offset, cv_size):
    """Restamp the IMAGE_DEBUG_DIRECTORY entry with the shipped values.

    1.10 and 1.20 were linked with /debug, so lld-link emits this entry itself:
    splits.txt hands it the 0x1C hole just past the IAT that link.exe used, and
    nothing around it shifts. Only the run-dependent fields differ -- lld stamps
    its own link time and points at the RSDS/CV_INFO_PDB70 record it appends to
    .rdata's tail slack, where the shipped image has the older NB10 form sitting
    past the last section (AddressOfRawData 0, since it is in no section).

    Erasing lld's record restores .rdata's slack to the zeros the shipped image
    has there. Both the entry and the record are parsed structures, so they have
    to be edited (and the record dropped) rather than overwritten: pe.write()
    re-serializes everything in pe.__structures__ over the raw bytes.

    `at` is the entry's virtual address; it is asserted rather than used, so a
    layout change that moves the entry fails loudly instead of silently patching
    the wrong bytes.
    """
    expected_rva = at - pe.OPTIONAL_HEADER.ImageBase
    directory = find_directory(pe, 'IMAGE_DIRECTORY_ENTRY_DEBUG')
    assert directory.VirtualAddress == expected_rva, (
        f"debug directory at {directory.VirtualAddress:#x}, expected {expected_rva:#x}: "
        "the linker no longer places it in the hole splits.txt leaves for it")
    debug_entry, = pe.DIRECTORY_ENTRY_DEBUG
    entry = debug_entry.struct

    if debug_entry.entry is not None:
        pe.__structures__.remove(debug_entry.entry)
        debug_entry.entry = None
    write_bytes(pe, entry.PointerToRawData, b'\x00' * entry.SizeOfData)

    entry.TimeDateStamp = int(link_time.timestamp())
    entry.SizeOfData = cv_size
    entry.AddressOfRawData = 0  # the record is past the last section
    entry.PointerToRawData = cv_offset


def write_exe_tail_tag(pe, build_field):
    # The tag sits at link.exe's true EOF: right after the CodeView NB10 record
    # when one is present, directly after the section data otherwise.
    at = linker_eof(pe)
    if bytes(pe.__data__[at:at + 4]) == b'NB10':
        at = pe.__data__.index(b'\x00', at + 16) + 1  # skip header + pdb path
    write_bytes(pe, at, exe_tail_tag(build_field))


def apply_BW1W100_patch(pe, cfg, out_dir, modules):
    substitute_code(pe, BW1W100_GAMETHING_TEXT, BW1W100_GAMETHING_INCREMENTAL)
    apply_patch_safedisc(pe, cfg)
    apply_BW1W100_patch_safedisc_cleaner(pe)
    apply_BW1_common_patch(pe, cfg)
    write_exe_tail_tag(pe, 0x23fe0b3f)
    apply_modules_patch(out_dir, cfg, modules)


def apply_BW1W110_patch(pe, cfg, out_dir, modules):
    substitute_code(pe, BW1W110_CPU_DISP_TEXT, CPU_DISP_CODEGEN)
    substitute_exestr(pe, *CPU_DISP_EXESTR_SUBSTITUTION)

    ste = section_table_end(pe)
    insert_header_padding(pe, ste, SAFEDISC_SECTION_BUMP)
    write_bytes(pe, ste + SAFEDISC_SECTION_BUMP, b'\x00' * EXESTR_PREFIX_ERASE)

    apply_patch_safedisc(pe, cfg)
    apply_BW1W110_patch_safedisc_cleaner(pe)
    apply_BW1_common_patch(pe, cfg)

    # CodeView record pointing at the .pdb, and the debug directory naming it.
    cv_size = write_codeview_record(pe, 0x00832000, BW1W110_PDB_TIME, 0x10,
                                    'C:\\dev\\Black\\Gold\\Black.pdb')
    restore_debug_directory(pe, 0x008999c0, BW1W110_LINK_TIME, 0x00832000, cv_size)
    write_exe_tail_tag(pe, 0x75e1f353)

    apply_modules_patch(out_dir, cfg, modules)


def apply_BW1W120_patch(pe, cfg, out_dir, modules):
    substitute_code(pe, BW1W120_CPU_DISP_TEXT, CPU_DISP_CODEGEN)
    restore_calls(pe, BW1W120_SAFEDISC_CALLS)
    substitute_exestr(pe, *CPU_DISP_EXESTR_SUBSTITUTION)

    # Bump the exestr comments past SafeDisc's section headers, then re-apply the
    # decryptor's prefix erasure. Runs before the artifacts below so they land at
    # their final offsets.
    ste = section_table_end(pe)
    insert_header_padding(pe, ste, SAFEDISC_SECTION_BUMP)
    write_bytes(pe, ste + SAFEDISC_SECTION_BUMP, b'\x00' * EXESTR_PREFIX_ERASE)

    apply_patch_safedisc(pe, cfg)
    apply_BW1W120_patch_safedisc_cleaner(pe)
    apply_BW1_common_patch(pe, cfg)
    mark_imports_bound(pe)

    # Different safedisc decryptor easter egg
    # https://www.beatport.com/nl/track/crazy-bad-bwoy/682050
    write_bytes(pe, 0x00000340, bytes(b' crazy bad bwoy '))

    # What the shipped exe held past the last section, before SafeDisc Cleaner cut
    # the file at 0x843000 (see force_size), orphaning the debug directory above.
    # Both writes land beyond force_size, so the trim below cuts them straight
    # back off; they are kept because the debug directory still has to report the
    # record's size and offset, and to keep this reconstruction of the shipped
    # tail identical to 1.10's, where nothing is trimmed and both survive.
    cv_size = write_codeview_record(pe, 0x00843000, BW1W120_PDB_TIME, 0xC,
                                    'C:\\dev\\MP\\Black\\Gold\\Black.pdb')
    restore_debug_directory(pe, 0x008a99c0, BW1W120_LINK_TIME, 0x00843000, cv_size)
    write_exe_tail_tag(pe, 0x872ec8b7)

    apply_modules_patch(out_dir, cfg, modules)


def apply_BW1W130_patch(pe, cfg, out_dir, modules):
    restore_calls(pe, BW1W130_SAFEDISC_CALLS)
    ste = section_table_end(pe)
    insert_header_padding(pe, ste, SAFEDISC_SECTION_BUMP)
    # This decryptor also took "r 32-bit" off the front of the first comment
    write_bytes(pe, ste + SAFEDISC_SECTION_BUMP, b'\x00' * (EXESTR_PREFIX_ERASE + len(b'r 32-bit')))

    apply_patch_safedisc(pe, cfg)
    # 4-byte marker immediately before IMAGE_NT_HEADERS; this SafeDisc Cleaner signs 0x2DAD.
    write_bytes(pe, pe_offset_after_rich_header(BW1W130_RICH_RECORDS, RICH_RESERVED_SLOTS["BW1W130"]) - 4, bytes([0x0D, 0x00, 0x2D, 0xAD]))
    apply_BW1_common_patch(pe, cfg)
    mark_imports_bound(pe)

    # Another decryptor easter egg
    write_bytes(pe, 0x00000350, b'Myth / Deviance ')

    # The debug directory names an NB10 record at the file's end, which the decryptor cut off
    # (see force_size); only the entry itself survives.
    restore_debug_directory(pe, 0x008ae9c0, BW1W130_LINK_TIME, 0x008c4000, 0x36)

    apply_modules_patch(out_dir, cfg, modules)


# --- BW1WCI ----------------------------------------------------------------------------------
#
# Creature Isle's executable is not link.exe output wrapped by SafeDisc but a rebuilt container:
# nine sections (three of them SafeDisc/unpacker leftovers) in a fixed order and file alignment,
# the import tables rebuilt in the last one, no Rich header, and a cracker's NFO in the header
# padding. lld-link sorts non-standard sections by name, so the image is reassembled here from the
# linked sections' contents.

# name, RVA, virtual size, raw offset, raw size
BW1WCI_SECTIONS = (
    (b".text", 0x1000, 0x4D3000, 0x600, 0x4D2B2D),
    (b".rdata", 0x4D4000, 0x162000, 0x4D3200, 0x161EB5),
    (b".data", 0x636000, 0x60F000, 0x635200, 0x279E40),
    (b".data1", 0xC45000, 0x1000, 0x8AF200, 0xB24),
    (b"SELFMOD", 0xC46000, 0x1000, 0x8AFE00, 0xBED),
    (b".rsrc", 0xC47000, 0x4000, 0x8B0A00, 0x393D),
    (b"stxt774", 0xC4B000, 0x1000, 0x8B4400, 0x800),
    (b"stxt371", 0xC4C000, 0x4000, 0x8B4C00, 0x3D62),
    (b".MGD32", 0xC50000, 0x5200, 0x8B8A00, 0x5200),
)
BW1WCI_SECTION_FLAGS = 0xC0000040
BW1WCI_FILE_SIZE = 0x8BDC00
BW1WCI_HEADERS_END = 0x600
BW1WCI_PE_OFFSET = 0x80
# The header padding after the section table: the decryptor's NFO.
BW1WCI_NFO_OFFSET = 0x2E0
BW1WCI_NFO = zlib.decompress(base64.b64decode(
    "eNrVkrsNxDAIhlOfdDt4/wqzDkhsYh1vki7tOYUNP3wGnOt6t74f+9Y6IsjM677MFtKFdy+ietpyWeqggQbzMLOLxxgU2zQX"
    "GmoHggwK6+EuWniIi0W09ag1my/TJARtg0gkC4Ul3NimRR3aMcmjhGKYDZ3mgoh3mgEwLMh4qZSTBXGy9zQE4OkuqHe33rSY"
    "o85inWynhpYQrAnsnmPqUHrRTk1kWksKxO4PF4I+Vd6D8zSqT2GC8yOAn+zC60/XD6EILeo="
))
# Directories the rebuilt container points at: the debug directory and the IAT, which sit in
# .rdata and .MGD32 respectively (the import directory itself is in config.yml).
BW1WCI_DEBUG_DIRECTORY = (0x4D4980, 0x1C)
BW1WCI_IAT_DIRECTORY = (0xC4FAA0, 0xB0)
BW1WCI_CHECKSUM = 0x10010
BW1WCI_COFF_SYMTAB_POINTER = 0x4854  # "TH" of the decryptor's "MYTH" signature
BW1WCI_SIZE_OF_HEADERS = 0x1000


def build_BW1WCI_exe(linked, cfg):
    """The shipped executable's container around the linked sections' contents."""
    lpe = pefile.PE(data=linked)
    contents = {}
    for section in lpe.sections:
        name = section.Name.rstrip(b"\0")
        if name not in contents and section.SizeOfRawData:
            contents[name] = section.get_data()
    out = bytearray(BW1WCI_FILE_SIZE)

    # DOS header and stub: lld-link's, with the fields MSVC 6's linker leaves
    out[:BW1WCI_PE_OFFSET] = linked[:BW1WCI_PE_OFFSET]
    struct.pack_into("<HH", out, 2, BW1WCI_PE_OFFSET + len(RICH_PREAMBLE), MSVC6_E_CP)
    struct.pack_into("<H", out, 0x0C, MSVC6_E_MAXALLOC)
    struct.pack_into("<H", out, 0x10, MSVC6_E_SP)

    stamp = int(datetime.fromisoformat(cfg["timestamp"]).timestamp())
    coff = struct.pack("<4sHHIIIHH", b"PE\0\0", 0x14C, len(BW1WCI_SECTIONS), stamp, BW1WCI_COFF_SYMTAB_POINTER, 0, 0xE0, 0x10F)
    directories = [(0, 0)] * 16
    directories[0] = (cfg["entry_export_addr"] - 0x400000, cfg["entry_export_size"])
    directories[1] = (cfg["entry_import_addr"] - 0x400000, cfg["entry_import_size"])
    directories[2] = (cfg["entry_resource_addr"] - 0x400000, cfg["entry_resource_size"])
    directories[6] = (BW1WCI_DEBUG_DIRECTORY[0], BW1WCI_DEBUG_DIRECTORY[1])
    directories[12] = BW1WCI_IAT_DIRECTORY
    optional = struct.pack(
        "<HBBIIIIIIIIIHHHHHHIIIIHHIIIIII",
        0x10B, 6, 0, cfg["size_of_code"], cfg["size_of_initialized_data"], 0, lpe.OPTIONAL_HEADER.AddressOfEntryPoint,
        0x1000, BW1WCI_SECTIONS[1][1], 0x400000, 0x1000, 0x200, 4, 0, 0, 0, 4, 0, 0, cfg["size_of_image"],
        BW1WCI_SIZE_OF_HEADERS, BW1WCI_CHECKSUM, 2, 0, 0x100000, 0x1000, 0x100000, 0x1000, 0, 16,
    ) + b"".join(struct.pack("<II", *d) for d in directories)
    out[BW1WCI_PE_OFFSET : BW1WCI_PE_OFFSET + len(coff)] = coff
    at = BW1WCI_PE_OFFSET + len(coff)
    out[at : at + len(optional)] = optional
    at += len(optional)
    for name, rva, vsize, raw, rsize in BW1WCI_SECTIONS:
        out[at : at + 40] = struct.pack("<8sIIIIIIHHI", name, vsize, rva, rsize, raw, 0, 0, 0, 0, BW1WCI_SECTION_FLAGS)
        at += 40
    assert at == BW1WCI_NFO_OFFSET
    out[BW1WCI_NFO_OFFSET : BW1WCI_NFO_OFFSET + len(BW1WCI_NFO)] = BW1WCI_NFO

    # The linked executable carries the .MGD32 content in a .zMGD32 section: the
    # linker sorts output sections by name, and the z prefix keeps .data1 at the
    # RVA the .text references were linked against.
    linked_names = {b".MGD32": b".zMGD32"}
    for name, rva, vsize, raw, rsize in BW1WCI_SECTIONS:
        body = contents[linked_names.get(name, name)][:rsize]
        out[raw : raw + len(body)] = body
    return bytes(out)


PATCHES = {
    "BW1W100": (BW1W100_RICH_KEY, BW1W100_RICH_RECORDS, apply_BW1W100_patch, {
        "LHAudio":       (BW1W100_LHAUDIO_RICH_KEY,       BW1W100_LHAUDIO_RICH_RECORDS,       BW1W100_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1W100_LHLOG_RICH_KEY,         BW1W100_LHLOG_RICH_RECORDS,         BW1W100_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1W100_LHMULTIPLAYER_RICH_KEY, BW1W100_LHMULTIPLAYER_RICH_RECORDS, BW1W100_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1W100_LHDIALOG_RICH_KEY,      BW1W100_LHDIALOG_RICH_RECORDS,      BW1W100_LHDIALOG_RICH_SLOTS),
    }),
    "BW1W110": (BW1W110_RICH_KEY, BW1W110_RICH_RECORDS, apply_BW1W110_patch, {
        "LHAudio":       (BW1W110_LHAUDIO_RICH_KEY,       BW1W110_LHAUDIO_RICH_RECORDS,       BW1W110_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1W110_LHLOG_RICH_KEY,         BW1W110_LHLOG_RICH_RECORDS,         BW1W110_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1W110_LHMULTIPLAYER_RICH_KEY, BW1W110_LHMULTIPLAYER_RICH_RECORDS, BW1W110_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1W110_LHDIALOG_RICH_KEY,      BW1W110_LHDIALOG_RICH_RECORDS,      BW1W110_LHDIALOG_RICH_SLOTS),
    }),
    "BW1W120": (BW1W120_RICH_KEY, BW1W120_RICH_RECORDS, apply_BW1W120_patch, {}),
    "BW1W120": (BW1W120_RICH_KEY, BW1W120_RICH_RECORDS, apply_BW1W120_patch, {
        "LHAudio":       (BW1W120_LHAUDIO_RICH_KEY,       BW1W120_LHAUDIO_RICH_RECORDS,       BW1W120_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1W120_LHLOG_RICH_KEY,         BW1W120_LHLOG_RICH_RECORDS,         BW1W120_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1W120_LHMULTIPLAYER_RICH_KEY, BW1W120_LHMULTIPLAYER_RICH_RECORDS, BW1W120_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1W120_LHDIALOG_RICH_KEY,      BW1W120_LHDIALOG_RICH_RECORDS,      BW1W120_LHDIALOG_RICH_SLOTS),
    }),
    # LHLog shipped unchanged from 1.10 and LHDialog from 1.20
    "BW1WCI": (None, None, None, {
        "LHAudio":       (BW1WCI_LHAUDIO_RICH_KEY,        BW1WCI_LHAUDIO_RICH_RECORDS,        BW1WCI_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1W110_LHLOG_RICH_KEY,         BW1W110_LHLOG_RICH_RECORDS,         BW1W110_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1WCI_LHMULTIPLAYER_RICH_KEY,  BW1WCI_LHMULTIPLAYER_RICH_RECORDS,  BW1WCI_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1W120_LHDIALOG_RICH_KEY,      BW1W120_LHDIALOG_RICH_RECORDS,      BW1W120_LHDIALOG_RICH_SLOTS),
    }),
    # The module DLLs shipped unchanged in 1.30
    "BW1W130": (BW1W130_RICH_KEY, BW1W130_RICH_RECORDS, apply_BW1W130_patch, {
        "LHAudio":       (BW1W120_LHAUDIO_RICH_KEY,       BW1W120_LHAUDIO_RICH_RECORDS,       BW1W120_LHAUDIO_RICH_SLOTS),
        "LHLog":         (BW1W120_LHLOG_RICH_KEY,         BW1W120_LHLOG_RICH_RECORDS,         BW1W120_LHLOG_RICH_SLOTS),
        "LHMultiplayer": (BW1W120_LHMULTIPLAYER_RICH_KEY, BW1W120_LHMULTIPLAYER_RICH_RECORDS, BW1W120_LHMULTIPLAYER_RICH_SLOTS),
        "LHDialog":      (BW1W120_LHDIALOG_RICH_KEY,      BW1W120_LHDIALOG_RICH_RECORDS,      BW1W120_LHDIALOG_RICH_SLOTS),
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
    module_cfgs = {m["name"]: m for m in cfg.get("modules", [])}
    for name, (rich_key, rich_records, rich_slots) in modules.items():
        pe_metadata = metadata.get(name)
        module_cfg = {**cfg, **module_cfgs.get(name, {})}

        data = bytearray((out_dir / f"{name}-linked.dll").read_bytes())
        pe   = pefile.PE(data=data)

        insert_rich_header(pe, rich_key, rich_records, rich_slots)
        zero_code_section_padding(pe)
        if pe_metadata:
            apply_module_patch(pe, module_cfg, pe_metadata)

        data[:] = pe.write()
        if pe_metadata:
            # link.exe sizes .reloc on its own terms (padded well past the entries); the file must
            # reach the end of the raw data it claims
            reloc = find_section_header(pe, '.reloc')
            needed = (pe_metadata["reloc_virtual_size"] + 0xFFF) & ~0xFFF
            if reloc.SizeOfRawData < needed:
                reloc.SizeOfRawData = needed
                data[:] = pe.write()
                data += b'\x00' * (reloc.PointerToRawData + needed - len(data))
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

    if rich_key is None:
        # a container of its own (see build_BW1WCI_exe)
        out.write_bytes(build_BW1WCI_exe(args.input.read_bytes(), cfg))
        apply_modules_patch(out.parent, cfg, modules)
        return

    data = bytearray(args.input.read_bytes())
    pe   = pefile.PE(data=data)

    insert_rich_header(pe, rich_key, rich_records, RICH_RESERVED_SLOTS.get(args.version, RICH_HEADER_RESERVED_SLOTS))
    zero_code_section_padding(pe)
    apply_safedisc(pe, cfg, out.parent, modules)

    data[:] = pe.write()
    if force_size:
        # 1.00/1.10 ship zero padding past the tail tag; 1.20's copy was instead
        # truncated here by SafeDisc Cleaner, cutting the CodeView record and the
        # tail tag back off.
        print(f"size is {hex(len(data))}, forcing to {hex(force_size)}")
        data = data[:force_size] + b'\0' * (force_size - len(data))
    pe.close()

    out.write_bytes(data)


if __name__ == "__main__":
    main()
