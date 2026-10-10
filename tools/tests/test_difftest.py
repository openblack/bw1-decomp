"""Run with python -m unittest discover -s tools/tests -p test_difftest.py.

Classification on synthetic outcomes needs nothing else. The smoke test runs a
byte-matching gesture function for 200 trials; it is skipped without unicorn and
capstone, the original executable, or a built object.
"""

import importlib.util
from pathlib import Path
import struct
import sys
import unittest

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS / "difftest"))
sys.path.insert(0, str(TOOLS))
import compare as cmp
from layout import STACK, STATE

ENTRY_SP = STACK + 0x1000


def outcome(writes=None, saved=None, eax=0, st0=None, error=None, fault=None, hang=False,
            hang_at=None, hook_calls=()):
    """An Emu.call() result; writes and saved map address -> byte."""
    return {"eax": eax, "esp_delta": 4, "fpu_top": 0, "st0": st0, "error": error, "fault": fault,
            "hang": hang, "hang_at": hang_at, "entry_sp": ENTRY_SP, "hook_calls": list(hook_calls),
            "uninit_stack_read_sites": [], "writes": writes or {}, "saved": saved or {}}


def float_write(address, value):
    return dict(zip(range(address, address + 4), struct.pack("<f", value)))


def int_write(address, value):
    return dict(zip(range(address, address + 4), struct.pack("<I", value)))


def classify(a, b, returns="void", unstable=frozenset()):
    """The class of the trial, or None if the runs agree. nargs is 1."""
    differences = cmp.compare(returns, a, b, 1)
    return cmp.classify(differences, unstable)[0] if differences else None


class ClassifyTests(unittest.TestCase):
    def test_identical_runs_agree(self):
        a = outcome(float_write(STATE, 1.5), eax=7)
        self.assertIsNone(classify(a, outcome(float_write(STATE, 1.5), eax=7), "int"))

    def test_callee_frame_and_argument_slots_are_not_observable(self):
        a, b = outcome(int_write(ENTRY_SP - 0x20, 1)), outcome(int_write(ENTRY_SP - 0x20, 2))
        self.assertIsNone(classify(a, b))
        a, b = outcome(int_write(ENTRY_SP + 4, 1)), outcome(int_write(ENTRY_SP + 4, 2))
        self.assertIsNone(classify(a, b))

    def test_caller_frame_is_observable(self):
        a, b = outcome(int_write(ENTRY_SP + 8, 1)), outcome(int_write(ENTRY_SP + 8, 2))
        self.assertEqual(classify(a, b), cmp.REAL)

    def test_nearby_floats_are_float_only(self):
        a = outcome(float_write(STATE, 62.09171676635742))
        b = outcome(float_write(STATE, 62.09172058105469))
        self.assertEqual(cmp.classify(cmp.compare("void", a, b, 1)), (cmp.FLOAT, 1))

    def test_distant_or_integer_values_are_real(self):
        self.assertEqual(classify(outcome(float_write(STATE, 1.0)), outcome(float_write(STATE, 2.0))),
                         cmp.REAL)
        # Small integers look like denormal floats one ULP apart.
        self.assertEqual(classify(outcome(int_write(STATE, 0x38)), outcome(int_write(STATE, 0x39))),
                         cmp.REAL)
        self.assertEqual(classify(outcome(eax=0x38), outcome(eax=0x39), "int"), cmp.REAL)

    def test_a_write_by_one_version_is_compared_with_the_old_value(self):
        a = outcome(saved=int_write(STATE, 0))
        b = outcome(int_write(STATE, 5), saved=int_write(STATE, 0))
        self.assertEqual(classify(a, b), cmp.REAL)

    def test_hook_call_differences_are_real(self):
        self.assertEqual(classify(outcome(hook_calls=[("f", (), (1,), ())]),
                                  outcome(hook_calls=[("f", (), (2,), ())])), cmp.REAL)

    def test_faults_and_hangs(self):
        fault = dict(error="Invalid memory read", fault=(19, 0x64A))
        self.assertIsNone(classify(outcome(**fault), outcome(**fault)))
        self.assertEqual(classify(outcome(), outcome(**fault)), cmp.FAULT)
        self.assertEqual(classify(outcome(**fault), outcome(error="x", fault=(19, 0))), cmp.FAULT)
        hang = dict(error="instruction limit hit", hang=True, hang_at="in function")
        self.assertIsNone(classify(outcome(**hang), outcome(**hang)))
        self.assertEqual(classify(outcome(), outcome(**hang)), cmp.HANG)

    def test_hangs_in_different_places_differ(self):
        a = outcome(error="instruction limit hit", hang=True, hang_at="in function")
        b = outcome(error="instruction limit hit", hang=True, hang_at="0x401000")
        self.assertEqual(classify(a, b), cmp.FAULT)

    def test_uninitialised_read_masks_only_what_the_original_changes(self):
        a = outcome({**float_write(STATE, 0.0), **int_write(STATE + 8, 1)})
        b = outcome({**float_write(STATE, 540.83), **int_write(STATE + 8, 2)})
        # Re-running the original with another stack fill changes STATE but not STATE + 8.
        rerun = outcome({**float_write(STATE, 7.0), **int_write(STATE + 8, 1)})
        unstable = {d.key for d in cmp.compare("void", a, rerun, 1)}
        self.assertEqual(classify(a, b, unstable=unstable), cmp.REAL)
        b = outcome({**float_write(STATE, 540.83), **int_write(STATE + 8, 1)})
        self.assertEqual(classify(a, b, unstable=unstable), cmp.UNINIT)
        self.assertNotIn(cmp.UNINIT, cmp.GATING)


