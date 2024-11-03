from typing import Iterable, Callable
from collections import OrderedDict

from csnake_overrides import CSnakeFuncPtr
from clang import cindex


LH_COLLECTION_TEMPLATES = ["LHLinkedList", "LHListHead", "GJVector", "LHDynamicStack"]


CONTAINER_DECLARATION_MACROS = {
    'LHLinkedList<T*>': "DECLARE_P_LH_LINKED_LIST",
    'LHLinkedList<T>': "DECLARE_LH_LINKED_LIST",
    'LHListHead<T>': "DECLARE_LH_LIST_HEAD",
    'LHDynamicStack<T>': "DECLARE_LH_DYNAMIC_STACK",
    'GJVector<T>': "DECLARE_GJ_VECTOR",
}


TEMPLATE_CONTAINER_STRUCTS_PREFIXES = OrderedDict({
    'LHLinkedList<T*>': ['LHLinkedList__p_', 'LHLinkedNode__p_'],
    'LHLinkedList<T>': ['LHLinkedList__', 'LHLinkedNode__'],
    'LHListHead<T>': ['LHListHead__'],
    'LHDynamicStack<T>': ['LHDynamicStack__'],
    'GJVector<T>': ['GJVector__'],
})


TYPE_SUBSTITUTION_MAP = {
    "_Bool": "bool",
}


def extract_template_type(type_name: str) -> str:
    type_name = type_name.removeprefix("struct ")
    for v in TEMPLATE_CONTAINER_STRUCTS_PREFIXES.values():
        for p in v:
            type_name = type_name.removeprefix(p)
    return type_name


def extract_type_name(type_name: str) -> str:
    return type_name.removeprefix("const ").removeprefix("struct ").removeprefix("union ").removeprefix("enum ").removesuffix("*").strip()


def partition(preds: list[Callable], iterable: Iterable) -> list:
    buckets = [[] for _ in range(len(preds) + 1)]
    for item in iterable:
        for i, pred in enumerate(preds):
            if pred(item):
                buckets[i].append(item)
                break
        else:
            buckets[-1].append(item)
    return buckets


def extract_type_from_func_name(s):
    name = s.split("(")[0]
    parts = name.split("::")

    # Constructors
    if len(parts) % 2 == 0 and parts[:len(parts) // 2] == parts[len(parts) // 2:]:
        parts = ["::".join(parts[:len(parts) // 2])] * 2

    if len(parts) >= 2:
        type_name = "::".join(parts[:-1])

    return type_name


# TODO: Do every type of variable
def arg_clang_wrapping_declaration_to_csnake(wrapping_declaration):
    assert wrapping_declaration.kind.name == "FUNCTION_DECL"

    param_declaration = next(wrapping_declaration.get_arguments())
    assert param_declaration.kind.name == "PARM_DECL"

    type_ = param_declaration.type

    is_pointer = type_.kind.name == "POINTER"

    if is_pointer:
        type_ = type_.get_pointee()
        if type_.kind.name == "FUNCTIONPROTO":
            call_type = "__cdecl"
            for attr in ["fastcall", "thiscall", "stdcall"]:
                if type_.spelling.endswith(f"__attribute__(({attr}))"):
                    call_type = f"__{attr}"
                    break
            result = type_.get_result().spelling
            members = [(c.displayname or f"param_{i + 1}", c.type.spelling) for i, c in enumerate(param_declaration.get_children()) if c.kind.name == 'PARM_DECL']
            result = TYPE_SUBSTITUTION_MAP.get(result, result)
            members = list(map(lambda x: TYPE_SUBSTITUTION_MAP.get(x, x), members))
            return CSnakeFuncPtr(result, members, call_type)

    return None


def arg_to_csnake(type_decl):
    """This function is slow because it launched the compiler for each param. It can easily go from less than a second to more than 20 seconds"""
    headers = ["stdbool.h", "stdint.h"]
    source = f"{'\n'.join(f'#include <{h}>' for h in headers)}\nvoid __arg_to_csnake_wrapping_declaration({type_decl});"
    translation_unit = cindex.TranslationUnit.from_source('tmp.c', args=["-m32"], unsaved_files=[('tmp.c', source)])
    if [d for d in translation_unit.diagnostics if d.severity >= cindex.Diagnostic.Error]:
        return type_decl
    result = arg_clang_wrapping_declaration_to_csnake(next(c for c in translation_unit.cursor.get_children() if c.spelling == "__arg_to_csnake_wrapping_declaration"))
    return result or type_decl
