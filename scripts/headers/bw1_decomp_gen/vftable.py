from typing import Union, Optional, Iterable
import csnake

from dataclasses import dataclass

from functions import FunctionPrototype
from structs import Struct


class CSnakeFuncPtr(csnake.FuncPtr):
    __slots__ = ("return_type", "arguments", "calling_convention")

    def __init__(
        self,
        return_type: str,
        arguments: Optional[Iterable] = None,
        calling_convention: Optional[str] = None,
    ) -> None:
        super().__init__(return_type, arguments)
        self.calling_convention = calling_convention

    def get_declaration(
        self,
        name: str,
        qualifiers: Optional[str] = None,
        array: Optional[str] = None,
    ) -> str:
        jointargs = ", ".join(
            arg.generate_declaration() for arg in self.arguments
        )

        retval = "{rt} ({conv}* {qual}{name}{arr})({arguments})".format(
            rt=self.return_type,
            qual=qualifiers if qualifiers else "",
            name=name,
            arguments=jointargs if self.arguments else "",
            arr=array if array else "",
            conv=self.calling_convention if self.calling_convention else ""
        )

        return retval

@dataclass
class Vftable(Struct):

    @dataclass
    class Member:
        name: str
        type: Union[FunctionPrototype, str]

        def to_csnake(self) -> csnake.Variable:
            if type(self.type) is FunctionPrototype:
                conv = self.type.call_type
                params = [[f"param_{i}", a] for i, a in enumerate(self.type.args)]
                if conv == "__thiscall":
                    params[0][0] = "this"
                    # C doesn't have thiscall but it can be emulated with __fastcall if edx (second param) is unused
                    params.insert(1, ["edx", "const void*"])
                    conv = "__fastcall"

                f = CSnakeFuncPtr(self.type.result, params, conv)
                return csnake.Variable(self.name, f)
            else:
                return csnake.Variable(self.name, self.type)

        def get_types(self):
            if type(self.type) is FunctionPrototype:
                return set(self.type.args).union((self.type.result, ))
            raise NotImplementedError()

    def __init__(self, struct: Struct, function_proto_map: dict[str, FunctionPrototype]):
        self.name = struct.name
        self.size = struct.size
        self.members = [self.Member(i.name, function_proto_map.get(i.type.removesuffix("*"), i.type)) for i in struct.members]
