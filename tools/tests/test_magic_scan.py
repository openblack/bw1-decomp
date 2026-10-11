"""Run with python -m unittest discover -s tools/tests -p test_magic_scan.py."""

import importlib.util
from pathlib import Path
import sys
import unittest

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location("magic_scan", TOOLS / "magic-scan.py")
magic = importlib.util.module_from_spec(spec)
spec.loader.exec_module(magic)


def scan(body, show_all=False):
    lines = set(range(1, body.count("\n") + 2))
    return [numbers for _, numbers, _ in magic.scan(body, lines, show_all)]


class ScanTests(unittest.TestCase):
    def test_reports_plain_literals(self):
        self.assertEqual(scan("int a[64];\nx = y * 0.5f + 100;"), [["64"], ["0.5f", "100"]])
        self.assertEqual(scan("flags &= 0x80u;"), [["0x80u"]])

    def test_trivial_values_are_ignored(self):
        self.assertEqual(scan("x = 0; y = 1; z = 2; f = 0.0f + 1.0f + 2.0f;"), [])
        self.assertEqual(scan("x = 0x0 + 0x01;"), [])

    def test_identifiers_and_comments_and_strings(self):
        self.assertEqual(scan("int field_0x7c = Vec3::X4;"), [])
        self.assertEqual(scan("// BW1W120 0054cbd0 BW1M119 010cca10\nint a; /* 0x1c */ int b;"), [])
        self.assertEqual(scan('Log("port 8080", \'7\');'), [])
        self.assertEqual(scan("/* spans\n 99 lines */ int a;"), [])

    def test_directives_enums_static_asserts(self):
        self.assertEqual(scan("#define LH_MAX 64\n#if BUILD_VERSION == 3\n#endif"), [])
        self.assertEqual(scan("enum {\n\tLH_A = 5,\n\tLH_B = 0x40\n};\nint x = 7;"), [["7"]])
        self.assertEqual(scan("static_assert(sizeof(Foo) == 0x30,\n\t\"size\");"), [])
        self.assertEqual(scan("static_assert(sizeof(Foo) == 0x30);\nint x = 9;"), [["9"]])

    def test_filepath_line_numbers(self):
        self.assertEqual(scan("p = new (FILEPATH, 123) Foo;"), [])
        self.assertEqual(scan("p = Alloc(size, FILEPATH, 4321);"), [])
        # Only what follows FILEPATH is a line number.
        self.assertEqual(scan("p = Alloc(32, FILEPATH, 4321) + 17;"), [["32", "17"]])

    def test_only_selected_lines(self):
        text = "int a = 10;\nint b = 20;\nint c = 30;"
        self.assertEqual([n for _, n, _ in magic.scan(text, {2})], [["20"]])

    def test_all_disables_ignores(self):
        self.assertEqual(scan("x = 0; // 0x54cbd0\n#define N 8", show_all=True), [["0", "0x54cbd0"], ["8"]])


if __name__ == "__main__":
    unittest.main()
