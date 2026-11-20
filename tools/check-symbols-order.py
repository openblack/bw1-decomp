#!/usr/bin/env python3
"""Check that every config/**/symbols.txt is in dtk's canonical order.

dtk sorts the symbols it writes (tools/symbols_txt.py: externs by name, then section, address,
lines at one address in file order) and rewrites a file it finds in any other order on the next
split. A file committed out of order makes that rewrite land in whichever PR builds the version
next, where it conflicts with every PR touching the lines it moved.

    python tools/check-symbols-order.py          # exit 1 and list the files out of order
    python tools/check-symbols-order.py --fix    # sort them (moves lines only)
"""

import argparse
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent))
import symbols_txt  # noqa: E402

ROOT = Path(__file__).resolve().parents[1]


def sort_lines(text):
    """`text` with its symbol lines stably sorted, nothing else changed (duplicates kept)."""
    symbols = symbols_txt.parse(text)
    ranks = symbols_txt.section_ranks(symbols)
    return "".join(s.text + "\n" for s in sorted(symbols, key=lambda s: symbols_txt.sort_key(s, ranks)))


def first_out_of_order(text):
    symbols = symbols_txt.parse(text)
    ranks = symbols_txt.section_ranks(symbols)
    for prev, cur in zip(symbols, symbols[1:]):
        if symbols_txt.sort_key(cur, ranks) < symbols_txt.sort_key(prev, ranks):
            return prev.text, cur.text
    return None


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("files", nargs="*", type=Path, help="default: every config/**/symbols.txt")
    p.add_argument("--fix", action="store_true", help="sort the files in place")
    args = p.parse_args()

    files = args.files or sorted(ROOT.glob("config/**/symbols.txt"))
    bad = 0
    for path in files:
        text = path.read_text(encoding="utf-8", errors="surrogateescape")
        try:
            pair = first_out_of_order(text)
        except symbols_txt.ParseError as e:
            print(f"{path}: {e}")
            bad += 1
            continue
        if text and not text.endswith("\n"):
            pair = pair or ("(end of file)", "missing final newline")
        if pair is None:
            continue
        bad += 1
        if args.fix:
            path.write_text(sort_lines(text), encoding="utf-8", errors="surrogateescape")
            print(f"{path}: sorted")
        else:
            print(f"{path}: out of dtk's order:\n    {pair[0]}\n  before\n    {pair[1]}")
    if bad and not args.fix:
        print(f"{bad} file(s) out of order: run python tools/check-symbols-order.py --fix")
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
