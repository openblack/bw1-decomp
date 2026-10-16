#!/usr/bin/env python3

"""List added source lines that often draw maintainer review comments.

Scans the lines a branch adds under src/ and include/ (committed and uncommitted,
compared with the merge base of BASE) for patterns covered by AGENTS.md:

  - bool32_t-style values compared with or returned as 0/1, TRUE/FALSE, ToBeDeleted(int ...)
  - literal bit masks and shifts, sentinel/max values, pi-derived float literals
  - placeholder names (field_0x..., param_N, fn_..., fVar1) and address- or
    offset-suffixed names (GetDistanceInMetres_0074cd50, Material0x58)
  - comments other than address, `// Inliner IL size`, `#endif // VERSION_...`,
    the empty trailing `//` that keeps table entries one per line, and the
    existing section headers (`// Static methods`, `// Forward Declares`, ...)
  - C casts to integer, float and Boolean types

This is a reviewer's aid, not a CI gate: many hits are fine (a 0/1 compare on a
real int, a cast the codegen needs). Read every hit and fix it or know why it
stays.

  python tools/review-lint.py                  # against origin/main
  python tools/review-lint.py HEAD~1           # just the last commit
  python tools/review-lint.py main src/Black/Town.cpp --fail
"""

import argparse
import re
import subprocess
import sys

STYLE = "AGENTS.md Style"
RULES = "AGENTS.md Rules from maintainer review"
NAMING = "AGENTS.md Naming and values"
COMMENTS = "AGENTS.md Comments & annotations"

CAST_TYPES = r"(?:const\s+)?(?:unsigned\s+|signed\s+)?(?:u?int(?:8|16|32|64)_t|int|long|short|char|float|double|bool32_t)"

# (pattern, message); applied to the code part of the line (before any //).
CODE_CHECKS = [
    (r"(?:==|!=)\s*[01]\b(?!\.)", f"compare with 0/1: a bool32_t compares with true/false, an enum with its enumerators ({STYLE})"),
    (r"\breturn\s+[01]\s*;", f"return 0/1: a bool32_t function returns true/false; otherwise name the value ({STYLE})"),
    (r"\b(?:TRUE|FALSE)\b", f"TRUE/FALSE: use true/false ({STYLE})"),
    (r"\bToBeDeleted\s*\(\s*int\b", f"ToBeDeleted takes bool32_t delete_now ({RULES}: Name parameters)"),
    (r"(?<!&)&=?\s*(?:0x[0-9a-fA-F]+|\d+)\b(?!\.)", f"literal bit mask: use a named flag ({STYLE}: No magic numbers)"),
    (r"(?:<<|>>)=?\s*\d+", f"shift by a literal: usually a bit field or flag that needs a name ({STYLE}: No magic numbers)"),
    (
        r"\b(?:0x7fffffff|0xffffffff|0x80000000|2147483647|4294967295|0xff|0xffff)\b",
        f"sentinel/max literal: name it and check the signedness callers expect ({STYLE}: Declare each value as what it holds)",
    ),
    (
        r"\b(?:0\.78539|1\.57079|3\.14159|6\.28318|0\.01745|57\.2957|0\.31830|0\.15915)\d*",
        f"pi-derived literal: write it from the existing pi constants ({STYLE}: No magic numbers)",
    ),
    (r"\bfield_0x|\bparam_\d|\bfn_[0-9A-Fa-f]{6,}|\b(?:lbl|data)_[0-9A-Fa-f]{6,}", f"placeholder name used by new code: rename it ({RULES})"),
    (r"\b(?:FUN|DAT|PTR|LAB|sub|unk|loc|off|byte|word|dword|flt)_[0-9a-fA-F]{4,}\b", f"disassembler placeholder name ({RULES})"),
    (r"\b[a-z]Var\d+\b|\b(?:local|in|stack)_[0-9a-fA-F]+\b", f"Hex-Rays/Ghidra local placeholder ({RULES}: Name parameters)"),
    (r"\b[A-Za-z]\w*_(?:0x)?[0-9a-fA-F]{6,8}\b", f"address-suffixed name: find the real or a clear name ({RULES})"),
    (r"\b(?!field_)[A-Za-z_]\w*0x[0-9a-fA-F]{2,}\b", f"offset in a name: name the member by its role ({RULES})"),
    (rf"\(\s*{CAST_TYPES}\s*\)\s*(?!const\b)[\w(]", f"C cast: often hides a wrong declaration; keep only if codegen needs it ({STYLE})"),
]

ALLOWED_LINE_COMMENT = re.compile(
    r"//(?:\s*$"
    r"|\s*BW1[WM]\d{3}\b"
    r"|\s*Inliner IL size:"
    r"|\s*VERSION_"
    r"|\s*clang-format (?:on|off)"
    r"|\s*(?:Forward Declares|Constructors?|Destructors?|Static methods|Static data|Static members"
    r"|Override methods|Virtual methods|Non-virtual methods|Methods|Members)\s*$)"
)
ALLOWED_BLOCK_COMMENT = re.compile(r"/\*\s*(?:For\b|0x[0-9a-fA-F]+\s*\*/|BW1_DECOMP_\w+\s*\*/)")


def added_lines(base, paths):
    merge_base = subprocess.run(
        ["git", "merge-base", base, "HEAD"], capture_output=True, text=True, check=True
    ).stdout.strip()
    diff = subprocess.run(
        ["git", "diff", "-U0", "--no-color", merge_base, "--"] + paths, capture_output=True, text=True, check=True
    ).stdout
    path, line_no = None, 0
    for line in diff.splitlines():
        if line.startswith("+++ "):
            path = line[6:] if line.startswith("+++ b/") else None
        elif line.startswith("@@"):
            line_no = int(re.search(r"\+(\d+)", line).group(1))
        elif line.startswith("+") and path:
            yield path, line_no, line[1:]
            line_no += 1


def check(code):
    messages = []
    body, _, _ = code.partition("//")
    for pattern, message in CODE_CHECKS:
        if re.search(pattern, body):
            messages.append(message)
    comment = re.search(r"//.*", code)
    if comment and not ALLOWED_LINE_COMMENT.match(comment.group(0)):
        messages.append(f"comment: only address, IL-size, #endif-version and table `//` comments ({COMMENTS})")
    block = re.search(r"/\*.*", body)
    if block and not ALLOWED_BLOCK_COMMENT.match(block.group(0)):
        messages.append(f"block comment: only `/* For ... */` include notes and `/* 0x.. */` offsets ({COMMENTS})")
    return messages


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("base", nargs="?", default="origin/main", help="ref to compare with (default origin/main)")
    parser.add_argument("paths", nargs="*", default=["src", "include"], help="paths to scan (default src include)")
    parser.add_argument("--fail", action="store_true", help="exit with status 1 when there are hits")
    args = parser.parse_args()

    hits = 0
    for path, line_no, code in added_lines(args.base, args.paths):
        for message in check(code):
            print(f"{path}:{line_no}: {message}\n    {code.strip()}")
            hits += 1
    print(f"{hits} hit(s)")
    return 1 if hits and args.fail else 0


if __name__ == "__main__":
    sys.exit(main())
