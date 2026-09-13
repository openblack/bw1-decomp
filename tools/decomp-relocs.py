#!/usr/bin/env python3
"""Read-only i386 relocation evidence and extracted-object/PE verification.

Exit codes: 0 = inspection/complete verification, 1 = mismatch or unresolved
verification, 2 = invalid input/tool error. No builds, patches, or overrides.
"""

import argparse
from collections import Counter, defaultdict
import json
from pathlib import Path
import re
import sys

# Running an inspector should not create __pycache__ beside its imported helpers.
sys.dont_write_bytecode = True

from decomp_binary import BinaryError, Coff, PE, Unresolved, resolve_relocation
from decomp_common import ROOT, resolve_unit, run_diff


class SymbolMap:
    def __init__(self, text):
        self.rows = []
        self.names = defaultdict(list)
        for lineno, line in enumerate(text.splitlines(), 1):
            line = line.strip()
            if not line or line.startswith(("//", "#")):
                continue
            match = re.fullmatch(r"(.+?)\s*=\s*([^\s:]+):0x([\da-fA-F]+);\s*(?://(.*))?", line)
            if not match:
                raise ValueError(f"symbols line {lineno}: unsupported/malformed syntax: {line[:100]}")
            name, section, address, attrs = match.groups()
            attrs = attrs or ""
            size = re.search(r"\bsize:(0x[\da-fA-F]+|\d+)\b", attrs)
            scope = re.search(r"\bscope:(\w+)", attrs)
            row = {"name": name.strip(), "section": section, "address": int(address, 16),
                   "size": int(size[1], 0) if size else None,
                   "scope": scope[1] if scope else None, "line": lineno}
            if row["address"] > 0xFFFFFFFF or (row["size"] or 0) + row["address"] > 0x100000000:
                raise ValueError(f"symbols line {lineno}: outside 32-bit address space")
            self.rows.append(row)
            self.names[row["name"]].append(row)

    @classmethod
    def read(cls, path):
        return cls(Path(path).read_text(encoding="utf-8"))

    def candidates(self, address):
        result = []
        for row in self.rows:
            delta = address - row["address"]
            size = row["size"]
            if delta == 0 or (size is not None and 0 < delta <= size):
                relation = "start" if delta == 0 else "one-past-end" if delta == size else "interior"
                result.append(dict(row, addend=delta, relation=relation,
                                   uncertainty="extent unknown" if size is None else None))
        return result


class AddressMap:
    """Map COFF offsets using exact symbol-name anchors, never lexical guesses.

    Section bases are accepted only if all independently unique anchors agree.
    Duplicate local names can then be disambiguated by that section base.
    Compiled sections may change layout; their bases are never extrapolated.
    """
    def __init__(self, obj, symbols, extracted=True):
        self.obj, self.symbols, self.extracted = obj, symbols, extracted
        self.bases = {}
        self.conflicts = {}
        anchors = defaultdict(set)
        if extracted:
            for sym in obj.symbols.values():
                rows = symbols.names.get(sym.name, [])
                if sym.section > 0 and sym.storage in (2, 3, 6) and not self.is_section(sym):
                    sec = obj.section(sym.section)
                    addresses = {r["address"] for r in rows if self.section_matches(sec, r["section"])}
                    if len(addresses) == 1:
                        anchors[sym.section].add(next(iter(addresses)) - sym.value)
            for index, values in anchors.items():
                if len(values) == 1:
                    self.bases[index] = next(iter(values))
                else:
                    self.conflicts[index] = sorted(values)

    @staticmethod
    def section_matches(section, name):
        # DTK emits virtual .data tails as COFF .bss; compiled zero-initialized
        # globals can likewise move between .data and .bss. These are not aliases.
        return section.name == name or {section.name, name} == {".data", ".bss"}

    def is_section(self, sym):
        return (sym.section > 0 and sym.storage == 3 and sym.value == 0
                and sym.name == self.obj.section(sym.section).name and bool(sym.aux))

    def address(self, sym):
        if sym.storage not in (2, 3, 6):
            raise Unresolved(f"{sym.name}: unsupported symbol storage class {sym.storage} (weak/debug aliases not resolved)")
        if self.extracted and sym.section in self.conflicts:
            self.section_base(sym.section)  # A selected symbol must not bypass contradictory anchors.
        if sym.section == -1:
            return sym.value
        if sym.section == -2:
            raise Unresolved(f"debug symbol {sym.name}")
        if sym.section == 0 and sym.value:
            raise Unresolved(f"common symbol {sym.name}: allocation is linker-dependent")
        if self.is_section(sym):
            return self.section_base(sym.section)
        rows = self.symbols.names.get(sym.name, [])
        if sym.section > 0:
            rows = [r for r in rows if self.section_matches(self.obj.section(sym.section), r["section"])]
        addresses = {r["address"] for r in rows}
        if len(addresses) == 1:
            return next(iter(addresses))
        if self.extracted and sym.section in self.bases:
            address = self.bases[sym.section] + sym.value
            if address in addresses:
                return address
            # An actual defined local label has an unambiguous section offset.
            if not addresses and sym.storage in (3, 6):
                return address
        if len(addresses) > 1:
            raise Unresolved(f"ambiguous local/duplicate name {sym.name}: "
                             + ", ".join(f"{a:#010x}" for a in sorted(addresses)))
        raise Unresolved(f"no exact address for {sym.name}; lexical aliases are not inferred")

    def section_base(self, index):
        if index in self.conflicts:
            raise Unresolved(f"section {index}: conflicting address anchors {self.conflicts[index]}")
        if index not in self.bases:
            raise Unresolved(f"section {index}: no unique original-address anchor")
        return self.bases[index]


