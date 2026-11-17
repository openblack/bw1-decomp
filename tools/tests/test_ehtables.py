"""Run with python -m unittest discover -s tools/tests -p test_ehtables.py.

The EH-table walk over a synthetic image: no game bytes needed.
"""

from pathlib import Path
import struct
import sys
import unittest

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
import ehtables  # noqa: E402

BASE = 0x1000


class Image:
    """A flat byte image at BASE, built field by field."""

    def __init__(self, size=0x400):
        self.data = bytearray(size)

    def put(self, va, fmt, *values):
        struct.pack_into(fmt, self.data, va - BASE, *values)

    def read(self, va, n):
        return bytes(self.data[va - BASE:va - BASE + n])


STUB, INFO, UNWIND, TRYMAP, HANDLERS = 0x1100, 0x1200, 0x1240, 0x1280, 0x12C0
FUNCLET0, FUNCLET1, CATCH = 0x10E0, 0x10F0, 0x10D0


def build(states=2, tries=1, magic=ehtables.EH_MAGIC):
    image = Image()
    image.put(STUB, "<BIBI", ehtables.MOV_EAX, INFO, ehtables.JMP, 0)
    image.put(INFO, "<5I", magic, states, UNWIND if states else 0, tries, TRYMAP if tries else 0)
    for k, action in enumerate([FUNCLET0, FUNCLET1, 0][:states]):
        image.put(UNWIND + 8 * k, "<iI", k - 1, action)
    for k in range(tries):
        image.put(TRYMAP + 0x14 * k, "<5I", 0, 0, 1, 1, HANDLERS)
    image.put(HANDLERS, "<4I", 0, 0, 0, CATCH)
    return image


class WalkTests(unittest.TestCase):
    def test_stub_loads_its_funcinfo(self):
        reader = ehtables.ImageReader(build().read)
        self.assertEqual(ehtables.stub_funcinfo(reader, STUB), INFO)

    def test_other_code_is_not_a_stub(self):
        image = build()
        image.put(STUB + 5, "<B", 0xE8)  # call, not jmp
        self.assertIsNone(ehtables.stub_funcinfo(ehtables.ImageReader(image.read), STUB))

    def test_walk_lists_actions_handlers_and_tables(self):
        info = ehtables.read_funcinfo(ehtables.ImageReader(build(states=3).read), INFO)
        self.assertEqual(info.actions, [FUNCLET0, FUNCLET1, None])
        self.assertEqual([b.handlers for b in info.blocks], [[CATCH]])
        self.assertEqual(info.tables(), [(INFO, 0x1C), (UNWIND, 24), (TRYMAP, 0x14), (HANDLERS, 0x10)])

    def test_catches_false_skips_the_handler_arrays(self):
        info = ehtables.read_funcinfo(ehtables.ImageReader(build().read), INFO, catches=False)
        self.assertEqual([b.handlers for b in info.blocks], [[]])

    def test_wrong_magic_is_not_a_funcinfo(self):
        reader = ehtables.ImageReader(build(magic=0x19930521).read)
        self.assertIsNone(ehtables.read_funcinfo(reader, INFO))

    def test_limit_rejects_large_counts(self):
        reader = ehtables.ImageReader(build(states=3).read)
        self.assertIsNone(ehtables.read_funcinfo(reader, INFO, limit=2))
        self.assertIsNotNone(ehtables.read_funcinfo(reader, INFO, limit=3))

    def test_valid_rejects_tables_outside_and_null_tables_with_counts(self):
        reader = ehtables.ImageReader(build().read)
        self.assertIsNotNone(ehtables.read_funcinfo(reader, INFO, valid=lambda loc, size: loc >= INFO))
        self.assertIsNone(ehtables.read_funcinfo(reader, INFO, valid=lambda loc, size: loc < HANDLERS))
        image = build()
        image.put(INFO + 8, "<I", 0)  # two states, no unwind map
        reader = ehtables.ImageReader(image.read)
        self.assertIsNone(ehtables.read_funcinfo(reader, INFO, valid=lambda loc, size: True))
        self.assertEqual(ehtables.read_funcinfo(reader, INFO).actions, [])


if __name__ == "__main__":
    unittest.main()
