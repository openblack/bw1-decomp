"""Tests for the verifier-integrity guard.

Run: python -m unittest discover -s tools/tests -p test_check_verifier_integrity.py -v
Pure-function tests only; no git, no build.
"""

import importlib.util
import sys
import unittest
from pathlib import Path

TOOLS = Path(__file__).resolve().parents[1]
if str(TOOLS) not in sys.path:
    sys.path.insert(0, str(TOOLS))

spec = importlib.util.spec_from_file_location(
    "check_verifier_integrity", TOOLS / "check-verifier-integrity.py")
vi = importlib.util.module_from_spec(spec)
spec.loader.exec_module(vi)


class VerifierIntegrityTests(unittest.TestCase):
    def test_protected_flagged(self):
        protected, review = vi.classify([
            "config/BW1W120/build.sha1",
            "tools/decomp-diff.py",
            ".github/workflows/build.yml",
            "src/Black/Abode.cpp",
        ])
        self.assertIn("config/BW1W120/build.sha1", protected)
        self.assertIn("tools/decomp-diff.py", protected)
        self.assertEqual(review, [])

    def test_target_files_are_review_not_protected(self):
        protected, review = vi.classify(["config/BW1W120/symbols.txt", "config/BW1W120/splits.txt"])
        self.assertEqual(protected, [])
        self.assertEqual(sorted(review), ["config/BW1W120/splits.txt", "config/BW1W120/symbols.txt"])

    def test_source_change_is_clean(self):
        protected, review = vi.classify(["src/Black/Abode.cpp", "tools/decomp-missing.py"])
        self.assertEqual(protected, [])
        self.assertEqual(review, [])


if __name__ == "__main__":
    unittest.main(verbosity=2)