def infer_inputs(unit, symbols=None, original=None, root=ROOT):
    """Only infer a version from the selected target, and a module from config.

    A preprocessing output is not silently substituted for the original image.
    In that case --original is required; we do not pick a similarly named EXE.
    """
    root = Path(root)
    provenance = {"symbols": "explicit" if symbols else None, "original": "explicit" if original else None}
    if symbols and original:
        return Path(symbols), Path(original), provenance
    parts = Path(str(unit.get("target_path", "")).replace("\\", "/")).parts
    versions = [p for p in parts if re.fullmatch(r"BW1[WM]\d+", p)]
    if len(versions) != 1:
        raise ValueError("cannot infer target version; supply --symbols and --original")
    config_path = root / "config" / versions[0] / "config.yml"
    try:
        import yaml
    except ImportError as exc:
        raise ValueError("config inference requires PyYAML; supply --symbols and --original") from exc
    config = yaml.safe_load(config_path.read_text(encoding="utf-8"))
    module_name = unit["name"].split("/", 1)[0]
    modules = [c for c in [config] + config.get("modules", []) if c.get("name") == module_name]
    if len(modules) != 1:
        raise ValueError(f"module {module_name!r} has no unique config reference; supply --symbols and --original")
    module = modules[0]
    if not symbols:
        if not module.get("symbols"):
            raise ValueError("module has no symbols reference; supply --symbols")
        symbols = root / module["symbols"]
        provenance["symbols"] = f"{config_path}: {module_name}.symbols"
    if not original:
        if not module.get("object") or not config.get("object_base"):
            raise ValueError("config has no original object reference; supply --original")
        base = (root / config["object_base"]).resolve()
        candidate = (base / module["object"]).resolve()
        if not candidate.is_relative_to(base):
            raise ValueError(f"cannot infer original PE for {versions[0]}/{module_name}: config references "
                             f"{candidate} outside original object_base (possibly preprocessed). "
                             "Supply --original PATH to that version/module's original PE; see --help for examples.")
        if not candidate.is_file():
            raise ValueError(f"referenced original does not exist: {candidate}; supply --original")
        original = candidate
        provenance["original"] = f"{config_path}: {module_name}.object"
    return Path(symbols), Path(original), provenance


def describe_relocation(obj, mapping, section, reloc, place, pe):
    sym = obj.symbols[reloc.symbol_index]
    addend = obj.addend(section, reloc)
    result = {"type": reloc.name, "type_id": reloc.type, "width": reloc.width,
              "section": section, "offset": reloc.offset, "symbol_index": sym.index,
              "symbol": sym.name, "symbol_section": sym.section, "symbol_value": sym.value,
              "section_relocation": mapping.is_section(sym), "addend": addend,
              "raw_bytes": obj.bytes(section, reloc.offset, reloc.width).hex(), "place_va": place}
    try:
        address = mapping.address(sym)
        encoded = resolve_relocation(reloc.type, address, addend, place, pe)
        result.update(status="resolved", symbol_va=address, resolved_bytes=encoded.hex(),
                      resolved_value=int.from_bytes(encoded, "little"))
    except Unresolved as exc:
        result.update(status="unresolved", reason=str(exc))
    return result


