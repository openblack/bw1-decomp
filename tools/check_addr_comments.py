#!/usr/bin/env python3
"""Check the per-symbol address comments in src/ and include/.

Every comment that starts with a version tag must be exactly

    // BW1W120 <windows> [BW1M119 <mac> [(<module>)]]

on a line of its own, where
  <windows>  is 8 lowercase hex digits or one of: inlined purecall null
  <mac>      is 8 lowercase hex digits or one of: inlined null purecall
  <module>   is a directory under config/BW1M119/

and both addresses must be symbols: the Windows one in config/BW1W120/symbols.txt or
one of its DLL modules, the Mac one in config/BW1M119/symbols.txt or the tagged
module's symbols.txt.

Notes belong on their own comment line; prose may mention an address mid-sentence.

Usage:
    python3 tools/check_addr_comments.py            # whole tree
    python3 tools/check_addr_comments.py FILE...    # just these files
"""
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

WORDS = ("inlined", "purecall", "null")

TAGGED = re.compile(r"//\s*BW1(?:W\d{3}|M\d{3})\b")
SYM = re.compile(r"^\S+\s*=\s*\.\w+:0x([0-9A-Fa-f]+);")


def modules(version):
    base = os.path.join(ROOT, "config", version)
    return sorted(d for d in os.listdir(base) if os.path.isfile(os.path.join(base, d, "symbols.txt")))


def addresses(path):
    out = set()
    with open(path, errors="ignore") as f:
        for line in f:
            m = SYM.match(line)
            if m:
                out.add(int(m.group(1), 16))
    return out


def canonical_re(mac_modules):
    word = lambda ws: r"(?:[0-9a-f]{8}|" + "|".join(map(re.escape, ws)) + r")"
    mods = "|".join(map(re.escape, mac_modules))
    return re.compile(
        r"^\s*// BW1W120 (?P<win>" + word(WORDS) + r")"
        r"(?: BW1M119 (?P<mac>" + word(WORDS) + r")(?: \((?P<mod>" + mods + r")\))?)?$"
    )


def source_files():
    for top in ("src", "include"):
        for dirpath, _dirs, files in os.walk(os.path.join(ROOT, top)):
            for name in files:
                if name.endswith((".h", ".hpp", ".cpp", ".c", ".inl")):
                    yield os.path.join(dirpath, name)


def main(argv):
    win_addrs = addresses(os.path.join(ROOT, "config", "BW1W120", "symbols.txt"))
    for mod in modules("BW1W120"):
        win_addrs |= addresses(os.path.join(ROOT, "config", "BW1W120", mod, "symbols.txt"))
    mac_mods = modules("BW1M119")
    mac_addrs = {None: addresses(os.path.join(ROOT, "config", "BW1M119", "symbols.txt"))}
    for mod in mac_mods:
        mac_addrs[mod] = addresses(os.path.join(ROOT, "config", "BW1M119", mod, "symbols.txt"))
    canon = canonical_re(mac_mods)

    errors = 0
    files = [os.path.abspath(a) for a in argv] or sorted(source_files())
    for path in files:
        rel = os.path.relpath(path, ROOT)
        with open(path, errors="ignore") as f:
            lines = f.read().split("\n")
        for no, line in enumerate(lines, 1):
            # Only a comment that begins with a tag is an annotation; a tag
            # mentioned mid-sentence is prose.
            tag = TAGGED.search(line)
            if not tag:
                continue
            m = canon.match(line)
            if not m:
                why = "trailing a line of code" if line[: tag.start()].strip() else "not in the canonical form"
                print("%s:%d: error: %s: %s" % (rel, no, why, line.strip()))
                errors += 1
                continue
            win, mac, mod = m.group("win"), m.group("mac"), m.group("mod")
            if win not in WORDS and int(win, 16) not in win_addrs:
                print("%s:%d: error: BW1W120 %s is not a symbol in config/BW1W120" % (rel, no, win))
                errors += 1
            if mac and mac not in WORDS and int(mac, 16) not in mac_addrs[mod]:
                where = "config/BW1M119/%s" % mod if mod else "config/BW1M119/symbols.txt"
                print("%s:%d: error: BW1M119 %s is not a symbol in %s" % (rel, no, mac, where))
                errors += 1

    if errors:
        print("\n%d address comment problem(s). Format: // BW1W120 <w> [BW1M119 <m> [(<module>)]]" % errors)
        return 1
    print("address comments OK (%d files)" % len(files))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
