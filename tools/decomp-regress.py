#!/usr/bin/env python3
"""Compare complete objdiff reports, including sections omitted by report changes.

Public entry points: compare_reports(baseline, report, unit_names=None),
check_freshness(report_path, project, unit_names=None, root=ROOT, document=None),
make_snapshot(report, entries, report_path, strict=False, root=ROOT), main(argv=None).

Snapshots wrap the original report (never replacing its scores with live scores)
and preserve raw objdiff data, object/config timestamps and relocation mode.
Section score-weighted bytes are size * score / 100, NOT physical matched bytes.
Exit status: 0 comparison completed (not a verified-current build), 1 regressions
with --fail-on-regression, 2 input/tool error or failed --require-current check.
--require-current rejects known stale/missing inputs; timestamps remain uncertain.
"""

import argparse
from collections import defaultdict
from datetime import datetime, timezone
import json
import os
from pathlib import Path
import re
import struct
import subprocess
import sys
import tempfile
import time

from decomp_common import ROOT, load_json, load_project, resolve_unit, run_diff


SNAPSHOT_FORMAT = "decomp-regress-snapshot-v1"
EPSILON = 0.00001  # objdiff serializes single-precision percentages


def number(value):
    if isinstance(value, str):
        if value.lower().startswith("0x"):
            return int(value, 16)
        return float(value) if "." in value or "e" in value.lower() else int(value)
    return value


def unwrap(document):
    if document.get("format") == SNAPSHOT_FORMAT:
        document = document["report"]
    if "from" in document or "to" in document or not isinstance(document.get("units"), list):
        raise ValueError("Expected a full objdiff report with a units array (not report changes)")
    for unit in document["units"]:
        if not isinstance(unit, dict) or not isinstance(unit.get("name"), str):
            raise ValueError("Report unit must have a string name")
        if "from" in unit or "to" in unit:
            raise ValueError("Expected full report units, not report changes units")
    if len({u["name"] for u in document["units"]}) != len(document["units"]):
        raise ValueError("Report contains duplicate unit names")
    return document


def indexed(items):
    """Keep duplicate local names instead of silently discarding them."""
    counts = defaultdict(int)
    result = {}
    for item in items:
        name = item["name"]
        occurrence = counts[name]
        counts[name] += 1
        result[(name, occurrence)] = item
    return result


def delta(before, after):
    return None if before is None or after is None else after - before


def pair(before, after):
    return {"before": before, "after": after, "delta": delta(before, after)}


def section_totals(sections, score_key=None):
    """Aggregate COFF fragments with the same name, including COMDAT sections."""
    result = {}
    for section in sections:
        row = result.setdefault(section["name"], {"size": 0, "weighted": 0})
        size = number(section.get("size", 0))
        row["size"] += size
        if score_key:
            # Standard report protobuf JSON omits zero-valued scalar fields.
            row["weighted"] += size * number(section.get(score_key, 0)) / 100
    for row in result.values():
        row["score"] = row["weighted"] * 100 / row["size"] if row["size"] else 0
    return result


def live_unit(document, name):
    return document.get("snapshot", {}).get("units", {}).get(name)


def live_sections(live, side):
    if live is None or side not in live.get("diff", {}):
        return None
    return section_totals(live["diff"][side].get("sections", []))


def data_symbols(live, side):
    """Resolve section membership from explicit indices or ordered section markers.

    Older objdiff JSON has no symbol.section field. Its COFF symbol stream emits
    SYMBOL_SECTION markers in section order. Never guess '.data' for all objects.
    The raw stream is also saved, so ambiguous/missing membership stays inspectable.
    """
    if live is None or side not in live.get("diff", {}):
        return None
    obj = live["diff"][side]
    sections = obj.get("sections", [])
    coff = live.get("object_layout", {}).get(side, {})
    memberships = defaultdict(set)
    for sym in coff.get("symbols", []):
        memberships[(sym["name"], sym["address"])].add(sym["section"])
    current_section = None
    result = []
    for sym in obj.get("symbols", []):
        if sym.get("kind") == "SYMBOL_SECTION":
            marker = sym.get("name", "").strip("[]")
            candidates = [s["name"] for s in sections if s["name"] == marker]
            current_section = candidates[0] if candidates else None
            continue
        if sym.get("kind") != "SYMBOL_OBJECT":
            continue
        if not number(sym.get("size", 0)):
            continue  # relocation-only externals are not allocated data
        section = sym.get("section", sym.get("section_index"))
        if isinstance(section, int):
            section = sections[section]["name"] if 0 <= section < len(sections) else None
        elif not isinstance(section, str):
            section = current_section
            # Split target objects may omit their data section markers entirely.
            # A preceding .text marker must not leak into their data symbols.
            if not any(s["name"] == section and s.get("kind") in ("SECTION_DATA", "SECTION_BSS")
                       for s in sections):
                section = None
        exact = memberships.get((sym["name"], number(sym.get("address", 0))), set())
        if len(exact) == 1:
            section = next(iter(exact))
        result.append({"name": sym["name"], "section": section,
                       "address": number(sym.get("address", 0)),
                       "size": number(sym.get("size", 0)),
                       "size_inferred": sym.get("flags", {}).get("size_inferred", False)})
    return indexed(result)