def compare_relocations(target, compiled, original):
    symbolic = "unresolved"
    resolved = "unresolved"
    if compiled is not None:
        keys = ("type_id", "symbol", "addend", "section_relocation")
        symbolic = "match" if all(target.get(k) == compiled.get(k) for k in keys) else "mismatch"
        # Equal section names do not establish section identity across objects.
        if target.get("section_relocation") or compiled.get("section_relocation"):
            symbolic = "uncertain-section-identity"
        if target.get("status") == compiled.get("status") == "resolved":
            resolved = "match" if target["resolved_bytes"] == compiled["resolved_bytes"] else "mismatch"
    return {"symbolic": symbolic, "resolved_bytes": resolved,
            "target_vs_original": ("match" if target["resolved_bytes"] == original.hex() else "mismatch")
            if target.get("status") == "resolved" else "unresolved",
            "compiled_vs_original": ("match" if compiled["resolved_bytes"] == original.hex() else "mismatch")
            if compiled and compiled.get("status") == "resolved" else "unresolved"}


def paired_compiled_reloc(diff, target_obj, base_obj, owner, target_reloc):
    """Use objdiff's aligned instruction rows; never assume equal function offsets."""
    left = diff.get("left", {}).get("symbols", [])
    right = diff.get("right", {}).get("symbols", [])
    matches = [s for s in left if s.get("name") == owner.name]
    if len(matches) != 1:
        raise Unresolved("objdiff symbol is missing or ambiguous")
    ls = matches[0]
    index = ls.get("target_symbol")
    if index is None or not 0 <= index < len(right):
        raise Unresolved("objdiff has no paired compiled symbol")
    rs = right[index]
    defs = [s for s in base_obj.symbols.values() if s.name == rs["name"] and s.section > 0]
    if len(defs) != 1:
        raise Unresolved("compiled symbol is missing or locally ambiguous")
    compiled_owner = defs[0]
    offset = target_reloc.offset - owner.value
    for row_index, entry in enumerate(ls.get("instructions", [])):
        inst = entry.get("instruction", {})
        start, size = int(inst.get("address", 0)), int(inst.get("size", 0))
        if not start <= offset or offset + target_reloc.width > start + size:
            continue
        other_rows = rs.get("instructions", [])
        if row_index >= len(other_rows):
            break
        other = other_rows[row_index].get("instruction", {})
        if not other or any(e.get("diff_kind", "") not in ("", "DIFF_ARG_MISMATCH")
                            for e in (entry, other_rows[row_index])):
            raise Unresolved("instruction alignment does not identify a compiled operand")
        lo = compiled_owner.value + int(other.get("address", 0))
        hi = lo + int(other.get("size", 0))
        relocs = [r for r in base_obj.section(compiled_owner.section).relocations
                  if r.width and lo <= r.offset and r.offset + r.width <= hi]
        target_rel = [r for r in target_obj.section(owner.section).relocations
                      if r.width and owner.value + start <= r.offset < owner.value + start + size]
        if len(relocs) != 1 or len(target_rel) != 1:
            raise Unresolved("aligned instruction has zero or multiple relocation operands")
        if target_reloc.width != relocs[0].width:
            raise Unresolved("aligned relocation widths differ")
        return compiled_owner.section, relocs[0], {
            "method": "objdiff-aligned-instruction", "target_instruction_offset": start,
            "compiled_instruction_offset": lo - compiled_owner.value,
            "target_diff_kind": entry.get("diff_kind", ""),
            "compiled_diff_kind": other_rows[row_index].get("diff_kind", ""),
            "note": "compiled operand resolved at original operand VA; this is not a compiled link layout"}
    raise Unresolved("no aligned instruction for operand (data relocation pairing is not inferred)")


