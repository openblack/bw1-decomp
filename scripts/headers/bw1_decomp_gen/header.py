import csnake
import re
import os

from dataclasses import dataclass
from inflection import underscore
from pathlib import Path

from structs import Composite
from functions import FuncPtr
from utils import partition


HEADER_GUARD_TEMPLATE = "BW1_DECOMP_%s_INCLUDED_H"


C_FUNDAMENTAL_TYPES = {
    'char',
    'unsigned char',
    'signed char',
    'short',
    'unsigned short',
    'int',
    'unsigned int',
    'long',
    'unsigned long',
    'long long',
    'unsigned long long',
    'float',
    'double',
    'long double',
    '_Bool',
    'void',
}


C_STDLIB_TYPEDEFS = {
    "bool",
    "int8_t",
    "int16_t",
    "int32_t",
    "int64_t",
    "uint8_t",
    "uint16_t",
    "uint32_t",
    "uint64_t",
    "uintptr_t",
    "char16_t",
}


C_STDLIB_HEADER_IMPORT_MAP = {
    "static_assert": "assert.h",
    "bool": "stdbool.h",
    "int8_t": "stdint.h",
    "int16_t": "stdint.h",
    "int32_t": "stdint.h",
    "int64_t": "stdint.h",
    "uint8_t": "stdint.h",
    "uint16_t": "stdint.h",
    "uint32_t": "stdint.h",
    "uint64_t": "stdint.h",
    "uintptr_t": "stdint.h",
    "char16_t": "uchar.h",
    "D3DTLVERTEX": "d3dtypes.h"
}

UTILITY_HEADER_IMPORT_MAP = {
    "bool32_t": Path("reversing_utils.h"),
    "struct vec2u16": Path("reversing_utils.h"),
    "DECLARE_LH_LINKED_LIST": Path("lionhead/lhlib/LHLinkedList.h"),
    "DECLARE_P_LH_LINKED_LIST": Path("lionhead/lhlib/LHLinkedList.h"),
    "DECLARE_LH_LIST_HEAD": Path("lionhead/lhlib/LHListHead.h"),
}


def strip_arrays_and_modifiers(c_type):
    c_type = re.sub(r'\[\d*\]', '', c_type)
    c_type = re.sub(r'[()]', '', c_type)
    c_type = c_type.removeprefix("const ")
    return c_type


def strip_pointers_arrays_and_modifiers(c_type):
    if isinstance(c_type, csnake.FuncPtr):
        return c_type
    c_type = re.sub(r'\*', '', c_type)
    c_type = strip_arrays_and_modifiers(c_type)
    return c_type


