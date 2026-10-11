"""Tests for the missing-function inventory tool.

Run: python -m unittest discover -s tools/tests -p test_decomp_missing.py -v
Pure-function tests only; no build, no network, no real objdiff query.
"""

import importlib.util
import sys
import unittest
from pathlib import Path

TOOLS = Path(__file__).resolve().parents[1]
if str(TOOLS) not in sys.path:
    sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location("decomp_missing", TOOLS / "decomp-missing.py")
missing = importlib.util.module_from_spec(spec)
spec.loader.exec_module(missing)

DOC = {"left": {"symbols": [
    # present in target, absent from ours -> missing source function
    {"name": "?Foo@Bar@@QAEXXZ", "demangled_name": "public: void __thiscall Bar::Foo(void)",
     "kind": "SYMBOL_FUNCTION", "size": "5"},
    # matched function (has a target symbol)
    {"name": "?Baz@Bar@@QAEXXZ", "demangled_name": "public: void __thiscall Bar::Baz(void)",
     "kind": "SYMBOL_FUNCTION", "target_symbol": 3, "match_percent": 100.0},
    # compiler/CRT/RTTI noise that must be filtered
    {"name": "gap_00_00401000_text", "kind": "SYMBOL_FUNCTION", "size": "5"},
    {"name": "??_C@_0L@ABC@x?$AA@", "kind": "SYMBOL_FUNCTION", "size": "5"},
    {"name": "crt_xc_fn_ctypeGuard_x", "kind": "SYMBOL_FUNCTION", "size": "5"},
    # data symbol, not a function
    {"name": "?obj@@3HA", "demangled_name": "int obj", "kind": "SYMBOL_OBJECT", "size": "4"},
]}}


class MissingInventoryTests(unittest.TestCase):
    def test_is_noise(self):
        for name in ("gap_00_x", "pad_02_x", "??_C@_0L@x", "??_R0?AVx@@", "crt_xc_fn_x",
                     "lbl_00C1", "__real@x", "__imp__y", "_$E1"):
            self.assertTrue(missing.is_noise(name), name)
        self.assertFalse(missing.is_noise("?Foo@Bar@@QAEXXZ"))
        self.assertFalse(missing.is_noise("public: void Bar::Foo(void)"))

    def test_missing_symbols_filters(self):
        self.assertEqual(missing.missing_symbols(DOC),
                         ["public: void __thiscall Bar::Foo(void)"])

    def test_missing_symbols_empty(self):
        self.assertEqual(missing.missing_symbols({"left": {"symbols": []}}), [])

    def test_inventory_shape(self):
        # inventory() shells objdiff; patch run_diff to keep the test offline.
        original = missing.run_diff
        try:
            missing.run_diff = lambda unit: DOC if unit == "runblack/Black/Bar" else {"left": {"symbols": []}}
            self.assertEqual(missing.inventory(["runblack/Black/Bar", "runblack/Black/Empty"]),
                             {"runblack/Black/Bar": ["public: void __thiscall Bar::Foo(void)"]})
        finally:
            missing.run_diff = original


if __name__ == "__main__":
    unittest.main(verbosity=2)
