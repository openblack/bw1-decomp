import re
from dataclasses import dataclass

import csnake
from typing import Optional

from csnake_overrides import CSnakeFuncPtr, CSnakeFunction
from utils import arg_to_csnake, TYPE_SUBSTITUTION_MAP


CALL_TYPE_SUBSTITUTIONS = {
    "cdecl": "__cdecl",
}


def clean_up_type(typename):
    if type(typename) is csnake.FuncPtr:
        return typename

    if "(*)(" in typename:
        pattern = r'^(.+?)\s*\(\*\)\s*(.+?)\s*__attribute__\s*\(\(\s*(cdecl|fastcall|thiscall|stdcall)\s*\)\)(.*)$'
        replacement = r'\1 (__\3*)\2\4'
        typename = re.sub(pattern, replacement, typename)

    type_part, pointer_part, after_pointer_part = typename.partition("*")
    type_part = type_part.rstrip()
    type_part = TYPE_SUBSTITUTION_MAP.get(type_part, type_part)
    return "".join((type_part, pointer_part, after_pointer_part))


@dataclass
class FuncPtr:
    name: str
    call_type: str
    result: str
    args: list[str]
    arg_labels: list[str]
    decorated_name: str
    indirection_level: int

    def __init__(self, name: str, call_type: str, result: str, args: list[str], arg_labels: list[str], indirection_level: int = 1):
        self.name = name
        self.call_type = CALL_TYPE_SUBSTITUTIONS.get(call_type, call_type)
        self.result = clean_up_type(result)
        self.args = list(map(clean_up_type, args))
        self.arg_labels = arg_labels
        self.decorated_name = name
        self.indirection_level = indirection_level

    def get_types(self) -> set[str]:
        result = {self.result}
        result.update(i for i in self.args if "*)(" not in i)
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
        params = [[l or f"param_{i}", a] for i, (l, a) in enumerate(zip(self.arg_labels, self.args))]
        if conv == "__thiscall":
            params[0][0] = "this"
            if len(params) > 1:
                # C doesn't have thiscall but it can be emulated with __fastcall if edx (second param) is unused
                params.insert(1, ["edx", "const void*"])
            conv = "__fastcall"

        return CSnakeFuncPtr(self.result, params or [("", " void")], conv, self.indirection_level)

    def to_code(self, cw: csnake.CodeWriter):
        fptr = self.to_csnake()
        cw.add_line(f"{fptr.get_typedef(self.name)};")


funcptr_re = re.compile(r"(\((__fastcall|__thiscall|__stdcall|__cdecl)?\*)\)")


@dataclass
class DefinedFunctionPrototype(FuncPtr):
    win_addr: int
    mac_addr: int
    mangled_name: Optional[str]
    is_function_variadic: bool
    inline_body: Optional[str]

    def __init__(self, name: str, call_type: str, result: str, args: list[str], decorated_name: str,  arg_labels: list[str], win_addr: int, mac_addr: int, mangled_name: Optional[str], is_function_variadic: bool, inline_body: Optional[str]):
        super().__init__(name, call_type, result, args, arg_labels)
        self.decorated_name = decorated_name
        self.win_addr = win_addr
        self.mac_addr = mac_addr
        self.mangled_name = mangled_name
        self.is_function_variadic = is_function_variadic
        self.inline_body = inline_body

    def __lt__(self, other: "DefinedFunctionPrototype") -> bool:
        return self.win_addr < other.win_addr

    @classmethod
    def from_json(cls, decl: dict) -> "DefinedFunctionPrototype":
        name = decl['undecorated_name']
        call_type = decl['call_type']
        result = decl['return_type']
        args = decl['argument_types']
        decorated_name = decl['decorated_name']
        mangled_name = decl['mangled_name'] if "?" in (decl['mangled_name'] or "") else None
        arg_labels = decl['argument_names']
        win_addr = decl['win_addr']
        mac_addr = decl['mac_addr']
        is_function_variadic = decl['is_function_variadic']
        inline_body = decl['inline_body']
        return cls(name, call_type, result, args, decorated_name, arg_labels, win_addr, mac_addr, mangled_name, is_function_variadic, inline_body)

    def to_csnake(self) -> csnake.Function:
        conv = self.call_type
        params = []
        for i, (l, a) in enumerate(zip(self.arg_labels, self.args)):
            a = a.replace("<", "__").replace(">", "") # transform LHListHead<T> to LHListHead__T
            if not l:
                l = f"param_{i}"
            if funcptr_re.search(a):
                funcptr = arg_to_csnake(a)
                var = csnake.Variable(l, funcptr)
                params.append(var)
            else:
                params.append([l, a])
        if conv == "__thiscall":
            params[0][0] = "this"
            if len(params) > 1:
                # C doesn't have thiscall but it can be emulated with __fastcall if edx (second param) is unused
                params.insert(1, ["edx", "const void*"])
            conv = "__fastcall"
        if self.is_function_variadic:
            params.append(["", "..."])

        qualifiers = None
        if self.inline_body:
            qualifiers = ['inline']

        return CSnakeFunction(f"{conv} {self.name}", self.result, qualifiers=qualifiers, arguments=params, mangled_name=self.mangled_name)

    def to_code(self, cw: csnake.CodeWriter):
        win_addr = f"{self.win_addr:08x}" if self.win_addr >= 0 else "inlined"
        mac_addr = f"{self.mac_addr:08x}" if self.mac_addr >= 0 else "inlined"
        cw.add_line(f"// win1.41 {win_addr} mac {mac_addr} {self.decorated_name}")
        func = self.to_csnake()
        if not self.inline_body:
            cw.add_function_prototype(func)
        else:
            func.add_code([i.strip() for i in self.inline_body.split("\n")][1:-1])
            cw.add_function_definition(func)
