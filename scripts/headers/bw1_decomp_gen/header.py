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
from utils import partition, extract_template_type, LH_COLLECTION_TEMPLATES, CONTAINER_DECLARATION_MACROS


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
    templated_containers: dict[set[str]]
    HEADER_GUARD_TEMPLATE: dict[str, Path]
    UTILITY_HEADER_IMPORT_MAP: dict[str, Path]

    @classmethod
    def set_header_guard_format(cls, value: str):
        cls.HEADER_GUARD_TEMPLATE = value

    @classmethod
    def set_utility_header_import_map(cls, value: dict[str, Path]):
        cls.UTILITY_HEADER_IMPORT_MAP = value

    def __hash__(self) -> int:
        return hash(self.header_path)

    def __init__(self, path: Path, includes: list[Include], structs: list[Composite]):
        self.path = path
        self.includes = {i.header_path.as_posix(): i for i in includes}
        self.structs = structs
        self.templated_containers = dict()

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
                level = self.Include.Level.LOCAL
                if header.parent == self.path.parent:
                    header = Path(os.path.relpath(header, start=self.path.parent))
                else:
                    header = Path(header.name)
                    level = self.Include.Level.LINKED
                i = self.includes.get(header, self.Include(header, set(), level))
                i.dependencies.add(t)
                self.includes[header] = i

    def add_template_container_struct_defines(self, name: str, struct_map: set[str]):
        if name not in self.templated_containers:
            self.templated_containers[name] = set()
        self.templated_containers[name].update(struct_map.intersection(self.get_types()))

    def get_template_container_struct_defines(self, name: str) -> set[str]:
        return self.templated_containers[name]

    def get_template_container_struct_defines_flat(self) -> set[str]:
        result = set()
        for v in self.templated_containers.values():
            result |= v
        return result

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
        lh_lists = {i for i in result if any(i.startswith("struct " + prefix) for prefix in LH_COLLECTION_TEMPLATES)}
        lh_lists_underlying_type = {"struct " + extract_template_type(i) for i in lh_lists}
        result.difference_update(lh_lists)
        result.update(lh_lists_underlying_type)
        if any(hasattr(i, "size") and i.size is not None for i in self.structs):
            result.add("static_assert")
        type_name_set = {s.decorated_name for s in self.structs}
        result = result - type_name_set - C_FUNDAMENTAL_TYPES
        for k, v in self.templated_containers.items():
            if type_name_set.intersection(v):
                result.add(CONTAINER_DECLARATION_MACROS[k])
        result = set(map(strip_pointers_arrays_and_modifiers, result))
        return result

    def get_forward_declare_types(self) -> set[str]:
        result = set()
        defined_types_so_far = set()
        for s in self.structs:
            if type(s) is FuncPtr:
                defined_types_so_far.add(s.name)

        for s in self.structs:
            defined_types_so_far.add(strip_pointers_arrays_and_modifiers(s.decorated_name))
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
        all_template_container_structs = self.get_template_container_struct_defines_flat()
        for i, s in enumerate(self.structs):
            s.to_code(cw)
            if s.decorated_name in all_template_container_structs:
                for k, v in self.templated_containers.items():
                    if s.decorated_name in v:
                        cw.add_line(f"{CONTAINER_DECLARATION_MACROS[k]}({s.name});")
                cw.add_line()
            if i == len(self.structs) - 1 and isinstance(s, FuncPtr):
                cw.add_line()

    def to_code_inner(self, cw: csnake.CodeWriter):
        self.to_code_includes(cw)
        self.to_code_forward_declares(cw)
        self.to_code_struct_decl(cw)

    def to_code(self, cw: csnake.CodeWriter):
        cw.start_if_def(self.HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)), invert=True)
        cw.add_define(self.HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)))
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
