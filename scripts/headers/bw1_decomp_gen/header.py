import csnake
import re
import os

from typing import Union
from enum import Enum
from dataclasses import dataclass
from inflection import underscore
from pathlib import Path

from structs import Composite
from functions import FuncPtr
from utils import partition, LH_COLLECTION_TEMPLATES


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


C_STDLIB_HEADER_IMPORT_MAP = {
    "static_assert": "assert.h",
    "bool": "stdbool.h",
    "size_t": "stddef.h",
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
    "IDirectDraw7": "ddraw.h",
    "IDirectDrawSurface7": "ddraw.h",
    "IDirectDrawClipper": "ddraw.h",
    "IDirect3DDevice7": "d3d.h",
    "D3DMATRIX": "d3dtypes.h",
    "D3DTLVERTEX": "d3dtypes.h",
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
    return c_type.strip()


@dataclass
class Header:
    @dataclass(order=True)
    class Include:
        class Level(Enum):
            LOCAL = 0
            LINKED = 2
            SYSTEM = 3
        header_path: Path
        dependencies: set[str]
        level: Level

        @property
        def level_quotes(self) -> tuple[str, str]:
            if self.level == self.Level.LOCAL:
                return '"', '"'
            else:
                return '<', '>'

        @property
        def formatted_path(self):
            return self.level_quotes[0] + self.header_path.as_posix() + self.level_quotes[1]

    path: Path
    includes: dict[str, Include]
    structs: list[Composite]
    linked_lists_pointered: set[str]
    linked_lists: set[str]
    lists_heads: set[str]
    UTILITY_HEADER_IMPORT_MAP: dict[str, Path]

    @classmethod
    def set_utility_header_import_map(cls, value: dict[str, Path]):
        cls.UTILITY_HEADER_IMPORT_MAP = value

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
                i = self.includes.get(header, self.Include(Path(header), set(), self.Include.Level.SYSTEM))
                i.dependencies.add(t)
                self.includes[header] = i
            elif t in self.UTILITY_HEADER_IMPORT_MAP:
                header = self.UTILITY_HEADER_IMPORT_MAP[t]
                i = self.includes.get(header, self.Include(Path(header), set(), self.Include.Level.LINKED))
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
                i = self.includes.get(header, self.Include(header, set(), self.Include.Level.LOCAL))
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

    def get_includes(self) -> list[Include]:
        return sorted(list(self.includes.values()))

    @classmethod
    def is_forward_declarable_pointer(cls, typename: Union[str, csnake.FuncPtr]):
        if isinstance(typename, csnake.FuncPtr):
            return True
        if '*' in typename:
            # array pointer
            if '(*' in typename and typename.endswith("]"):
                return False
            else:
                return strip_pointers_arrays_and_modifiers(typename) not in (C_STDLIB_HEADER_IMPORT_MAP.keys() | cls.UTILITY_HEADER_IMPORT_MAP.keys())
        return False

    def get_direct_dependencies(self) -> set[str]:
        result = self.get_types()
        pointers = set(filter(self.is_forward_declarable_pointer, result))
        result.difference_update(pointers)
        lh_lists = {i for i in result if any(i.startswith(prefix) for prefix in LH_COLLECTION_TEMPLATES)}
        lh_lists_underlying_type = {"struct " + i.removeprefix("struct ").removeprefix("LHListHead__").removeprefix("LHLinkedList__p_").removeprefix("LHLinkedList__").removeprefix("GJVector__").removeprefix("LHDynamicStack__") for i in lh_lists}
        result.difference_update(lh_lists)
        result.update(lh_lists_underlying_type)
        if any(hasattr(i, "size") and i.size is not None for i in self.structs):
            result.add("static_assert")
        result = result - {f"struct {s.name}" for s in self.structs} - C_FUNDAMENTAL_TYPES
        if self.linked_lists_pointered:
            result.add("DECLARE_P_LH_LINKED_LIST")
        if self.linked_lists:
            result.add("DECLARE_LH_LINKED_LIST")
        if self.lists_heads:
            result.add("DECLARE_LH_LIST_HEAD")
        result = set(map(strip_pointers_arrays_and_modifiers, result))
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
        result = {i for i in result if not any(i.startswith(f"struct {p}__") for p in LH_COLLECTION_TEMPLATES)}
        return result

    def to_code_includes(self, cw: csnake.CodeWriter):
        if not self.includes:
            return
        include_categories = partition([
            lambda x: x.level == Header.Include.Level.SYSTEM,
            lambda x: x.level == Header.Include.Level.LINKED,
            lambda x: x.level == Header.Include.Level.LOCAL,
        ], self.get_includes())
        for c in include_categories:
            c = list(c)
            if not c:
                continue
            for i in c:
                cw.include(i.formatted_path, ("For " + ", ".join(sorted(i.dependencies)) if i.dependencies else None))
            cw.add_line()

    def to_code_forward_declares(self, cw: csnake.CodeWriter):
        fwd = self.get_forward_declare_types()
        if not fwd:
            return
        cw.add_line("// Forward Declares")
        cw.add_line()
        for f in sorted(fwd):
            cw.add_line(f"{f};")
        cw.add_line()

    def to_code_struct_decl(self, cw: csnake.CodeWriter):
        if not self.structs:
            return
        for s in self.structs:
            s.to_code(cw)
            if s.decorated_name in self.linked_lists_pointered | self.linked_lists | self.lists_heads:
                if s.decorated_name in self.linked_lists:
                    cw.add_line(f"DECLARE_LH_LINKED_LIST({s.name});")
                if s.decorated_name in self.linked_lists_pointered:
                    cw.add_line(f"DECLARE_P_LH_LINKED_LIST({s.name});")
                if s.decorated_name in self.lists_heads:
                    cw.add_line(f"DECLARE_LH_LIST_HEAD({s.name});")
                cw.add_line()

    def to_code_inner(self, cw: csnake.CodeWriter):
        self.to_code_includes(cw)
        self.to_code_forward_declares(cw)
        self.to_code_struct_decl(cw)

    def to_code(self, cw: csnake.CodeWriter):
        cw.start_if_def(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)), invert=True)
        cw.add_define(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)))
        cw.add_line()

        self.to_code_inner(cw)

        cw.end_if_def()
        cw.add_line()


