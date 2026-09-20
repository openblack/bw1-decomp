"""Run with python -m unittest discover -s tools/tests -p test_decomp_diff.py.

Schema fixtures below are reduced actual objdiff-cli JSON from BW1W120 Game
and Player. Optional live smoke tests query existing objects, never build them.
"""

import argparse
from contextlib import redirect_stdout, redirect_stderr
import copy
import importlib.util
import io
import json
import os
from pathlib import Path
import struct
import subprocess
import sys
import tempfile
import unittest
from unittest.mock import patch

TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
import decomp_common as common

spec = importlib.util.spec_from_file_location("decomp_diff", TOOLS / "decomp-diff.py")
diff = importlib.util.module_from_spec(spec)
spec.loader.exec_module(diff)

# Actual Game::ProcessNetworkPackets operand at section-relative offset 0x1ec.
# Only target_symbol is remapped to the reduced symbol table's index zero.
PACKET_OPERAND = {
    "instruction": {
        "address": "492", "size": 6,
        "formatted": "cmp edx, ?PacketTimeHistory@GGame@@2PAHA+0x28",
        "parts": [
            {"opcode": {"mnemonic": "cmp", "opcode": 93}},
            {"arg": {"opaque": "edx"}}, {"basic": ","}, {"basic": " "},
            {"arg": {"reloc": True}},
        ],
        "relocation": {
            "type": 6, "type_name": "IMAGE_REL_I386_DIR32",
            "target_symbol": 0, "addend": "40",
        },
    },
}
PACKET_SYMBOLS = [{"name": "?PacketTimeHistory@GGame@@2PAHA"}]

# Actual Player sections; omitted right match_percent is meaningful, as are
# missing .data and the absence of data_diff for BSS.
PLAYER_SECTIONS = {
    "left": {"sections": [
        {"name": ".rdata", "kind": "SECTION_DATA", "size": "16", "match_percent": 50.0},
        {"name": ".CRT$XCU", "kind": "SECTION_DATA", "size": "20", "match_percent": 20.0},
        {"name": ".data", "kind": "SECTION_DATA", "size": "1368", "match_percent": 0.0},
        {"name": ".bss", "kind": "SECTION_BSS", "size": "1300", "match_percent": 57.14286},
    ]},
    "right": {"sections": [
        {"name": ".drectve", "size": "60"},
        {"name": ".CRT$XCU", "kind": "SECTION_DATA", "size": "12"},
        {"name": ".rdata", "kind": "SECTION_DATA", "size": "8"},
        {"name": ".bss", "kind": "SECTION_BSS", "size": "8"},
    ]},
}


def options(**kwargs):
    defaults = dict(type=None, status=None, section=None, search=None, exact=False,
                    regex=False, range=None, context=3, no_collapse=False)
    defaults.update(kwargs)
    return argparse.Namespace(**defaults)


def output(function, *args):
    stream = io.StringIO()
    with redirect_stdout(stream):
        function(*args)
    return stream.getvalue()


def function(name, demangled=None, **kwargs):
    return dict(name=name, demangled_name=demangled or name, kind="SYMBOL_FUNCTION",
                size="6", **kwargs)


