#!/usr/bin/env python3
"""Guard the check that decides whether a match is real.

Lesson from large agent-driven decompilation: the first thing an agent does under
pressure is weaken its own grading. Here that means editing the expected hashes or
the comparison tools so a non-matching function passes. This refuses such changes:
verification-critical files are a hard failure, and files that define the target
(therefore change what "a match" means) are reported for review.

The base branch is trusted; we compare the working tree against it.

Usage:
    python3 tools/check-verifier-integrity.py                 # vs origin/main
    python3 tools/check-verifier-integrity.py --base HEAD~1
    python3 tools/check-verifier-integrity.py FILE...         # explicit changed paths
"""

import argparse
import os
import subprocess
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# Files that decide whether a reconstruction is accepted - never change silently.
PROTECTED = (
    "config/BW1W100/build.sha1",
    "config/BW1W110/build.sha1",
    "config/BW1W120/build.sha1",
    "tools/decomp_common.py",
    "tools/decomp-diff.py",
    "tools/decomp_binary.py",
    "tools/decomp-relocs.py",
    ".github/workflows/build.yml",
    ".github/workflows/lint.yml",
)

# Files that define the target (a change alters what "matching" means) - review.
REVIEW_SUFFIXES = ("symbols.txt", "splits.txt")


def classify(changed):
    """Split changed paths into (protected, review-required)."""
    protected = [p for p in changed if p in PROTECTED]
    review = [p for p in changed if p not in PROTECTED and p.endswith(REVIEW_SUFFIXES)]
    return protected, review


def changed_files(base):
    result = subprocess.run(
        ["git", "diff", "--name-only", base + "...HEAD"],
        cwd=ROOT, capture_output=True, text=True)
    if result.returncode:
        raise SystemExit("git diff failed: " + result.stderr.strip())
    return [line for line in result.stdout.splitlines() if line]


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__,
                                     formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--base", default="origin/main", help="base ref to diff against")
    parser.add_argument("files", nargs="*", help="explicit changed paths (skips git diff)")
    args = parser.parse_args(argv)

    changed = args.files or changed_files(args.base)
    protected, review = classify(changed)

    if review:
        print("NOTICE: files that define the target changed (review carefully):")
        for path in review:
            print("  " + path)
    if protected:
        print("\nERROR: verification-critical files changed:")
        for path in protected:
            print("  " + path)
        print("\nThese decide whether a match is real. Changing them can fake a match; "
              "a maintainer must make such a change deliberately.")
        return 1
    print("verifier integrity OK")
    return 0


if __name__ == "__main__":
    sys.exit(main())
