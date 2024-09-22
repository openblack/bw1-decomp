from typing import Optional, Iterable

from dataclasses import dataclass

import csnake


TYPE_SUBSTITUTIONS = {
    "_Bool": "bool",
}


CALL_TYPE_SUBSTITUTIONS = {
    "cdecl": "__cdecl",
}


def clean_up_type(typename):
    type_part, pointer_part, after_pointer_part = typename.partition("*")
    type_part = type_part.rstrip()
    type_part = TYPE_SUBSTITUTIONS.get(type_part, type_part)
    return "".join((type_part, pointer_part, after_pointer_part))


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

    def get_typedef(
        self,
        name: str,
        qualifiers: Optional[str] = None,
        array: Optional[str] = None,
    ) -> str:
        jointargs = ", ".join(
            arg.generate_declaration() for arg in self.arguments
        )

        retval = "typedef {rt} ({conv} {qual}{name}{arr})({arguments})".format(
            rt=self.return_type,
            qual=qualifiers if qualifiers else "",
            name=name,
            arguments=jointargs if self.arguments else "",
            arr=array if array else "",
            conv=self.calling_convention if self.calling_convention else ""
        )

        return retval


@dataclass
class FuncPtr:
    name: str
    call_type: str
    result: str
    args: list[str]
    arg_labels: list[str]
    decorated_name: str

    def __init__(self, name: str, call_type: str, result: str, args: list[str], arg_labels: list[str]):
        self.name = name
        self.call_type = CALL_TYPE_SUBSTITUTIONS.get(call_type, call_type)
        self.result = clean_up_type(result)
        self.args = list(map(clean_up_type, args))
        self.arg_labels = arg_labels
        self.decorated_name = name

    def get_types(self) -> set[str]:
        result = {self.result}
        result.update(self.args)
        return result - {"void"}

    @classmethod
    def from_json(cls, decl: dict) -> "FuncPtr":
        name = decl['type']
        call_type = decl['call_type']
        result = decl['result']
        args = decl['args']
        arg_labels = decl['arg_names']
        return cls(name, call_type, result, args, arg_labels)

    def to_csnake(self) -> CSnakeFuncPtr:
        conv = self.call_type
        params = [[l or f"param_{i}", a] for i, (l, a) in enumerate(
            zip(self.arg_labels, self.args))]
        if conv == "__thiscall":
            params[0][0] = "this"
            if len(params) > 1:
                # C doesn't have thiscall but it can be emulated with __fastcall if edx (second param) is unused
                params.insert(1, ["edx", "const void*"])
            conv = "__fastcall"

        return CSnakeFuncPtr(self.result, params, conv)

    def to_code(self, cw: csnake.CodeWriter):
        fptr = self.to_csnake()
        cw.add_line(f"{fptr.get_typedef(self.name)};")


@dataclass
class DefinedFunctionPrototype(FuncPtr):
    win_addr: int
    mac_addr: int

    def __init__(self, name: str, call_type: str, result: str, args: list[str], decorated_name: str,  arg_labels: list[str], win_addr: int, mac_addr: int):
        super().__init__(name, call_type, result, args, arg_labels)
        self.decorated_name = decorated_name
        self.win_addr = win_addr
        self.mac_addr = mac_addr

    def __lt__(self, other: "DefinedFunctionPrototype") -> bool:
        return self.win_addr < other.win_addr

    @classmethod
    def from_json(cls, decl: dict) -> "DefinedFunctionPrototype":
        name = decl['undecorated_name']
        call_type = decl['call_type']
        result = decl['return_type']
        args = decl['argument_types']

        decorated_name = decl['decorated_name']
        arg_labels = decl['argument_names']
        win_addr = decl['win_addr']
        mac_addr = decl['mac_addr']
        return cls(name, call_type, result, args, decorated_name, arg_labels, win_addr, mac_addr)

    def to_csnake(self) -> csnake.Function:
        conv = self.call_type
        params = [[l or f"param_{i}", a] for i, (l, a) in enumerate(
            zip(self.arg_labels, self.args))]
        if conv == "__thiscall":
            params[0][0] = "this"
            if len(params) > 1:
                # C doesn't have thiscall but it can be emulated with __fastcall if edx (second param) is unused
                params.insert(1, ["edx", "const void*"])
            conv = "__fastcall"

        return csnake.Function(f"{conv} {self.name}", self.result, arguments=params)

    def to_code(self, cw: csnake.CodeWriter):
        win_addr = f"{self.win_addr:08x}" if self.win_addr >= 0 else "inlined"
        mac_addr = f"{self.mac_addr:08x}" if self.mac_addr >= 0 else "inlined"
        cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.decorated_name}")
        cw.add_function_prototype(self.to_csnake())