def coff_layout(path):
    """Read section membership omitted by older objdiff JSON (ordinary COFF).

    No size is inferred from neighboring symbols. Unsupported bigobj/archive
    inputs retain raw objdiff layout and explicitly unknown symbol membership.
    """
    data = Path(path).read_bytes()
    if len(data) < 20:
        raise ValueError("Truncated COFF header")
    machine, count, _, pointer, symbol_count, optional, _ = struct.unpack_from("<HHIIIHH", data)
    if machine not in (0x14c, 0x8664) or optional:
        raise ValueError("Unsupported COFF format for symbol membership")
    strings_at = pointer + symbol_count * 18
    if strings_at + 4 > len(data) or 20 + count * 40 > len(data):
        raise ValueError("Truncated COFF tables")
    string_size = struct.unpack_from("<I", data, strings_at)[0]
    if string_size < 4 or strings_at + string_size > len(data):
        raise ValueError("Invalid COFF string table")
    def string_at(offset):
        if not 4 <= offset < string_size:
            raise ValueError("Invalid COFF string offset")
        start = strings_at + offset
        end = data.find(b"\0", start, strings_at + string_size)
        if end == -1:
            raise ValueError("Unterminated COFF string")
        return data[start:end].decode("utf-8", errors="replace")
    sections = []
    for index in range(count):
        offset = 20 + index * 40
        name = data[offset:offset + 8].split(b"\0", 1)[0]
        name = string_at(int(name[1:])) if name.startswith(b"/") else name.decode("ascii", errors="replace")
        sections.append({"name": name, "size": struct.unpack_from("<I", data, offset + 16)[0]})
    symbols = []
    index = 0
    while index < symbol_count:
        offset = pointer + index * 18
        raw_name, address, section, _, _, aux = struct.unpack_from("<8sIhHBB", data, offset)
        name = (string_at(struct.unpack_from("<I", raw_name, 4)[0]) if raw_name[:4] == b"\0" * 4
                else raw_name.split(b"\0", 1)[0].decode("utf-8", errors="replace"))
        if 0 < section <= count:
            symbols.append({"name": name, "address": address, "section": sections[section - 1]["name"],
                            "section_index": section - 1})
        index += 1 + aux
    return {"sections": sections, "symbols": symbols}


def symbol_changes(before, after):
    if before is None or after is None:
        return None
    changes = []
    for key in sorted(before.keys() | after.keys()):
        old, new = before.get(key), after.get(key)
        kinds = []
        if old is None:
            kinds.append("added")
        elif new is None:
            kinds.append("removed")
        else:
            if old["size"] != new["size"]:
                kinds.append("resized")
            if old["section"] != new["section"] or old["address"] != new["address"]:
                kinds.append("moved")
        if kinds:
            changes.append({"name": key[0], "occurrence": key[1], "changes": kinds,
                            "before": old, "after": new})
    return changes


