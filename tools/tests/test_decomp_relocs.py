"""Synthetic binary edge cases; no game files, compiler, or objdiff required."""

import importlib.util
import json
from pathlib import Path
import struct
import sys
import tempfile
import unittest
from unittest.mock import patch

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
from decomp_binary import BinaryError, Coff, PE, Unresolved, resolve_relocation
import decomp_common

spec = importlib.util.spec_from_file_location("decomp_relocs", TOOLS / "decomp-relocs.py")
relocs = importlib.util.module_from_spec(spec)
spec.loader.exec_module(relocs)


def coff(raw=b"\0" * 8, symbols=None, relocations=(), bss=False):
    """Build a single-section COFF, retaining aux slots in relocation indices."""
    if symbols is None:
        symbols = [("func", 0, 1, 2, 0), ("target", 0, 0, 2, 0)]
    strings = bytearray(b"\0" * 4)
    entries = bytearray()
    count = 0
    for name, value, section, storage, aux in symbols:
        encoded = name.encode("ascii")
        if len(encoded) > 8:
            name_bytes = struct.pack("<II", 0, len(strings))
            strings += encoded + b"\0"
        else:
            name_bytes = encoded.ljust(8, b"\0")
        entries += struct.pack("<8sIhHBB", name_bytes, value, section, 0, storage, aux)
        entries += b"\0" * (aux * 18)
        count += aux + 1
    struct.pack_into("<I", strings, 0, len(strings))
    payload = b"" if bss else raw
    rel = b"".join(struct.pack("<IIH", *r) for r in relocations)
    symoff = 60 + len(payload) + len(rel)
    header = struct.pack("<HHIIIHH", 0x14C, 1, 0, symoff, count, 0, 0)
    section = struct.pack("<8sIIIIIIHHI", b".bss" if bss else b".text", 0, 0, len(raw),
                          0 if bss else 60, 60 + len(payload) if rel else 0, 0,
                          len(relocations), 0, 0x80 if bss else 0x20)
    return header + section + payload + rel + entries + strings


def pe(raw=b"\0" * 0x40, virtual_size=0x80):
    data = bytearray(0x200)
    data[:2] = b"MZ"
    struct.pack_into("<I", data, 0x3C, 0x80)
    data[0x80:0x84] = b"PE\0\0"
    struct.pack_into("<HHIIIHH", data, 0x84, 0x14C, 1, 0, 0, 0, 96, 0)
    struct.pack_into("<H", data, 0x98, 0x10B)
    struct.pack_into("<I", data, 0x98 + 28, 0x400000)
    struct.pack_into("<I", data, 0x98 + 60, 0x200)
    struct.pack_into("<8sIIIIIIHHI", data, 0x98 + 96, b".text", virtual_size, 0x1000,
                     len(raw), 0x200 if raw else 0, 0, 0, 0, 0, 0x20)
    return bytes(data) + raw


def symbol_map(extra="", size=8):
    return relocs.SymbolMap(f"func = .text:0x00401000; // size:0x{size:X} scope:global\n" + extra)


