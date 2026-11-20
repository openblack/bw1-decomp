#!/usr/bin/env python3
"""Keep the append-only tables PRs add rows to in address order, so concurrent additions land in
different places instead of colliding at the end.

- config/<version>/padding.txt (tools/post_link_patch.py's padding rows): one row per line,
  sorted by address, one row per address. git merges these files with merge=union; the patch
  script sorts on load, and this check catches a row both sides changed (two rows for one
  address after the union).
- config/<version>/config.yml `block_relocations:` and `add_relocations:`: groups of entries,
  each with the comment lines above it, sorted by their first entry's `source:` address. A group
  is a run of comment lines and the entries after it; blank lines and uncommented entries stay
  with the group above them. dtk reads the lists as sets (one relocation per source), so the
  order does not change the split.

    python tools/check-tables.py          # exit 1 and list the tables out of order
    python tools/check-tables.py --fix    # sort them
"""

import argparse
from pathlib import Path
import re
import sys

ROOT = Path(__file__).resolve().parents[1]
LISTS = ("block_relocations", "add_relocations")
TOP_KEY = re.compile(r"^[A-Za-z_][\w]*:")
ENTRY = re.compile(r"^  - source: (0x[0-9A-Fa-f]+)\s*$")
CONTINUATION = re.compile(r"^    \S")


class TableError(ValueError):
    pass


# --- padding.txt ------------------------------------------------------------------------------


def padding_rows(text):
    """(header lines, [(address, line)]) of a padding table."""
    header, rows = [], []
    for number, line in enumerate(text.splitlines(), 1):
        fields = line.split("#", 1)[0].split()
        if not fields:
            if rows and line.strip():
                raise TableError(f"line {number}: comment line after the first row (put notes on the row)")
            if not rows:
                header.append(line)
            continue
        try:
            rows.append((int(fields[0], 16), line))
        except ValueError:
            raise TableError(f"line {number}: no address: {line!r}") from None
    return header, rows


def check_padding(text):
    """None if sorted with one row per address, else (problem, fixed text or None)."""
    header, rows = padding_rows(text)
    problems = []
    for (a, la), (b, lb) in zip(rows, rows[1:]):
        if b < a:
            problems.append(f"{lb.split('#')[0].strip()} after {la.split('#')[0].strip()}")
            break
    by_address = {}
    for a, line in rows:
        by_address.setdefault(a, set()).add(tuple(line.split("#", 1)[0].split()[1:]))
    clash = [a for a, kinds in by_address.items() if len(kinds) > 1]
    if clash:
        return f"two different rows for {', '.join(f'{a:#010x}' for a in clash)} (resolve by hand)", None
    seen = set()
    unique = []
    for a, line in sorted(rows, key=lambda r: r[0]):
        if a not in seen:
            seen.add(a)
            unique.append(line)
    if len(unique) != len(rows):
        problems.append("duplicate rows")
    if not problems:
        return None
    return "; ".join(problems), "".join(line + "\n" for line in header + unique)


# --- config.yml relocation lists --------------------------------------------------------------


def relocation_sections(lines):
    """[(key, start, end)] line ranges (body only) of the relocation lists."""
    out = []
    i = 0
    while i < len(lines):
        m = TOP_KEY.match(lines[i])
        if m and lines[i].split(":")[0] in LISTS and lines[i].rstrip().endswith(":"):
            key = lines[i].split(":")[0]
            j = i + 1
            while j < len(lines) and not TOP_KEY.match(lines[j]):
                j += 1
            # Blank lines and comments right before the next key belong to that key.
            end = j
            while end > i + 1 and (not lines[end - 1].strip() or lines[end - 1].startswith("#")):
                end -= 1
            out.append((key, i + 1, end))
            i = j
        else:
            i += 1
    return out


def relocation_groups(body, where):
    """Split a list body into groups: (first source address, lines)."""
    groups = []
    current = None
    last = None  # "comment", "entry", "blank"
    for n, line in enumerate(body):
        if line.startswith("#"):
            if current is None or last != "comment":
                current = {"lines": [], "address": None}
                groups.append(current)
            current["lines"].append(line)
            last = "comment"
        elif ENTRY.match(line):
            if current is None:
                current = {"lines": [], "address": None}
                groups.append(current)
            if current["address"] is None:
                current["address"] = int(ENTRY.match(line).group(1), 16)
            current["lines"].append(line)
            last = "entry"
        elif CONTINUATION.match(line) and last == "entry":
            current["lines"].append(line)
        elif not line.strip() and current is not None:
            current["lines"].append(line)
            last = "blank"
        else:
            raise TableError(f"{where}: unexpected line in a relocation list: {line!r}")
    # A comment block standing alone (blank line after it) goes with the group below it.
    merged = []
    pending = []
    for g in groups:
        if g["address"] is None:
            pending += g["lines"]
            continue
        merged.append((g["address"], pending + g["lines"]))
        pending = []
    if pending:
        raise TableError(f"{where}: comment with no entry after it: {pending[0]!r}")
    return merged


def check_config(text):
    """None if every relocation list is sorted, else (problem, fixed text)."""
    lines = text.split("\n")
    problems = []
    out = list(lines)
    for key, start, end in reversed(relocation_sections(lines)):
        groups = relocation_groups(lines[start:end], key)
        ordered = sorted(groups, key=lambda g: g[0])
        if [g[0] for g in groups] != [g[0] for g in ordered]:
            first = next(b for a, b in zip(groups, ordered) if a[0] != b[0])
            problems.append(f"{key}: group for {first[0]:#010x} out of order")
            body = [line for _, glines in ordered for line in glines]
            # A group that ended with a blank line keeps it; make sure the list still ends the way it did.
            out[start:end] = body
    if not problems:
        return None
    return "; ".join(reversed(problems)), "\n".join(out)


def entries(text):
    """Every (list, entry lines) pair, for checking that a fix only reorders."""
    lines = text.split("\n")
    out = []
    for key, start, end in relocation_sections(lines):
        for _, glines in relocation_groups(lines[start:end], key):
            out.append((key, tuple(line for line in glines if line.strip())))
    return sorted(out)


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--fix", action="store_true", help="sort the tables in place")
    args = p.parse_args()

    bad = 0
    for path in sorted(ROOT.glob("config/*/padding.txt")) + sorted(ROOT.glob("config/*/config.yml")):
        text = path.read_text()
        try:
            result = check_padding(text) if path.name == "padding.txt" else check_config(text)
        except TableError as e:
            print(f"{path.relative_to(ROOT)}: {e}")
            bad += 1
            continue
        if result is None:
            continue
        problem, fixed = result
        bad += 1
        if args.fix and fixed is not None:
            if path.name == "config.yml" and entries(fixed) != entries(text):
                raise SystemExit(f"{path}: sorting would change the entries; not written")
            path.write_text(fixed)
            print(f"{path.relative_to(ROOT)}: sorted ({problem})")
        else:
            print(f"{path.relative_to(ROOT)}: {problem}")
    if bad and not args.fix:
        print(f"{bad} table(s) out of order: run python tools/check-tables.py --fix")
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