def normalized_function(sym, symbols):
    """Normalize one side's real instruction stream, not objdiff alignment rows.

    Empty insertion/deletion placeholders carry no instruction. Real instructions
    in DIFF_INSERT/DELETE rows do count. Formatted text, source lines, addresses,
    diff annotations and symbol-table indices are not semantic identities.
    Unsupported instruction/relocation shapes deliberately return unknown.
    """
    if sym is None or not isinstance(sym.get("instructions"), list):
        return None
    code, relocs = [], []
    for row in sym["instructions"]:
        if not isinstance(row, dict):
            return None
        inst = row.get("instruction")
        if not inst:
            if row.get("kind") in ("DIFF_INSERT", "DIFF_DELETE"):
                continue
            return None
        if not isinstance(inst, dict) or not isinstance(inst.get("parts"), list):
            return None
        parts, has_opcode, reloc_args = [], False, 0
        for part in inst["parts"]:
            if not isinstance(part, dict) or len(part) != 1:
                return None
            if "opcode" in part:
                op = part["opcode"]
                if not isinstance(op, dict) or not isinstance(op.get("mnemonic"), str):
                    return None
                parts.append(("opcode", op["mnemonic"], op.get("opcode")))
                has_opcode = True
            elif "basic" in part and isinstance(part["basic"], str):
                if part["basic"].strip():
                    parts.append(("basic", part["basic"].strip()))
            elif "arg" in part and isinstance(part["arg"], dict) and len(part["arg"]) == 1:
                kind, value = next(iter(part["arg"].items()))
                if kind == "reloc" and value is True:
                    reloc_args += 1
                    parts.append(("arg", "reloc"))
                elif kind in ("signed", "unsigned", "branch_dest"):
                    try:
                        parts.append((kind, number(value)))
                    except (ValueError, TypeError):
                        return None
                elif kind == "opaque" and isinstance(value, str):
                    parts.append((kind, value))
                else:
                    return None
            else:
                return None
        if not has_opcode or not isinstance(inst.get("size"), (int, str)):
            return None
        relocation = inst.get("relocation")
        if bool(relocation) != bool(reloc_args) or reloc_args > 1:
            return None
        normalized_reloc = None
        if relocation:
            if not isinstance(relocation, dict) or "type" not in relocation:
                return None
            target = relocation.get("target_symbol")
            if not isinstance(target, int) or not 0 <= target < len(symbols):
                return None
            target_name = symbols[target].get("name")
            # Duplicate local names cannot be identified by name alone.
            if not target_name or sum(s.get("name") == target_name for s in symbols) != 1:
                return None
            if set(relocation) - {"type", "type_name", "target_symbol", "addend"}:
                return None
            normalized_reloc = (relocation["type"], target_name, number(relocation.get("addend", 0)))
        code.append((number(inst["size"]), tuple(parts)))
        relocs.append(normalized_reloc)
    if not code and number(sym.get("size", 0)):
        return None
    return code, relocs


def live_function_changes(before, after):
    """Same-mode temporal evidence on both target and compiled functions.

    Classification describes observed changes, not proof of why a score changed.
    A score-only change is unknown, never inferred to be relocation-only.
    """
    if not before or not after:
        return {"status": "unknown", "reason": "requires two live snapshots", "functions": []}
    mode = before.get("mode", {}).get("functionRelocDiffs")
    if mode not in ("all", "data_value") or before.get("mode") != after.get("mode"):
        return {"status": "unknown", "reason": "mixed or unknown relocation modes", "functions": []}
    objects = [live.get("diff", {}) for live in (before, after)]
    if any(not isinstance(obj.get(side, {}).get("symbols"), list)
           for obj in objects for side in ("left", "right")):
        return {"status": "unknown", "reason": "missing live symbol tables", "functions": []}
    changes = []
    for side, label in (("left", "target"), ("right", "compiled")):
        tables = [obj[side]["symbols"] for obj in objects]
        functions = [indexed(s for s in table if s.get("kind") == "SYMBOL_FUNCTION" and
                             (number(s.get("size", 0)) or "instructions" in s)) for table in tables]
        for key in sorted(functions[0].keys() | functions[1].keys()):
            a, b = functions[0].get(key), functions[1].get(key)
            scores = [number(s["match_percent"]) if s and "match_percent" in s else None for s in (a, b)]
            normalized = []
            for sym, table in zip((a, b), tables):
                try:
                    normalized.append(normalized_function(sym, table))
                except (ValueError, TypeError, KeyError):
                    normalized.append(None)
            classification, reason = "unknown", "missing or unsupported instruction metadata"
            code_changed = reloc_changed = None
            if all(n is not None for n in normalized):
                code_changed = normalized[0][0] != normalized[1][0]
                # Compare relocation sequence without non-relocation instructions,
                # so inserting a nop does not manufacture relocation changes.
                reloc_changed = (normalized[0][1] != normalized[1][1] if not code_changed else
                                 [r for r in normalized[0][1] if r is not None] !=
                                 [r for r in normalized[1][1] if r is not None])
                if code_changed or reloc_changed:
                    classification = "mixed" if code_changed and reloc_changed else (
                        "instructions" if code_changed else "relocation_only")
                    reason = "normalized temporal " + label + " instruction stream"
                elif scores[0] != scores[1]:
                    reason = "score-only change; normalized instruction and relocation evidence unchanged"
                else:
                    classification, reason = "unchanged", "normalized evidence unchanged"
            # Left-hand score is the target's match score. Right-hand scores may
            # be omitted by objdiff and must not be defaulted to zero.
            score_drop = side == "left" and scores[0] is not None and scores[1] is not None and scores[1] < scores[0] - EPSILON
            lost = side == "left" and scores[0] == 100 and (b is None or
                   (a.get("target_symbol") is not None and b.get("target_symbol") is None) or
                   scores[1] is not None and scores[1] < 100)
            if a != b or classification not in ("unchanged", "unknown") or score_drop or lost:
                # Ignore metadata-only changes once normalized evidence agrees.
                if classification == "unchanged" and scores[0] == scores[1] and not lost:
                    continue
                changes.append({"name": key[0], "occurrence": key[1], "side": label, "mode": mode,
                                "classification": classification, "reason": reason,
                                "instruction_changed": code_changed, "relocation_changed": reloc_changed,
                                "score_percent": pair(*scores), "lost_match": lost, "score_drop": score_drop,
                                "presence": "added" if a is None else "removed" if b is None else "both"})
    return {"status": "compared", "mode": mode, "functions": changes}