def owner_at(obj, mapping, address, pattern=None):
    found = []
    for sym in obj.symbols.values():
        if sym.section <= 0 or mapping.is_section(sym):
            continue
        if pattern and pattern.lower() not in sym.name.lower():
            continue
        try:
            start = mapping.address(sym)
        except Unresolved:
            continue
        rows = [r for r in mapping.symbols.names.get(sym.name, []) if r["address"] == start]
        sizes = {r["size"] for r in rows if r["size"] is not None}
        if len(sizes) == 1 and start <= address < start + next(iter(sizes)):
            found.append((sym, start))
    if len(found) != 1:
        raise Unresolved(f"operand has {len(found)} owning symbols; use an unambiguous --symbol substring")
    return found[0]


def inspect_address(obj, mapping, base, pe, address, pattern=None, diff=None):
    owner, start = owner_at(obj, mapping, address, pattern)
    offset = owner.value + address - start
    relocs = [r for r in obj.section(owner.section).relocations if r.width and r.offset == offset]
    if len(relocs) != 1:
        raise Unresolved(f"VA {address:#010x} is not the start of a unique extracted relocation operand")
    reloc = relocs[0]
    original = pe.bytes(address, reloc.width)
    value = int.from_bytes(original, "little")
    # Recover the pointed-to VA from the original operand, not the chosen symbol.
    if reloc.type in (2, 20):
        pointed = (address + reloc.width + int.from_bytes(original, "little", signed=True)) & 0xFFFFFFFF
    elif reloc.type == 7:
        pointed = (pe.image_base + value) & 0xFFFFFFFF
    elif reloc.type in (1, 6):
        pointed = value
    else:
        pointed = None  # A SECTION/SECREL operand alone does not identify a VA.
    target = describe_relocation(obj, mapping, owner.section, reloc, address, pe)
    compiled = None
    pairing = {"status": "unresolved", "reason": "compiled object or objdiff unavailable"}
    if base is not None and diff is not None:
        try:
            sec, other, pairing = paired_compiled_reloc(diff, obj, base, owner, reloc)
            compiled = describe_relocation(base, AddressMap(base, mapping.symbols, False), sec, other, address, pe)
        except Unresolved as exc:
            pairing = {"status": "unresolved", "reason": str(exc)}
    return {"address": address, "owner": owner.name, "owner_offset": address - start,
            "original_bytes": original.hex(), "original_value": value, "pointed_va": pointed,
            "candidates": mapping.symbols.candidates(pointed) if pointed is not None else [],
            "candidate_note": "Address containment and one-past-end are evidence, not proof of symbolic intent.",
            "target": target, "compiled": compiled, "pairing": pairing,
            "comparison": compare_relocations(target, compiled, original)}


def verify_span(obj, mapping, pe, section, offset, size, address, name):
    result = {"name": name, "section": section, "offset": offset, "size": size, "address": address}
    if size <= 0:
        raise Unresolved("verification requires a nonempty span")
    try:
        actual = bytearray(obj.bytes(section, offset, size))
        expected = pe.bytes(address, size)
    except Unresolved as exc:
        return dict(result, status="unresolved", reason=str(exc),
                    relocations=unresolved_relocations(obj, section, str(exc), offset, size))
    unknown = set()
    details = []
    for reloc in obj.section(section).relocations:
        if not reloc.width or reloc.offset + reloc.width <= offset or reloc.offset >= offset + size:
            continue
        pos = reloc.offset - offset
        if pos < 0 or pos + reloc.width > size:
            raise BinaryError(f"{name}: relocation straddles verification boundary")
        report = describe_relocation(obj, mapping, section, reloc, address + pos, pe)
        details.append(report)
        if report["status"] == "resolved":
            actual[pos:pos + reloc.width] = bytes.fromhex(report["resolved_bytes"])
        else:
            unknown.update(range(pos, pos + reloc.width))
    differences = [i for i, (a, b) in enumerate(zip(actual, expected)) if i not in unknown and a != b]
    status = "mismatch" if differences else "unresolved" if unknown else "match"
    return dict(result, status=status, compared_bytes=size - len(unknown), unresolved_bytes=len(unknown),
                mismatch_bytes=len(differences), mismatch_offsets=differences[:32],
                mismatch_offsets_truncated=len(differences) > 32, relocations=details)