class GlobalsHeader(Header):
    def __init__(self, path: Path, includes: list[Header.Include], structs: list[Composite], function_proto_map: dict[str, FuncPtr]):
        super().__init__(path, includes, structs)
        self.globals_struct = next(filter(lambda s: s.name == "globals_t", self.structs))
        self.globals_struct.print_offset_at_each = 1 # TODO: also print range based on member size: e.g. struct GGlobal* global;  /* 00cd3b20-00d01020 */
        # For each type, deref it
        for m in self.globals_struct.members:
            m.data_type = function_proto_map.get(m.data_type.rstrip("*"), m.data_type)
            if isinstance(m.data_type, FuncPtr):
                m.data_type.indirection_level += 1
                m.data_type = m.data_type.to_csnake()
            elif "(*" in m.data_type and m.data_type.endswith("]"):
                m.data_type = m.data_type.replace("(*", "(**")
            elif "[" in m.data_type:
                m.data_type = m.data_type.replace("[", " (*)[", 1)
            else:
                m.data_type += "*"

    def to_code_inner(self, cw: csnake.CodeWriter):
        super().to_code_inner(cw)

        cw.add_line(f"volatile static struct {self.globals_struct.name} globals = {{")
        for m in sorted(self.globals_struct.members):
            data_type = m.data_type
            if isinstance(data_type, csnake.FuncPtr):
                data_type = data_type.get_declaration("")
            cw.add_line(f"    .{m.name} = ({data_type})0x{m.offset:08x},")
        cw.add_line("};")
        cw.add_line()