def compare_reports(baseline, report, unit_names=None):
    """Return JSON-serializable observations; regressions are score/match losses.

    Symbol/layout changes and raw size changes are observations, not automatic
    match regressions. Renames are reported as remove/add, never guessed aliases.
    """
    old_report, new_report = unwrap(baseline), unwrap(report)
    old_units = {u["name"]: u for u in old_report["units"]}
    new_units = {u["name"]: u for u in new_report["units"]}
    names = old_units.keys() | new_units.keys()
    if unit_names is not None:
        requested = set(unit_names)
        missing = requested - names
        if missing:
            raise ValueError("Unit absent from both reports: " + ", ".join(sorted(missing)))
        names &= requested
    result = {"schema_version": 1, "selected_units": unit_names is not None,
              "units": [], "regressions": [], "project_measures": {}, "notes": [
        "Score-weighted bytes = target section size * fuzzy score / 100; not physical storage or byte equality.",
        "Standard reports omit compiled layout and data symbols: unknown unless both inputs have live snapshots.",
        "Section sizes include padding and COMDAT fragments; .bss size is reserved storage, not file bytes.",
        "Missing scalar scores in standard protobuf reports mean zero. Symbol remove/add may be renaming.",
        "Live function diagnosis requires same-mode snapshots; temporal changes do not prove score causation.",
    ]}

    def regression(unit, kind, name, before, after):
        result["regressions"].append({"unit": unit, "kind": kind, "name": name,
                                      "before": before, "after": after})

    # Global counters can be deduplicated: do not synthesize them by summing units.
    # A selected unit must not fail because an unrelated project counter fell.
    if unit_names is None:
        old_measures, new_measures = old_report.get("measures", {}), new_report.get("measures", {})
        for metric in sorted(old_measures.keys() | new_measures.keys()):
            a, b = number(old_measures.get(metric, 0)), number(new_measures.get(metric, 0))
            if a != b:
                result["project_measures"][metric] = pair(a, b)
                if b < a - EPSILON and (metric.startswith("matched_") or metric == "fuzzy_match_percent"):
                    regression(None, "project_measure_drop", metric, a, b)

    for name in sorted(names):
        old, new = old_units.get(name, {}), new_units.get(name, {})
        old_live, new_live = live_unit(baseline, name), live_unit(report, name)
        row = {"name": name, "presence": "added" if not old else "removed" if not new else "both",
               "measures": {}, "sections": [], "functions": [], "data_symbols": {}, "notes": []}
        row["snapshot_modes"] = {"before": old_live.get("mode") if old_live else None,
                                  "after": new_live.get("mode") if new_live else None}
        row["live_functions"] = live_function_changes(old_live, new_live)
        if any(document.get("snapshot", {}).get(field) for document in (baseline, report)
               for field in ("inputs_changed_during_capture", "report_changed_during_capture")):
            row["live_functions"] = {"status": "unknown", "reason": "snapshot capture raced", "functions": []}
        for change in row["live_functions"]["functions"]:
            if change["lost_match"] or change["score_drop"]:
                regression(name, "live_function_lost_match" if change["lost_match"] else "live_function_score_drop",
                           change["name"], change["score_percent"]["before"], change["score_percent"]["after"])
        for label, document in (("baseline", baseline), ("report", report)):
            metadata = document.get("snapshot", {})
            if metadata.get("inputs_changed_during_capture") or metadata.get("report_changed_during_capture"):
                row["notes"].append(label + " snapshot changed during capture; layout evidence may be inconsistent.")
            if metadata.get("report_freshness", {}).get("status") == "stale":
                row["notes"].append(label + " snapshot contains a stale report; live layout and report scores "
                                    "represent different observations.")
        if old and not new:
            regression(name, "unit_removed", name, True, False)
        old_measures, new_measures = old.get("measures", {}), new.get("measures", {})
        for metric in sorted(old_measures.keys() | new_measures.keys()):
            a, b = number(old_measures.get(metric, 0)), number(new_measures.get(metric, 0))
            if a != b:
                row["measures"][metric] = pair(a, b)
                if b < a - EPSILON and (metric.startswith("matched_") or metric == "fuzzy_match_percent"):
                    regression(name, "measure_drop", metric, a, b)

        old_sections = section_totals(old.get("sections", []), "fuzzy_match_percent")
        new_sections = section_totals(new.get("sections", []), "fuzzy_match_percent")
        compiled_old, compiled_new = live_sections(old_live, "right"), live_sections(new_live, "right")
        target_old, target_new = live_sections(old_live, "left"), live_sections(new_live, "left")
        section_names = old_sections.keys() | new_sections.keys()
        section_names |= (compiled_old or {}).keys() | (compiled_new or {}).keys()
        for section in sorted(section_names):
            a, b = old_sections.get(section, {}), new_sections.get(section, {})
            def layout_size(layout):
                return None if layout is None else layout.get(section, {}).get("size", 0)
            item = {"name": section,
                    "target_size": pair(a.get("size", 0), b.get("size", 0)),
                    "score_percent": pair(a.get("score", 0), b.get("score", 0)),
                    "score_weighted_bytes": pair(a.get("weighted", 0), b.get("weighted", 0)),
                    "compiled_actual_size": pair(layout_size(compiled_old), layout_size(compiled_new)),
                    "live_target_size": pair(layout_size(target_old), layout_size(target_new))}
            row["sections"].append(item)
            for metric in ("score_percent", "score_weighted_bytes"):
                if item[metric]["delta"] < -EPSILON:
                    regression(name, "section_" + metric + "_drop", section,
                               item[metric]["before"], item[metric]["after"])
        old_funcs, new_funcs = indexed(old.get("functions", [])), indexed(new.get("functions", []))
        for key in sorted(old_funcs.keys() | new_funcs.keys()):
            a, b = old_funcs.get(key), new_funcs.get(key)
            old_score = number(a.get("fuzzy_match_percent", 0)) if a else None
            new_score = number(b.get("fuzzy_match_percent", 0)) if b else None
            changes = []
            if a is None:
                changes.append("added")
            elif b is None:
                changes.append("removed")
            else:
                if old_score != new_score:
                    changes.append("score_changed")
                for field, label in (("size", "resized"), ("address", "moved")):
                    if number(a.get(field, 0)) != number(b.get(field, 0)):
                        changes.append(label)
            lost = old_score == 100 and new_score != 100
            if lost:
                changes.append("lost_match")
                regression(name, "function_lost_match", key[0], old_score, new_score)
            elif old_score is not None and new_score is not None and new_score < old_score - EPSILON:
                regression(name, "function_score_drop", key[0], old_score, new_score)
            if changes:
                row["functions"].append({"name": key[0], "occurrence": key[1], "changes": changes,
                                         "score_percent": pair(old_score, new_score),
                                         "before": a, "after": b})
        for side, label in (("left", "target"), ("right", "compiled")):
            changes = symbol_changes(data_symbols(old_live, side), data_symbols(new_live, side))
            row["data_symbols"][label] = changes
            layouts = (live_sections(old_live, side), live_sections(new_live, side))
            if changes and all(layout is not None for layout in layouts):
                sizes = [{k: v["size"] for k, v in layout.items()} for layout in layouts]
                if sizes[0] == sizes[1]:
                    row["notes"].append(label + " symbol layout/partition changed; section storage unchanged. "
                                        "This does not prove identical contents.")
        if old_live and new_live and old_live.get("mode") != new_live.get("mode"):
            row["notes"].append("Live relocation modes differ; live scores are not compared.")
        result["units"].append(row)
    result["has_regressions"] = bool(result["regressions"])
    return result


