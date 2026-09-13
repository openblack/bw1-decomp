"""Regression diagnostics tests using real objdiff report/protobuf JSON shapes.

Run: python -m unittest discover -s tools/tests -p test_decomp_regress.py -v
Fixtures are deliberately independent of the game's build state.
"""

from contextlib import redirect_stdout, redirect_stderr
from copy import deepcopy
import importlib.util
import io
import json
import os
from pathlib import Path
import struct
import sys
import tempfile
import unittest
from unittest.mock import patch


TOOLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(TOOLS))
SPEC = importlib.util.spec_from_file_location("decomp_regress", TOOLS / "decomp-regress.py")
regress = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(regress)

UNIT = "runblack/Black/Player"
ENTRY = {"name": UNIT, "base_path": "build/BW1W120/src/Black/Player.o",
         "target_path": "build/BW1W120/obj/Black/Player.o",
         "metadata": {"source_path": "src/Black/Player.cpp"}}


def report(score=100, size=1300):
    return {"measures": {"matched_data": "0"}, "units": [{
        "name": UNIT, "measures": {"matched_code": "217", "matched_functions": 1},
        "sections": [{"name": ".bss", "size": str(size), "fuzzy_match_percent": score}],
        "functions": [{"name": "?Process@GPlayer@@QAEXXZ", "size": "217", "address": "0",
                       "fuzzy_match_percent": 100}], "metadata": ENTRY["metadata"]}]}


def rich(document, target_symbols, compiled_symbols=None, target_size=1300, compiled_size=16):
    def obj(symbols, size):
        return {"sections": [{"name": ".bss", "kind": "SECTION_BSS", "size": str(size)}],
                "symbols": [{"name": "[.bss]", "kind": "SYMBOL_SECTION"}] + symbols}
    return {"format": regress.SNAPSHOT_FORMAT, "report": document, "snapshot": {"units": {
        UNIT: {"mode": {"functionRelocDiffs": "data_value"}, "diff": {
            "left": obj(target_symbols, target_size),
            "right": obj(compiled_symbols if compiled_symbols is not None else target_symbols, compiled_size)}}}}}


def symbol(name, size, address=0):
    return {"name": name, "size": str(size), "address": str(address), "kind": "SYMBOL_OBJECT",
            "flags": {"size_inferred": True}}


def instruction(opcode="call", target=1, immediate=None):
    parts = [{"opcode": {"mnemonic": opcode, "opcode": 42}}]
    inst = {"size": 5, "parts": parts}
    if target is not None:
        parts.append({"arg": {"reloc": True}})
        inst["relocation"] = {"type": 20, "target_symbol": target}
    if immediate is not None:
        parts.append({"arg": {"unsigned": str(immediate)}})
    return {"instruction": inst}


def function_snapshot(instructions=None, score=100, mode="all"):
    document = rich(report(), [])
    live = document["snapshot"]["units"][UNIT]
    live["mode"] = {"functionRelocDiffs": mode}
    for side in ("left", "right"):
        live["diff"][side]["symbols"] = [
            {"name": "function", "size": "5", "kind": "SYMBOL_FUNCTION", "target_symbol": 0,
             "match_percent": score, "instructions": deepcopy(instructions if instructions is not None else [instruction()])},
            {"name": "callee"}, {"name": "other"}]
    return document


