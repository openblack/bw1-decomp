#!/usr/bin/env python3
"""Reject constructs that fake a byte match instead of reconstructing source.

A matching decompilation must reproduce the original from *C++ source*, not by
embedding the original machine code. This is a ratchet: the few files that already
contain inline assembly (reproducing the original's own inline codegen) are allowed;
new ones, and unambiguous byte-forging constructs, are refused.

  - inline assembly   (`__asm`, `_asm`, `asm { ... }`) - refused unless the file is allowed
  - naked functions   (`__declspec(naked)`)            - always refused
  - raw byte emission (`_emit`)                        - always refused
  - embedded bytes    (>= EMBED_MIN consecutive `\\xNN` in a literal) - always refused

Comments and string contents are masked for the keyword scans, and vendored trees
(GameSpy, zlib) are skipped.

Usage:
    python3 tools/check-no-cheats.py            # scan src/
    python3 tools/check-no-cheats.py FILE...    # just these files
"""

import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SKIP_PREFIXES = ("src/GameSpy/src/GameSpy", "src/zlib")
SOURCE_SUFFIXES = (".c", ".cc", ".cpp", ".cxx", ".h", ".hpp", ".hxx")

# Files that legitimately reproduce the original's inline assembly (pre-existing).
ALLOW_INLINE_ASM = {
    "src/Black/CPUCheck.cpp",
    "src/Black/Object.cpp",
    "src/Black/DrawingObject.cpp",
}

EMBED_MIN = 16  # consecutive \xNN bytes; short escaped strings are legitimate data

ASM = re.compile(r"\b(__asm|_asm)\b|\basm\s*\{")
NAKED = re.compile(r"\b__declspec\s*\(\s*naked\s*\)")
EMIT = re.compile(r"\b_emit\b")
HEXRUN = re.compile(r"(?:\\x[0-9a-fA-F]{2}){%d,}" % EMBED_MIN)


def mask(text):
    """Return (masked_code, literal_contents) - see module docstring."""
    out = list(text)
    literals = []
    i = 0
    n = len(text)
    while i < n:
        c = text[i]
        if c == "/" and i + 1 < n and text[i + 1] == "/":
            j = text.find("\n", i)
            j = n if j < 0 else j
            for k in range(i, j):
                out[k] = " "
            i = j
        elif c == "/" and i + 1 < n and text[i + 1] == "*":
            j = text.find("*/", i + 2)
            j = n if j < 0 else j + 2
            for k in range(i, j):
                if out[k] != "\n":
                    out[k] = " "
            i = j
        elif c in "\"'":
            quote = c
            j = i + 1
            buf = []
            while j < n and text[j] != quote:
                if text[j] == "\\" and j + 1 < n:
                    buf.append(text[j:j + 2])
                    j += 2
                    continue
                buf.append(text[j])
                j += 1
            literals.append("".join(buf))
            for k in range(i + 1, min(j, n)):
                out[k] = " "
            i = j + 1
        else:
            i += 1
    return "".join(out), "\n".join(literals)


def scan_text(text):
    """Return [(kind, line_number)] for forbidden constructs in `text`."""
    masked, literals = mask(text)
    hits = []
    for match in ASM.finditer(masked):
        hits.append(("inline assembly", masked.count("\n", 0, match.start()) + 1))
    for pattern, kind in ((NAKED, "naked function"), (EMIT, "_emit byte")):
        for match in pattern.finditer(masked):
            hits.append((kind, masked.count("\n", 0, match.start()) + 1))
    if HEXRUN.search(literals):
        hits.append(("embedded bytes (long \\xNN run)", 1))
    return hits


def iter_source_files(paths):
    if paths:
        yield from paths
        return
    for dirpath, dirnames, filenames in os.walk(os.path.join(ROOT, "src")):
        rel = os.path.relpath(dirpath, ROOT).replace(os.sep, "/")
        if any(rel.startswith(prefix) for prefix in SKIP_PREFIXES):
            dirnames[:] = []
            continue
        for name in sorted(filenames):
            if name.endswith(SOURCE_SUFFIXES):
                yield os.path.join(dirpath, name)


def main(argv=None):
    argv = list(sys.argv[1:] if argv is None else argv)
    failures = 0
    for path in iter_source_files(argv):
        try:
            with open(path, encoding="utf-8", errors="replace") as stream:
                text = stream.read()
        except OSError as error:
            print(f"{path}: {error}")
            continue
        rel = os.path.relpath(path, ROOT).replace(os.sep, "/")
        for kind, line in scan_text(text):
            if kind == "inline assembly" and rel in ALLOW_INLINE_ASM:
                continue  # pre-existing, reproducing the original's own codegen
            print(f"{rel}:{line}: forbidden construct: {kind}")
            failures += 1
    if failures:
        print(f"\n{failures} forbidden construct(s). Matching must come from source, "
              f"not from embedding the original bytes.")
        return 1
    print("no cheating constructs found")
    return 0


if __name__ == "__main__":
    sys.exit(main())
