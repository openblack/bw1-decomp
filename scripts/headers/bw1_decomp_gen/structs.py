import csnake

from collections import OrderedDict
from dataclasses import dataclass
import typing

from csnake_overrides import CSnakeMultiLineArrayVariable, CSnakeUnion, CSnakeHexCIntLiteral
from functions import DefinedFunctionPrototype
from utils import partition, extract_type_name


KNOWN_FLAG_ENUM_NAMES = {
    "LHKeyMod",
}


@dataclass
class Composite:
    @dataclass
    class Member:
        name: str
        data_type: typing.Union[str, csnake.FuncPtr]
        offset: int

        def __init__(self, name: str, data_type: str, offset: int):
            self.name = name
            self.data_type = data_type
            if type(self.data_type) is str:
                self.data_type = self.data_type.replace(" *", "*")
            self.offset = offset

        def __lt__(self, other: "Composite.Member") -> bool:
            return self.offset < other.offset

        def get_types(self) -> set[str]:
            result: set[str] = set()
            if type(self.data_type) is str and "[" in self.data_type:
                parts = self.data_type.split("[")
                part_0 = parts.pop(0)
                for p in parts:
                    p = p[:-1]
                    try:
                        int(p, 0)
                    except:
                        result.add(p)
                        part_0 += "[1]"
                    else:
                        part_0 += f"[{p}]"
                result.add(part_0)
            else:
                result.add(self.data_type)
            return result

        def to_csnake(self) -> csnake.Variable:
            # Check if it's a pointer to an array (e.g., int(*)[2] or int (*)[2])
            if type(self.data_type) is str:
                if self.data_type.endswith('[]'):
                    self.data_type = self.data_type.rstrip('[]')
                    self.name += '[]'
                if '(*' in self.data_type and '[' in self.data_type:
                    base_type, array_part = self.data_type.split('(*')
                    formatted_name = f"(*{self.name})"
                    array_part = array_part.lstrip('(*)')
                else:
                    # Handle regular arrays and non-pointer arrays
                    base_type, array_part = self.data_type.split(
                        '[', 1) if '[' in self.data_type else (self.data_type, '')
                    formatted_name = self.name
                # Extract dimensions for arrays (e.g., "int[2][3]" -> [0x2, 0x3])
                def to_hex(dim: str) -> str:
                    try:
                        return hex(int(dim, 0))
                    except ValueError:
                        # Likely an enum value
                        return dim
                dimensions = [to_hex(dim) for dim in array_part.replace(']', '').split('[') if dim]
                base_type = base_type.strip()
            else:
                dimensions = None
                base_type = self.data_type
                formatted_name = self.name

            # Create the csnake variable with either pointer/array or just array
            return csnake.Variable(formatted_name, base_type, array=dimensions)

    name: str
    size: typing.Optional[int]
    members: list[Member]

    @property
    def decorated_name(self):
        raise NotImplementedError()


