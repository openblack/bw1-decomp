import sys
import re
from pathlib import Path
from typing import Iterable, Callable
from collections import OrderedDict

from csnake_overrides import CSnakeFuncPtr
from clang import cindex

def to_macro_case(name: str) -> str:
    s = re.sub('([a-z])([A-Z])', r'\1_\2', name)
    s = re.sub('([A-Z]+)([A-Z][a-z])', r'\1_\2', s)
    return s.upper()


# Single source of truth: define templates with their prefixes
CONTAINER_TEMPLATE_DECL = OrderedDict([
    ('LHLinkedList', ['LHLinkedList__', 'LHLinkedNode__']),
    ('LHListHead', ['LHListHead__']),
    ('GJVector', ['GJVector__']),
    ('LHStack', ['LHStack__']),
    ('LHDynamicStack', ['LHDynamicStack__']),
    ('LHOrderedLinkedList', ['LHOrderedLinkedList__', 'OrderedNode__']),
])

# Derived collections
LH_COLLECTION_TEMPLATES = set(CONTAINER_TEMPLATE_DECL.keys())

CONTAINER_DECLARATION_MACROS = {
    f"{template}<T>": f"DECLARE_{to_macro_case(template)}"
    for template in CONTAINER_TEMPLATE_DECL
}

TEMPLATE_CONTAINER_STRUCTS_PREFIXES = OrderedDict([
    (f'{template}<T>', prefixes)
    for template, prefixes in CONTAINER_TEMPLATE_DECL.items()
])


TYPE_SUBSTITUTION_MAP = {
    "_Bool": "bool",
    "int32_t": "int",
}


FUNDAMENTAL_TYPES = {
    "Ul": "uint32_t",
    'l': "int32_t",
    "Ui": "uint32_t",
    'i': "int32_t",
    'f': "float",
}


def extract_template_type(type_name: str) -> str:
    type_name = type_name.removeprefix("struct ")
    for v in TEMPLATE_CONTAINER_STRUCTS_PREFIXES.values():
        for p in v:
            type_name = type_name.removeprefix(p)
    return type_name


def extract_type_name(type_name: str) -> str:
    return type_name.removeprefix("const ").removeprefix("struct ").removeprefix("union ").removeprefix("enum ").removesuffix("*").replace("::", "__").strip()


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


if sys.platform == "win32":
    llvm_bin = Path(r"C:\Program Files\LLVM\bin")
else:
    llvm_bin = Path(r"/usr/bin")


def get_clang_resource_dir():
    from subprocess import check_output
    return check_output([llvm_bin / 'clang', '-print-resource-dir']).strip().decode('utf-8')


def get_tu_from_source(source):
    ignored_warnings = ["visibility", "microsoft-enum-forward-reference"]
    args = ["-m32", f"-resource-dir={get_clang_resource_dir()}"]
    if sys.platform != "win32":
        args.append("--target=i686-pc-windows-gnu")
    for warning in ignored_warnings:
        args.append(f"-Wno-{warning}")
    return cindex.TranslationUnit.from_source('tmp.c', args=args, unsaved_files=[('tmp.c', source)])


def arg_to_csnake(type_decl):
    """This function is slow because it launched the compiler for each param. It can easily go from less than a second to more than 20 seconds"""
    headers = ["stdbool.h", "stdint.h"]
    source = f"{'\n'.join(f'#include <{h}>' for h in headers)}\nvoid __arg_to_csnake_wrapping_declaration({type_decl});"
    translation_unit = get_tu_from_source(source)
    if [d for d in translation_unit.diagnostics if d.severity >= cindex.Diagnostic.Error]:
        return type_decl
    result = arg_clang_wrapping_declaration_to_csnake(next(c for c in translation_unit.cursor.get_children() if c.spelling == "__arg_to_csnake_wrapping_declaration"))
    return result or type_decl
