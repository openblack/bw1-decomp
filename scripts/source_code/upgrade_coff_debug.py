#!/usr/bin/env python3
"""
Upgrade COFF v98 object files from CodeView 11 to CodeView 13.

Usage:
  python upgrade_coff_debug.py input.obj output.obj
"""

import ctypes
import hashlib
import struct
from enum import IntEnum
from pathlib import Path

import lief
import pefile

# Structure sizes from pefile (no magic numbers)
_FILE_HDR_SIZE = pefile.Structure(pefile.PE.__IMAGE_FILE_HEADER_format__).sizeof()
_SEC_HDR_SIZE  = pefile.Structure(pefile.PE.__IMAGE_SECTION_HEADER_format__).sizeof()
# Pack formats matching the two headers above
_FILE_HDR_FMT  = '<HHIIIHH'    # Machine NumSec TS SymPtr NumSym OptSz Chars
_SEC_HDR_FMT   = '<8sIIIIIIHHI'  # Name Misc VA SzRaw PtrRaw PtrReloc PtrLN NReloc NLN Chars
# COFF object relocation: VirtualAddress(4) + SymbolTableIndex(4) + Type(2)
_RELOC_FMT     = '<IIH'
_RELOC_SIZE    = struct.calcsize(_RELOC_FMT)
# IMAGE_SYMBOL is always 18 bytes (COFF spec)
_SYMBOL_SIZE   = 18


# CodeView .debug$S section version markers
_DEBUG_S_VERSION_C11 = 2   # CV_SIGNATURE_C11 — input format
_DEBUG_S_VERSION_C13 = 4   # CV_SIGNATURE_C13 — output format
_DEBUG_S_SYMBOLS     = 0xF1  # CV13 subsection type wrapping symbol records

# CodeView .debug$T type leaf kinds
_LF_TYPESERVER_ST = 0x0016   # old: 4-byte signature, Pascal-string name (dropped during migration)

# CodeView .debug$S subsection types (CV13)
_DEBUG_S_LINES       = 0xF2   # line number info per function
_DEBUG_S_FILECHKSUMS = 0xF4   # per-file checksum entries
_DEBUG_S_STRINGTABLE = 0xF3   # null-terminated string pool

# CV_CHKSUM_TYPE values
_CV_CHKSUM_NONE = 0
_CV_CHKSUM_MD5  = 1

# COFF relocation types for x86 (IMAGE_FILE_MACHINE_I386)
_IMAGE_REL_I386_SECTION = 0x000A  # 16-bit section index of the symbol's containing section
_IMAGE_REL_I386_SECREL  = 0x000B  # 32-bit section-relative offset of the symbol

# CodeView built-in type index (always valid; no type-table entry needed)
_T_VOID = 0x0003   # T_VOID — replaces unresolvable user-defined type indices

class SymbolKind(IntEnum):
    S_COMPILE     = 0x0001; S_COMPILE3 = 0x113c
    S_OBJNAME_ST  = 0x0009; S_OBJNAME  = 0x1101
    S_LDATA32_OLD = 0x1001; S_LDATA32  = 0x110c
    S_GDATA32_OLD = 0x1002; S_GDATA32  = 0x110d
    S_UDT_OLD     = 0x1003; S_UDT      = 0x1108
    S_BPREL32_OLD = 0x1006; S_BPREL32  = 0x110b
    S_LPROC32_OLD = 0x1008; S_LPROC32  = 0x110f
    S_BLOCK32_OLD = 0x1009; S_BLOCK32  = 0x1103
    S_GPROC32_OLD = 0x100b; S_GPROC32  = 0x1110
    S_LABEL32_OLD = 0x1010; S_LABEL32  = 0x1105
    S_WITH32_OLD  = 0x1012; S_WITH32   = 0x1104

class DebugS2Subsection(ctypes.LittleEndianStructure):
    _fields_ = [
        ('length', ctypes.c_uint16),
        ('index',  ctypes.c_uint16),
    ]


