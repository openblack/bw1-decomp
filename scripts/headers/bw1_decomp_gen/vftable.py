from typing import Union, Optional
import csnake

from dataclasses import dataclass

from functions import FuncPtr
from structs import Struct

@dataclass
class Vftable(Struct):

    @dataclass
    class Member:
        name: str
        type: Union[FuncPtr, str]
        comment: Optional[str]

        def to_csnake(self) -> csnake.Variable:
            if type(self.type) is FuncPtr:
                return csnake.Variable(self.name, self.type.to_csnake(), comment=self.comment)
            else:
                return csnake.Variable(self.name, self.type, comment=self.comment)

        def get_types(self):
            if type(self.type) is FuncPtr:
                return set(self.type.args).union((self.type.result, ))
            if type(self.type) is str:
                return set({self.type})
            raise NotImplementedError(f"Don't know what to do with {self.type}")

    def __init__(self, struct: Struct, function_proto_map: dict[str, FuncPtr]):
        self.name = struct.name
        self.size = struct.size
        substitutions = {
            "__dt__": "__dt",
        }
        self.members = []
        last_offset = 0
        for m in struct.members:
            name = substitutions.get(m.name, m.name)
            type_ = function_proto_map.get(m.type.removesuffix("*"), m.type)
            comment = None
            if m.offset >= last_offset + 0x10:
                comment = hex(m.offset)
                last_offset = m.offset & ~0xF
            self.members.append(self.Member(name, type_, comment))
