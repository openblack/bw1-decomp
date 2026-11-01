#!/usr/bin/env python3
"""Split guard-only objects out of multi-guard splits.

MSVC6 emits one std::ctype<wchar_t> guard object at the end of every TU that
includes the locale headers.  When dtk's current split still contains several
original TUs, the extra objects that consist of *only* that guard are trivial
to separate: a skeleton source file (the precompiled header is forced in, so
the file can be empty) compiles to the same guard.  Splitting them lets the
initializer relabeller pair and rename their placeholder labels.

The script reads the current objdiff.json, splits.txt and symbols.txt, finds
guard-only parts in multi-guard splits, and rewrites splits.txt and
configure.py.  It also creates the empty skeleton .cpp files.  After running
it, re-run configure.py and ninja, then relabel-initializers.py --apply.
"""

import argparse
import bisect
import json
import re
import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent))
from decomp_binary import Coff  # noqa: E402
import importlib.util
_relabel_spec = importlib.util.spec_from_file_location("relabel_initializers", str(Path(__file__).resolve().parent / "relabel-initializers.py"))
relabel_initializers = importlib.util.module_from_spec(_relabel_spec)
_relabel_spec.loader.exec_module(relabel_initializers)
Initializers = relabel_initializers.Initializers
parts = relabel_initializers.parts

ROOT = Path(__file__).resolve().parent.parent

SYMBOL_RE = re.compile(r"^(\S+) = \.([\w$]+):0x([0-9A-Fa-f]+);(.*)$")


def read_symbols(path):
    """name -> list of addresses, sorted."""
    addrs = {}
    for line in open(path):
        m = SYMBOL_RE.match(line)
        if not m:
            continue
        name, addr = m.group(1), int(m.group(3), 16)
        addrs.setdefault(name, []).append(addr)
    for v in addrs.values():
        v.sort()
    return addrs


def read_splits(path):
    """unit name -> [(section, start, end, align or None)]."""
    out = {}
    current = None
    sec_re = re.compile(r"\s+([\w.$]+)\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)")
    align_re = re.compile(r"\s+([\w.$]+)\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+) align:([0-9]+)")
    for raw in open(path):
        line = raw.rstrip("\n")
        if line and not line[0].isspace() and line.endswith(":"):
            current = line[:-1]
            out[current] = []
            continue
        if current is None:
            continue
        m = align_re.match(line) or sec_re.match(line)
        if m:
            sec, start, end = m.group(1), int(m.group(2), 16), int(m.group(3), 16)
            align = int(m.group(4)) if len(m.groups()) >= 4 and m.group(4) else None
            out[current].append((sec, start, end, align))
    return out


def format_block(unit, secs):
    lines = [f"{unit}:\n"]
    for sec, start, end, align in secs:
        extra = f" align:{align}" if align is not None else ""
        lines.append(f"\t{sec:11s} start:0x{start:08X} end:0x{end:08X}{extra}\n")
    return "".join(lines)


def write_splits(path, modified, source_text):
    """Rewrite splits.txt, replacing only the units in modified and keeping all others intact."""
    out = []
    current = None
    skip_ranges = False
    unit_re = re.compile(r"^([A-Za-z0-9_/.-]+(?:\.cpp|\.c|\.obj)):$")
    for raw in source_text:
        line = raw.rstrip("\n")
        m = unit_re.match(line)
        if m:
            current = m.group(1)
            if current in modified:
                out.append(format_block(current, modified[current]))
                del modified[current]
                skip_ranges = True
            else:
                out.append(line + "\n")
                skip_ranges = False
            continue
        if skip_ranges and current is not None and (line.startswith("\t") or line.startswith("    ")):
            # Range lines are replaced by the block we emitted above; skip them.
            continue
        out.append(line + "\n")
    # Any remaining newly created units at the end would be a bug, but handle anyway.
    for unit, secs in modified.items():
        out.append("\n")
        out.append(format_block(unit, secs))
    Path(path).write_text("".join(out))


def existing_unit_names(config_text):
    """Return the set of unit .cpp names already in configure.py."""
    names = set()
    for line in config_text:
        m = re.search(r'GameCodeObject\([^,]*,\s*"([^"]+\.cpp)"', line)
        if m:
            names.add(m.group(1))
    return names


