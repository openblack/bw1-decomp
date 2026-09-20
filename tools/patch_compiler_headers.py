#!/usr/bin/env python3
"""
Patches MSVC 6.0 SP5 headers for clang compatibility.

utility re-declares istreambuf_iterator and ostreambuf_iterator with
default template arguments already provided by iosfwd, which clang
rejects as an error.
"""

import argparse
import re
import sys
from pathlib import Path

PATCHES = {
    "utility": [
        # Remove duplicate default template arguments that iosfwd already provides.
        # MSVC 6.0 allows redefinition; clang does not.
        (
            "template<class _E, class _Tr = char_traits<_E> >\n\tclass istreambuf_iterator",
            "template<class _E, class _Tr>\n\tclass istreambuf_iterator",
        ),
        (
            "template<class _E, class _Tr = char_traits<_E> >\n\tclass ostreambuf_iterator",
            "template<class _E, class _Tr>\n\tclass ostreambuf_iterator",
        ),
    ],
}


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("include_dir", type=Path, help="MSVC include directory")
    parser.add_argument(
        "-o",
        "--output",
        type=Path,
        default=None,
        help="Stamp file to write on success",
    )
    args = parser.parse_args()

    errors = []
    for filename, replacements in PATCHES.items():
        path = args.include_dir / filename
        if not path.is_file():
            errors.append(f"{path}: not found")
            continue
        text = path.read_text(encoding="utf-8", errors="replace")
        for old, new in replacements:
            if old not in text:
                if new in text:  # already patched
                    continue
                errors.append(f"{path}: pattern not found:\n  {old!r}")
                continue
            text = text.replace(old, new, 1)
        path.write_text(text, encoding="utf-8")

    if errors:
        for e in errors:
            print(f"error: {e}", file=sys.stderr)
        return 1

    if args.output:
        args.output.write_text("", encoding="utf-8")
    return 0


if __name__ == "__main__":
    sys.exit(main())
