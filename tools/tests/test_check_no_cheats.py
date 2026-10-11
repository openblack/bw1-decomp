"""Tests for the anti-cheat source scan.

Run: python -m unittest discover -s tools/tests -p test_check_no_cheats.py -v
Pure-function tests; no build, network, or repo walk.
"""

import importlib.util
import sys
import unittest
from pathlib import Path

TOOLS = Path(__file__).resolve().parents[1]
if str(TOOLS) not in sys.path:
    sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location("check_no_cheats", TOOLS / "check-no-cheats.py")
cheats = importlib.util.module_from_spec(spec)
spec.loader.exec_module(cheats)


class NoCheatTests(unittest.TestCase):
    def kinds(self, text):
        return [k for k, _ in cheats.scan_text(text)]

    def test_inline_asm_detected(self):
        self.assertIn("inline assembly", self.kinds("void f(){ __asm { mov eax, 1 } }"))
        self.assertIn("inline assembly", self.kinds("void f(){ _asm nop }"))
        self.assertIn("inline assembly", self.kinds("void f(){ asm { nop } }"))

    def test_symbol_rename_asm_not_flagged(self):
        # GNU-style `asm("...")` renames a symbol; not inline assembly.
        self.assertEqual(cheats.scan_text('void f() asm("?sym@@YAXXZ");'), [])

    def test_naked_and_emit_detected(self):
        self.assertIn("naked function", self.kinds("__declspec(naked) void f() {}"))
        self.assertIn("_emit byte", self.kinds("void f(){ _emit 0x90; }"))

    def test_long_byte_run_detected_short_ok(self):
        long_run = '"' + ("\\x90" * 20) + '"'
        self.assertIn("embedded bytes (long \\xNN run)", self.kinds("char b[] = " + long_run + ";"))
        self.assertEqual(cheats.scan_text('const char* s = "\\x01\\x04\\x06";'), [])  # legitimate data

    def test_clean_source_passes(self):
        self.assertEqual(cheats.scan_text("int Cow::IsCow(Creature* c) { return 1; }"), [])

    def test_asm_in_comment_ignored(self):
        self.assertEqual(cheats.scan_text("// we do not use __asm here\nint x = 1;"), [])

    def test_asm_in_string_ignored(self):
        self.assertEqual(cheats.scan_text('const char* s = "__asm"; int x = 1;'), [])

    def test_line_numbers(self):
        hits = cheats.scan_text("int a;\nint b;\n__asm nop;\n")
        self.assertEqual(hits, [("inline assembly", 3)])


if __name__ == "__main__":
    unittest.main(verbosity=2)
