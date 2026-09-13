"""Shared, read-only objdiff project access for the decomp command-line tools.

Paths are relative to the project root, not the caller's working directory.
Helpers raise OSError/ValueError/RuntimeError; CLI callers own error reporting.
"""

import json
import os
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[1]


def load_json(path) -> dict:
    """Read a UTF-8 JSON object (also accepting a UTF-8 BOM)."""
    with Path(path).open(encoding="utf-8-sig") as stream:
        document = json.load(stream)
    if not isinstance(document, dict):
        raise ValueError("Expected a JSON object: " + str(path))
    return document


def load_project(root=ROOT) -> dict:
    """Load the active objdiff.json without changing its configuration."""
    project = load_json(Path(root) / "objdiff.json")
    if not isinstance(project.get("units"), list):
        raise ValueError("objdiff.json must contain a units array")
    return project


def _source_path(path, root):
    return os.path.normcase(str((Path(root) / str(path).replace("\\", "/")).resolve()))


def resolve_unit(unit=None, source=None, root=ROOT) -> dict:
    """Resolve an exact unit name, unique basename, or metadata.source_path.

    Exactly one selector is required. Basenames are case-sensitive and never
    substring matches. Source paths accept absolute/relative paths and either
    slash style; filesystem case rules apply.
    """
    if bool(unit) == bool(source):
        raise ValueError("Specify exactly one of unit or source")
    units = load_project(root)["units"]
    if source:
        wanted = _source_path(source, root)
        matches = [entry for entry in units
                   if entry.get("metadata", {}).get("source_path")
                   and _source_path(entry["metadata"]["source_path"], root) == wanted]
    else:
        matches = [entry for entry in units if entry.get("name") == unit]
        if not matches:
            matches = [entry for entry in units
                       if entry.get("name", "").rsplit("/", 1)[-1] == unit]
    if not matches:
        raise ValueError("Unit/source not found: " + str(source or unit))
    if len(matches) != 1:
        raise ValueError("Ambiguous unit/source " + repr(str(source or unit)) + ":\n  "
                         + "\n  ".join(entry["name"] for entry in matches))
    return matches[0]


def run_diff(unit: str, strict=False, root=ROOT) -> dict:
    """Query existing objects; explicitly override relocation comparison mode.

    strict=True uses functionRelocDiffs=all, otherwise data_value. No build is
    performed. OBJDIFF_CLI can override the executable for all shared callers.
    Missing section membership is enriched from unique COFF name/offset matches
    when the selected unit's objects are available; raw explicit fields survive.
    """
    root = Path(root).resolve()
    executable = os.environ.get("OBJDIFF_CLI", str(root / "build" / "tools" /
                                 ("objdiff-cli.exe" if os.name == "nt" else "objdiff-cli")))
    mode = "all" if strict else "data_value"
    result = subprocess.run(
        [executable, "diff", "-c", "functionRelocDiffs=" + mode,
         "-u", unit, "-o", "-", "--format", "json"],
        cwd=root, capture_output=True,
    )
    if result.returncode:
        raise RuntimeError("objdiff-cli error: " + result.stderr.decode("utf-8", errors="replace").strip())
    document = json.loads(result.stdout)
    if not isinstance(document, dict):
        raise ValueError("objdiff-cli did not return a JSON object")
    _enrich_sections(document, unit, root)
    return document


def _enrich_sections(document, unit, root):
    """Best-effort membership evidence, without assuming JSON/COFF index parity.

    COFF auxiliary slots and objdiff's generated/ordered section symbols make
    positional mapping invalid. Require exactly one raw symbol with the same
    mangled name and section-relative offset (protobuf omits zero addresses).
    Do not infer raw symbol sizes from neighboring symbols or choose between
    duplicate COMDAT/local symbols, even if they share a section name.
    """
    from decomp_binary import Coff

    try:
        entry = resolve_unit(unit=unit, root=root)
    except (OSError, ValueError):
        return
    for side, key in (("left", "target_path"), ("right", "base_path")):
        object_path = entry.get(key)
        if not object_path or not document.get(side):
            continue
        try:
            coff = Coff.read(Path(root) / str(object_path).replace("\\", "/"))
        except (OSError, ValueError):
            # Absent, unsupported or malformed objects leave membership unknown.
            continue
        by_name_offset = {}
        for raw in coff.symbols.values():
            by_name_offset.setdefault((raw.name, raw.value), []).append(raw)
        sections = document[side].get("sections", [])
        section_names = {section.get("name") for section in sections}
        for sym in document[side].get("symbols", []):
            if any(key in sym for key in ("section_name", "section", "section_index")):
                continue
            if sym.get("kind") not in ("SYMBOL_FUNCTION", "SYMBOL_OBJECT"):
                continue
            if symbol_section(sym, sections) != "?":
                continue
            try:
                address = int(sym.get("address", 0))
                size = int(sym.get("size", 0))
            except (TypeError, ValueError):
                continue
            candidates = by_name_offset.get((sym.get("name"), address), [])
            if len(candidates) != 1 or candidates[0].section <= 0:
                continue
            section = coff.section(candidates[0].section)
            if size < 0 or address + size > section.size or section.name not in section_names:
                continue
            sym["section_name"] = section.name


def symbol_section(sym, sections) -> str:
    """Return proven section membership, or '?' when JSON omits membership.

    Current objdiff JSON omits ordinary symbols' section indices. Do not infer
    membership from overlapping COFF addresses or the first data/code section.
    Also accept explicit indices/names and nested symbol membership supplied by
    other schema versions. Numeric section references are zero-based.
    """
    section = sym.get("section_name", sym.get("section", sym.get("section_index")))
    if isinstance(section, dict):
        section = section.get("name", section.get("index"))
    if isinstance(section, str) and not section.isdecimal():
        return section if any(s.get("name") == section for s in sections) else "?"
    if section is not None:
        try:
            index = int(section)
            return sections[index].get("name", "?") if 0 <= index < len(sections) else "?"
        except (ValueError, TypeError):
            return "?"
    names = {sec.get("name", "?") for sec in sections
             if any(member is sym or (isinstance(member, dict) and member == sym)
                    for member in sec.get("symbols", []))}
    if len(names) == 1:
        return names.pop()
    if sym.get("kind") == "SYMBOL_SECTION":
        name = sym.get("name", "").strip("[]")
        if any(sec.get("name") == name for sec in sections):
            return name
        name = re.sub(r"-\d+$", "", name)
        if any(sec.get("name") == name for sec in sections):
            return name
    return "?"