class Struct(Composite):
    constructors: list[DefinedFunctionPrototype] = []
    methods: list[DefinedFunctionPrototype] = []
    static_methods: list[DefinedFunctionPrototype] = []
    print_offset_at_each: typing.Optional[int] = None

    @property
    def decorated_name(self):
        return f"struct {self.name}"

    @property
    def all_methods(self) -> list[DefinedFunctionPrototype]:
        return self.constructors + self.methods + self.static_methods

    @classmethod
    def from_json(cls, decl: dict) -> "Struct":
        name = extract_type_name(decl['type'])
        size = decl['size']
        members = [cls.Member(**{"data_type": m.pop("type"), **m}) for m in decl["members"]]
        return cls(name, size, members)

    def get_types(self) -> set[str]:
        result = {self.decorated_name}
        for m in self.members:
            result.update(m.get_types())
        for m in self.all_methods:
            result.update(m.get_types())
        return result - {"void"}

    def to_csnake(self) -> csnake.Struct:
        result = csnake.Struct(self.name, typedef=False)
        # Check if sortable
        if all(map(lambda x: x.__class__.__lt__ != object.__lt__, self.members)):
            sorted_members = sorted(self.members)
        else:
            sorted_members = self.members
        variables = map(self.Member.to_csnake, sorted_members)
        last_offset: int = -1
        for v, m in zip(variables, sorted_members):
            if self.print_offset_at_each:
                if last_offset < 0 or m.offset - last_offset >= self.print_offset_at_each:
                    hoffset = f"{m.offset:08x}" if m.offset > 0x400000 else f"{m.offset:x}"
                    v.comment = None if hoffset in m.name else "0x" + hoffset
                    last_offset = m.offset - (m.offset % self.print_offset_at_each)
            result.add_variable(v)
        return result

    def to_code_data(self, cw: csnake.CodeWriter):
        cw.add_struct(self.to_csnake())
        if self.size is not None:
            cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()

    def to_code_methods(self, cw: csnake.CodeWriter):
        if self.static_methods:
            cw.add_line('// Static methods')
            cw.add_line()

            for f in self.static_methods:
                f.to_code(cw)
            cw.add_line()
        if self.constructors:
            cw.add_line('// Constructors')
            cw.add_line()

            for f in self.constructors:
                f.to_code(cw)
            cw.add_line()

        if self.methods:
            cw.add_line('// Non-virtual methods')
            cw.add_line()

            for f in self.methods:
                f.to_code(cw)
            cw.add_line()

    def to_code(self, cw: csnake.CodeWriter):
        self.to_code_data(cw)
        self.to_code_methods(cw)


