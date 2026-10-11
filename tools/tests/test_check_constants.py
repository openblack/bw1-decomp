"""check-constants.py on synthetic objects and images; no game files, compiler, or objdiff required."""

import importlib.util
from pathlib import Path
import struct
import sys
import tempfile
import unittest
from unittest.mock import patch

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
from decomp_binary import PE

spec = importlib.util.spec_from_file_location("check_constants", TOOLS / "check-constants.py")
check = importlib.util.module_from_spec(spec)
spec.loader.exec_module(check)

DIR32 = 6


def coff(sections, symbols, relocations):
    """A COFF object. sections: [(name, bytes)]; symbols: [(name, value, section)] (section 0 is
    external); relocations: [(section index, offset, symbol index)], DIR32 only."""
    strings = bytearray(b"\0" * 4)
    entries = bytearray()
    for name, value, section in symbols:
        encoded = name.encode("ascii")
        if len(encoded) > 8:
            raw = struct.pack("<II", 0, len(strings))
            strings += encoded + b"\0"
        else:
            raw = encoded.ljust(8, b"\0")
        entries += struct.pack("<8sIhHBB", raw, value, section, 0, 2, 0)
    struct.pack_into("<I", strings, 0, len(strings))
    header_end = 20 + 40 * len(sections)
    body, table = bytearray(), bytearray()
    raw_offsets, reloc_offsets = [], []
    for index, (_, data) in enumerate(sections, 1):
        raw_offsets.append(header_end + len(body))
        body += data
    for index, (_, data) in enumerate(sections, 1):
        mine = [r for r in relocations if r[0] == index]
        reloc_offsets.append(header_end + len(body) + len(table) if mine else 0)
        for _, offset, symbol in mine:
            table += struct.pack("<IIH", offset, symbol, DIR32)
    symoff = header_end + len(body) + len(table)
    out = bytearray(struct.pack("<HHIIIHH", 0x14C, len(sections), 0, symoff, len(symbols), 0, 0))
    for index, (name, data) in enumerate(sections, 1):
        count = len([r for r in relocations if r[0] == index])
        out += struct.pack("<8sIIIIIIHHI", name.encode(), 0, 0, len(data), raw_offsets[index - 1],
                           reloc_offsets[index - 1], 0, count, 0, 0x40000040)
    return bytes(out + body + table + entries + strings)


def rdata_image(address, value):
    """A PE image whose .rdata section holds one float at address (image base 0x400000)."""
    data = bytearray(0x400)
    data[:2] = b"MZ"
    struct.pack_into("<I", data, 0x3C, 0x80)
    data[0x80:0x84] = b"PE\0\0"
    struct.pack_into("<HHIIIHH", data, 0x84, 0x14C, 1, 0, 0, 0, 96, 0)
    struct.pack_into("<H", data, 0x98, 0x10B)
    struct.pack_into("<I", data, 0x98 + 28, 0x400000)
    struct.pack_into("<I", data, 0x98 + 60, 0x200)
    struct.pack_into("<8sIIIIIIHHI", data, 0x98 + 96, b".rdata", 0x100, 0x1000, 0x100, 0x200, 0, 0, 0, 0,
                     0x40000040)
    struct.pack_into("<f", data, 0x200 + address - 0x401000, value)
    return PE(bytes(data))


# fmul dword ptr [disp32]; ret
FMUL = b"\xD8\x0D\0\0\0\0\xC3"


class X87WidthTests(unittest.TestCase):
    def test_float_and_double_operands(self):
        self.assertEqual(check.x87_width(b"\xD8\x0D\0\0\0\0", 2), 4)  # fmul m32
        self.assertEqual(check.x87_width(b"\xDC\x0D\0\0\0\0", 2), 8)  # fmul m64
        self.assertEqual(check.x87_width(b"\xD9\x05\0\0\0\0", 2), 4)  # fld m32
        self.assertEqual(check.x87_width(b"\xDD\x1D\0\0\0\0", 2), 8)  # fstp m64

    def test_ignores_integer_control_and_non_absolute_forms(self):
        self.assertIsNone(check.x87_width(b"\xDA\x05\0\0\0\0", 2))  # fiadd m32int
        self.assertIsNone(check.x87_width(b"\xD9\x2D\0\0\0\0", 2))  # fldcw m16
        self.assertIsNone(check.x87_width(b"\xD8\x4D\x08", 2))  # fmul [ebp+8]
        self.assertIsNone(check.x87_width(b"\x8B\x0D\0\0\0\0", 2))  # mov ecx, [disp32]
        self.assertIsNone(check.x87_width(b"\x0D", 1))


class DifferenceTests(unittest.TestCase):
    def test_reports_a_substituted_constant(self):
        found = check.differences([(0, 1.0), (8, 2000.0), (16, 0.2)], [(0, 1.0), (8, 1000.0), (16, 0.2)])
        self.assertEqual(found, [((8, 2000.0), (8, 1000.0))])

    def test_float_and_double_spellings_agree(self):
        as_float = struct.unpack("<f", struct.pack("<f", 0.1))[0]
        self.assertEqual(check.differences([(0, 0.1)], [(0, as_float)]), [])

    def test_an_extra_load_is_not_a_substitution(self):
        self.assertEqual(check.differences([(0, 1.0), (8, 2.0)], [(0, 1.0), (4, 0.5), (8, 2.0)]), [])


class UnitTests(unittest.TestCase):
    def run_unit(self, our_value):
        target = coff([(".text", FMUL)], [("func", 0, 1), ("lbl_00401010", 0, 0)], [(1, 2, 1)])
        ours = coff([(".text", FMUL), (".rdata", struct.pack("<f", our_value))],
                    [("func", 0, 1), ("__real@4@x", 0, 2)], [(1, 2, 1)])
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            (root / "target.o").write_bytes(target)
            (root / "ours.o").write_bytes(ours)
            with patch.object(check, "ROOT", root):
                return check.check_unit({"target_path": "target.o", "base_path": "ours.o"},
                                        rdata_image(0x401010, 2.0), {})

    def test_reports_a_wrong_constant(self):
        self.assertEqual(self.run_unit(1.0), [("func", (2, 2.0), (2, 1.0))])

    def test_accepts_the_right_constant(self):
        self.assertEqual(self.run_unit(2.0), [])


if __name__ == "__main__":
    unittest.main()