class BinaryTests(unittest.TestCase):
    def test_coff_aux_slots_and_long_names(self):
        obj = Coff(coff(symbols=[(".text", 0, 1, 3, 1), ("long_target_name", 0, 0, 2, 0)],
                        relocations=[(0, 2, 6)]))
        self.assertEqual(set(obj.symbols), {0, 2})
        self.assertEqual(obj.symbols[2].name, "long_target_name")
        self.assertEqual(len(obj.symbols[0].aux), 1)
        with self.assertRaisesRegex(BinaryError, "auxiliary"):
            Coff(coff(symbols=[(".text", 0, 1, 3, 1)], relocations=[(0, 1, 6)]))

    def test_truncated_and_bad_tables(self):
        valid = coff(symbols=[("a_long_symbol_name", 0, 1, 2, 0)])
        for end in (0, 19, 59, len(valid) - 1):
            with self.subTest(end=end), self.assertRaises(BinaryError):
                Coff(valid[:end])
        bad = bytearray(valid)
        symoff = struct.unpack_from("<I", bad, 8)[0]
        struct.pack_into("<I", bad, symoff + 4, 0xFFFFFFFF)
        with self.assertRaisesRegex(BinaryError, "string table offset"):
            Coff(bad)
        bad = bytearray(valid)
        bad[symoff + 17] = 10
        with self.assertRaisesRegex(BinaryError, "auxiliary"):
            Coff(bad)

    def test_relocation_bounds_overlap_and_unsupported(self):
        for entries in ([(6, 1, 6)], [(0, 1, 6), (2, 1, 6)], [(0, 1, 0x99)]):
            with self.subTest(entries=entries), self.assertRaises(BinaryError):
                Coff(coff(relocations=entries))
        # ABSOLUTE padding has no symbol/operand and is ignored.
        Coff(coff(relocations=[(0xFFFFFFFF, 0xFFFFFFFF, 0)]))

    def test_header_alias_and_nonzero_section_address_rejected(self):
        for position, value in ((20 + 20, 20), (20 + 12, 0x1000), (8, 20)):
            bad = bytearray(coff())
            struct.pack_into("<I", bad, position, value)
            with self.subTest(position=position), self.assertRaises(BinaryError):
                Coff(bad)
        bad = bytearray(pe())
        struct.pack_into("<I", bad, 0x98 + 96 + 20, 0x100)
        with self.assertRaisesRegex(BinaryError, "overlaps headers"):
            PE(bad)

    def test_bss_has_no_filebytes(self):
        obj = Coff(coff(bss=True))
        with self.assertRaisesRegex(Unresolved, "BSS"):
            obj.bytes(1, 0, 4)
        image = PE(pe())
        with self.assertRaisesRegex(Unresolved, "virtual/BSS"):
            image.bytes(0x401040, 4)
        with self.assertRaisesRegex(Unresolved, "virtual/BSS"):
            image.bytes(0x40103F, 2)
        self.assertEqual(image.bytes(0x40103F, 1), b"\0")

    def test_pe_bounds_and_architecture(self):
        for end in (0, 0x80, 0x199, 0x210):
            with self.subTest(end=end), self.assertRaises(BinaryError):
                PE(pe()[:end])
        bad = bytearray(pe())
        struct.pack_into("<H", bad, 0x84, 0x8664)
        with self.assertRaisesRegex(BinaryError, "unsupported PE"):
            PE(bad)
        with self.assertRaisesRegex(Unresolved, "unique PE section"):
            PE(pe()).bytes(0x500000, 4)

    def test_rel_widths_and_negative_addends(self):
        image = PE(pe())
        self.assertEqual(resolve_relocation(20, 0x401020, -4, 0x401000, image), b"\x18\0\0\0")
        self.assertEqual(resolve_relocation(2, 0x401000, -1, 0x401004, image), b"\xf9\xff")
        self.assertEqual(resolve_relocation(6, 0x401020, -4, 0, image), b"\x1c\x10\x40\0")
        self.assertEqual(resolve_relocation(7, 0x401020, -4, 0, image), b"\x1c\x10\0\0")
        self.assertEqual(resolve_relocation(10, 0x401020, 1, 0, image), b"\x02\0")
        self.assertEqual(resolve_relocation(11, 0x401020, -4, 0, image), b"\x1c\0\0\0")
        with self.assertRaisesRegex(Unresolved, "overflow"):
            resolve_relocation(1, 0x401020, 0, 0, image)
        with self.assertRaisesRegex(Unresolved, "overflow"):
            resolve_relocation(2, 0x410000, 0, 0x401000, image)