def versions(project):
    return sorted({match.group(1) for unit in project.get("units", [])
                   for field in ("target_path", "base_path")
                   for match in re.finditer(r"(?:^|/)build/(BW\w+)(?:/|$)",
                                            unit.get(field, "").replace("\\", "/"))})


def input_paths(project, unit_names=None, root=ROOT):
    root = Path(root)
    paths = {root / "objdiff.json", root / "configure.py", root / "build.ninja", root / "tools/project.py"}
    for version in versions(project):
        paths.update(root / "config" / version / file for file in ("symbols.txt", "splits.txt", "config.yml"))
    wanted = None if unit_names is None else set(unit_names)
    for unit in project.get("units", []):
        if wanted is not None and unit["name"] not in wanted:
            continue
        for field in ("target_path", "base_path"):
            if unit.get(field):
                paths.add(root / unit[field].replace("\\", "/"))
    return sorted(paths)


def file_metadata(paths):
    result = {}
    for path in paths:
        try:
            stat = path.stat()
            result[str(path)] = {"mtime_ns": stat.st_mtime_ns, "size": stat.st_size}
        except OSError:
            result[str(path)] = None
    return result


def check_freshness(report_path, project, unit_names=None, root=ROOT, document=None):
    """Timestamps can establish staleness, never prove a correct current build."""
    snapshot = (document or {}).get("snapshot", {})
    report_time = snapshot.get("report_mtime_ns", Path(report_path).stat().st_mtime_ns)
    inputs = file_metadata(input_paths(project, unit_names, root))
    newer = [path for path, info in inputs.items() if info and info["mtime_ns"] > report_time]
    missing = [path for path, info in inputs.items() if info is None]
    captured = snapshot.get("inputs", {})
    changed = [path for path, info in inputs.items() if path in captured and info != captured[path]]
    raced = snapshot.get("inputs_changed_during_capture", False) or snapshot.get("report_changed_during_capture", False)
    return {"status": "stale" if newer or changed or raced else "uncertain",
            "report_mtime_ns": report_time, "checked_inputs": len(inputs),
            "snapshot_capture_raced": raced,
            "newer_inputs": newer, "changed_since_snapshot": changed, "missing_inputs": missing,
            "note": "Timestamps only; older/equal inputs do not prove freshness, correct compiler options, "
                    "or that sources/headers were rebuilt. --refresh regenerates a report from existing objects."}


