import csnake

from dataclasses import dataclass

@dataclass
class Typedef:
    name: str
    underlying_type: str
    size: int
    
    @classmethod
    def from_json(cls, decl: dict) -> "Typedef":
        name = decl["type"]
        underlying_type = decl["typedef"]
        size = decl["size"]
        return cls(name, underlying_type, size)
    
    def to_code(self, cw: csnake.CodeWriter):
        cw.add_line(f"typedef {self.underlying_type} {self.type};")
        cw.add_line(f'static_assert(sizeof({self.name}) == 0x{self.size:x}, "Data type is of wrong size");')