class EvidenceTests(unittest.TestCase):
    def test_boundary_and_interior_candidates(self):
        symbols = relocs.SymbolMap("PacketTimeHistory = .data:0x00D0143C; // size:0x28\n"
                                   "IncomingQueueHistory = .data:0x00D01464; // size:0x190\n"
                                   "unknown = .data:0x00D01464;\n")
        candidates = symbols.candidates(0xD01464)
        self.assertEqual([r["relation"] for r in candidates], ["one-past-end", "start", "start"])
        self.assertEqual(candidates[0]["addend"], 0x28)
        self.assertEqual(candidates[-1]["uncertainty"], "extent unknown")
        self.assertEqual(symbols.candidates(0xD01460)[0]["relation"], "interior")

    def test_local_ambiguity_and_lexical_alias_not_guessed(self):
        obj = Coff(coff(symbols=[("func", 0, 1, 2, 0), ("local", 4, 1, 3, 0),
                                 ("_$S99", 0, 0, 2, 0)]))
        symbols = symbol_map("local = .text:0x00401004; // size:0x4 scope:local\n"
                             "local = .text:0x00402004; // size:0x4 scope:local\n"
                             "_$S12 = .data:0x00403000; // size:0x4\n")
        mapping = relocs.AddressMap(obj, symbols)
        self.assertEqual(mapping.address(obj.symbols[1]), 0x401004)
        with self.assertRaisesRegex(Unresolved, "ambiguous"):
            relocs.AddressMap(obj, symbols, False).address(obj.symbols[1])
        with self.assertRaisesRegex(Unresolved, "lexical aliases"):
            mapping.address(obj.symbols[2])

    def test_section_relocation_and_conflicting_anchors(self):
        obj = Coff(coff(raw=struct.pack("<II", 4, 0),
                        symbols=[(".text", 0, 1, 3, 1), ("func", 0, 1, 2, 0)],
                        relocations=[(0, 0, 6)]))
        symbols = symbol_map()
        mapping = relocs.AddressMap(obj, symbols)
        report = relocs.describe_relocation(obj, mapping, 1, obj.sections[0].relocations[0], 0x401000, PE(pe()))
        self.assertTrue(report["section_relocation"])
        self.assertEqual(report["resolved_value"], 0x401004)
        other = Coff(coff(symbols=[("func", 0, 1, 2, 0), ("bad", 4, 1, 2, 0)]))
        with self.assertRaisesRegex(Unresolved, "conflicting"):
            relocs.AddressMap(other, symbol_map("bad = .text:0x00405000; // size:0x4\n")).section_base(1)
        conflicting = relocs.AddressMap(other, symbol_map("bad = .text:0x00405000; // size:0x4\n"))
        with self.assertRaisesRegex(Unresolved, "conflicting"):
            conflicting.address(other.symbols[0])
        self.assertEqual(relocs.verify(other, conflicting, PE(pe()), "func")["status"], "unresolved")

    def test_symbolic_mismatch_but_equal_original_bytes(self):
        symbols = symbol_map("previous = .text:0x00401000; // size:0x28\n"
                             "next = .text:0x00401028; // size:0x8\n")
        target = Coff(coff(raw=struct.pack("<II", 0, 0),
                           symbols=[("func", 0, 1, 2, 0), ("next", 0, 0, 2, 0)], relocations=[(0, 1, 6)]))
        compiled = Coff(coff(raw=struct.pack("<II", 0x28, 0),
                             symbols=[("func", 0, 1, 2, 0), ("previous", 0, 0, 2, 0)], relocations=[(0, 1, 6)]))
        image = PE(pe())
        reports = [relocs.describe_relocation(o, relocs.AddressMap(o, symbols), 1,
                                              o.sections[0].relocations[0], 0x401000, image)
                   for o in (target, compiled)]
        comparison = relocs.compare_relocations(*reports, struct.pack("<I", 0x401028))
        self.assertEqual(comparison, {"symbolic": "mismatch", "resolved_bytes": "match",
                                      "target_vs_original": "match", "compiled_vs_original": "match"})

    def test_verify_all_relocations_and_unresolved_mask(self):
        symbols = symbol_map("target = .text:0x00401020; // size:0x4\n", size=12)
        obj = Coff(coff(raw=struct.pack("<III", -4 & 0xFFFFFFFF, 0, 0xDEADBEEF),
                        relocations=[(0, 1, 6), (4, 1, 20)]))
        image = PE(pe(struct.pack("<III", 0x40101C, 0x18, 0xDEADBEEF)))
        result = relocs.verify(obj, relocs.AddressMap(obj, symbols), image, "func")
        self.assertEqual(result["status"], "match")
        self.assertEqual(result["relocation_counts"], {"resolved": 2})
        unknown = relocs.verify(obj, relocs.AddressMap(obj, symbol_map(size=12)), image, "func")
        self.assertEqual(unknown["status"], "unresolved")
        self.assertEqual(unknown["compared_bytes"], 4)
        self.assertEqual(unknown["spans"][0]["mismatch_bytes"], 0)
        bad = PE(pe(struct.pack("<III", 0x40101C, 0x18, 0)))
        self.assertEqual(relocs.verify(obj, relocs.AddressMap(obj, symbols), bad, "func")["status"], "mismatch")

    def test_virtual_data_section_anchor(self):
        obj = Coff(coff(symbols=[("zero", 0, 1, 2, 0)], bss=True))
        symbols = relocs.SymbolMap("zero = .data:0x00401040; // size:0x8\n")
        mapping = relocs.AddressMap(obj, symbols)
        self.assertEqual(mapping.address(obj.symbols[0]), 0x401040)
        self.assertEqual(relocs.verify(obj, mapping, PE(pe()), "zero")["status"], "unresolved")

    def test_unmapped_section_accounts_for_all_operands(self):
        obj = Coff(coff(relocations=[(0, 1, 6), (4, 1, 20)]))
        result = relocs.verify(obj, relocs.AddressMap(obj, relocs.SymbolMap("")), PE(pe()))
        self.assertEqual(result["status"], "unresolved")
        self.assertEqual(result["relocation_counts"], {"unresolved": 2})
        self.assertEqual(result["compared_bytes"], 0)

    def test_unsupported_symbol_storage_cannot_verify_as_exact(self):
        obj = Coff(coff(symbols=[("func", 0, 1, 2, 0), ("target", 0, 0, 105, 1)],
                        relocations=[(0, 1, 6)]))
        symbols = symbol_map("target = .text:0x00401020; // size:0x4\n")
        result = relocs.verify(obj, relocs.AddressMap(obj, symbols), PE(pe()), "func")
        self.assertEqual(result["status"], "unresolved")
        self.assertIn("unsupported symbol storage", result["spans"][0]["relocations"][0]["reason"])

    def test_empty_verification_is_not_a_match_and_span_basis_is_explicit(self):
        empty = Coff(coff(raw=b"", symbols=[]))
        result = relocs.verify(empty, relocs.AddressMap(empty, relocs.SymbolMap("")), PE(pe()))
        self.assertEqual(result["status"], "unresolved")
        self.assertEqual(result["span_count"], 0)
        obj = Coff(coff())
        result = relocs.verify(obj, relocs.AddressMap(obj, symbol_map()), PE(pe()), "func")
        self.assertEqual(result["span_count"], 1)
        self.assertIn("padding", result["byte_count_basis"])
        self.assertIn("not decoded function", result["byte_count_note"])

    def test_instruction_alignment_with_shifted_compiled_offset(self):
        target = Coff(coff(relocations=[(1, 1, 6)]))
        compiled = Coff(coff(raw=b"\0" * 12, relocations=[(5, 1, 6)]))
        diff = {"left": {"symbols": [{"name": "func", "target_symbol": 0, "instructions": [
            {"instruction": {"address": "0", "size": 5}}]}]},
            "right": {"symbols": [{"name": "func", "instructions": [
                {"instruction": {"address": "4", "size": 5}}]}]}}
        _, reloc, _ = relocs.paired_compiled_reloc(diff, target, compiled, target.symbols[0],
                                                 target.sections[0].relocations[0])
        self.assertEqual(reloc.offset, 5)
        for kind in ("DIFF_REPLACE", "DIFF_DELETE", "DIFF_INSERT", "DIFF_OP_MISMATCH", "FUTURE_FLAG"):
            diff["right"]["symbols"][0]["instructions"][0]["diff_kind"] = kind
            with self.subTest(kind=kind), self.assertRaisesRegex(Unresolved, "alignment"):
                relocs.paired_compiled_reloc(diff, target, compiled, target.symbols[0],
                                             target.sections[0].relocations[0])
        diff["right"]["symbols"][0]["instructions"][0]["diff_kind"] = "DIFF_ARG_MISMATCH"
        _, _, pairing = relocs.paired_compiled_reloc(diff, target, compiled, target.symbols[0],
                                                    target.sections[0].relocations[0])
        self.assertEqual(pairing["compiled_diff_kind"], "DIFF_ARG_MISMATCH")