def make_snapshot(report, entries, report_path, strict=False, root=ROOT):
    project = load_project(root=root)
    names = [unit["name"] for unit in entries]
    paths = input_paths(project, names, root)
    before = file_metadata(paths)
    report_stat = Path(report_path).stat()
    captured = {}
    for entry in entries:
        captured[entry["name"]] = {"entry": entry,
                                   "mode": {"functionRelocDiffs": "all" if strict else "data_value"},
                                   "diff": run_diff(entry["name"], strict=strict, root=root)}
        layout = {}
        for side, field in (("left", "target_path"), ("right", "base_path")):
            try:
                layout[side] = coff_layout(Path(root) / entry[field].replace("\\", "/"))
            except (KeyError, OSError, ValueError, struct.error) as error:
                layout[side] = {"error": str(error)}
        captured[entry["name"]]["object_layout"] = layout
    after = file_metadata(paths)
    report_after = Path(report_path).stat()
    return {"format": SNAPSHOT_FORMAT, "report": unwrap(report), "snapshot": {
        "created_at": datetime.now(timezone.utc).isoformat(), "created_ns": time.time_ns(),
        "root": str(root), "report_path": str(report_path),
        "report_mtime_ns": report.get("snapshot", {}).get("report_mtime_ns", report_stat.st_mtime_ns),
        "report_mode": "unknown (input report does not record objdiff options)",
        "inputs": after, "inputs_changed_during_capture": before != after,
        "report_changed_during_capture": (report_stat.st_mtime_ns, report_stat.st_size) !=
                                         (report_after.st_mtime_ns, report_after.st_size),
        "report_freshness": check_freshness(report_path, project, names, root, report),
        "units": captured}}


