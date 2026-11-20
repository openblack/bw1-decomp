"""Run with python -m unittest discover -s tools/tests -p test_check_tables.py.

tools/check-tables.py on small synthetic padding tables and config.yml relocation lists.
"""

import importlib.util
from pathlib import Path
import unittest

TOOLS = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location("check_tables", TOOLS / "check-tables.py")
ct = importlib.util.module_from_spec(spec)
spec.loader.exec_module(ct)

HEADER = "# header\n"


class Padding(unittest.TestCase):
    def test_sorted_is_clean(self):
        text = HEADER + "0x00401000 call_rel32 0x00401879  # Abode\n0x00401010 jmp_run 0x00401000\n"
        self.assertIsNone(ct.check_padding(text))

    def test_union_result_is_sorted_and_deduplicated(self):
        # What merge=union leaves when both sides added rows (one of them the same).
        text = HEADER + ("0x00402000 call_rel32 0x00401879  # B\n"
                         "0x00401000 call_rel32 0x00401879  # A\n"
                         "0x00402000 call_rel32 0x00401879  # B\n")
        problem, fixed = ct.check_padding(text)
        self.assertEqual(fixed, HEADER + "0x00401000 call_rel32 0x00401879  # A\n"
                                         "0x00402000 call_rel32 0x00401879  # B\n")

    def test_two_rows_for_one_address(self):
        text = HEADER + "0x00401000 call_rel32 0x00401879\n0x00401000 jmp_run 0x00400FF0\n"
        problem, fixed = ct.check_padding(text)
        self.assertIn("two different rows", problem)
        self.assertIsNone(fixed)


CONFIG = """name: runblack
block_relocations:
# B's immediate.
  - source: 0x00402000
# A's immediate.
  - source: 0x00401000
  - source: 0x00401004

add_relocations:
# C's table.
  - source: 0x00403000
    type: x86_abs32
    target: 'c'
# Standalone note.

# A's table.
  - source: 0x00401000
    type: x86_abs32
    target: 'a'
    addend: 0x4

# The next key's comment.
timestamp: "2002"
"""

SORTED = """name: runblack
block_relocations:
# A's immediate.
  - source: 0x00401000
  - source: 0x00401004
# B's immediate.
  - source: 0x00402000

add_relocations:
# Standalone note.

# A's table.
  - source: 0x00401000
    type: x86_abs32
    target: 'a'
    addend: 0x4
# C's table.
  - source: 0x00403000
    type: x86_abs32
    target: 'c'

# The next key's comment.
timestamp: "2002"
"""


class Config(unittest.TestCase):
    def test_sorts_groups_with_their_comments(self):
        problem, fixed = ct.check_config(CONFIG)
        self.assertEqual(fixed, SORTED)
        self.assertEqual(ct.entries(fixed), ct.entries(CONFIG))
        self.assertIsNone(ct.check_config(fixed))

    def test_unknown_line_is_an_error(self):
        with self.assertRaises(ct.TableError):
            ct.check_config("add_relocations:\n  - source: 0x1\n  oops\n")


if __name__ == "__main__":
    unittest.main()