class LiveFunctionTests(unittest.TestCase):
    def diagnose(self, old, new):
        return regress.compare_reports(old, new)["units"][0]["live_functions"]

    def test_strict_relocation_only_loss_with_unchanged_relaxed_report(self):
        old, new = function_snapshot(), function_snapshot([instruction(target=2)], score=80)
        result = regress.compare_reports(old, new)
        self.assertEqual(result["units"][0]["measures"], {})
        self.assertEqual(result["units"][0]["functions"], [])
        self.assertTrue(result["has_regressions"])
        self.assertEqual([r["kind"] for r in result["regressions"]], ["live_function_lost_match"])
        target = result["units"][0]["live_functions"]["functions"][0]
        self.assertEqual(target["classification"], "relocation_only")
        self.assertFalse(target["instruction_changed"])
        self.assertTrue(target["relocation_changed"])
        self.assertTrue(target["lost_match"])
        self.assertIn("LOST MATCH", regress.render(result))

    def test_opcode_nonreloc_argument_and_mixed_changes(self):
        for new_inst, expected in ((instruction(opcode="jmp"), "instructions"),
                                   (instruction(immediate=7), "instructions"),
                                   (instruction(opcode="jmp", target=2), "mixed")):
            with self.subTest(expected=expected):
                changes = self.diagnose(function_snapshot(), function_snapshot([new_inst], 80))["functions"]
                self.assertEqual(changes[0]["classification"], expected)

    def test_relocation_addend_change(self):
        inst = instruction()
        inst["instruction"]["relocation"]["addend"] = "4"
        changes = self.diagnose(function_snapshot(), function_snapshot([inst], 80))["functions"]
        self.assertEqual(changes[0]["classification"], "relocation_only")

    def test_alignment_placeholders_ignored_but_actual_insertions_count(self):
        old = function_snapshot()
        new = function_snapshot([{"kind": "DIFF_DELETE"}, instruction(), {"kind": "DIFF_INSERT", "instruction": {}}])
        self.assertEqual(self.diagnose(old, new)["functions"], [])
        inserted = instruction(opcode="nop", target=None)
        inserted["kind"] = "DIFF_INSERT"
        new = function_snapshot([inserted, instruction()], 80)
        self.assertEqual(self.diagnose(old, new)["functions"][0]["classification"], "instructions")
        self.assertEqual(self.diagnose(new, old)["functions"][0]["classification"], "instructions")

    def test_metadata_and_symbol_indices_are_not_semantic_changes(self):
        old, new = function_snapshot(), function_snapshot()
        for side in ("left", "right"):
            syms = new["snapshot"]["units"][UNIT]["diff"][side]["symbols"]
            syms[1], syms[2] = syms[2], syms[1]
            inst = syms[0]["instructions"][0]["instruction"]
            inst["relocation"]["target_symbol"] = 2
            inst.update({"line_number": 97, "formatted": "call differently decorated text", "address": "123"})
        self.assertEqual(self.diagnose(old, new)["functions"], [])

    def test_score_only_is_unknown_but_loss_still_reported(self):
        old, new = function_snapshot(), function_snapshot(score=80)
        result = self.diagnose(old, new)
        self.assertEqual(result["functions"][0]["classification"], "unknown")
        self.assertIn("score-only", result["functions"][0]["reason"])
        self.assertTrue(result["functions"][0]["lost_match"])

    def test_missing_mixed_modes_and_unsupported_instruction_shapes(self):
        old = function_snapshot()
        self.assertEqual(self.diagnose(report(), old)["status"], "unknown")
        result = regress.compare_reports(old, function_snapshot(score=80, mode="data_value"))
        self.assertFalse(result["has_regressions"])
        self.assertEqual(result["units"][0]["live_functions"]["status"], "unknown")
        for malformed in ({"instruction": {"formatted": "call other"}},
                          {"instruction": {"size": 5, "parts": [{"opcode": "call"}]}},
                          {"instruction": {"size": 5, "parts": [{"opcode": {"mnemonic": "call"}},
                                                                   {"arg": {"reloc": True}}]}}):
            with self.subTest(instruction=malformed):
                diagnosis = self.diagnose(old, function_snapshot([malformed], 80))
                self.assertEqual(diagnosis["functions"][0]["classification"], "unknown")

    def test_omitted_live_score_is_unknown_not_zero(self):
        old, new = function_snapshot(), function_snapshot()
        for side in ("left", "right"):
            del new["snapshot"]["units"][UNIT]["diff"][side]["symbols"][0]["match_percent"]
        self.assertFalse(regress.compare_reports(old, new)["has_regressions"])
        self.assertIsNone(self.diagnose(old, new)["functions"][0]["score_percent"]["after"])

    def test_missing_pairing_metadata_does_not_invent_lost_match(self):
        old, new = function_snapshot(), function_snapshot()
        for document in (old, new):
            for side in ("left", "right"):
                del document["snapshot"]["units"][UNIT]["diff"][side]["symbols"][0]["target_symbol"]
        self.assertFalse(regress.compare_reports(old, new)["has_regressions"])
        self.assertEqual(self.diagnose(old, new)["functions"], [])

    def test_removed_function_and_raced_snapshot(self):
        old, new = function_snapshot(), function_snapshot()
        new["snapshot"]["units"][UNIT]["diff"]["left"]["symbols"] = []
        result = regress.compare_reports(old, new)
        self.assertTrue(result["has_regressions"])
        self.assertEqual(result["units"][0]["live_functions"]["functions"][0]["classification"], "unknown")
        new["snapshot"]["inputs_changed_during_capture"] = True
        result = regress.compare_reports(old, new)
        self.assertFalse(result["has_regressions"])
        self.assertEqual(result["units"][0]["live_functions"]["status"], "unknown")


