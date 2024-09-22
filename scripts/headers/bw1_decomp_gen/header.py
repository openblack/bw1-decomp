import csnake
import re

from dataclasses import dataclass
from inflection import underscore
from pathlib import Path

from structs import Composite
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
    "char16_t": "uchar.h",
    "D3DTLVERTEX": "d3dtypes.h"
}


def strip_pointers_arrays_and_modifiers(c_type):
    c_type = re.sub(r'\*', '', c_type)
    c_type = re.sub(r'\[\d*\]', '', c_type)
    c_type = re.sub(r'[()]', '', c_type)
    c_type = c_type.removeprefix("const ")
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

    def __hash__(self) -> int:
        return hash(self.header_path)

    def __init__(self, path: Path, includes: list[Include], structs: list[Composite], local_header_import_map: dict[str, Path]):
        self.path = path
        self.includes = {i.header_path.as_posix(): i for i in includes}
        self.structs = structs
        types = self.get_direct_dependencies()
        for t in map(strip_pointers_arrays_and_modifiers, types):
            if t in C_STDLIB_HEADER_IMPORT_MAP:
                header = C_STDLIB_HEADER_IMPORT_MAP[t]
                i = self.includes.get(header, self.Include(Path(header), set(), True))
                i.dependencies.add(t)
                self.includes[header] = i
            elif t in local_header_import_map:
                header = local_header_import_map[t]
                if header == self.path:
                    continue
                if header.parts[0] == self.path.parts[0]:
                    header = header.relative_to(self.path.parts[0])
                i = self.includes.get(header, self.Include(header, set(), False))
                i.dependencies.add(t)
                self.includes[header] = i

    def get_types(self) -> set[str]:
        result = set()
        for s in self.structs:
            result.update(s.get_types())
        return result
    
    def get_includes(self) -> list[str]:
        return sorted(list(self.includes.values()))

    def get_direct_dependencies(self) -> set[str]:
        result = self.get_types()
        result = set(filter(lambda x: '*' not in x, result))
        if self.structs:
            result.add("static_assert")
        result = result - {f"struct {s.name}" for s in self.structs} - C_FUNDAMENTAL_TYPES
        return result

    def get_forward_declare_types(self) -> set[str]:
        result = set()
        defined_types_so_far = set()
        for s in self.structs:
            defined_types_so_far.add(f"struct {strip_pointers_arrays_and_modifiers(s.name)}")
            struct_types = {strip_pointers_arrays_and_modifiers(r) for r in s.get_types()}
            struct_types.difference_update(defined_types_so_far)
            result.update(struct_types)

        result.difference_update(self.get_direct_dependencies())
        result.difference_update(C_FUNDAMENTAL_TYPES)
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
            cw.add_line()

        cw.end_if_def()
        cw.add_line()
