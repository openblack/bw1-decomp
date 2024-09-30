from typing import Union, Optional
import csnake

from dataclasses import dataclass

from functions import FuncPtr
from structs import Struct

@dataclass
class Vftable(Struct):
    skip_size_assert: bool

    @dataclass
    class Member:
        name: str
        data_type: Union[FuncPtr, str]
        offset: int

        def to_csnake(self) -> csnake.Variable:
            if type(self.data_type) is FuncPtr:
                return csnake.Variable(self.name, self.data_type.to_csnake())
            else:
                return csnake.Variable(self.name, self.data_type)

        def get_types(self):
            if type(self.data_type) is FuncPtr:
                return set(self.data_type.args).union((self.data_type.result, ))
            if type(self.data_type) is str:
                return set({self.data_type})
            raise NotImplementedError(f"Don't know what to do with {self.data_type}")

    def __init__(self, struct: Struct, function_proto_map: dict[str, FuncPtr]):
        self.name = struct.name
        self.size = struct.size
        self.print_offset_at_each = 0x10
        substitutions = {
            "__dt__": "__dt",
        }
        self.members = []
        for i, m in enumerate(struct.members):
            name = substitutions.get(m.name, m.name)
            data_type = function_proto_map.get(m.data_type.rstrip("*"), m.data_type)
            self.members.append(self.Member(name, data_type, offset=i*4))