class S_COMPILE(ctypes.LittleEndianStructure):
    INDEX    = 0x0001
    _fields_ = [
        ('machine',  ctypes.c_uint8),
        ('language', ctypes.c_uint8),
        ('flags',    ctypes.c_uint16),
        ('ver_len',  ctypes.c_uint8),
        # Pascal version string follows (ver_len bytes, no null terminator)
    ]


class S_COMPILE3(ctypes.LittleEndianStructure):
    INDEX    = 0x113C
    _fields_ = [
        ('flags',      ctypes.c_uint32),
        ('machine',    ctypes.c_uint16),
        ('verFEMajor', ctypes.c_uint16),
        ('verFEMinor', ctypes.c_uint16),
        ('verFEBuild', ctypes.c_uint16),
        ('verFEQFE',   ctypes.c_uint16),
        ('verMajor',   ctypes.c_uint16),
        ('verMinor',   ctypes.c_uint16),
        ('verBuild',   ctypes.c_uint16),
        ('verQFE',     ctypes.c_uint16),
        # null-terminated version string follows
    ]


class S_OBJNAME_ST(ctypes.LittleEndianStructure):
    """Legacy Pascal-string based object name record."""
    _pack_   = 1
    _layout_ = 'ms'
    _fields_ = [
        ('signature', ctypes.c_uint32),
        ('ver_len',   ctypes.c_uint8),
        # Pascal version string follows (ver_len bytes, no null terminator)
    ]


class S_OBJNAME(ctypes.LittleEndianStructure):
    """Modern null-terminated object name record."""
    _pack_   = 1
    _layout_ = 'ms'
    _fields_ = [
        ('signature', ctypes.c_uint32),
        # null-terminated version string follows
    ]


def _iter_debug_s_records(data: bytes):
    """Yield (pos, DebugS2Subsection, body bytes) for each record.

    pos is the absolute offset within *data* in both CV11 and CV13 formats.
    CV11 (sig=2): records follow directly after the 4-byte signature.
    CV13 (sig=4): records live inside DEBUG_S_SYMBOLS subsections.
    No signature: records start at offset 0.
    """
    first_dword = struct.unpack_from('<I', data, 0)[0] if len(data) >= 4 else 0
    hdr_size = ctypes.sizeof(DebugS2Subsection)

    if first_dword == _DEBUG_S_VERSION_C13:
        spos = 4  # skip signature
        while spos + 8 <= len(data):
            sub_type, sub_len = struct.unpack_from('<II', data, spos)
            if sub_type == _DEBUG_S_SYMBOLS:
                rstart = spos + 8
                rpos   = 0
                while rpos + hdr_size <= sub_len and rstart + rpos + hdr_size <= len(data):
                    hdr  = DebugS2Subsection.from_buffer_copy(data[rstart + rpos:])
                    body = data[rstart + rpos + hdr_size : rstart + rpos + 2 + hdr.length]
                    yield rstart + rpos, hdr, body
                    rpos += 2 + hdr.length
            spos += 8 + sub_len
            spos  = (spos + 3) & ~3  # align next subsection to 4 bytes
    else:
        pos = 4 if first_dword == _DEBUG_S_VERSION_C11 else 0
        while pos + hdr_size <= len(data):
            hdr  = DebugS2Subsection.from_buffer_copy(data[pos:])
            body = data[pos + hdr_size : pos + 2 + hdr.length]
            yield pos, hdr, body
            pos += 2 + hdr.length


def _upgrade_compile(body: bytes) -> bytes:
    old = S_COMPILE.from_buffer_copy(body)
    offset = ctypes.sizeof(S_COMPILE)
    name = body[offset : offset + old.ver_len]

    new = S_COMPILE3()
    new.machine = old.machine
    new.flags = old.language & 0xFF
    return bytes(new) + name + b'\x00'


