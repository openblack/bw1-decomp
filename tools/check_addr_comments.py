#!/usr/bin/env python3
"""Check the per-symbol address comments in src/ and include/.

Every comment that starts with a version tag must be exactly one of

    // BW1W120 <windows> [BW1M119 <mac> [(<module>)]]
    // BW1WCI <creature isle> BW1MCI119 <mac creature isle> [(<module>)]

on a line of its own, the second for a function only Creature Isle has, where
  <windows>, <creature isle>          is 8 lowercase hex digits or one of: inlined purecall null
  <mac>, <mac creature isle>          is 8 lowercase hex digits or one of: inlined purecall null
  <module>                            is a directory under the Mac version's config/

and every address must be a symbol of its version: the Windows ones in
config/BW1W120/ or config/BW1WCI/ (symbols.txt or one of the DLL modules), the Mac
ones in config/BW1M119/ or config/BW1MCI119/ (symbols.txt or the tagged module's).

Notes belong on their own comment line; prose may mention an address mid-sentence.

Usage:
    python3 tools/check_addr_comments.py            # whole tree
    python3 tools/check_addr_comments.py FILE...    # just these files
"""
import os
import re
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VENDORED_GAMESPY = os.path.join(ROOT, "src", "GameSpy")

WORDS = ("inlined", "purecall", "null")

# (Windows version, Mac version, whether the Mac field is required)
FORMS = (("BW1W120", "BW1M119", False), ("BW1WCI", "BW1MCI119", True))

TAGGED = re.compile(r"//\s*BW1(?:W\d{3}|WCI|M\d{3}|MCI\d{3})\b")
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


def form_re(win, mac, mac_required):
    word = r"(?:[0-9a-f]{8}|" + "|".join(map(re.escape, WORDS)) + r")"
    mods = "|".join(map(re.escape, modules(mac)))
    mac_field = r" " + mac + r" (?P<mac>" + word + r")(?: \((?P<mod>" + mods + r")\))?"
    return re.compile(r"^\s*// " + win + r" (?P<win>" + word + r")" + (mac_field if mac_required else "(?:" + mac_field + ")?") + r"$")


def source_files():
    for top in ("src", "include"):
        for dirpath, _dirs, files in os.walk(os.path.join(ROOT, top)):
            if dirpath == VENDORED_GAMESPY:
                _dirs[:] = []
                continue
            for name in files:
                if name.endswith((".h", ".hpp", ".cpp", ".c", ".inl")):
                    yield os.path.join(dirpath, name)


def windows_addresses(version):
    out = addresses(os.path.join(ROOT, "config", version, "symbols.txt"))
    for mod in modules(version):
        out |= addresses(os.path.join(ROOT, "config", version, mod, "symbols.txt"))
    return out


def mac_addresses(version):
    out = {None: addresses(os.path.join(ROOT, "config", version, "symbols.txt"))}
    for mod in modules(version):
        out[mod] = addresses(os.path.join(ROOT, "config", version, mod, "symbols.txt"))
    return out


def main(argv):
    forms = [(form_re(win, mac, req), win, mac, windows_addresses(win), mac_addresses(mac)) for win, mac, req in FORMS]

    errors = 0
    files = [os.path.abspath(a) for a in argv] or sorted(source_files())
    files = [path for path in files if not path.startswith(VENDORED_GAMESPY + os.sep)]
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
            found = next(((m, form) for form in forms for m in [form[0].match(line)] if m), None)
            if not found:
                why = "trailing a line of code" if line[: tag.start()].strip() else "not in the canonical form"
                print("%s:%d: error: %s: %s" % (rel, no, why, line.strip()))
                errors += 1
                continue
            m, (_, win_tag, mac_tag, win_addrs, mac_addrs) = found
            win, mac, mod = m.group("win"), m.group("mac"), m.group("mod")
            if win not in WORDS and int(win, 16) not in win_addrs:
                print("%s:%d: error: %s %s is not a symbol in config/%s" % (rel, no, win_tag, win, win_tag))
                errors += 1
            if mac and mac not in WORDS and int(mac, 16) not in mac_addrs[mod]:
                where = "config/%s/%s" % (mac_tag, mod) if mod else "config/%s/symbols.txt" % mac_tag
                print("%s:%d: error: %s %s is not a symbol in %s" % (rel, no, mac_tag, mac, where))
                errors += 1

    if errors:
        print(
            "\n%d address comment problem(s). Format: // BW1W120 <w> [BW1M119 <m> [(<module>)]]"
            " or // BW1WCI <c> BW1MCI119 <m> [(<module>)]" % errors
        )
        return 1
    print("address comments OK (%d files)" % len(files))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv[1:]))