class ComparisonTests(unittest.TestCase):
    def test_217_byte_loss_with_omitted_zero_scalars(self):
        old, new = report(), report()
        new["units"][0]["measures"] = {}
        del new["units"][0]["functions"][0]["fuzzy_match_percent"]
        result = regress.compare_reports(old, new)
        self.assertTrue(result["has_regressions"])
        self.assertEqual(result["units"][0]["measures"]["matched_code"]["delta"], -217)
        self.assertIn("lost_match", result["units"][0]["functions"][0]["changes"])
        self.assertEqual(result["units"][0]["functions"][0]["score_percent"]["after"], 0)

    def test_section_only_drop_is_found_despite_unchanged_measures(self):
        result = regress.compare_reports(report(100), report(50))
        section = result["units"][0]["sections"][0]
        self.assertTrue(result["has_regressions"])
        self.assertEqual(result["units"][0]["measures"], {})
        self.assertEqual(section["target_size"]["delta"], 0)
        self.assertEqual(section["score_weighted_bytes"]["delta"], -650)
        self.assertIsNone(section["compiled_actual_size"]["delta"])
        self.assertIsNone(result["units"][0]["data_symbols"]["target"])

    def test_player_section_improvement_does_not_invent_physical_storage(self):
        result = regress.compare_reports(report(33.333336), report(57.14286))
        section = result["units"][0]["sections"][0]
        self.assertFalse(result["has_regressions"])
        self.assertAlmostEqual(section["score_weighted_bytes"]["delta"], 309.523812)
        self.assertEqual(section["target_size"], {"before": 1300, "after": 1300, "delta": 0})
        self.assertEqual(section["compiled_actual_size"], {"before": None, "after": None, "delta": None})
        self.assertIn("compiled actual unknown", regress.render(result))

    def test_partition_change_without_section_storage_loss(self):
        old = rich(report(), [symbol("blob", 16)])
        new = rich(report(50), [symbol("blob", 8), symbol("part", 8, 8)])
        result = regress.compare_reports(old, new)
        row = result["units"][0]
        self.assertEqual(row["sections"][0]["compiled_actual_size"]["delta"], 0)
        self.assertEqual(row["sections"][0]["score_weighted_bytes"]["delta"], -650)
        self.assertEqual([s["changes"] for s in row["data_symbols"]["target"]], [["resized"], ["added"]])
        self.assertTrue(any("section storage unchanged" in note for note in row["notes"]))
        self.assertTrue(result["has_regressions"])  # a score regression still counts

    def test_actual_storage_loss_is_distinct_from_target_and_weighted_size(self):
        old = rich(report(), [symbol("x", 16)], compiled_size=16)
        new = rich(report(), [symbol("x", 8)], compiled_size=8)
        result = regress.compare_reports(old, new)
        section = result["units"][0]["sections"][0]
        self.assertEqual(section["compiled_actual_size"]["delta"], -8)
        self.assertEqual(section["target_size"]["delta"], 0)
        self.assertEqual(section["score_weighted_bytes"]["delta"], 0)
        self.assertFalse(any(note.startswith("compiled symbol") for note in result["units"][0]["notes"]))

    def test_symbol_remove_move_resize_and_duplicate_names(self):
        old = rich(report(), [symbol("same", 8), symbol("same", 4, 8), symbol("gone", 4, 12)])
        new = rich(report(), [symbol("same", 4, 4), symbol("same", 4, 8)])
        changes = regress.compare_reports(old, new)["units"][0]["data_symbols"]["target"]
        self.assertEqual(len(changes), 2)
        self.assertEqual(changes[0]["changes"], ["removed"])
        self.assertEqual(changes[1]["changes"], ["resized", "moved"])
        self.assertEqual(changes[1]["occurrence"], 0)

    def test_section_marker_resolution_does_not_assign_everything_to_first_data_section(self):
        live = {"diff": {"left": {"sections": [{"name": ".data", "kind": "SECTION_DATA"},
                                                {"name": ".bss", "kind": "SECTION_BSS"}], "symbols": [
            {"name": "[.data]", "kind": "SYMBOL_SECTION"}, symbol("data", 4),
            {"name": "[.bss]", "kind": "SYMBOL_SECTION"}, symbol("bss", 4)]}}}
        symbols = regress.data_symbols(live, "left")
        self.assertEqual(symbols[("data", 0)]["section"], ".data")
        self.assertEqual(symbols[("bss", 0)]["section"], ".bss")
        self.assertIsNone(regress.data_symbols({"diff": {"left": {"symbols": [symbol("unknown", 4)]}}},
                                               "left")[("unknown", 0)]["section"])

    def test_duplicate_section_fragments_are_summed(self):
        totals = regress.section_totals([{"name": ".text", "size": "16", "fuzzy_match_percent": 100},
                                         {"name": ".text", "size": "32"}], "fuzzy_match_percent")
        self.assertEqual(totals[".text"]["size"], 48)
        self.assertEqual(totals[".text"]["weighted"], 16)
        self.assertAlmostEqual(totals[".text"]["score"], 100 / 3)

    def test_removed_matching_function_and_unit(self):
        old, new = report(), report()
        new["units"][0]["functions"] = []
        result = regress.compare_reports(old, new)
        self.assertIn("lost_match", result["units"][0]["functions"][0]["changes"])
        result = regress.compare_reports(old, {"units": []})
        self.assertIn("unit_removed", [r["kind"] for r in result["regressions"]])

    def test_filter_excludes_other_unit_regression_and_errors_on_typo(self):
        old, new = report(), report()
        extra = deepcopy(old["units"][0])
        extra["name"] = "runblack/Black/ChallengeRoom"
        old["units"].append(extra)
        self.assertFalse(regress.compare_reports(old, new, [UNIT])["has_regressions"])
        with self.assertRaisesRegex(ValueError, "absent"):
            regress.compare_reports(old, new, ["typo"])

    def test_changes_report_rejected(self):
        with self.assertRaisesRegex(ValueError, "full objdiff report"):
            regress.compare_reports({"changes": []}, report())
        with self.assertRaisesRegex(ValueError, "full objdiff report"):
            regress.compare_reports({"from": {}, "to": {}, "units": []}, report())

    def test_global_drop_not_hidden_by_identical_unit_counters(self):
        old, new = report(), report()
        old["measures"]["matched_data"] = "217"
        result = regress.compare_reports(old, new)
        self.assertTrue(result["has_regressions"])
        self.assertEqual(result["project_measures"]["matched_data"]["delta"], -217)
        self.assertFalse(regress.compare_reports(old, new, [UNIT])["has_regressions"])

    def test_compiled_section_added_or_removed_is_zero_only_with_layout_evidence(self):
        old = rich(report(), [])
        new = deepcopy(old)
        new["snapshot"]["units"][UNIT]["diff"]["right"]["sections"].append(
            {"name": ".data", "size": "32", "kind": "SECTION_DATA"})
        section = next(s for s in regress.compare_reports(old, new)["units"][0]["sections"] if s["name"] == ".data")
        self.assertEqual(section["compiled_actual_size"], {"before": 0, "after": 32, "delta": 32})
        section = next(s for s in regress.compare_reports(report(), new)["units"][0]["sections"] if s["name"] == ".data")
        self.assertIsNone(section["compiled_actual_size"]["before"])
        self.assertIsNone(section["compiled_actual_size"]["delta"])

    def test_snapshot_mode_and_race_caveats_are_visible(self):
        old, new = rich(report(), []), rich(report(), [])
        new["snapshot"]["units"][UNIT]["mode"] = {"functionRelocDiffs": "default"}
        new["snapshot"]["inputs_changed_during_capture"] = True
        new["snapshot"]["report_freshness"] = {"status": "stale"}
        row = regress.compare_reports(old, new)["units"][0]
        self.assertTrue(any("relocation modes differ" in n for n in row["notes"]))
        self.assertTrue(any("changed during capture" in n for n in row["notes"]))
        self.assertTrue(any("stale report" in n for n in row["notes"]))

    def test_render_hides_unchanged_units_and_sections_but_json_retains_them(self):
        old, new = report(), report(50)
        old["units"][0]["sections"].append({"name": ".text", "size": "20"})
        new["units"][0]["sections"].append({"name": ".text", "size": "20"})
        for document in (old, new):
            other = deepcopy(document["units"][0])
            other["name"] = "unchanged_unit"
            other["sections"] = [{"name": ".text", "size": "20"}]
            document["units"].append(other)
        result = regress.compare_reports(old, new)
        text = regress.render(result)
        self.assertIn(".bss:", text)
        self.assertNotIn(".text:", text)
        self.assertNotIn("unchanged_unit", text)
        self.assertEqual(len(result["units"]), 2)
        self.assertIn("unchanged_unit", regress.render(result, show_all=True))
        self.assertIn(".text:", regress.render(regress.compare_reports(old, new, [UNIT])))
        self.assertIn("No changed units", regress.render(regress.compare_reports(old, old)))


class FilesystemTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)
        self.project = {"units": [ENTRY]}
        self.baseline = self.root / "baseline.json"
        self.current = self.root / "report.json"
        self.baseline.write_text(json.dumps(report()), encoding="utf-8")
        self.current.write_text(json.dumps(report()), encoding="utf-8")
        self.timestamp = 1700000000000000000
        for path in regress.input_paths(self.project, root=self.root):
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text("fixture", encoding="utf-8")
            os.utime(path, ns=(self.timestamp, self.timestamp))
        os.utime(self.current, ns=(self.timestamp + 100, self.timestamp + 100))

    def invoke(self, *args):
        out, err = io.StringIO(), io.StringIO()
        with patch.object(regress, "ROOT", self.root), patch.object(regress, "load_project", return_value=self.project), \
                patch.object(regress, "resolve_unit", return_value=ENTRY), redirect_stdout(out), redirect_stderr(err):
            code = regress.main(["--baseline", str(self.baseline), "--report", str(self.current), *args])
        return code, out.getvalue(), err.getvalue()

    def test_no_newer_inputs_is_uncertain_not_fresh(self):
        result = regress.check_freshness(self.current, self.project, root=self.root)
        self.assertEqual(result["status"], "uncertain")
        self.assertEqual(result["newer_inputs"], [])
        self.assertEqual(result["missing_inputs"], [])

    def test_newer_target_base_and_config_each_make_report_stale(self):
        for relative in (ENTRY["target_path"], ENTRY["base_path"], "objdiff.json", "config/BW1W120/symbols.txt"):
            with self.subTest(path=relative):
                path = self.root / relative
                os.utime(path, ns=(self.timestamp + 200, self.timestamp + 200))
                result = regress.check_freshness(self.current, self.project, root=self.root)
                self.assertEqual(result["status"], "stale")
                self.assertIn(str(path), result["newer_inputs"])
                os.utime(path, ns=(self.timestamp, self.timestamp))

    def test_missing_input_is_unknown_not_fresh(self):
        (self.root / ENTRY["base_path"]).unlink()
        result = regress.check_freshness(self.current, self.project, root=self.root)
        self.assertEqual(result["status"], "uncertain")
        self.assertIn(str(self.root / ENTRY["base_path"]), result["missing_inputs"])

    def test_snapshot_retains_modes_instructions_relocs_and_input_provenance(self):
        raw = rich(report(), [symbol("x", 4)])["snapshot"]["units"][UNIT]["diff"]
        raw["left"]["symbols"].append({"name": "function", "kind": "SYMBOL_FUNCTION", "instructions": [
            {"instruction": {"relocation": {"target_symbol": 1}, "formatted": "call x"}}]})
        with patch.object(regress, "load_project", return_value=self.project), \
                patch.object(regress, "run_diff", return_value=raw) as diff:
            snapshot = regress.make_snapshot(report(), [ENTRY], self.current, strict=True, root=self.root)
        diff.assert_called_once_with(UNIT, strict=True, root=self.root)
        live = snapshot["snapshot"]["units"][UNIT]
        self.assertEqual(live["mode"]["functionRelocDiffs"], "all")
        self.assertEqual(live["diff"], raw)
        self.assertEqual(snapshot["report"], report())
        self.assertFalse(snapshot["snapshot"]["inputs_changed_during_capture"])
        self.assertIn(str(self.root / ENTRY["target_path"]), snapshot["snapshot"]["inputs"])
        # Saving a snapshot now must not make its older embedded report appear current.
        snapshot_path = self.root / "snapshot.json"
        snapshot_path.write_text(json.dumps(snapshot), encoding="utf-8")
        path = self.root / ENTRY["base_path"]
        os.utime(path, ns=(self.timestamp + 200, self.timestamp + 200))
        freshness = regress.check_freshness(snapshot_path, self.project, root=self.root, document=snapshot)
        self.assertEqual(freshness["status"], "stale")
        self.assertIn(str(path), freshness["changed_since_snapshot"])

    def test_snapshot_detects_input_race(self):
        def capture(*args, **kwargs):
            (self.root / ENTRY["base_path"]).write_text("changed object", encoding="utf-8")
            return {"left": {}, "right": {}}
        with patch.object(regress, "load_project", return_value=self.project), \
                patch.object(regress, "run_diff", side_effect=capture):
            result = regress.make_snapshot(report(), [ENTRY], self.current, root=self.root)
        self.assertTrue(result["snapshot"]["inputs_changed_during_capture"])

    def test_cli_json_exit_codes_and_no_report_writes_without_refresh(self):
        before = (self.baseline.read_bytes(), self.current.read_bytes())
        code, text, err = self.invoke("--json", "--fail-on-regression", "--source", "src/Black/Player.cpp")
        self.assertEqual((code, err), (0, ""))
        self.assertFalse(json.loads(text)["has_regressions"])
        self.assertEqual((self.baseline.read_bytes(), self.current.read_bytes()), before)
        changed = report()
        changed["units"][0]["measures"] = {}
        changed["units"][0]["functions"][0].pop("fuzzy_match_percent")
        self.current.write_text(json.dumps(changed), encoding="utf-8")
        code, text, err = self.invoke("--json", "--fail-on-regression")
        self.assertEqual((code, err), (1, ""))
        self.assertEqual(json.loads(text)["units"][0]["measures"]["matched_code"]["delta"], -217)
        self.assertEqual(self.invoke("--json")[0], 0)
        self.current.write_text("invalid JSON", encoding="utf-8")
        self.assertEqual(self.invoke("--json")[0], 2)

    def test_refresh_and_snapshot_cannot_overwrite_baseline(self):
        before = self.baseline.read_bytes()
        code, _, err = self.invoke("--report", str(self.baseline), "--refresh")
        self.assertEqual(code, 2)
        self.assertIn("overwrite the baseline", err)
        self.assertEqual(self.invoke("--snapshot", str(self.baseline))[0], 2)
        self.assertEqual(self.baseline.read_bytes(), before)

    def test_explicit_refresh_only_regenerates_report(self):
        before = self.baseline.read_bytes()
        with patch.object(regress, "refresh_report") as refresh:
            self.assertEqual(self.invoke("--refresh", "--json")[0], 0)
        refresh.assert_called_once_with(self.current)
        self.assertEqual(self.baseline.read_bytes(), before)

    def test_require_current_rejects_stale_and_missing_inputs_but_does_not_claim_fresh(self):
        self.assertEqual(self.invoke("--require-current", "--json")[0], 0)
        obj = self.root / ENTRY["base_path"]
        os.utime(obj, ns=(self.timestamp + 200, self.timestamp + 200))
        code, text, err = self.invoke("--require-current", "--fail-on-regression", "--json")
        self.assertEqual((code, err), (2, ""))
        self.assertTrue(json.loads(text)["current_check_failed"])
        self.assertEqual(self.invoke("--fail-on-regression", "--json")[0], 0)
        obj.unlink()
        self.assertEqual(self.invoke("--require-current", "--json")[0], 2)

    def test_hardlink_alias_protection(self):
        alias = self.root / "alias.json"
        try:
            os.link(self.baseline, alias)
        except OSError as error:
            self.skipTest("Hardlinks unavailable: " + str(error))
        before = self.baseline.read_bytes()
        self.assertEqual(self.invoke("--report", str(alias), "--refresh")[0], 2)
        self.assertEqual(self.invoke("--snapshot", str(alias))[0], 2)
        self.assertEqual(self.baseline.read_bytes(), before)

    def test_snapshot_cli_round_trip_and_exclusive_creation(self):
        destination = self.root / "rich.json"
        snapshot = rich(report(), [symbol("x", 16)])
        with patch.object(regress, "make_snapshot", return_value=snapshot):
            self.assertEqual(self.invoke("--snapshot", str(destination), "--json")[0], 0)
            self.assertEqual(self.invoke("--snapshot", str(destination), "--json")[0], 2)
        loaded = json.loads(destination.read_text(encoding="utf-8"))
        self.assertEqual(loaded, snapshot)
        self.assertFalse(regress.compare_reports(loaded, loaded)["has_regressions"])

    def test_refresh_failure_preserves_existing_report(self):
        before = self.current.read_bytes()
        with patch.object(regress.subprocess, "run") as run:
            run.return_value.returncode = 1
            run.return_value.stderr = "bad object"
            with self.assertRaisesRegex(ValueError, "bad object"):
                regress.refresh_report(self.current, root=self.root)
        self.assertEqual(self.current.read_bytes(), before)
        self.assertEqual(list(self.root.glob("decomp-regress-*")), [])

    def test_version_inference_handles_windows_paths(self):
        self.assertEqual(regress.versions({"units": [{"target_path": "build\\BW1W110\\obj\\Player.o"}]}),
                         ["BW1W110"])

    def test_coff_membership_recovers_target_data_without_section_markers(self):
        path = self.root / "small.o"
        name = b"_SecondsPerYear\0"
        header = struct.pack("<HHIIIHH", 0x14c, 2, 0, 100, 2, 0, 0)
        sections = b"".join(struct.pack("<8sIIIIIIHHI", n, 0, 0, size, 0, 0, 0, 0, 0, 0)
                            for n, size in ((b".text", 16), (b".bss", 1300)))
        symbols = struct.pack("<8sIhHBB", b"\0\0\0\0\4\0\0\0", 0, 2, 0, 3, 0)
        symbols += struct.pack("<8sIhHBB", b"_White", 4, 2, 0, 3, 0)
        path.write_bytes(header + sections + symbols + struct.pack("<I", 4 + len(name)) + name)
        layout = regress.coff_layout(path)
        self.assertEqual(layout["symbols"][0]["name"], "_SecondsPerYear")
        self.assertEqual(layout["symbols"][0]["section"], ".bss")
        live = {"diff": {"left": {"sections": [{"name": ".text", "kind": "SECTION_CODE"}],
                                 "symbols": [{"name": "[.text]", "kind": "SYMBOL_SECTION"},
                                             symbol("_SecondsPerYear", 4), symbol("_White", 4, 4)]}},
                "object_layout": {"left": layout}}
        self.assertEqual(regress.data_symbols(live, "left")[("_White", 0)]["section"], ".bss")
        del live["object_layout"]
        self.assertIsNone(regress.data_symbols(live, "left")[("_White", 0)]["section"])


if __name__ == "__main__":
    unittest.main()