def _upgrade_objname(body: bytes) -> bytes:
    old = S_OBJNAME_ST.from_buffer_copy(body)
    offset = ctypes.sizeof(S_OBJNAME_ST)
    name = body[offset : offset + old.ver_len]

    new = S_OBJNAME()
    new.signature = old.signature
    return bytes(new) + name + b'\x00'


def _conv_name(body: bytes, prefix_size: int) -> bytes:
    """Strip Pascal string length-byte at prefix_size, append null terminator."""
    prefix   = body[:prefix_size]
    rest     = body[prefix_size:]
    name_len = rest[0] if rest else 0
    return prefix + rest[1 : 1 + name_len] + b'\x00'


def _patch_typeind(body: bytes, offset: int) -> bytes:
    """Replace a user-defined type index (>= 0x1000) at *offset* with T_VOID.

    User-defined type indices reference entries in the type table (.debug$T).
    When that table is empty (after dropping LF_TYPESERVER_ST), lld-link issues
    "failed to remap type index" diagnostics for every such reference.
    Replacing them with T_VOID silences those diagnostics and keeps the symbol
    record structurally valid.
    """
    if offset + 4 > len(body):
        return body
    typind = struct.unpack_from('<I', body, offset)[0]
    if typind < 0x1000:
        return body
    return body[:offset] + struct.pack('<I', _T_VOID) + body[offset + 4:]


def _rewrite_record(kind_val: int, body: bytes) -> tuple[int, bytes]:
    try:
        kind = SymbolKind(kind_val)
    except ValueError:
        return kind_val, body

    match kind:
        case SymbolKind.S_COMPILE:
            return SymbolKind.S_COMPILE3, _upgrade_compile(body)

        case SymbolKind.S_OBJNAME_ST:
            return SymbolKind.S_OBJNAME, _upgrade_objname(body)

        # Pascal-name records (verified from hex): fixed prefix + length-byte + chars → null-term
        # _patch_typeind replaces any user-defined type index (>= 0x1000) with T_VOID so
        # lld-link doesn't emit "failed to remap type index" for the empty type table.
        case SymbolKind.S_UDT_OLD:     return SymbolKind.S_UDT,     _patch_typeind(_conv_name(body, 4),  0)   # typind at 0
        case SymbolKind.S_BPREL32_OLD: return SymbolKind.S_BPREL32, _patch_typeind(_conv_name(body, 8),  4)   # typind at 4
        case SymbolKind.S_GPROC32_OLD: return SymbolKind.S_GPROC32, _patch_typeind(_conv_name(body, 35), 24)  # typind at 24

        # Simple kind remapping — body structure verified identical between old and new
        case SymbolKind.S_LDATA32_OLD: return SymbolKind.S_LDATA32, _patch_typeind(body, 0)   # typind at 0
        case SymbolKind.S_GDATA32_OLD: return SymbolKind.S_GDATA32, _patch_typeind(body, 0)   # typind at 0
        case SymbolKind.S_LPROC32_OLD: return SymbolKind.S_LPROC32, _patch_typeind(body, 24)  # typind at 24
        case SymbolKind.S_BLOCK32_OLD: return SymbolKind.S_BLOCK32, body
        case SymbolKind.S_LABEL32_OLD: return SymbolKind.S_LABEL32, body
        case SymbolKind.S_WITH32_OLD:  return SymbolKind.S_WITH32,  body

        case _:
            return kind_val, body


def migrate_debug_s_symbols(data: bytes) -> bytes:
    """
    Migrate old records and wrap in a CV13 DEBUG_S_SYMBOLS subsection.
    * S_COMPILE             => S_COMPILE3
    * S_OBJNAME_ST (0x0009) => S_OBJNAME (0x1101)
    * S_UDT (0x1003)        => S_UDT (0x1108)
    * S_BPREL32 (0x1006)    => S_BPREL32 (0x110b)
    * S_GPROC32 (0x100b)    => S_GPROC32 (0x1110)
    """
    records = bytearray()

    for _, hdr, body in _iter_debug_s_records(data):
        new_kind, new_body = _rewrite_record(hdr.index, body)
        records += struct.pack('<HH', 2 + len(new_body), new_kind)
        records += new_body

    # sub_len is the unpadded record byte count; padding aligns to the next subsection
    unpadded = len(records)
    pad = (4 - unpadded % 4) % 4
    return struct.pack('<III', _DEBUG_S_VERSION_C13, _DEBUG_S_SYMBOLS, unpadded) \
           + bytes(records) + b'\x00' * pad


