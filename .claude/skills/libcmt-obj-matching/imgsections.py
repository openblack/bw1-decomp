"""Per-version section ranges of runblack, from the PE section table of the
original image plus the sub-section header at the top of config/<VER>/splits.txt.

ranges(ver) -> dict with:
  '.text'     plain code, up to the start of the .text$x funclet tail
  '.text$x'   exception funclets
  'code'      the whole code section (.text + .text$x), for "is this a code address"
  '.rdata'    plain read-only data (after the IAT, before .rdata$r)
  '.rdata$r'  RTTI, '.xdata$x' EH tables
  '.data'     initialised data after the CRT tables, '.bss', '.CRT$XCU'
  'image'     [first section start, last section end)
"""
import re
import struct
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
IMAGE_BASE = 0x400000


def pe_sections(exe):
    pe = struct.unpack_from('<I', exe, 0x3C)[0]
    nsec = struct.unpack_from('<H', exe, pe + 6)[0]
    optsz = struct.unpack_from('<H', exe, pe + 20)[0]
    sh = pe + 24 + optsz
    out = {}
    for i in range(nsec):
        name = exe[sh + i * 40: sh + i * 40 + 8].rstrip(b'\0').decode(errors='replace')
        vsz, va = struct.unpack_from('<II', exe, sh + i * 40 + 8)
        out.setdefault(name, (IMAGE_BASE + va, IMAGE_BASE + va + vsz))
    return out


def split_header(ver):
    out = {}
    in_hdr = False
    for line in (ROOT / 'config' / ver / 'splits.txt').read_text().splitlines():
        if line.startswith('Sections:'):
            in_hdr = True
            continue
        if in_hdr and not line.startswith('\t'):
            break
        m = re.match(r'\t(\S+)\s+type:\S+\s+vaddr:0x([0-9A-Fa-f]+)\s+end:0x([0-9A-Fa-f]+)', line)
        if m:
            out[m.group(1)] = (int(m.group(2), 16), int(m.group(3), 16))
    return out


def ranges(ver, exe=None):
    if exe is None:
        exe = (ROOT / 'orig' / ver / 'runblack-decrypted.exe').read_bytes()
    pe = pe_sections(exe)
    hdr = split_header(ver)
    text = pe['.text']
    tx = hdr['.text$x']
    return {
        '.text': (text[0], tx[0]),
        '.text$x': tx,
        'code': (text[0], max(text[1], tx[1])),
        '.rdata': (hdr['.idata$5'][1], hdr['.rdata$r'][0]),
        '.rdata$r': hdr['.rdata$r'],
        '.xdata$x': hdr['.xdata$x'],
        '.data': (hdr['.CRT$XTZ'][1], hdr['.bss'][0]),
        '.bss': hdr['.bss'],
        '.CRT$XCU': hdr['.CRT$XCU'],
        'image': (min(a for a, _ in pe.values()), max(b for _, b in pe.values())),
    }


if __name__ == '__main__':
    import sys
    for k, (a, b) in ranges(sys.argv[1]).items():
        print(f'{k:9s} {a:#010x}-{b:#010x}')