def next_unit_name(existing, base):
    """Pick a new unit name derived from base that sorts before the next existing unit.

    We use base + 'Data.cpp' for the first extra, then Data2, Data3, ...
    """
    prefix = base[:-4]  # strip .cpp
    candidates = [f"{prefix}Data.cpp"] + [f"{prefix}Data{i}.cpp" for i in range(2, 20)]
    used = set(existing)
    for cand in candidates:
        if cand not in used:
            return cand
    raise RuntimeError(f"ran out of candidate names for {base}")


def guard_only_part(target, entries):
    if len(entries) != 1:
        return False
    stub = entries[0][2]
    # A true guard-only object is the std::ctype<wchar_t> guard registration:
    # its top-level stub is named crt_xc_fn_ctypeGuard_* (or already _$E* after
    # a previous relabel pass) and its chain is just the stub + atexit thunk.
    return "ctypeGuard" in target.name(stub) and target.guard(stub)


def split_guard_only(config_dir, plan, dry_run=False):
    symbols = read_symbols(config_dir / "symbols.txt")
    splits = read_splits(config_dir / "splits.txt")
    splits_source = list(open(config_dir / "splits.txt"))
    configure_lines = list(open(ROOT / "configure.py"))
    used_names = existing_unit_names(configure_lines)

    new_units = []  # (new_unit_name, src_path, .text_range, .CRT$XCU_range)

    modified = {}  # unit -> [(section, start, end, align)] to rewrite in splits.txt

    for name, unit in plan.items():
        split_name = unit["metadata"]["source_path"].removeprefix("src/")
        if split_name not in splits:
            continue
        base_secs = list(splits[split_name])  # copy as list of tuples
        ranges = {sec: (start, end) for sec, start, end, align in base_secs}

        # Find guard-only parts and their absolute addresses.
        target = Initializers(ROOT / unit["target_path"])
        cut = parts(target)
        if not cut:
            continue

        # Determine which part belongs to the existing source file.
        compiled = Initializers(ROOT / unit["base_path"])
        c_guards = sum(compiled.guard(e[2]) for e in compiled.entries)
        own_idx = None
        if len(cut) > max(c_guards, 1):
            own_entries = relabel_initializers.own_part(target, compiled)
            if own_entries is not None:
                for i, (ent, _) in enumerate(cut):
                    if ent is own_entries or ent == own_entries:
                        own_idx = i
                        break
        if own_idx is None:
            own_idx = 0

        xcu_start = ranges.get(".CRT$XCU", (None, None))[0]
        text_start, text_end = ranges[".text"]

        # Collect true ctype-guard-only parts with their chain section range.
        guard_parts = []
        for idx, (entries, end) in enumerate(cut):
            if len(entries) != 1:
                continue
            stub = entries[0][2]
            stub_name = target.name(stub)
            if "ctypeGuard" not in stub_name:
                continue
            chain = target.chain(stub)
            secs = [target.functions[s][0].index for s in chain if s in target.functions]
            if not secs:
                continue
            addrs = symbols.get(stub_name)
            if not addrs:
                print(f"warning: no address for {stub_name}", file=sys.stderr)
                continue
            guard_addr = addrs[0]
            guard_parts.append((idx, min(secs), max(secs), guard_addr, entries[0][0]))

        if not guard_parts or not target.functions:
            continue

        global_max_sec = max(target.functions[s][0].index for s in target.functions)
        guard_parts.sort(key=lambda x: x[3])  # sort by guard address ascending

        # The trailing block is the contiguous suffix of guard-only parts at the
        # very end of the target object (their COMDAT sections are the last ones).
        trailing = []
        needed = global_max_sec
        for idx, min_sec, max_sec, guard_addr, slot_off in reversed(guard_parts):
            if max_sec == needed:
                trailing.append((idx, guard_addr, slot_off, min_sec, max_sec))
                needed = min_sec - 1
            else:
                break
        if not trailing:
            continue

        # If the existing source already matches one of these trailing guards,
        # keep that one as the original unit and split only the others.
        own_trailing = {t[0] for t in trailing}
        if own_idx in own_trailing:
            own_trailing.remove(own_idx)
            if not own_trailing:
                continue
            trailing = [t for t in trailing if t[0] != own_idx]

        # Process from the lowest-address trailing guard upwards, assigning names
        # Data, Data2, ... so alphabetical/link order matches binary order.
        trailing.sort(key=lambda x: x[1])

        # Compute the .text end for each trailing guard: the next guard address,
        # or for the last one the original end of the split.
        for i, (idx, guard_addr, slot_off, min_sec, max_sec) in enumerate(trailing):
            t1 = trailing[i + 1][1] if i + 1 < len(trailing) else text_end
            t0 = guard_addr
            x0 = xcu_start + slot_off
            x1 = x0 + 4
            new_name = next_unit_name(used_names, split_name)
            already = new_name in used_names
            used_names.add(new_name)
            src_path = ROOT / "src" / new_name
            if not already:
                new_units.append((new_name, src_path, (t0, t1), (x0, x1)))
            modified[new_name] = [
                (".text", t0, t1, None),
                (".CRT$XCU", x0, x1, 4),
            ]

        # Shrink the current unit to end at the lowest trailing guard start.
        if trailing:
            first_guard = trailing[0][1]
            first_slot = xcu_start + trailing[0][2]
            new_base = []
            for sec, start, end, align in base_secs:
                if sec == ".text":
                    new_base.append((sec, text_start, first_guard, align))
                elif sec == ".CRT$XCU":
                    new_base.append((sec, xcu_start, first_slot, align))
                else:
                    new_base.append((sec, start, end, align))
            modified[split_name] = new_base

    if dry_run:
        for name, src, (t0, t1), (x0, x1) in new_units:
            print(f"would create {name}: .text {t0:08X}-{t1:08X}, .CRT$XCU {x0:08X}-{x1:08X}")
        return

    # Write splits.txt.
    write_splits(config_dir / "splits.txt", modified, splits_source)

    # Update configure.py by inserting new GameCodeObject lines after their base unit.
    inserts = {}
    for name, src, _, _ in new_units:
        # Strip the Data/DataN suffix we added to recover the original base name.
        base = re.sub(r'Data[0-9]*\.cpp$', '.cpp', name)
        inserts.setdefault(base, []).append(name)

    entry_re = re.compile(r'GameCodeObject\([^,]+,\s*"([^"]+\.cpp)"')
    new_lines = []
    for line in configure_lines:
        new_lines.append(line)
        m = entry_re.search(line)
        if m:
            base = m.group(1)
            if base in inserts:
                for n in sorted(inserts[base]):
                    new_lines.append(f'            GameCodeObject(NonMatching, "{n}"),\n')
                del inserts[base]
    # Append any leftovers (should not happen).
    for base, names in inserts.items():
        for n in sorted(names):
            new_lines.append(f'            GameCodeObject(NonMatching, "{n}"),\n')
    Path(ROOT / "configure.py").write_text("".join(new_lines))

    # Create skeleton source files.
    for name, src, _, _ in new_units:
        if not src.exists():
            src.write_text("")

    for name, _, _, _ in new_units:
        print(name)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--version", default="BW1W120", help="version to process")
    parser.add_argument("--dry-run", action="store_true", help="print the plan without editing")
    parser.add_argument("--unit", help="process a single unit (exact or basename)")
    args = parser.parse_args()

    config_dir = ROOT / "config" / args.version
    project = json.load(open(ROOT / "objdiff.json"))
    units = [u for u in project["units"]
             if u.get("target_path") and u.get("base_path") and u.get("metadata", {}).get("source_path")]
    if args.unit:
        # resolve basename or exact
        matches = [u for u in units if args.unit in u["name"]]
        if len(matches) != 1:
            print(f"unit {args.unit} matches {len(matches)} units", file=sys.stderr)
            return 1
        units = matches

    # Only consider units in the requested version.
    plan = {}
    for u in units:
        tp = u["target_path"]
        parts_ = Path(tp).parts
        ver = parts_[1]
        if ver != args.version:
            continue
        plan[u["name"]] = u

    split_guard_only(config_dir, plan, dry_run=args.dry_run)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
