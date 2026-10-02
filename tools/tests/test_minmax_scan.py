"""Run with python -m unittest discover -s tools/tests -p test_minmax_scan.py.

Scanner shapes only; verification needs the compilers and is exercised by hand.
"""

import importlib.util
from pathlib import Path
import sys
import tempfile
import unittest

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location("minmax_scan", TOOLS / "minmax-scan.py")
scan_mod = importlib.util.module_from_spec(spec)
spec.loader.exec_module(scan_mod)


def scan(body):
    with tempfile.NamedTemporaryFile("w", suffix=".cpp", delete=False) as f:
        f.write("void f()\n{\n" + body + "\n}\n")
    try:
        _, cands = scan_mod.scan(f.name)
    finally:
        Path(f.name).unlink()
    return [(c.kind, c.replacements) for c in cands]


class ScanTests(unittest.TestCase):
    def test_ternary_keeps_macro_comparison(self):
        self.assertEqual(scan("x = a < b ? a : b;"), [("ternary", ["min(a, b)", "min(b, a)"])])
        # a < b ? b : a is b > a ? b : a.
        self.assertEqual(scan("x = a < b ? b : a;")[0][1][0], "max(b, a)")

    def test_parenthesised_condition(self):
        self.assertEqual(scan("float c = (base < 1.0f) ? base : 1.0f;")[0][1][0], "min(base, 1.0f)")

    def test_clamp_prefers_lhs_first(self):
        kind, forms = scan("if (x < 0) { x = 0; }")[0]
        self.assertEqual(kind, "clamp")
        self.assertEqual(forms, ["x = max(x, 0);", "x = max(0, x);"])

    def test_compound_assign_clamp(self):
        kind, forms = scan("p += a;\nif (p < 0.0f) { p = 0.0f; }")[0]
        self.assertEqual(kind, "clamp / assign + clamp")
        self.assertIn("p = max(p + a, 0.0f);", forms)

    def test_assign_clamp(self):
        kind, forms = scan("p = v;\nif (v < 0.0f) p = 0.0f;")[0]
        self.assertEqual((kind, forms[0]), ("assign + clamp", "p = max(v, 0.0f);"))

    def test_if_else_and_return_select(self):
        self.assertEqual(scan("if (a < b) s = a; else s = b;")[0][1][0], "s = min(a, b);")
        self.assertEqual(scan("if (a > b) return a;\nreturn b;")[0][1][0], "return max(a, b);")

    def test_two_sided_saturate(self):
        cands = scan("if (f < 0.0f) f = 0.0f; else if (f > 1.0f) f = 1.0f;")
        kinds = [k for k, _ in cands]
        self.assertIn("two-sided clamp (saturate 0..1)", kinds)
        forms = dict(cands)["two-sided clamp (saturate 0..1)"]
        self.assertEqual(forms[0], "f = min(max(f, 0.0f), 1.0f);")

    def test_rejects_non_selects(self):
        self.assertEqual(scan("x = a < b ? c : d;"), [])
        self.assertEqual(scan("if (a < b && c) a = b;"), [])
        self.assertEqual(scan("x = static_cast<int>(a) ? 1 : 2;"), [])
        self.assertEqual(scan("// x = a < b ? a : b;\nconst char* s = \"a < b ? a : b\";"), [])
        self.assertEqual(scan("if (a < b) a = b; else a = c;"), [])


if __name__ == "__main__":
    unittest.main()
