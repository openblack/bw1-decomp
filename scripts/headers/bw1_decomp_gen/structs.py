import csnake

from dataclasses import dataclass
from typing import Optional, Union

from functions import DefinedFunctionPrototype
from utils import partition, extract_type_name


@dataclass
class Composite:
    @dataclass
    class Member:
        name: str
        data_type: Union[str, csnake.FuncPtr]
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
            result = {self.data_type}
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
                # Extract dimensions for arrays (e.g., "int[2][3]" -> [2, 3])
                dimensions = [hex(int(dim, 0)) for dim in array_part.replace(']', '').split('[') if dim]
                base_type = base_type.strip()
            else:
                dimensions = None
                base_type = self.data_type
                formatted_name = self.name

            # Create the csnake variable with either pointer/array or just array
            return csnake.Variable(formatted_name, base_type, array=dimensions)

    name: str
    size: Optional[int]
    members: list[Member]

    @property
    def decorated_name(self):
        raise NotImplementedError()


class Struct(Composite):
    print_offset_at_each: Optional[int] = None

    @property
    def decorated_name(self):
        return f"struct {self.name}"

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
                    last_offset = m.offset
            result.add_variable(v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        cw.add_struct(self.to_csnake())
        if self.size is not None:
            cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()


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
    values: tuple[str, int]

    @property
    def decorated_name(self):
        return f"enum {self.name}"

    def get_types(self) -> set[str]:
        result = {self.name}
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
            result.add_value(*v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        cw.add_enum(self.to_csnake())
        cw.add_line(f'static_assert(sizeof({self.decorated_name}) == 0x{self.size:x}, "Data type is of wrong size");')
        cw.add_line()


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
        basename = struct.name.removeprefix("struct ")
        vftable_global = vftable_map.get(basename) or vftable_map.get(f"{len(basename)}{basename}")
        self.vftable_address = vftable_global['address'] if vftable_global is not None else None

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
            vftable_ptr_type = f"{self.decorated_name}Vftable*"
            # TODO: Custom fix needed https://gitlab.com/andrejr/csnake/-/merge_requests/10
            address = csnake.FormattedLiteral(
                value=self.vftable_address, int_formatter=lambda x: f"({vftable_ptr_type})0x{x:08x}")
            cw.add_variable_initialization(csnake.Variable(f"__vt__{len(self.name)}{self.name}", vftable_ptr_type, ["static"], value=address))
            cw.add_line()

        if self.constructors:
            cw.add_line('// Constructors')
            cw.add_line()

            for f in self.constructors:
                f.to_code(cw)
            cw.add_line()

        if self.method_overrides:
            cw.add_line('// Override methods')
            cw.add_line()

            for f in self.method_overrides:
                f.to_code(cw)
            cw.add_line()

        if self.methods:
            cw.add_line('// Non-virtual methods')
            cw.add_line()

            for f in self.methods:
                f.to_code(cw)
            cw.add_line()

        if self.static_methods:
            cw.add_line('// Static methods')
            cw.add_line()

            for f in self.static_methods:
                f.to_code(cw)
            cw.add_line()