def refresh_report(path, root=ROOT):
    """Explicit report generation, atomic replacement, no build/baseline target."""
    path = Path(path)
    if not path.parent.is_dir():
        raise ValueError("Report parent directory does not exist: " + str(path.parent))
    exe = os.environ.get("OBJDIFF_CLI", str(Path(root) / "build/tools" /
                                         ("objdiff-cli.exe" if os.name == "nt" else "objdiff-cli")))
    fd, temporary = tempfile.mkstemp(prefix="decomp-regress-", suffix=".json", dir=path.parent)
    os.close(fd)
    try:
        proc = subprocess.run([exe, "report", "generate", "-p", str(root), "-o", temporary,
                               "--format", "json"], cwd=root, capture_output=True, text=True)
        if proc.returncode:
            raise ValueError("Report generation failed: " + proc.stderr.strip())
        unwrap(load_json(Path(temporary)))
        os.replace(temporary, path)
    finally:
        if os.path.exists(temporary):
            os.unlink(temporary)


def section_changed(section):
    return any(isinstance(value, dict) and value.get("before") != value.get("after")
               for value in section.values())


def render(result, show_all=False):
    show_all = show_all or result.get("selected_units", False)
    lines = ["Regressions: " + str(len(result["regressions"]))]
    freshness = result.get("freshness")
    if freshness:
        lines.append("Report freshness: " + freshness["status"] + " (" +
                     str(len(freshness["newer_inputs"])) + " newer inputs, " +
                     str(len(freshness["missing_inputs"])) + " missing inputs)")
        lines.append(freshness["note"])
        for path in freshness["newer_inputs"] + freshness["changed_since_snapshot"]:
            lines.append("  stale input: " + path)
    def fmt(value):
        return "unknown" if value is None else f"{value:g}"
    def transition(values):
        change = "unknown" if values["delta"] is None else f"{values['delta']:+g}"
        return fmt(values["before"]) + " -> " + fmt(values["after"]) + " (" + change + ")"
    for metric, values in result["project_measures"].items():
        lines.append("Project " + metric + ": " + transition(values))
    shown = 0
    for unit in result["units"]:
        sections = [s for s in unit["sections"] if show_all or section_changed(s)]
        live_functions = unit["live_functions"]
        if not (show_all or sections or unit["presence"] != "both" or unit["measures"] or unit["functions"] or
                any(unit["data_symbols"].values()) or live_functions["functions"]):
            continue
        shown += 1
        lines.append("\n" + unit["name"] + " [" + unit["presence"] + "]")
        for metric, values in unit["measures"].items():
            lines.append("  " + metric + ": " + transition(values))
        for section in sections:
            lines.append("  " + section["name"] + ": target " + transition(section["target_size"]) +
                         " B; compiled actual " + transition(section["compiled_actual_size"]) + " B")
            lines.append("    score " + transition(section["score_percent"]) +
                         " %; score-weighted " + transition(section["score_weighted_bytes"]) + " B")
        for function in unit["functions"]:
            lines.append("  function " + function["name"] + ": " + ", ".join(function["changes"]) +
                          "; " + transition(function["score_percent"]))
        if live_functions["status"] == "unknown":
            lines.append("  live function diagnosis: unknown (" + live_functions["reason"] + ")")
        for function in live_functions["functions"]:
            lines.append("  live " + function["side"] + " function " + function["name"] + ": " +
                         function["classification"] + "; mode=" + function["mode"] + "; " +
                         transition(function["score_percent"]) + ("; LOST MATCH" if function["lost_match"] else ""))
            lines.append("    " + function["reason"])
        for side, symbols in unit["data_symbols"].items():
            if symbols is None:
                lines.append("  " + side + " data symbols: unknown (requires two rich snapshots)")
            for symbol in symbols or []:
                def location(sym):
                    if sym is None:
                        return "absent"
                    return f"{sym['section'] or 'unknown'}+{sym['address']:#x}, {sym['size']} B"
                lines.append("  " + side + " data " + symbol["name"] + ": " + ", ".join(symbol["changes"]) +
                             "; " + location(symbol["before"]) + " -> " + location(symbol["after"]))
        lines.extend("  " + note for note in unit["notes"])
    if not shown:
        lines.append("No changed units.")
    elif shown < len(result["units"]):
        lines.append(f"\n{len(result['units']) - shown} unchanged units omitted; use --all to show them.")
    if result.get("current_check_failed"):
        lines.append("Current-input check failed: report is stale or inputs are missing.")
    if result.get("snapshot"):
        lines.append("Snapshot saved: " + result["snapshot"])
    lines.extend("\n" + note for note in result["notes"])
    return "\n".join(lines)