HAVE_EMULATOR = all(importlib.util.find_spec(m) for m in ("unicorn", "capstone"))


@unittest.skipUnless(HAVE_EMULATOR, "unicorn and capstone are not installed")
class FindSymbolTests(unittest.TestCase):
    NAMES = {"?GetData@GestureSystemDataList@@QBEPAVGestureSystemData@@H@Z",
             "?GetDataCount@GestureSystemDataList@@QBEHXZ",
             "?CalculateRatio@GestureSystemData@@SAMPAULHRegionF@@@Z",
             "?CalculateRatio@GestureSystemData@@QAEXXZ",
             "?g_camera@LH3DTech@@2ULH3DCamera@@A"}

    def find(self, function):
        from emu import find_symbol
        return find_symbol(self.NAMES, function)

    def test_qualified_name_ignores_the_signature(self):
        self.assertEqual(self.find("GestureSystemDataList::GetData"),
                         "?GetData@GestureSystemDataList@@QBEPAVGestureSystemData@@H@Z")
        self.assertEqual(self.find("LH3DTech::g_camera"), "?g_camera@LH3DTech@@2ULH3DCamera@@A")

    def test_overloads_and_missing_names_are_errors(self):
        from decomp_binary import Unresolved
        with self.assertRaises(Unresolved):
            self.find("GestureSystemData::CalculateRatio")
        with self.assertRaises(Unresolved):
            self.find("GestureSystemDataList::FindGesture")
        self.assertEqual(self.find("?CalculateRatio@GestureSystemData@@QAEXXZ"),
                         "?CalculateRatio@GestureSystemData@@QAEXXZ")


def smoke_prerequisites():
    if not HAVE_EMULATOR:
        return "unicorn and capstone are not installed"
    import runner
    from emu import EXE
    try:
        obj = runner.object_path("GestureSystemSamples")
    except (OSError, ValueError) as exc:
        return f"no objdiff.json unit: {exc}"
    if not EXE.exists() or not obj.exists():
        return "original executable or GestureSystemSamples object missing"
    return None


class SmokeTest(unittest.TestCase):
    def test_byte_matching_function_passes(self):
        reason = smoke_prerequisites()
        if reason:
            self.skipTest(reason)
        import gesture
        import runner
        case = next(c for c in gesture.CASES if c.name == "GestureSystem::GetPreviousJunction")
        result = runner.run_case(case, 200, initializers=gesture.INITIALIZERS)
        self.assertEqual((result["pass"], result["gating_failures"]), (200, 0), result["first"])


if __name__ == "__main__":
    unittest.main()