def membership_coff(symbols):
    """Real bounded COFF bytes with BSS, data and duplicate code sections.

    Each symbol tuple is (name, offset, section, auxiliary_record_count).
    Aux slots deliberately prevent treating objdiff symbol indices as COFF ones.
    """
    section_specs = [(b".rdata", 0x40), (b".bss", 0x80), (b".text", 0x20), (b".text", 0x20)]
    raw_start = 20 + len(section_specs) * 40
    raw = bytearray()
    section_table = bytearray()
    for name, flags in section_specs:
        pointer = 0 if flags == 0x80 else raw_start + len(raw)
        section_table += struct.pack("<8sIIIIIIHHI", name, 0, 0, 16, pointer, 0, 0, 0, 0, flags)
        if pointer:
            raw += bytes(16)
    symbol_table = bytearray()
    for name, offset, section, aux in symbols:
        symbol_table += struct.pack("<8sIhHBB", name.encode("ascii"), offset, section, 0, 3, aux)
        symbol_table += bytes(18 * aux)
    header = struct.pack("<HHIIIHH", 0x14c, len(section_specs), 0,
                         raw_start + len(raw), len(symbol_table) // 18, 0, 0)
    return header + section_table + raw + symbol_table + struct.pack("<I", 4)


class CommonTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.units = [
            {"name": "runblack/Black/Game", "metadata": {"source_path": "src/Black/Game.cpp"}},
            {"name": "runblack/Black/Player", "metadata": {"source_path": "src\\Black\\Player.cpp"}},
            {"name": "other/Player", "metadata": {"source_path": "src/Other/Player.cpp"}},
        ]
        self.project_path = self.root / "objdiff.json"
        self.project_path.write_text(json.dumps({"units": self.units}), encoding="utf-8-sig")

    def test_public_contract_and_bom(self):
        self.assertIsInstance(common.ROOT, Path)
        self.assertEqual(common.load_json(self.project_path), {"units": self.units})
        self.assertEqual(common.load_project(self.root), {"units": self.units})

    def test_json_requires_object_and_project_units(self):
        self.project_path.write_text("[]", encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "JSON object"):
            common.load_json(self.project_path)
        self.project_path.write_text("{}", encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "units array"):
            common.load_project(self.root)

    def test_full_name_and_unique_basename(self):
        self.assertEqual(common.resolve_unit("Game", root=self.root), self.units[0])
        self.assertEqual(common.resolve_unit("runblack/Black/Player", root=self.root), self.units[1])
        with self.assertRaisesRegex(ValueError, "not found"):
            common.resolve_unit("Gam", root=self.root)

    def test_ambiguity_lists_candidates(self):
        with self.assertRaises(ValueError) as caught:
            common.resolve_unit("Player", root=self.root)
        self.assertIn("Ambiguous", str(caught.exception))
        self.assertIn("runblack/Black/Player", str(caught.exception))
        self.assertIn("other/Player", str(caught.exception))

    def test_source_normalization(self):
        for source in ("src/Black/Player.cpp", "src\\Black\\Player.cpp",
                       "./src/Other/../Black/Player.cpp",
                       str(self.root / "src/Black/Player.cpp"),
                       str(self.root / "src/Black/Player.cpp").replace("/", "\\")):
            with self.subTest(source=source):
                self.assertEqual(common.resolve_unit(source=source, root=self.root), self.units[1])

    def test_source_ambiguity_and_selector_validation(self):
        for kwargs in ({}, {"unit": "Game", "source": "src/Black/Game.cpp"}):
            with self.assertRaisesRegex(ValueError, "exactly one"):
                common.resolve_unit(root=self.root, **kwargs)
        self.units.append({"name": "other/Game", "metadata": {"source_path": "src/Black/Game.cpp"}})
        self.project_path.write_text(json.dumps({"units": self.units}), encoding="utf-8")
        with self.assertRaisesRegex(ValueError, "Ambiguous"):
            common.resolve_unit(source="src/Black/Game.cpp", root=self.root)

    def test_explicit_relocation_modes_and_tool_override(self):
        for strict, mode in ((False, "data_value"), (True, "all")):
            with self.subTest(strict=strict), patch.dict(os.environ, {"OBJDIFF_CLI": "custom-objdiff"}), \
                    patch.object(common.subprocess, "run") as run:
                run.return_value = subprocess.CompletedProcess([], 0, b'{"left": {}}', b"")
                self.assertEqual(common.run_diff("runblack/Black/Game", strict, self.root), {"left": {}})
                command = run.call_args.args[0]
                self.assertEqual(command[0], "custom-objdiff")
                self.assertEqual(command[command.index("-c") + 1], "functionRelocDiffs=" + mode)
                self.assertEqual(command[command.index("-u") + 1], "runblack/Black/Game")
                self.assertEqual(run.call_args.kwargs["cwd"], self.root.resolve())

    def test_tool_errors_and_invalid_json(self):
        with patch.object(common.subprocess, "run") as run:
            run.return_value = subprocess.CompletedProcess([], 1, b"", b"bad object")
            with self.assertRaisesRegex(RuntimeError, "bad object"):
                common.run_diff("Game", root=self.root)
            for payload in (b"[]", b"not json"):
                run.return_value = subprocess.CompletedProcess([], 0, payload, b"")
                with self.assertRaises(ValueError):
                    common.run_diff("Game", root=self.root)

    def test_section_membership_never_guesses(self):
        sections = PLAYER_SECTIONS["left"]["sections"]
        for sym in ({"name": "global", "kind": "SYMBOL_OBJECT", "address": "0"},
                    {"name": "function", "kind": "SYMBOL_FUNCTION"}):
            self.assertEqual(common.symbol_section(sym, sections), "?")
        self.assertEqual(common.symbol_section({"section_index": 0}, sections), ".rdata")
        self.assertEqual(common.symbol_section({"section": "3"}, sections), ".bss")
        self.assertEqual(common.symbol_section({"section_name": ".data"}, sections), ".data")
        self.assertEqual(common.symbol_section({"section_index": -1}, sections), "?")
        self.assertEqual(common.symbol_section({"section_index": 99}, sections), "?")
        self.assertEqual(common.symbol_section({"name": "[.CRT$XCU-0]", "kind": "SYMBOL_SECTION"}, sections), ".CRT$XCU")
        sym = {"name": "nested", "kind": "SYMBOL_OBJECT"}
        self.assertEqual(common.symbol_section(sym, [{"name": ".bss", "symbols": [sym]}]), ".bss")

    def test_coff_enrichment_maps_each_side_without_index_assumptions(self):
        self.units[0].update(target_path="target.o", base_path="base.o")
        self.project_path.write_text(json.dumps({"units": self.units}), encoding="utf-8")
        sections = [{"name": name} for name in (".rdata", ".bss", ".text", ".text")]
        document = {}
        for side, filename, offset in (("left", "target.o", 4), ("right", "base.o", 0)):
            (self.root / filename).write_bytes(membership_coff([
                (".rdata", 0, 1, 1), ("_White", offset, 2, 0),
                ("func", 0, 3, 0), ("data", 0, 1, 0),
            ]))
            document[side] = {"sections": sections, "symbols": [
                function("func"),
                {"name": "_White", "kind": "SYMBOL_OBJECT", "size": "4",
                 **({"address": str(offset)} if offset else {})},
                {"name": "data", "kind": "SYMBOL_OBJECT", "size": "4"},
            ]}
        with patch.object(common.subprocess, "run") as run:
            run.return_value = subprocess.CompletedProcess([], 0, json.dumps(document).encode(), b"")
            enriched = common.run_diff(self.units[0]["name"], root=self.root)
        for side in ("left", "right"):
            self.assertEqual([sym["section_name"] for sym in enriched[side]["symbols"]],
                             [".text", ".bss", ".rdata"])

    def test_coff_enrichment_requires_unique_candidate_and_preserves_explicit_fields(self):
        self.units[0]["target_path"] = "target.o"
        self.project_path.write_text(json.dumps({"units": self.units}), encoding="utf-8")
        (self.root / "target.o").write_bytes(membership_coff([
            ("dupl", 0, 1, 0), ("dupl", 0, 2, 0),
            ("comdat", 0, 3, 0), ("comdat", 0, 4, 0),
            ("local", 0, 3, 0), ("local", 0, 3, 0),
            ("offset", 0, 1, 0), ("offset", 4, 2, 0),
            ("explicit", 0, 2, 0), ("external", 0, 0, 0), ("absolute", 0, -1, 0),
        ]))
        symbols = [dict(name=name, kind="SYMBOL_OBJECT", size="4")
                   for name in ("dupl", "comdat", "local", "external", "absolute", "missing")]
        symbols.extend([
            {"name": "offset", "address": "4", "size": "4", "kind": "SYMBOL_OBJECT"},
            {"name": "offset", "address": "8", "size": "4", "kind": "SYMBOL_OBJECT"},
            {"name": "offset", "address": "4", "size": "20", "kind": "SYMBOL_OBJECT"},
        ])
        for key, value in (("section_name", ".rdata"), ("section_index", 0), ("section", None)):
            symbols.append({"name": "explicit", "kind": "SYMBOL_OBJECT", key: value})
        document = {"left": {"sections": [{"name": name} for name in (".rdata", ".bss", ".text")],
                             "symbols": symbols}}
        original = copy.deepcopy(symbols)
        common._enrich_sections(document, "Game", self.root)
        for index, sym in enumerate(symbols):
            if index == 6:
                self.assertEqual(sym["section_name"], ".bss")
            else:
                self.assertEqual(sym, original[index])

    def test_missing_project_or_unsupported_objects_leave_json_untouched(self):
        document = {"left": {"sections": [{"name": ".text"}], "symbols": [function("Foo")]}}
        for object_bytes in (None, b"not a supported object"):
            self.units[0]["target_path"] = "target.o"
            self.project_path.write_text(json.dumps({"units": self.units}), encoding="utf-8")
            if object_bytes is not None:
                (self.root / "target.o").write_bytes(object_bytes)
            with patch.object(common.subprocess, "run") as run:
                run.return_value = subprocess.CompletedProcess([], 0, json.dumps(document).encode(), b"")
                self.assertEqual(common.run_diff("Game", root=self.root), document)
        self.project_path.unlink()
        with patch.object(common.subprocess, "run") as run:
            run.return_value = subprocess.CompletedProcess([], 0, json.dumps(document).encode(), b"")
            self.assertEqual(common.run_diff("Game", root=self.root), document)


class RenderTests(unittest.TestCase):
    def test_actual_relocation_addend_schema(self):
        self.assertIs(PACKET_OPERAND["instruction"]["parts"][-1]["arg"]["reloc"], True)
        self.assertEqual(PACKET_OPERAND["instruction"]["relocation"]["addend"], "40")
        rendered = diff.render_instruction(PACKET_OPERAND, PACKET_SYMBOLS)
        self.assertEqual(rendered, "cmp edx, ?PacketTimeHistory@GGame@@2PAHA+0x28")

    def test_signed_addends_and_diff_braces(self):
        entry = copy.deepcopy(PACKET_OPERAND)
        entry["arg_diff"] = [{}, {"diff_index": 0}]
        for addend, suffix in (("-40", "-0x28"), ("0", ""), (40, "+0x28")):
            entry["instruction"]["relocation"]["addend"] = addend
            self.assertEqual(diff.render_instruction(entry, PACKET_SYMBOLS, True),
                             "cmp edx, {?PacketTimeHistory@GGame@@2PAHA" + suffix + "}")
        del entry["instruction"]["relocation"]["addend"]
        self.assertNotIn("0x", diff.render_instruction(entry, PACKET_SYMBOLS))

    def test_unresolved_relocation_does_not_index_from_end(self):
        entry = copy.deepcopy(PACKET_OPERAND)
        for index in (-1, 3, None):
            entry["instruction"]["relocation"]["target_symbol"] = index
            self.assertEqual(diff.render_instruction(entry, PACKET_SYMBOLS), "cmp edx, ?+0x28")

    def test_actual_player_bss_sizes_and_score(self):
        self.assertNotIn("data_diff", PLAYER_SECTIONS["left"]["sections"][-1])
        rendered = output(diff.build_sections, PLAYER_SECTIONS, options())
        self.assertRegex(rendered, r"\.bss\s+1300B\s+8B\s+57\.14%")
        self.assertRegex(rendered, r"\.data\s+1368B\s+-\s+0\.00%")
        self.assertRegex(rendered, r"\.drectve\s+-\s+60B\s+N/A")

    def test_section_fragments_weighting_unknown_and_filter(self):
        data = {"left": {"sections": [
            {"name": ".text", "size": "10", "match_percent": 100},
            {"name": ".text", "size": "30", "match_percent": 0},
        ]}, "right": {"sections": [{"name": ".text", "size": "16"}]}}
        self.assertRegex(output(diff.build_sections, data, options()), r"\.text\s+40B\s+16B\s+25\.00%")
        del data["left"]["sections"][1]["match_percent"]
        self.assertRegex(output(diff.build_sections, data, options()), r"\.text\s+40B\s+16B\s+N/A")
        filtered = output(diff.build_sections, PLAYER_SECTIONS, options(section=".bss"))
        self.assertIn(".bss", filtered)
        self.assertNotIn(".data", filtered)

    def test_overview_exact_and_regex_include_mangled_names(self):
        data = {"left": {"symbols": [function("?FooInt", "Foo(int)", target_symbol=0, match_percent=100),
                                     function("?FooFloat", "Foo(float)")]}}
        exact = output(diff.build_overview, data, options(search="?FooInt", exact=True))
        self.assertIn("Foo(int)", exact)
        self.assertNotIn("Foo(float)", exact)
        regex = output(diff.build_overview, data, options(search=r"^\?Foo", regex=True))
        self.assertIn("Foo(int)", regex)
        self.assertIn("Foo(float)", regex)
        self.assertIn("No symbols", output(diff.build_overview, data, options(search="Foo", exact=True)))

    def test_overload_ambiguity_exact_and_regex_batch(self):
        data = {"left": {"symbols": [function("?FooInt", "Foo(int)"), function("?FooFloat", "Foo(float)")]}}
        with self.assertRaisesRegex(ValueError, "Ambiguous function"):
            diff.build_diff(data, "Foo", options())
        exact = output(diff.build_diff, data, "?FooInt", options(exact=True))
        self.assertIn("Foo(int)", exact)
        self.assertNotIn("Foo(float)", exact)
        batch = output(diff.build_diff, data, r"Foo\(", options(regex=True))
        self.assertEqual(batch.count("instructions)"), 2)

    def test_pairing_index_zero_and_compiled_only_functions(self):
        data = {"left": {"symbols": [function("target", target_symbol=0)]},
                "right": {"symbols": [function("compiled", target_symbol=0), function("extra")]}}
        rendered = output(diff.build_diff, data, ".", options(regex=True))
        self.assertEqual(rendered.count("instructions)"), 2)
        self.assertIn("target:", rendered)
        self.assertIn("extra:", rendered)
        with self.assertRaisesRegex(ValueError, "Function not found"):
            diff.build_diff(data, "absent", options())

    def test_zero_and_omitted_addresses_beat_nonzero_right_address(self):
        for address in ({"address": 0}, {"address": "0"}, {}):
            left = {"instruction": dict(parts=[{"basic": "ret"}], size=1, **address)}
            right = {"instruction": {"address": "20", "parts": [{"basic": "ret"}], "size": 1}}
            data = {"left": {"symbols": [function("Foo", target_symbol=0, instructions=[left])]},
                    "right": {"symbols": [function("Foo", target_symbol=0, instructions=[right])]}}
            rendered = output(diff.build_diff, data, "Foo", options(range="0-0", no_collapse=True))
            self.assertRegex(rendered, r"\n\s+0 \| ret")
            self.assertNotIn("No instructions", rendered)

    def test_zero_context_collapses_without_losing_mismatch(self):
        entries = [{"instruction": {"address": str(i), "parts": [{"basic": "nop"}], "size": 1}}
                   for i in range(6)]
        entries[-1]["diff_kind"] = "DIFF_DELETE"
        data = {"left": {"symbols": [function("Foo", instructions=entries)]}}
        rendered = output(diff.build_diff, data, "Foo", options(context=0))
        self.assertIn("5 matching instructions", rendered)
        self.assertRegex(rendered, r"<\s+5 \| nop")


class CliTests(unittest.TestCase):
    def test_invalid_flags_fail_before_objdiff_without_traceback(self):
        cases = [
            ["-C", "-1", "-d", "Foo"], ["--range", "20-10", "-d", "Foo"],
            ["--range", "x-y", "-d", "Foo"], ["--range", "-1", "-d", "Foo"],
            ["--range", "1-2-3", "-d", "Foo"], ["--regex", "-d", "["],
            ["--exact", "--regex", "-d", "Foo"], ["--type", "bogus"],
            ["--status", "bogus"], ["--sections", "-d", "Foo"],
            ["--exact"], ["--sections", "--search", "Foo"],
            ["--source", "src/Black/Game.cpp"], ["--range", "0-1"],
            ["--search", "Foo", "-d", "Foo"],
        ]
        for flags in cases:
            with self.subTest(flags=flags), patch.object(diff, "run_objdiff") as run:
                errors = io.StringIO()
                with redirect_stderr(errors), self.assertRaises(SystemExit) as caught:
                    diff.main(["-u", "Game"] + flags)
                self.assertEqual(caught.exception.code, 2)
                self.assertNotIn("Traceback", errors.getvalue())
                run.assert_not_called()

    def test_range_formats(self):
        self.assertEqual(diff.parse_range("0x10-20"), (16, 32))
        self.assertEqual(diff.parse_range("A-"), (10, float("inf")))
        self.assertEqual(diff.parse_range("0"), (0, float("inf")))

    def test_source_and_strict_forwarded_and_matching_alias(self):
        with patch.object(diff, "resolve_unit", return_value={"name": "full/Game"}) as resolve, \
                patch.object(diff, "run_objdiff", return_value=PLAYER_SECTIONS) as run:
            with redirect_stdout(io.StringIO()):
                self.assertEqual(diff.main(["--source", "src/Black/Game.cpp", "--strict", "--sections"]), 0)
            resolve.assert_called_once_with(unit=None, source="src/Black/Game.cpp")
            run.assert_called_once_with("full/Game", strict=True)
        data = {"left": {"symbols": [function("Foo", target_symbol=0, match_percent=100)]}}
        with patch.object(diff, "resolve_unit", return_value={"name": "Game"}), \
                patch.object(diff, "run_objdiff", return_value=data):
            self.assertIn("Foo", output(diff.main, ["-u", "Game", "-s", "matching"]))

    def test_runtime_errors_are_graceful(self):
        for error in (ValueError("Ambiguous unit"), FileNotFoundError("missing executable"), RuntimeError("bad object")):
            with patch.object(diff, "resolve_unit", side_effect=error):
                errors = io.StringIO()
                with redirect_stderr(errors):
                    self.assertEqual(diff.main(["-u", "Game"]), 1)
                self.assertIn(str(error), errors.getvalue())
                self.assertNotIn("Traceback", errors.getvalue())


class LiveSmokeTests(unittest.TestCase):
    """Skip only absent prerequisites; malformed live JSON is a test failure."""

    def live_diff(self, name):
        executable = os.environ.get("OBJDIFF_CLI", str(common.ROOT / "build/tools" /
                                     ("objdiff-cli.exe" if os.name == "nt" else "objdiff-cli")))
        if not Path(executable).is_file() or not (common.ROOT / "objdiff.json").is_file():
            self.skipTest("existing objdiff executable/project required")
        unit = common.resolve_unit(name)
        for key in ("target_path", "base_path"):
            if not unit.get(key) or not (common.ROOT / unit[key]).is_file():
                self.skipTest("existing target and compiled objects required")
        return common.run_diff(unit["name"], strict=True)

    def test_live_game_strict_packet_operand(self):
        data = self.live_diff("Game")
        functions = [s for s in data["left"]["symbols"]
                     if s["name"] == "?ProcessNetworkPackets@GGame@@QAEXXZ"]
        self.assertEqual(len(functions), 1)
        operands = [entry for entry in functions[0]["instructions"]
                    if entry.get("instruction", {}).get("relocation", {}).get("addend") == "40"]
        self.assertTrue(operands, "actual signed decimal addend field must be retained")
        self.assertTrue(any("PacketTimeHistory" in diff.render_instruction(entry, data["left"]["symbols"])
                            and "+0x28" in diff.render_instruction(entry, data["left"]["symbols"])
                            for entry in operands))

    def test_live_player_section_schema(self):
        data = self.live_diff("Player")
        unit = common.resolve_unit(source="src\\Black\\Player.cpp")
        self.assertEqual(unit, common.resolve_unit("Player"))
        bss = [s for s in data["left"]["sections"] if s["name"] == ".bss"]
        self.assertEqual(len(bss), 1)
        self.assertEqual(bss[0]["kind"], "SECTION_BSS")
        self.assertIsInstance(bss[0]["size"], str)
        self.assertNotIn("data_diff", bss[0])
        rendered = output(diff.build_sections, data, options(section=".bss"))
        self.assertIn(f"{bss[0]['match_percent']:.2f}%", rendered)
        self.assertIn(bss[0]["size"] + "B", rendered)

    def test_live_player_section_filters_recover_coff_membership(self):
        data = self.live_diff("Player")
        for side in ("left", "right"):
            whites = [sym for sym in data[side]["symbols"] if sym["name"] == "_White"]
            self.assertEqual(len(whites), 1)
            self.assertEqual(whites[0]["section_name"], ".bss")
            self.assertEqual(common.symbol_section(whites[0], data[side]["sections"]), ".bss")
        with patch.object(diff, "run_objdiff", return_value=data):
            text = output(diff.main, ["-u", "Player", "--section", ".text", "-t", "function"])
            bss = output(diff.main, ["--source", "src/Black/Player.cpp", "--section", ".bss"])
            rdata = output(diff.main, ["-u", "Player", "--section", ".rdata"])
        self.assertNotIn("No symbols", text)
        self.assertIn(".text", text)
        self.assertNotIn("_White", text)
        self.assertRegex(bss, r"\.bss\s+_White")
        self.assertNotIn("_White", rdata)


if __name__ == "__main__":
    unittest.main()