def migrate_debug_t_symbols(data: bytes) -> bytes:
    """Upgrade .debug$T section from CV11 (sig=2) to CV13 (sig=4).

    Iterates type records and converts old Pascal-string records:
    * LF_TYPESERVER_ST (0x0016) => LF_TYPESERVER2 (0x1515)
    """
    if len(data) < 4 or struct.unpack_from('<I', data, 0)[0] != _DEBUG_S_VERSION_C11:
        return data

    out = bytearray(struct.pack('<I', _DEBUG_S_VERSION_C13))
    pos = 4
    while pos + 4 <= len(data):
        length, leaf = struct.unpack_from('<HH', data, pos)
        if length < 2:
            break

        if leaf == _LF_TYPESERVER_ST:
            # Drop type-server records entirely.  Converting to LF_TYPESERVER2 causes
            # lld-link to try loading the referenced PDB (vc60.pdb, PDB 2.0 format).
            # When the file is absent or unreadable, lld-link issues LNK4099 and drops
            # ALL debug info for the module — including the line-number subsections.
            # Omitting the record gives non-fatal "bad type index" warnings instead,
            # which lets line info survive into the PDB.
            pass
        else:
            out += data[pos : pos + 2 + length]

        pos += 2 + length

    return bytes(out)


def _build_sym_lookup(coff: 'CoffFile') -> dict[int, tuple[int, int, int, int]]:
    """Return {flat_sym_idx: (value, section_1based, total_size, bf_lnno)}.

    *bf_lnno* is the **absolute** source-file line number of the function's
    opening brace, taken from the COFF `.bf` symbol's auxiliary Lnno field
    (storage class IMAGE_SYM_CLASS_FUNCTION = 101, Value = 0).

    COFF line-number table entries store line numbers **relative** to the
    function's opening brace (LN=1 means the first line of the function body,
    i.e. one line after the brace).  The absolute line is therefore:
    ``bf_lnno + relative_ln``.

    The flat index counts every symbol-table slot including auxiliary records,
    matching the SymbolTableIndex stored in COFF LN=0 line-number entries.
    Only symbols with a function derived type (IMAGE_SYM_DTYPE_FUNCTION) in a
    positive section with at least one auxiliary record are included.
    """
    # Pass 1: collect the absolute start-line for each section from .bf symbols.
    # Each .bf has storage class 101 (IMAGE_SYM_CLASS_FUNCTION) and Value == 0.
    # Its single auxiliary record carries Lnno at byte offset 4 (a 16-bit LE field).
    section_bf_lnno: dict[int, int] = {}
    pos = 0
    while pos + _SYMBOL_SIZE <= len(coff.symbols_raw):
        entry   = coff.symbols_raw[pos : pos + _SYMBOL_SIZE]
        storage = entry[16]
        aux_cnt = entry[17]
        value   = struct.unpack_from('<I', entry, 8)[0]
        section = struct.unpack_from('<h', entry, 12)[0]
        if storage == 0x65 and value == 0 and aux_cnt > 0 and section > 0:
            aux_pos = pos + _SYMBOL_SIZE
            if aux_pos + _SYMBOL_SIZE <= len(coff.symbols_raw):
                aux  = coff.symbols_raw[aux_pos : aux_pos + _SYMBOL_SIZE]
                lnno = struct.unpack_from('<H', aux, 4)[0]
                if lnno > 0:
                    section_bf_lnno[section] = lnno
        pos += _SYMBOL_SIZE * (1 + aux_cnt)

    # Pass 2: build the main lookup, using the type field to identify real
    # function symbols (IMAGE_SYM_DTYPE_FUNCTION, bits 4-7 of Type = 2).
    result: dict[int, tuple[int, int, int, int]] = {}
    pos      = 0
    flat_idx = 0
    remaining_aux = 0

    while pos + _SYMBOL_SIZE <= len(coff.symbols_raw):
        if remaining_aux > 0:
            remaining_aux -= 1
        else:
            entry   = coff.symbols_raw[pos : pos + _SYMBOL_SIZE]
            value   = struct.unpack_from('<I', entry, 8)[0]
            section = struct.unpack_from('<h', entry, 12)[0]
            type_   = struct.unpack_from('<H', entry, 14)[0]
            aux_cnt = entry[17]
            is_func = ((type_ >> 4) & 0xF) == 2   # IMAGE_SYM_DTYPE_FUNCTION
            if aux_cnt > 0 and is_func and section > 0:
                aux_start = pos + _SYMBOL_SIZE
                if aux_start + _SYMBOL_SIZE <= len(coff.symbols_raw):
                    aux        = coff.symbols_raw[aux_start : aux_start + _SYMBOL_SIZE]
                    total_size = struct.unpack_from('<I', aux, 4)[0]
                    if total_size > 0:
                        bf_lnno = section_bf_lnno.get(section, 1)
                        result[flat_idx] = (value, section, total_size, bf_lnno)
            remaining_aux = aux_cnt

        pos      += _SYMBOL_SIZE
        flat_idx += 1

    return result


