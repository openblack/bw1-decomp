"""Tests for the strict-relocation inventory tool.

Run: python -m unittest discover -s tools/tests -p test_decomp_strict.py -v
Pure-function tests only; no build, no network, no real objdiff query.
"""

import importlib.util
import sys
import unittest
from pathlib import Path

TOOLS = Path(__file__).resolve().parents[1]
if str(TOOLS) not in sys.path:
    sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location("decomp_strict", TOOLS / "decomp-strict.py")
strict = importlib.util.module_from_spec(spec)
spec.loader.exec_module(strict)


def _doc(rows):
    return {"left": {"symbols": [
        {"name": n, "kind": "SYMBOL_FUNCTION", "target_symbol": 1, "match_percent": m}
        for n, m in rows
    ]}}


class StrictMismatchTests(unittest.TestCase):
    def test_reloc_only_detected(self):
        lenient = _doc([("?A@@YAXXZ", 100.0), ("?B@@YAXXZ", 100.0), ("?C@@YAXXZ", 50.0)])
        strictd = _doc([("?A@@YAXXZ", 100.0), ("?B@@YAXXZ", 99.5), ("?C@@YAXXZ", 50.0)])
        reloc, below = strict.strict_mismatches(lenient, strictd)
        self.assertEqual(reloc, ["?B@@YAXXZ"])              # 100% lenient, <100% strict
        self.assertEqual(below, ["?B@@YAXXZ", "?C@@YAXXZ"])  # both below 100% strict

    def test_no_mismatch(self):
        d = _doc([("?A@@YAXXZ", 100.0), ("?B@@YAXXZ", 100.0)])
        self.assertEqual(strict.strict_mismatches(d, d), ([], []))

    def test_missing_side_ignored(self):
        # a function absent from the target side has no target_symbol and is skipped
        doc = {"left": {"symbols": [
            {"name": "?X@@YAXXZ", "kind": "SYMBOL_FUNCTION"},  # no target_symbol
            {"name": "?obj@@3HA", "kind": "SYMBOL_OBJECT", "target_symbol": 2, "match_percent": 100.0},
        ]}}
        self.assertEqual(strict.strict_mismatches(doc, doc), ([], []))


if __name__ == "__main__":
    unittest.main(verbosity=2)
