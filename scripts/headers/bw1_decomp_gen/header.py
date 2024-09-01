import csnake
import re

from dataclasses import dataclass
from inflection import underscore
from pathlib import Path

from struct import Struct
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
    'void'
}


@dataclass
class Header:
    @dataclass(order=True)
    class Include:
        header_path: Path  # including "" or <>
        dependencies: set[str]  # TODO: This may be a Union of Struct, Typedef instead
        system: bool

    path: Path
    includes: list[Include]
    structs: list[Struct]  # TODO: This may be a Union of Struct, Typedef instead

    def get_types(self) -> set[str]:
        result = set()
        for s in self.structs:
            result.update(s.get_types())
        return result

    def get_direct_dependency_types(self) -> set[str]:
        result = self.get_types()
        result = set(filter(lambda x: '*' not in x, result))
        result = result - {f"struct {s.name}" for s in self.structs} - C_FUNDAMENTAL_TYPES
        return result

    def get_forward_declare_types(self) -> set[str]:
        def strip_pointers_arrays_and_modifiers(c_type):
            c_type = re.sub(r'\*', '', c_type)
            c_type = re.sub(r'\[\d*\]', '', c_type)
            c_type = re.sub(r'[()]', '', c_type)
            c_type = c_type.removeprefix("const ")
            return c_type

        result = set()
        defined_types_so_far = set()
        for s in self.structs:
            defined_types_so_far.add(f"struct {strip_pointers_arrays_and_modifiers(s.name)}")
            struct_types = {strip_pointers_arrays_and_modifiers(r) for r in s.get_types()}
            struct_types.difference_update(defined_types_so_far)
            result.update(struct_types)

        result.difference_update(self.get_direct_dependency_types())
        result.difference_update(C_FUNDAMENTAL_TYPES)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        fwd = self.get_forward_declare_types()
        cw.start_if_def(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)), invert=True)
        cw.add_define(HEADER_GUARD_TEMPLATE % str.upper(underscore(self.path.stem)))
        cw.add_line()

        if self.includes:
            include_categories = partition([lambda x: x.system], sorted(self.includes))
            for c in include_categories:
                c = list(c)
                if not c:
                    continue
                for i in c:
                    cw.include(('<' if i.system else '"') + str(i.header_path) + ('>' if i.system else '"'),
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