def _extract_src_files(coff: 'CoffFile') -> list[bytes]:
    """Extract unique source filenames from COFF .file symbol auxiliary records."""
    seen: list[bytes] = []
    pos = 0
    while pos + _SYMBOL_SIZE <= len(coff.symbols_raw):
        entry   = coff.symbols_raw[pos : pos + _SYMBOL_SIZE]
        storage = entry[16]
        aux_cnt = entry[17]
        pos    += _SYMBOL_SIZE
        if storage == 0x67:   # IMAGE_SYM_CLASS_FILE
            fname_raw = coff.symbols_raw[pos : pos + aux_cnt * _SYMBOL_SIZE]
            fname     = fname_raw.split(b'\x00')[0]
            if fname and fname not in seen:
                seen.append(fname)
        pos += aux_cnt * _SYMBOL_SIZE
    return seen


def _make_file_info_subsections(
    src_files: list[bytes],
    src_dir: 'Path | None' = None,
) -> tuple[bytes, list[int]]:
    """Build FILECHKSUMS + STRINGTABLE subsections for the given source files.

    Returns ``(subsection_bytes, file_id_offsets)`` where *file_id_offsets* is
    the byte offset of each file's entry within the FILECHKSUMS payload (not
    counting the 8-byte subsection header).  These offsets are used as
    *offFile* values in DEBUG_S_LINES file blocks.

    If *src_dir* is given and a source file is found there, the full resolved
    path and its MD5 checksum are used.  Otherwise the original filename is
    kept and CV_CHKSUM_TYPE_NONE is emitted.
    """
    entries: list[tuple[bytes, bytes, int]] = []   # (path, checksum, kind)
    for fname in src_files:
        path      = fname
        checksum  = b''
        kind      = _CV_CHKSUM_NONE
        if src_dir is not None:
            candidate = src_dir / fname.decode('ascii', errors='replace')
            if candidate.exists():
                checksum = hashlib.md5(candidate.read_bytes()).digest()
                kind     = _CV_CHKSUM_MD5
                path     = str(candidate.resolve()).encode('ascii')
        entries.append((path, checksum, kind))

    # STRINGTABLE: offset 0 = empty string, then one entry per file
    strings      = bytearray(b'\x00')
    name_offsets: list[int] = []
    for path, _, _ in entries:
        name_offsets.append(len(strings))
        strings += path + b'\x00'

    strtab_unpadded = len(strings)
    strtab_pad      = (4 - strtab_unpadded % 4) % 4
    strtab = struct.pack('<II', _DEBUG_S_STRINGTABLE, strtab_unpadded) \
             + bytes(strings) + b'\x00' * strtab_pad

    # FILECHKSUMS: one entry per file, each padded to a 4-byte boundary
    chksum_entries   = bytearray()
    file_id_offsets: list[int] = []
    for (_, checksum, kind), name_off in zip(entries, name_offsets):
        file_id_offsets.append(len(chksum_entries))
        entry = struct.pack('<IBB', name_off, len(checksum), kind) + checksum
        entry += b'\x00' * ((4 - len(entry) % 4) % 4)
        chksum_entries += entry

    filechks = struct.pack('<II', _DEBUG_S_FILECHKSUMS, len(chksum_entries)) \
               + bytes(chksum_entries)

    return filechks + strtab, file_id_offsets


