import csnake

from dataclasses import dataclass
from typing import Optional

from functions import DefinedFunctionPrototype
from utils import partition, extract_type_name


@dataclass
class Composite:
    @dataclass
    class Member:
        name: str
        type: str
        offset: int

        def __init__(self, name: str, type: str, offset: int):
            self.name = name
            self.type = type.replace(" *", "*")
            self.offset = offset

        def get_types(self) -> set[str]:
            result = {self.type}
            return result

        def to_csnake(self) -> csnake.Variable:
            # Check if it's a pointer to an array (e.g., int(*)[2] or int (*)[2])
            if self.type.endswith('[]'):
                self.type = self.type.rstrip('[]')
                self.name += '[]'
            if '(*' in self.type and '[' in self.type:
                base_type, array_part = self.type.split('(*')
                formatted_name = f"(*{self.name})"
                array_part = array_part.lstrip('(*)')
            else:
                # Handle regular arrays and non-pointer arrays
                base_type, array_part = self.type.split(
                    '[', 1) if '[' in self.type else (self.type, '')

                formatted_name = self.name

            # Extract dimensions for arrays (e.g., "int[2][3]" -> [2, 3])
            dimensions = [int(dim) for dim in array_part.replace(
                ']', '').split('[') if dim]

            # Create the csnake variable with either pointer/array or just array
            return csnake.Variable(formatted_name, base_type.strip(), array=dimensions)

    name: str
    size: int
    members: list[Member]

    @property
    def decorated_name(self):
        raise NotImplementedError()


class Struct(Composite):
    @property
    def decorated_name(self):
        return f"struct {self.name}"

    @classmethod
    def from_json(cls, decl: dict) -> "Struct":
        name = extract_type_name(decl['type'])
        size = decl['size']
        members = [cls.Member(**m) for m in decl["members"]]
        return cls(name, size, members)

    def get_types(self) -> set[str]:
        result = {self.decorated_name}
        for m in self.members:
            result.update(m.get_types())
        return result - {"void"}

    def to_csnake(self) -> csnake.Struct:
        result = csnake.Struct(self.name, typedef=False)
        variables = map(self.Member.to_csnake, self.members)
        for v in variables:
            result.add_variable(v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        cw.add_struct(self.to_csnake())
        cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')


# TODO: Replace with csnake.Union when https://gitlab.com/andrejr/csnake/-/merge_requests/5 lands
class CSnakeUnion(csnake.Struct):
    def generate_declaration(self, indent=4):
        writer = csnake.CodeWriterLite(indent=indent)
        if self.typedef:
            writer.add_line(f"typedef union")
        else:
            writer.add_line(f"union {self.name}")
        writer.open_brace()
        for var in self.variables:
            writer.add_line(var.declaration)
        writer.close_brace()

        if self.typedef:
            writer.add(" " + self.name + ";")
        else:
            writer.add(";")

        return writer


class Union(Composite):
    @property
    def decorated_name(self):
        return f"union {self.name}"

    @classmethod
    def from_json(cls, decl: dict) -> "Union":
        name = extract_type_name(decl['type'])
        size = decl['size']
        # TODO: unions don't seem have the 'struct' tag, they should
        members = [cls.Member(m["name"], f'struct {m["type"]}', 0) for m in decl["aliases"]]
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


@dataclass
class Enum:
    name: str
    size: int
    values: tuple[str, int]

    @property
    def decorated_name(self):
        return f"enum {self.name}"

    @classmethod
    def from_json(cls, decl: dict) -> "Enum":
        name = extract_type_name(decl['type'])
        size = decl['size']
        values = [(m["name"], m["value"]) for m in decl["constants"]]
        return cls(name, size, values)

    def to_csnake(self) -> csnake.Enum:
        result = csnake.Enum(self.name, typedef=False)
        for v in self.values:
            result.add_variable(*v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        cw.add_enum(self.to_csnake())
        cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')


@dataclass
class RTTIClass(Struct):

    vftable_address: Optional[int]
    constructors: list[DefinedFunctionPrototype]
    method_overrides: list[DefinedFunctionPrototype]
    methods: list[DefinedFunctionPrototype]
    static_methods: list[DefinedFunctionPrototype]

    @property
    def all_methods(self) -> list[DefinedFunctionPrototype]:
        return self.constructors + self.method_overrides + self.methods + self.static_methods

    def __init__(self, struct: Struct, vftable_map: dict[str, dict], virtual_table_function_names: tuple[str], method_map: dict[str, DefinedFunctionPrototype], static_method_map: dict[str, DefinedFunctionPrototype]):
        self.name = struct.name
        self.size = struct.size
        self.members = struct.members[:]
        vftable_global = vftable_map.get(struct.name.removeprefix("struct "))
        self.vftable_address = vftable_global['value'] if vftable_global is not None else None

        def get_method_name(x: str) -> str:
            if "__" not in x:
                return ""
            return x[::-1].split("__", maxsplit=1)[-1][::-1]
        (
            self.constructors,
            self.method_overrides,
            self.methods,
        ) = partition([
            lambda x: x.name.startswith('__ct__'),
            lambda x: get_method_name(x.name) in set(
                virtual_table_function_names)
        ], method_map.get(self.name, list()))
        self.static_methods = static_method_map.get(self.name, list())
        self.constructors.sort()
        self.method_overrides.sort(
            key=lambda x: virtual_table_function_names.index(get_method_name(x.name)))
        self.methods.sort()
        self.static_methods.sort()

    def get_types(self) -> set[str]:
        result = super().get_types()
        for m in self.all_methods:
            result.update(m.get_types())
        return result - {"void"}

    def to_code(self, cw: csnake.CodeWriter):
        super().to_code(cw)
        if self.vftable_address:
            cw.add_line()
            # TODO: Custom fix needed https://gitlab.com/andrejr/csnake/-/merge_requests/10
            address = csnake.FormattedLiteral(
                value=self.vftable_address, int_formatter=lambda x: f"0x{x:08x}")
            cw.add_variable_initialization(csnake.Variable(f"__vt__{len(self.name)}{self.name}", f"{self.decorated_name}Vftable*", ["static"], value=address))

        if self.constructors:
            cw.add_line()
            cw.add_line('// Constructors')
            cw.add_line()

            for f in self.constructors:
                f.to_code(cw)

        if self.method_overrides:
            cw.add_line()
            cw.add_line('// Override methods')
            cw.add_line()

            for f in self.method_overrides:
                f.to_code(cw)

        if self.methods:
            cw.add_line()
            cw.add_line('// Non-virtual methods')
            cw.add_line()

            for f in self.methods:
                f.to_code(cw)

        if self.static_methods:
            cw.add_line()
            cw.add_line('// Static methods')
            cw.add_line()

            for f in self.static_methods:
                f.to_code(cw)
