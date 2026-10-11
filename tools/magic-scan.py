#!/usr/bin/env python3

"""List numeric literals in added lines: candidates for named constants.

AGENTS.md forbids magic numbers: sizes, counts, lengths, ports, timeouts, ids and flags are
enumerators or Win32 names. This lists the numeric literals in the lines a branch ADDS, so
each can be reviewed before the change goes up. It is advisory (a hit may be fine).

  python tools/magic-scan.py                       # lines added vs the merge-base of origin/main
  python tools/magic-scan.py --since origin/main~5
  python tools/magic-scan.py --all                 # no ignores: every literal on every added line
  python tools/magic-scan.py --check               # exit 1 when anything is listed

Added lines are the merge-base of --since to the working tree (committed, staged and unstaged
edits, plus untracked sources). Ignored unless --all: 0, 1 and 2 (also as 0.0f, 1.0f), comments
(address comments and `/* 0x1c */` member offsets), string and character contents, preprocessor
directives and #define bodies, enumerator values, static_assert statements and the line number
passed next to FILEPATH in debug-new/GRand-style calls. Everything else is reported with the
usual fixes: array sizes -> sizeof/ARRAY_SIZE or an enumerator, flags and ids -> enumerators,
colours -> hex, line numbers -> base 10 (already the convention).
"""

import argparse
from pathlib import Path
import re
import subprocess
import sys

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parent.parent
SUFFIXES = (".c", ".cpp", ".h", ".hpp", ".inl")
HUNK = re.compile(r"^@@ -\S+ \+(\d+)(?:,(\d+))? @@")
# Comments and string/character literals: blanked (newlines kept) before scanning code.
NOISE = re.compile(r'"(?:\\.|[^"\\\n])*"|\'(?:\\.|[^\'\\\n])*\'|/\*.*?\*/|//[^\n]*', re.S)
NUMBER = re.compile(r"(?<![\w.])(0[xX][0-9a-fA-F]+|(?:\d+\.\d*|\.\d+|\d+)(?:[eE][-+]?\d+)?)[fFuUlL]*(?![\w.])")
TRIVIAL = {0, 1, 2}


def git(*argv):
    result = subprocess.run(["git", *argv], cwd=ROOT, capture_output=True, text=True, errors="replace")
    if result.returncode:
        raise RuntimeError("git " + " ".join(argv) + " failed: " + result.stderr.strip())
    return result.stdout


def added_lines(since):
    """{relative path: set of 1-based line numbers added vs the merge-base of `since` and HEAD}."""
    ref = git("rev-parse", "--verify", "--end-of-options", since + "^{commit}").strip()
    base = git("merge-base", ref, "HEAD").strip()
    added = {}
    path = None
    for line in git("diff", "-U0", "--no-color", "--no-renames", base, "--", *("*" + s for s in SUFFIXES)).splitlines():
        if line.startswith("+++ "):
            path = None if line == "+++ /dev/null" else line[6:]
        elif path and (match := HUNK.match(line)):
            start, count = int(match[1]), int(match[2] if match[2] is not None else 1)
            added.setdefault(path, set()).update(range(start, start + count))
    for path in git("ls-files", "--others", "--exclude-standard", "-z").split("\0"):
        if path.endswith(SUFFIXES):
            text = (ROOT / path).read_text(encoding="utf-8", errors="replace")
            added[path] = set(range(1, text.count("\n") + 2))
    return base, added


def blank(match):
    return re.sub(r"[^\n]", " ", match[0])


def spans(text, pattern):
    """(start, end) of each `pattern` match through its balanced closing bracket or semicolon."""
    for match in re.finditer(pattern, text):
        depth, pos = 0, match.end() - 1 if text[match.end() - 1] in "({" else match.end()
        for pos in range(pos, len(text)):
            if text[pos] in "({":
                depth += 1
            elif text[pos] in ")}":
                depth -= 1
                if depth <= 0:
                    break
        yield match.start(), pos + 1


def ignored_ranges(code):
    """Character ranges of `code` where a literal is expected: directives, enums, static_asserts."""
    ranges = [(m.start(), m.end()) for m in re.finditer(r"^[ \t]*#(?:[^\n\\]|\\\n)*", code, re.M)]
    ranges += list(spans(code, r"\benum\b[^;{}]*\{"))
    ranges += list(spans(code, r"\bstatic_assert\s*\("))
    return ranges


def filepath_call(code, pos):
    """Whether `pos` sits directly in an argument list, after a FILEPATH argument (its line number)."""
    depth = 0
    for start in range(pos - 1, -1, -1):
        if code[start] == ")":
            depth += 1
        elif code[start] == "(":
            if depth == 0:
                return "FILEPATH" in code[start:pos]
            depth -= 1
        elif code[start] in ";{}" and depth == 0:
            return False
    return False


def literal_value(token):
    text = token.rstrip("fFuUlL") if not token.lower().startswith("0x") else token.rstrip("uUlL")
    try:
        return int(text, 16) if text.lower().startswith("0x") else float(text)
    except ValueError:
        return None


def scan(text, lines, show_all=False):
    """[(line number, [literals], source line)] for numeric literals on `lines`."""
    original = text.split("\n")
    if show_all:
        code = text
    else:
        code = NOISE.sub(blank, text)
        ranges = ignored_ranges(code)
    starts = [0]
    for line in original:
        starts.append(starts[-1] + len(line) + 1)
    found = {}
    for match in NUMBER.finditer(code):
        line = code.count("\n", 0, match.start()) + 1
        if line not in lines:
            continue
        if not show_all:
            if literal_value(match[0]) in TRIVIAL:
                continue
            if any(start <= match.start() < end for start, end in ranges) or filepath_call(code, match.start()):
                continue
        found.setdefault(line, []).append(match[0])
    return [(line, found[line], original[line - 1].strip()) for line in sorted(found)]


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--since", metavar="REF", default="origin/main",
                        help="base ref; its merge-base with HEAD is diffed against the working tree (default origin/main)")
    parser.add_argument("--all", action="store_true", help="disable the built-in ignores")
    parser.add_argument("--check", action="store_true", help="exit 1 if any literal is listed")
    args = parser.parse_args(argv)
    base, added = added_lines(args.since)
    hits = 0
    for path in sorted(added):
        file = ROOT / path
        if not file.is_file():
            continue
        for line, numbers, source in scan(file.read_text(encoding="utf-8", errors="replace"), added[path], args.all):
            hits += 1
            print(f"{path}:{line}: {numbers} | {source[:120]}")
    print(f"{hits} line(s) with numeric literals in {len(added)} changed file(s) since {base[:12]}", file=sys.stderr)
    return 1 if args.check and hits else 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except (RuntimeError, OSError) as error:
        print(f"ERROR: {error}", file=sys.stderr)
        sys.exit(2)
