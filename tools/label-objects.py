#!/usr/bin/env python3
"""Rename a compiled object's compiler-numbered initializer labels after the target's symbols.

The build (configure.py `label_objects`, on for every compiled unit) renames the labels cl gave
our object (_$E<n>, _$S<n>) to whatever the target split calls the same initializer, right
after cl. symbols.txt names them after their address instead of their number: _$E_<address>
for an initializer stub, body or atexit thunk, _$S_<address> for its .CRT$XCU slot or for the
guard byte an atexit thunk keeps in .bss (tools/relabel-initializers.py gives them). A header
change then cannot renumber them, and objdiff pairs the two by name as before. The labels are
local symbols, so the link (and every hash) does not see the names.

Pairing is relabel-initializers.py's: .CRT$XCU slots in order, by code shape, a label no slot
reaches (a function-local static's atexit thunk) through the function both objects define that
refers to it, and the thunks and guards a paired label refers to, in order. A function-local
static's guard (_?$S<n>@<scope>) pairs with the target's guard of the same function and block.
A label that does not pair keeps its number.

MSVC 7.0 (LHLog's 1.20 and 1.30 units) gives the jump table it emits inside a function's code a
static symbol ($L<n>) where MSVC 6 writes a label; objdiff would end the function there, so the
step makes those symbols labels too. Neither changes the link.

    python tools/label-objects.py <target .o> <compiled .o>     # rename in place
    python tools/label-objects.py <target .o> <compiled .o> -n  # only print the renames
"""

import argparse
import collections
import importlib.util
from pathlib import Path
import re
import struct
import sys

TOOLS = Path(__file__).resolve().parent
sys.path.insert(0, str(TOOLS))
_spec = importlib.util.spec_from_file_location("relabel_initializers", TOOLS / "relabel-initializers.py")
relabel = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(relabel)

SYMBOL_SIZE = 18
STORAGE_STATIC = 3
STORAGE_LABEL = 6
SECTION_HEADER_SIZE = 40
CNT_CODE = 0x20
NUMBERED_LABEL = re.compile(r"^\$L\d+$")
# A function-local static's guard: cl numbers it in the same sequence, and the rest of its name
# says which function and block it belongs to.
SCOPED_GUARD = re.compile(r"^_\?\$S\d+(@.+)$")


def guard_renames(target, compiled):
    """{compiled guard: target guard} for the function-local static guards (_?$S<n>@<scope>) of
    one function and block that each object defines once."""
    def guards(obj):
        found = collections.defaultdict(list)
        for sym in obj.symbols.values():
            match = SCOPED_GUARD.match(sym.name)
            if match and sym.section > 0:
                found[match.group(1)].append(sym.name)
        return found
    mine, theirs = guards(compiled), guards(target)
    return {mine[scope][0]: theirs[scope][0] for scope in mine.keys() & theirs.keys()
            if len(mine[scope]) == 1 and len(theirs[scope]) == 1}


def renames(target_path, compiled_path):
    """{compiled label: target name} for the initializers and the function-local static guards
    the two objects pair."""
    target, compiled = relabel.Initializers(target_path), relabel.Initializers(compiled_path)
    found, slots = relabel.renames(target, compiled)
    out = {}
    for index, label in found.items():
        name = target.name(index)
        if name != label:
            out[label] = name
    slot_names = {offset: target.name(slot) for offset, slot, _ in target.entries if slot is not None}
    for offset, label in slots.items():
        name = slot_names.get(offset)
        if name is not None and name != label:
            out[label] = name
    for label, name in guard_renames(target, compiled).items():
        if name != label:
            out[label] = name
    # Never give two symbols one name, nor take a name the object already uses.
    names = {compiled.name(i) for i in compiled.symbols}
    taken = [n for n in out.values() if list(out.values()).count(n) > 1 or n in names]
    return {old: new for old, new in out.items() if new not in taken}


def symbol_name(data, at, strtab):
    raw = data[at:at + 8]
    if raw[:4] == b"\0\0\0\0":
        (offset,) = struct.unpack_from("<I", raw, 4)
        end = data.index(b"\0", strtab + offset)
        return data[strtab + offset:end].decode("latin-1")
    return raw.rstrip(b"\0").decode("latin-1")


def rename_symbols(data, mapping):
    """`data` (a COFF object) with its static symbols renamed per `mapping`: the new names are
    appended to the string table, which cl puts at the end of the file."""
    _, _, _, symtab, count, _, _ = struct.unpack_from("<HHIIIHH", data, 0)
    strtab = symtab + count * SYMBOL_SIZE
    (strsize,) = struct.unpack_from("<I", data, strtab)
    if strtab + strsize != len(data):
        raise SystemExit("string table is not at the end of the object")
    out = bytearray(data)
    extra = bytearray()
    i = 0
    renamed = 0
    while i < count:
        at = symtab + i * SYMBOL_SIZE
        name = symbol_name(data, at, strtab)
        storage, aux = data[at + 16], data[at + 17]
        if storage == STORAGE_STATIC and name in mapping:
            new = mapping[name].encode("latin-1")
            if len(new) <= 8:
                out[at:at + 8] = new.ljust(8, b"\0")
            else:
                out[at:at + 8] = b"\0\0\0\0" + struct.pack("<I", strsize + len(extra))
                extra += new + b"\0"
            renamed += 1
        i += 1 + aux
    struct.pack_into("<I", out, strtab, strsize + len(extra))
    return bytes(out + extra), renamed


def demote_code_labels(data):
    """`data` with the static $L<n> symbols in its code sections (MSVC 7.0's jump tables) made
    labels, as MSVC 6 writes them, and their names."""
    _, sections, _, symtab, count, optional, _ = struct.unpack_from("<HHIIIHH", data, 0)
    first = 20 + optional
    code = {index + 1 for index in range(sections)
            if struct.unpack_from("<I", data, first + index * SECTION_HEADER_SIZE + 36)[0] & CNT_CODE}
    strtab = symtab + count * SYMBOL_SIZE
    out = bytearray(data)
    demoted = []
    i = 0
    while i < count:
        at = symtab + i * SYMBOL_SIZE
        (section,) = struct.unpack_from("<h", data, at + 12)
        storage, aux = data[at + 16], data[at + 17]
        if storage == STORAGE_STATIC and not aux and section in code:
            name = symbol_name(data, at, strtab)
            if NUMBERED_LABEL.match(name):
                out[at + 16] = STORAGE_LABEL
                demoted.append(name)
        i += 1 + aux
    return bytes(out), demoted


def main():
    p = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("target", type=Path, help="the target's split object")
    p.add_argument("compiled", type=Path, help="our compiled object (rewritten in place)")
    p.add_argument("-n", "--dry-run", action="store_true")
    args = p.parse_args()
    original = args.compiled.read_bytes()
    data, demoted = demote_code_labels(original)
    # Nothing split yet: only the labels change.
    mapping = renames(args.target, args.compiled) if args.target.is_file() else {}
    if args.dry_run:
        for name in demoted:
            print(f"{name}: static -> label")
        for old, new in sorted(mapping.items()):
            print(f"{old} -> {new}")
        return 0
    if mapping:
        data, renamed = rename_symbols(data, mapping)
    if data != original:
        args.compiled.write_bytes(data)
    return 0


if __name__ == "__main__":
    sys.exit(main())