def _build_lines_subsections(
    coff: 'CoffFile',
    sym_lookup: dict[int, tuple[int, int, int]],
    file_id_offsets: list[int],
    base_offset: int,
) -> tuple[bytes, list[tuple[int, int, int]]]:
    """Convert old COFF section line-number tables to CV13 DEBUG_S_LINES subsections.

    *base_offset* is the byte offset within the containing .debug$S section at
    which the first emitted subsection will be placed.  This is needed to
    compute the correct VirtualAddress values for the COFF relocations.

    Returns ``(subsection_bytes, reloc_info)`` where *reloc_info* is a list of
    ``(flat_sym_idx, offCon_va, segCon_va)`` tuples — one per emitted subsection.
    The caller must add two COFF relocations per tuple:
      - IMAGE_REL_I386_SECREL  at offCon_va  (symbol → section-relative offset)
      - IMAGE_REL_I386_SECTION at segCon_va  (symbol → image section index)

    These relocations let lld-link fixup the raw object-relative values to the
    correct image RVA / section index before writing the PDB.
    """
    if not file_id_offsets:
        return b'', []

    file_off   = file_id_offsets[0]
    out        = bytearray()
    reloc_info: list[tuple[int, int, int]] = []
    cur_offset = base_offset

    for sec_linenos in coff.linenos:
        if not sec_linenos:
            continue

        n_entries = len(sec_linenos) // 6
        raw = [(struct.unpack_from('<I', sec_linenos, i * 6)[0],
                struct.unpack_from('<H', sec_linenos, i * 6 + 4)[0])
               for i in range(n_entries)]

        i = 0
        while i < len(raw):
            va, ln = raw[i]
            if ln != 0:
                i += 1
                continue

            sym_idx = va
            if sym_idx not in sym_lookup:
                i += 1
                continue

            offCon, _, cbCon, bf_lnno = sym_lookup[sym_idx]

            # Synthetic entry at offset 0: attribute the function prolog to
            # the opening-brace line (bf_lnno) so the debugger has coverage
            # for the function entry point.
            start_flags  = (bf_lnno & 0x00FF_FFFF) | (1 << 31)
            line_entries = bytearray(struct.pack('<II', 0, start_flags))

            # Collect all LN>0 entries that follow before the next LN=0.
            # COFF LN is relative to the opening brace: LN=1 is the first
            # body line (brace + 1).  Absolute line = bf_lnno + LN.
            j = i + 1
            while j < len(raw) and raw[j][1] != 0:
                line_va, line_no = raw[j]
                offset   = line_va - offCon
                abs_line = bf_lnno + line_no
                flags    = (abs_line & 0x00FF_FFFF) | (1 << 31)   # IsStatement=true
                line_entries += struct.pack('<II', offset, flags)
                j += 1

            if line_entries:
                nLines   = len(line_entries) // 8
                cbLines  = 12 + nLines * 8   # file-block header + line entries
                # Write segCon=0: IMAGE_REL_I386_SECTION is additive, so lld-link
                # adds the final image section index to the existing value.  Starting
                # from 0 gives the correct result; using the object section number
                # would inflate the segment by that amount.
                lines_hdr  = struct.pack('<IHHI', offCon, 0, 0, cbCon)
                file_block = struct.pack('<III', file_off, nLines, cbLines)
                payload    = lines_hdr + file_block + bytes(line_entries)
                unpadded   = len(payload)
                pad        = (4 - unpadded % 4) % 4

                # offCon is at cur_offset+8 (past [type(4)][length(4)])
                # segCon is at cur_offset+8+4
                offCon_va = cur_offset + 8
                segCon_va = cur_offset + 12
                reloc_info.append((sym_idx, offCon_va, segCon_va))

                out        += struct.pack('<II', _DEBUG_S_LINES, unpadded) \
                              + payload + b'\x00' * pad
                cur_offset += 8 + unpadded + pad

            i = j

    return bytes(out), reloc_info