def unresolved_relocations(obj, section, reason, offset=0, size=None):
    """Account for operands even when their containing span cannot be mapped."""
    sec = obj.section(section)
    end = offset + size if size is not None else sec.size
    return [{"status": "unresolved", "reason": reason, "type": r.name,
             "section": section, "offset": r.offset, "width": r.width,
             "symbol": obj.symbols[r.symbol_index].name,
             "symbol_index": r.symbol_index, "addend": obj.addend(section, r)}
            for r in sec.relocations if r.width and r.offset < end and r.offset + r.width > offset]


def verify(obj, mapping, pe, pattern=None):
    spans = []
    if pattern:
        selected = [s for s in obj.symbols.values() if s.section > 0 and not mapping.is_section(s)
                    and pattern.lower() in s.name.lower()]
        if not selected:
            raise ValueError(f"no extracted symbols matching {pattern!r}")
        for sym in selected:
            try:
                address = mapping.address(sym)
                rows = [r for r in mapping.symbols.names.get(sym.name, []) if r["address"] == address]
                sizes = {r["size"] for r in rows if r["size"] is not None}
                if len(sizes) != 1 or next(iter(sizes)) == 0:
                    raise Unresolved("symbol has no unique nonzero configured size")
                size = next(iter(sizes))
                spans.append(verify_span(obj, mapping, pe, sym.section, sym.value, size, address, sym.name))
            except Unresolved as exc:
                spans.append({"name": sym.name, "status": "unresolved", "reason": str(exc), "relocations": [],
                              "relocation_coverage": "unknown: symbol address/extent could not be established"})
    else:
        for sec in obj.sections:
            if not sec.size:
                continue
            try:
                address = mapping.section_base(sec.index)
                spans.append(verify_span(obj, mapping, pe, sec.index, 0, sec.size, address, sec.name))
            except Unresolved as exc:
                spans.append({"name": sec.name, "section": sec.index, "status": "unresolved",
                              "reason": str(exc), "relocations": unresolved_relocations(obj, sec.index, str(exc))})
    counts = Counter(s["status"] for s in spans)
    return {"scope": "configured extracted symbol spans" if pattern else "all nonempty extracted sections",
            "byte_count_basis": "symbols.txt size (may include alignment padding)" if pattern else "COFF section size (includes padding)",
            "byte_count_note": "Compared bytes are span bytes, not decoded function/instruction bytes; unresolved operands are excluded.",
            "span_count": len(spans),
            "status": "mismatch" if counts["mismatch"] else "unresolved" if counts["unresolved"] or not spans else "match",
            "span_counts": dict(counts), "compared_bytes": sum(s.get("compared_bytes", 0) for s in spans),
            "relocation_counts": dict(Counter(r["status"] for s in spans for r in s["relocations"])),
            "spans": spans}


def hex_va(value):
    try:
        result = int(value.removeprefix("VA").removeprefix("va"), 16)
    except ValueError as exc:
        raise argparse.ArgumentTypeError("expected a hexadecimal VA") from exc
    if not 0 <= result <= 0xFFFFFFFF:
        raise argparse.ArgumentTypeError("VA must fit in 32 bits")
    return result