@dataclass
class Header:
    @dataclass(order=True)
    class Include:
        header_path: Path
        dependencies: set[str]
        system: bool

    path: Path
    includes: dict[str, Include]
    structs: list[Composite]
    linked_lists_pointered: set[str]
    linked_lists: set[str]
    lists_heads: set[str]

    def __hash__(self) -> int:
        return hash(self.header_path)

    def __init__(self, path: Path, includes: list[Include], structs: list[Composite]):
        self.path = path
        self.includes = {i.header_path.as_posix(): i for i in includes}
        self.structs = structs
        self.linked_lists_pointered = set()
        self.linked_lists = set()
        self.lists_heads = set()

    def build_include_list(self, local_header_import_map: dict[str, Path]):
        types = self.get_direct_dependencies()
        for t in map(strip_pointers_arrays_and_modifiers, types):
            if t in C_STDLIB_HEADER_IMPORT_MAP:
                header = C_STDLIB_HEADER_IMPORT_MAP[t]
                i = self.includes.get(header, self.Include(Path(header), set(), True))
                i.dependencies.add(t)
                self.includes[header] = i
            elif t in UTILITY_HEADER_IMPORT_MAP:
                header = UTILITY_HEADER_IMPORT_MAP[t]
                i = self.includes.get(header, self.Include(Path(header), set(), False))
                i.dependencies.add(t)
                self.includes[header] = i
            elif t in local_header_import_map:
                header = local_header_import_map[t]
                if header == self.path:
                    continue
                if header.parts[0] == self.path.parts[0]:
                    header = Path(os.path.relpath(header, start=self.path.parent))
                elif header.parts[0].lower() == 'libs':
                    header = header.relative_to("libs")
                i = self.includes.get(header, self.Include(header, set(), False))
                i.dependencies.add(t)
                self.includes[header] = i

    def add_linked_list_pointered_defines(self, struct_map: set[str]) -> set[str]:
        self.linked_lists_pointered.update(struct_map.intersection(self.get_types()))
        return self.linked_lists_pointered

    def add_linked_list_defines(self, struct_map: set[str]) -> set[str]:
        self.linked_lists.update(struct_map.intersection(self.get_types()))
        return self.linked_lists

    def add_list_head_defines(self, struct_map: set[str]) -> set[str]:
        self.lists_heads.update(struct_map.intersection(self.get_types()))
        return self.lists_heads

    def get_types(self) -> set[str]:
        result = set()
        for s in self.structs:
            result.update(s.get_types())
        return result

    def get_includes(self) -> list[str]:
        return sorted(list(self.includes.values()))

    def get_direct_dependencies(self) -> set[str]:
        result = self.get_types()
        pointers = set(filter(lambda x: isinstance(x, csnake.FuncPtr) or ('*' in x and strip_pointers_arrays_and_modifiers(x) not in C_STDLIB_TYPEDEFS), result))
        result.difference_update(pointers)
        lh_lists = {i for i in result if i.startswith("struct LHListHead__") or i.startswith("struct LHLinkedList__")}
        lh_lists_underlying_type = {"struct " + i.removeprefix("struct ").removeprefix("LHListHead__").removeprefix("LHLinkedList__p_").removeprefix("LHLinkedList__") for i in lh_lists}
        result.difference_update(lh_lists)
        result.update(lh_lists_underlying_type)
        if self.structs:
            result.add("static_assert")
        result = result - {f"struct {s.name}" for s in self.structs} - C_FUNDAMENTAL_TYPES
        if self.linked_lists_pointered:
            result.add("DECLARE_P_LH_LINKED_LIST")
        if self.linked_lists:
            result.add("DECLARE_LH_LINKED_LIST")
        if self.lists_heads:
            result.add("DECLARE_LH_LIST_HEAD")
        result = set(map(strip_arrays_and_modifiers, result))
        return result

    def get_forward_declare_types(self) -> set[str]:
        result = set()
        defined_types_so_far = set()
        for s in self.structs:
            if type(s) is FuncPtr:
                defined_types_so_far.add(s.name)

        for s in self.structs:
            defined_types_so_far.add(f"struct {strip_pointers_arrays_and_modifiers(s.name)}")
            struct_types = {strip_pointers_arrays_and_modifiers(r) for r in s.get_types()}
            struct_types = {r for r in struct_types if type(r) is str and (r.startswith("struct ") or r.startswith("union ") or r.startswith("enum "))}
            struct_types.difference_update(defined_types_so_far)
            result.update(struct_types)

        result.difference_update(self.get_direct_dependencies())
        result.difference_update(C_FUNDAMENTAL_TYPES)
        result = {i for i in result if not i.startswith("struct LHListHead__") and not i.startswith("struct LHLinkedList__")}
        return result

    def to_code(self, cw: csnake.CodeWriter):
        fwd = self.get_forward_declare_types()
        cw.start_if_def(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)), invert=True)
        cw.add_define(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)))
        cw.add_line()

        if self.includes:
            include_categories = partition([lambda x: x.system], self.get_includes())
            for c in include_categories:
                c = list(c)
                if not c:
                    continue
                for i in c:
                    cw.include(('<' if i.system else '"') + i.header_path.as_posix() + ('>' if i.system else '"'),
                               ("For " + ", ".join(sorted(i.dependencies)) if i.dependencies else None))
                cw.add_line()

        if fwd:
            cw.add_line("// Forward Declares")
            for f in sorted(fwd):
                cw.add_line(f"{f};")
            cw.add_line()

        for s in self.structs:
            s.to_code(cw)
            if self.linked_lists_pointered or self.linked_lists or self.lists_heads:
                cw.add_line()
                if s.decorated_name in self.linked_lists:
                    cw.add_line(f"DECLARE_LH_LINKED_LIST({s.name});")
                    cw.add_line()
                if s.decorated_name in self.linked_lists_pointered:
                    cw.add_line(f"DECLARE_P_LH_LINKED_LIST({s.name});")
                    cw.add_line()
                if s.decorated_name in self.lists_heads:
                    cw.add_line(f"DECLARE_LH_LIST_HEAD({s.name});")
                    cw.add_line()

        cw.end_if_def()
        cw.add_line()