class CliTests(unittest.TestCase):
    def test_shared_imports_and_runtime_error_reporting(self):
        import io
        self.assertIs(relocs.resolve_unit, decomp_common.resolve_unit)
        self.assertIs(relocs.run_diff, decomp_common.run_diff)
        output = io.StringIO()
        with patch.object(relocs, "resolve_unit", side_effect=RuntimeError("objdiff-cli error")), \
                patch("sys.stdout", output):
            status = relocs.main(["--unit", "Game", "--verify", "--json"])
        self.assertEqual(status, 2)
        self.assertEqual(json.loads(output.getvalue())["error"], "objdiff-cli error")

    def test_cli_requests_strict_pairing(self):
        import io
        unit = {"name": "runblack/Black/Game", "target_path": "target.o", "base_path": "base.o"}
        with patch.object(relocs, "resolve_unit", return_value=unit), \
                patch.object(relocs, "infer_inputs", return_value=(Path("symbols"), Path("pe"), {})), \
                patch.object(Coff, "read", return_value=Coff(coff())), \
                patch.object(relocs.SymbolMap, "read", return_value=symbol_map()), \
                patch.object(PE, "read", return_value=PE(pe())), \
                patch.object(Path, "is_file", return_value=True), \
                patch.object(relocs, "run_diff", return_value={}) as run, \
                patch.object(relocs, "inspect_address", return_value={}), patch("sys.stdout", io.StringIO()):
            self.assertEqual(relocs.main(["--unit", "Game", "--address", "401000", "--json"]), 0)
        run.assert_called_once_with(unit["name"], strict=True, root=relocs.ROOT)

    def test_explicit_inputs_do_not_guess_version(self):
        a, b, provenance = relocs.infer_inputs({"target_path": "unknown"}, "map.txt", "original.exe")
        self.assertEqual((a, b), (Path("map.txt"), Path("original.exe")))
        self.assertEqual(provenance["original"], "explicit")
        with self.assertRaisesRegex(ValueError, "version"):
            relocs.infer_inputs({"target_path": "unknown"})

    def test_config_module_selection_and_preprocessed_refusal(self):
        try:
            import yaml
        except ImportError:
            self.skipTest("PyYAML is optional with explicit inputs")
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            (root / "config/BW1W120").mkdir(parents=True)
            (root / "orig/BW1W120").mkdir(parents=True)
            (root / "orig/BW1W120/sound.dll").write_bytes(pe())
            (root / "config/BW1W120/config.yml").write_text(
                "object_base: orig/BW1W120\nname: runblack\nobject: ../../build/preprocessed.exe\n"
                "symbols: config/BW1W120/symbols.txt\nmodules:\n"
                "- name: Audio\n  object: sound.dll\n  symbols: config/BW1W120/Audio/symbols.txt\n")
            unit = {"name": "runblack/Black/Game", "target_path": "build/BW1W120/obj/Game.o"}
            with self.assertRaisesRegex(ValueError, "preprocessed"):
                relocs.infer_inputs(unit, root=root)
            unit["name"] = "Audio/Thing"
            symbols, original, _ = relocs.infer_inputs(unit, root=root)
            self.assertEqual(symbols, root / "config/BW1W120/Audio/symbols.txt")
            self.assertEqual(original, root / "orig/BW1W120/sound.dll")

    def test_json_error_is_visible(self):
        import io
        output = io.StringIO()
        with patch.object(relocs, "resolve_unit", side_effect=ValueError("ambiguous unit")), \
                patch("sys.stdout", output):
            status = relocs.main(["--unit", "Game", "--verify", "--json"])
        self.assertEqual(status, 2)
        self.assertEqual(json.loads(output.getvalue())["error"], "ambiguous unit")


if __name__ == "__main__":
    unittest.main()
