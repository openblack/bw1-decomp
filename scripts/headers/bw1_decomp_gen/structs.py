import csnake

from dataclasses import dataclass
from typing import Optional

from utils import extract_type_name


@dataclass
class Composite:
    @dataclass
    class Member:
        name: str
        type: str

        def __init__(self, name: str, type: str):
            self.name = name
            self.type = type.replace(" *", "*")

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
                base_type, array_part = self.type.split('[', 1) if '[' in self.type else (self.type, '')

                formatted_name = self.name

            # Extract dimensions for arrays (e.g., "int[2][3]" -> [2, 3])
            dimensions = [int(dim) for dim in array_part.replace(']', '').split('[') if dim]

            # Create the csnake variable with either pointer/array or just array
            return csnake.Variable(formatted_name, base_type.strip(), array=dimensions)


    name: str
    size: int
    members: list[Member]



class Struct(Composite):
    @classmethod
    def from_json(cls, decl: dict) -> "Struct":
        name = extract_type_name(decl['type'])
        size = decl['size']
        members = [cls.Member(m["name"], m["type"]) for m in decl["members"]]
        return cls(name, size, members)
    
    def to_csnake(self) -> csnake.Struct:
        result = csnake.Struct(self.name, typedef=False)
        variables = map(self.Member.to_csnake, self.members)
        for v in variables:
            result.add_variable(v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        cw.add_struct(self.to_csnake())
        cw.add_line(f'static_assert(sizeof(struct {self.name}) == 0x{self.size:x}, "Data type is of wrong size");')


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
    @classmethod
    def from_json(cls, decl: dict) -> "Union":
        name = extract_type_name(decl['type'])
        size = decl['size']
        members = [cls.Member(m["name"], m["type"]) for m in decl["aliases"]]
        return cls(name, size, members)
    
    def to_csnake(self) -> CSnakeUnion:
        result = CSnakeUnion(self.name, typedef=False)
        variables = map(self.Member.to_csnake, self.members)
        for v in variables:
            result.add_variable(v)
        return result

    def to_code(self, cw: csnake.CodeWriter):
        # TODO: Must be add_union
        cw.add_struct(self.to_csnake())
        cw.add_line(f'static_assert(sizeof(union {self.name}) == 0x{self.size:x}, "Data type is of wrong size");')


@dataclass
class Enum:
    name: str
    size: int
    values: tuple[str, int]
    @classmethod
    def from_json(cls, decl: dict) -> "Union":
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
        cw.add_line(f'static_assert(sizeof(enum {self.name}) == 0x{self.size:x}, "Data type is of wrong size");')


@dataclass
class RTTIClass(Struct):

    vftable_address: Optional[int]

    def __init__(self, struct: Struct, vftable_map: dict[str, dict]):
        self.name = struct.name
        self.size = struct.size
        self.members = struct.members[:]
        vftable_global = vftable_map.get(struct.name.removeprefix("struct "))
        self.vftable_address = vftable_global['value'] if vftable_global is not None else None
    
    def to_code(self, cw: csnake.CodeWriter):
        super().to_code(cw)
        if self.vftable_address:
            cw.add_line()
            address = csnake.FormattedLiteral(value=self.vftable_address, int_formatter=lambda x: f"0x{x:08x}")
            cw.add_variable_initialization(csnake.Variable(f"__vt__{len(self.name)}{self.name}", f"{self.name}Vftable*", ["static"], value=address))