class Union(Composite):
    @property
    def decorated_name(self):
        return f"union {self.name}"

    @classmethod
    def from_json(cls, decl: dict) -> "Union":
        name = extract_type_name(decl['type'])
        size = decl['size']
        members = [cls.Member(**{"data_type": m.pop("type"), **m}, offset=0) for m in decl["aliases"]]
        return cls(name, size, members)

    def get_types(self) -> set[str]:
        result = {self.decorated_name}
        for m in self.members:
            result.update(m.get_types())
        return result - {"void"}

    def to_csnake(self) -> CSnakeUnion:
        result = CSnakeUnion(self.name, typedef=False)
        variables = map(self.Member.to_csnake, self.members)
        for v in variables:
            result.add_variable(v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        # TODO: Must be add_union
        cw.add_struct(self.to_csnake())
        cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()


@dataclass
class Enum:
    name: str
    size: int
    values: list[tuple[str, int]]
    count = tuple[str, int]

    def __init__(self, name: str, size: int, values: tuple[str, int]):
        self.name = name
        self.size = size
        self.values = []
        min_val = None
        max_val = 0
        count_val = None
        for n, v in values:
            if n.endswith("_FORCE_32_BIT") or n.endswith("_FORCE_32_BITS") or n.endswith("_FORCE32"):
                continue
            if n.endswith("_COUNT"):
                count_val = v
            else:
                self.values.append((n, v))
            if min_val is None or v < min_val:
                min_val = v
            if v > max_val:
                max_val = v
        if self.name.endswith("_FLAGS") or self.name in KNOWN_FLAG_ENUM_NAMES:
            self.count = None
        else:
            try:
                assert(max_val < 0x70000000)
            except:
                print(self.name)
                raise
            self.count = (f"_{self.name}_COUNT", count_val or ((max_val or 0) + 1))
            self.values.append(self.count)


    @property
    def decorated_name(self):
        return f"enum {self.name}"

    def get_types(self) -> set[str]:
        result = {self.decorated_name}
        return result

    @classmethod
    def from_json(cls, decl: dict) -> "Enum":
        name = extract_type_name(decl['type'])
        size = decl['size']
        values = [(m["name"], m["value"]) for m in decl["constants"]]
        return cls(name, size, values)

    def to_csnake(self) -> csnake.Enum:
        result = csnake.Enum(self.name, typedef=False)
        for v in self.values:
            result.add_value(v[0], CSnakeHexCIntLiteral(v[1]))
        return result

    def to_code(self, cw: csnake.CodeWriter):
        cw.add_enum(self.to_csnake())
        cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()

        if self.count is not None:
            str_label_map = {v: n for n, v in self.values}
            strings_values = [str_label_map.get(i, f"{self.name}_{hex(i)}") for i in range(self.count[1])]
            strings_variable = CSnakeMultiLineArrayVariable(f"{self.name}_strs", "char*", ["static", "const"], [f"_{self.name}_COUNT"], value=strings_values)
            cw.add_variable_initialization(strings_variable)
            cw.add_line()


@dataclass
class RTTIClass(Struct):
    vftable_address: typing.Optional[int]
    vftable_type_name: typing.Optional[str]
    method_overrides: list[DefinedFunctionPrototype]

    @property
    def all_methods(self) -> list[DefinedFunctionPrototype]:
        return super().all_methods + self.method_overrides

    def __init__(self, struct: Struct, vftable_map: dict[str, dict], virtual_table_function_arg_map: OrderedDict[str, list[str]], method_map: dict[str, DefinedFunctionPrototype], static_method_map: dict[str, DefinedFunctionPrototype]):
        self.name = struct.name
        self.size = struct.size
        self.members = struct.members[:]
        basename = struct.name.removeprefix("struct ")
        vftable_global = vftable_map.get(basename) or vftable_map.get(f"{len(basename)}{basename}")
        self.vftable_address = vftable_global['address'] if vftable_global is not None else None
        self.vftable_type_name = vftable_global['type'] if vftable_global is not None else None
        if self.vftable_type_name is not None:
            if not self.vftable_type_name.endswith("Vftable"):
                raise TypeError(f"type: `{struct.name}` has a __vt__ declared with invalid type `{self.vftable_type_name}`")

        def get_method_name(x: str) -> str:
            if "__" not in x:
                return ""
            return x[::-1].split("__", maxsplit=1)[-1][::-1]

        def match_overrides(struct_type) -> bool:
            method_args = virtual_table_function_arg_map.get(get_method_name(struct_type.name))
            if method_args is None:
                return False
            method_args = [x if type(x) is str else x.get_type_only() for x in method_args]
            return struct_type.args[1:] == method_args[1:]

        (
            self.constructors,
            self.method_overrides,
            self.methods,
        ) = partition([
            lambda x: x.name.startswith('__ct__'),
            match_overrides
        ], method_map.get(self.name, list()))

        self.static_methods = static_method_map.get(self.name, list())
        self.constructors.sort()
        virtual_table_function_names = list(virtual_table_function_arg_map.keys())
        self.method_overrides.sort(key=lambda x: virtual_table_function_names.index(get_method_name(x.name)))
        self.methods.sort()
        self.static_methods.sort()

    def to_code_data(self, cw: csnake.CodeWriter):
        super().to_code_data(cw)
        if self.vftable_address:
            vftable_ptr_type = self.vftable_type_name + "*"
            # TODO: Custom fix needed https://gitlab.com/andrejr/csnake/-/merge_requests/10
            address = csnake.FormattedLiteral(
                value=self.vftable_address, int_formatter=lambda x: f"({vftable_ptr_type})0x{x:08x}")
            cw.add_variable_initialization(csnake.Variable(f"__vt__{len(self.name)}{self.name}", vftable_ptr_type, ["static"], value=address))
            cw.add_line()

    def to_code_methods(self, cw: csnake.CodeWriter):
        super().to_code_methods(cw)
        if self.method_overrides:
            cw.add_line('// Override methods')
            cw.add_line()

            for f in self.method_overrides:
                f.to_code(cw)
            cw.add_line()