def migrate_symbols(coff: 'CoffFile', src_dir: 'Path | None' = None) -> None:
    """Walk all debug sections and apply record migration in-place."""
    src_files = _extract_src_files(coff)
    if src_files:
        file_subs, file_id_offsets = _make_file_info_subsections(src_files, src_dir)
    else:
        file_subs, file_id_offsets = b'', []

    sym_lookup = _build_sym_lookup(coff)

    appended_extra = False
    for i, s in enumerate(coff.coff.sections):
        if s.name == '.debug$S':
            orig = coff.section_content[i]
            data = migrate_debug_s_symbols(orig)
            # Append FILECHKSUMS + STRINGTABLE + LINES to the first module-level
            # section (the one that carried the CV11 signature).
            if not appended_extra and len(orig) >= 4 \
                    and struct.unpack_from('<I', orig)[0] == _DEBUG_S_VERSION_C11:
                # base_offset is where the first DEBUG_S_LINES will land in the section
                base_offset = len(data) + len(file_subs)
                lines_subs, reloc_info = _build_lines_subsections(
                    coff, sym_lookup, file_id_offsets, base_offset)
                data += file_subs + lines_subs
                # Add SECREL + SECTION relocations so lld-link can fix up
                # offCon/segCon to their final image addresses.
                new_relocs = bytearray(coff.relocs_raw[i])
                for sym_idx, offCon_va, segCon_va in reloc_info:
                    new_relocs += struct.pack('<IIH', offCon_va, sym_idx,
                                             _IMAGE_REL_I386_SECREL)
                    new_relocs += struct.pack('<IIH', segCon_va, sym_idx,
                                             _IMAGE_REL_I386_SECTION)
                coff.relocs_raw[i] = bytes(new_relocs)
                appended_extra = True
            coff.section_content[i] = data
        elif s.name == '.debug$T':
            coff.section_content[i] = migrate_debug_t_symbols(coff.section_content[i])

class CoffFile:
    """Parsed COFF file: lief Binary + raw bytes for parts lief doesn't expose."""

    def __init__(self, coff: lief.COFF.Binary, relocs_raw: list[bytes],
                 linenos: list[bytes], symbols_raw: bytes, string_table: bytes):
        self.coff         = coff
        self.relocs_raw   = relocs_raw   # per-section raw relocation bytes
        self.linenos      = linenos      # per-section line number bytes (deprecated but may exist)
        self.symbols_raw  = symbols_raw
        self.string_table = string_table
        # Mutable section content; migration replaces entries here
        self.section_content: list[bytes] = [bytes(s.content) for s in coff.sections]