def render(report):
    print(f"Unit: {report['unit']}")
    print(f"Original: {report['original']} ({report['provenance']['original']})")
    print(f"Symbols: {report['symbols']}")
    for note in report.get("notes", []):
        print(f"Note: {note}")
    for item in report.get("operands", []):
        print(f"\nVA {item['address']:08X}: {item['original_bytes']} = 0x{item['original_value']:X}")
        print(f"  {item['owner']}+0x{item['owner_offset']:X}")
        for candidate in item["candidates"]:
            print(f"  candidate {candidate['relation']}: {candidate['name']}+0x{candidate['addend']:X} "
                  f"(start {candidate['address']:08X}, size {candidate['size']})")
        for label in ("target", "compiled"):
            r = item[label]
            if r:
                print(f"  {label}: {r['type']} {r['symbol']} {r['addend']:+#x}; "
                      + (f"resolved {r['resolved_bytes']}" if r['status'] == 'resolved' else r['reason']))
        if not item["compiled"]:
            print(f"  compiled: unresolved ({item['pairing'].get('reason')})")
        print("  comparison: " + ", ".join(f"{k}={v}" for k, v in item["comparison"].items()))
        print("  " + item["candidate_note"])
    if "verification" in report:
        check = report["verification"]
        print(f"\nVerify extracted object: {check['status']}; {check['compared_bytes']} compared bytes; "
              f"{check['span_count']} spans {check['span_counts']}; relocations {check['relocation_counts']}")
        print(f"  Scope: {check['scope']}; extent: {check['byte_count_basis']}")
        print("  " + check["byte_count_note"])
        issues = []
        for span in check["spans"]:
            if span["status"] != "match":
                issues.append(f"{span['name']}: {span['status']}; " + span.get("reason", "")
                              + (f" differing offsets {span['mismatch_offsets']}" if span.get("mismatch_bytes") else ""))
            issues.extend(f"{r['symbol']}: {r['reason']}" for r in span["relocations"] if r["status"] == "unresolved")
        for issue in issues[:20]:
            print("  " + issue)
        if len(issues) > 20:
            print(f"  ... {len(issues) - 20} more issues; --json includes all unresolved details")


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""Examples:
  python tools/decomp-relocs.py --source src/Black/Game.cpp --address 0054CE1E
      --original orig/BW1W120/runblack-decrypted.exe
  python tools/decomp-relocs.py --unit Game --verify --symbol ProcessNetworkPackets
      --original orig/BW1W120/runblack-decrypted.exe --json
  (Join each example's two lines into one command.)

Original PE inference uses only the selected version/module's config reference.
If it points outside object_base (e.g. to a preprocessed build), --original is
required. Explicit --symbols and --original bypass inference; select matching
version/module files. Verification sizes include any configured/section padding,
not just function instructions. --address is the operand VA, not its opcode VA.
""")
    selection = parser.add_mutually_exclusive_group(required=True)
    selection.add_argument("-u", "--unit")
    selection.add_argument("--source")
    parser.add_argument("--address", type=hex_va, help="original VA of relocation operand (hex, not instruction start)")
    parser.add_argument("--symbol", help="owning extracted symbol substring; also selects --verify span(s)")
    parser.add_argument("--symbols", type=Path, help="explicit symbols.txt")
    parser.add_argument("--original", type=Path, help="original PE for this version/module; required if config inference is unsafe")
    parser.add_argument("--verify", action="store_true", help="remap every relocation in selected extracted spans and compare PE bytes")
    parser.add_argument("--json", action="store_true", help="JSON report on stdout (including errors)")
    args = parser.parse_args(argv)
    if args.address is None and not args.verify:
        parser.error("provide --address or --verify")
    try:
        unit = resolve_unit(unit=args.unit, source=args.source, root=ROOT)
        symbols_path, original_path, provenance = infer_inputs(unit, args.symbols, args.original)
        obj = Coff.read(ROOT / unit["target_path"])
        symbols, pe = SymbolMap.read(symbols_path), PE.read(original_path)
        mapping = AddressMap(obj, symbols)
        report = {"unit": unit["name"], "target_path": unit["target_path"], "base_path": unit.get("base_path"),
                  "symbols": str(symbols_path), "original": str(original_path), "provenance": provenance,
                  "notes": ["Explicit PE/symbol inputs are caller-selected; version identity is not hash-validated."]}
        if args.address is not None:
            base, diff = None, None
            base_path = unit.get("base_path")
            if base_path and (ROOT / base_path).is_file():
                base = Coff.read(ROOT / base_path)
                diff = run_diff(unit["name"], strict=True, root=ROOT)
                report["pairing_mode"] = "functionRelocDiffs=all"
            report["operands"] = [inspect_address(obj, mapping, base, pe, args.address, args.symbol, diff)]
        if args.verify:
            report["verification"] = verify(obj, mapping, pe, args.symbol)
        if args.json:
            print(json.dumps(report, indent=2))
        else:
            render(report)
        return 1 if args.verify and report["verification"]["status"] != "match" else 0
    except (OSError, ValueError, RuntimeError, KeyError, TypeError) as exc:
        if args.json:
            print(json.dumps({"status": "error", "error": str(exc)}))
        else:
            print(f"error: {exc}", file=sys.stderr)
        return 2


if __name__ == "__main__":
    sys.exit(main())