def same_path(first, second):
    first, second = Path(first), Path(second)
    return first.resolve() == second.resolve() or (first.exists() and second.exists() and first.samefile(second))


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--baseline", type=Path, help="Full report or rich snapshot (default: build/VERSION/baseline.json)")
    parser.add_argument("--report", type=Path, help="Full report or rich snapshot (default: build/VERSION/report.json)")
    selection = parser.add_mutually_exclusive_group()
    selection.add_argument("--unit", "-u", help="Unit name (resolved by objdiff project)")
    selection.add_argument("--source", help="Source path (resolved by objdiff project)")
    parser.add_argument("--refresh", action="store_true", help="Explicitly regenerate report from current objects")
    parser.add_argument("--snapshot", type=Path, help="Save rich live data alongside report; use as a future baseline")
    parser.add_argument("--strict", action="store_true", help="Capture live diff with functionRelocDiffs=all")
    parser.add_argument("--all", action="store_true", help="Show unchanged units/sections in text (also implicit with --unit/--source)")
    parser.add_argument("--json", action="store_true", help="Machine-readable comparison")
    parser.add_argument("--fail-on-regression", action="store_true", help="Return 1 if any score/match regresses; does not verify freshness")
    parser.add_argument("--require-current", action="store_true",
                        help="Return 2 for stale/missing inputs; older timestamps still do not prove a current build")
    args = parser.parse_args(argv)
    try:
        project = load_project(root=ROOT)
        entry = resolve_unit(unit=args.unit, source=args.source, root=ROOT) if args.unit or args.source else None
        inferred = versions({"units": [entry]}) if entry else versions(project)
        if args.report:
            report_path = args.report.resolve()
        elif len(inferred) == 1:
            report_path = Path(ROOT) / "build" / inferred[0] / "report.json"
        else:
            raise ValueError("Cannot infer one build version; specify --report")
        baseline_path = (args.baseline or report_path.with_name("baseline.json")).resolve()
        if args.refresh and same_path(report_path, baseline_path):
            raise ValueError("--refresh must not overwrite the baseline")
        if args.snapshot and any(same_path(args.snapshot, path) for path in (baseline_path, report_path)):
            raise ValueError("--snapshot must differ from both baseline and report")
        baseline = load_json(baseline_path)
        unwrap(baseline)
        if args.refresh:
            if report_path.exists() and load_json(report_path).get("format") == SNAPSHOT_FORMAT:
                raise ValueError("--refresh needs a report destination, not a rich snapshot")
            refresh_report(report_path)
        report = load_json(report_path)
        names = [entry["name"]] if entry else None
        comparison = compare_reports(baseline, report, names)
        comparison["baseline"] = str(baseline_path)
        comparison["report"] = str(report_path)
        comparison["freshness"] = check_freshness(report_path, project, names, ROOT, report)
        comparison["current_check_failed"] = bool(args.require_current and
            (comparison["freshness"]["status"] == "stale" or comparison["freshness"]["missing_inputs"]))
        if args.snapshot:
            report_names = {u["name"] for u in unwrap(report)["units"]}
            entries = [entry] if entry else [u for u in project["units"] if u["name"] in report_names]
            snapshot = make_snapshot(report, entries, report_path, args.strict)
            # Exclusive creation prevents silently replacing a historical snapshot.
            with args.snapshot.open("x", encoding="utf-8") as output:
                json.dump(snapshot, output, indent=2)
                output.write("\n")
            comparison["snapshot"] = str(args.snapshot.resolve())
        print(json.dumps(comparison, indent=2) if args.json else render(comparison, show_all=args.all))
        if comparison["current_check_failed"]:
            return 2
        return 1 if args.fail_on_regression and comparison["has_regressions"] else 0
    except (OSError, ValueError, KeyError, TypeError, RuntimeError, subprocess.SubprocessError) as error:
        print("decomp-regress: " + str(error), file=sys.stderr)
        return 2


if __name__ == "__main__":
    sys.exit(main())