def parse_cv11(path: Path) -> CoffFile:
    """Open the CV11 coff and extract the segments"""
    raw  = path.read_bytes()
    coff = lief.COFF.parse(list(raw))
    h    = coff.header

    relocs_raw = []
    linenos    = []
    for s in coff.sections:
        r_raw = b''
        if s.pointerto_relocation and s.numberof_relocations:
            r_raw = raw[s.pointerto_relocation :
                        s.pointerto_relocation + s.numberof_relocations * _RELOC_SIZE]
        relocs_raw.append(r_raw)

        linenos_raw = b''
        if s.pointerto_line_numbers and s.numberof_line_numbers:
            linenos_raw = raw[s.pointerto_line_numbers :
                              s.pointerto_line_numbers + s.numberof_line_numbers * 6]
        linenos.append(linenos_raw)

    sym_ptr      = h.pointerto_symbol_table
    symbols_raw  = raw[sym_ptr : sym_ptr + h.nb_symbols * _SYMBOL_SIZE] if h.nb_symbols else b''
    str_off      = sym_ptr + h.nb_symbols * _SYMBOL_SIZE
    str_sz       = struct.unpack_from('<I', raw, str_off)[0] if str_off + 4 <= len(raw) else 4
    string_table = raw[str_off : str_off + str_sz]

    return CoffFile(coff, relocs_raw, linenos, symbols_raw, string_table)

def write_cv13(coff: CoffFile, path: Path) -> None:
    """Write *coff* (possibly migrated) as a well-formed COFF binary to *path*."""
    h        = coff.coff.header
    sections = list(coff.coff.sections)
    n        = len(sections)

    # Pass 1: assign file offsets
    cursor = _FILE_HDR_SIZE + n * _SEC_HDR_SIZE
    sec_layout = []          # (data_ptr, reloc_ptr, lineno_ptr)
    for i, s in enumerate(sections):
        data    = coff.section_content[i]
        relocs  = coff.relocs_raw[i]
        linenos = coff.linenos[i]

        data_ptr   = cursor if data    else 0
        cursor    += len(data)
        reloc_ptr  = cursor if relocs  else 0
        cursor    += len(relocs)
        lineno_ptr = cursor if linenos else 0
        cursor    += len(linenos)

        sec_layout.append((data_ptr, reloc_ptr, lineno_ptr))

    sym_ptr = cursor if coff.symbols_raw else 0

    # Pass 2: serialise
    out = bytearray()

    out += struct.pack(_FILE_HDR_FMT,
        int(h.machine),
        n,
        h.timedatestamp,
        sym_ptr,
        h.nb_symbols,
        0,                  # SizeOfOptionalHeader (always 0 for .obj)
        int(h.characteristics),
    )

    for i, s in enumerate(sections):
        data    = coff.section_content[i]
        relocs  = coff.relocs_raw[i]
        linenos = coff.linenos[i]
        data_ptr, reloc_ptr, lineno_ptr = sec_layout[i]
        name = s.name.encode('ascii')[:8].ljust(8, b'\x00')
        out += struct.pack(_SEC_HDR_FMT,
            name,
            s.virtual_size,
            s.virtual_address,
            len(data),
            data_ptr,
            reloc_ptr,
            lineno_ptr,
            len(relocs) // _RELOC_SIZE,
            len(linenos) // 6,
            int(s.characteristics),
        )

    for i in range(n):
        out += coff.section_content[i]
        out += coff.relocs_raw[i]
        out += coff.linenos[i]

    out += coff.symbols_raw
    out += coff.string_table

    path.write_bytes(bytes(out))

def upgrade_coff_debug(input_path: Path, output_path: Path, src_dir: Path | None = None):
    coff = parse_cv11(input_path)
    migrate_symbols(coff, src_dir)
    write_cv13(coff, output_path)

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description='Upgrade COFF debug info from CV11 to CV13')
    parser.add_argument('input',  type=Path, help='Input .obj file (CV11)')
    parser.add_argument('output', type=Path, help='Output .obj file (CV13)')
    parser.add_argument('--src-dir', type=Path, default=None,
                        help='Directory to search for source files; enables MD5 checksums')
    args = parser.parse_args()
    upgrade_coff_debug(args.input, args.output, args.src_dir)
