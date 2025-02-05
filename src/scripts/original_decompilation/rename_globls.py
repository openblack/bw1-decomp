"""
Cross reference known function names and addresses in assembly source to give proper decorated names
"""

import json
from pathlib import Path


TYPE_SIZE_DICT = {
    "size_t": 4,
    "uint8_t": 1,
    "uint16_t": 2,
    "uint32_t": 4,
    "uint64_t": 8,
    "int8_t": 1,
    "int16_t": 2,
    "int32_t": 4,
    "int64_t": 8,
    "bool": 1,
    "float": 4,
    "double": 8,
    "unsigned char": 1,
    "unsigned short": 2,
    "unsigned int": 4,
    "unsigned long": 4,
    "unsigned long long": 8,
    "char": 1,
    "short": 2,
    "int": 4,
    "long": 4,
    "long long": 8,
    "wchar_t": 2,
    "HWND": 4,
}


def type_size(type_name: str, type_size_db: dict) -> int:
    # Pointers
    if type_name.endswith("*") or "(" in type_name:
        return 4
    type_name = type_name.removeprefix("const ")
    if type_name.startswith("enum "):
        return 4
    res = type_size_db.get(type_name)
    if res is not None:
        return res
    return TYPE_SIZE_DICT[type_name]


def jump_addr_name(addr: int) -> str:
    return f"_jmp_addr_0x{addr:08x}"


def cdecl_addr_name(undecorated_name: str, argument_types: list[str], type_size_db: dict) -> str:
    return f"_{undecorated_name}"


def stdcall_addr_name(undecorated_name: str, argument_types: list[str], type_size_db: dict) -> str:
    param_size = sum(type_size(i, type_size_db) for i in argument_types)
    return f"_{undecorated_name}@{param_size}"


def fastcall_addr_name(undecorated_name: str, argument_types: list[str], type_size_db: dict) -> str:
    param_size = sum(type_size(i, type_size_db) for i in argument_types)
    return f"@{undecorated_name}@{param_size}"


def thiscall_addr_name(undecorated_name: str, argument_types: list[str], type_size_db: dict) -> str:
    if len(argument_types) > 1:
        argument_types = argument_types[:1] + ["const void*"] + argument_types[1:]
    return fastcall_addr_name(undecorated_name, argument_types, type_size_db)


def build_replacement_dict(database: dict) -> dict[str, str]:
    functions = database["functions"]
    type_size_db = {i['type']: i['size'] for i in database["types"]}

    dest_addr_name_funcs = {
        '__thiscall': thiscall_addr_name,
        '__fastcall': fastcall_addr_name,
        '__stdcall': stdcall_addr_name,
        'cdecl': cdecl_addr_name,
    }

    return {jump_addr_name(f["win_addr"]): dest_addr_name_funcs[f["call_type"]](f["undecorated_name"], f["argument_types"], type_size_db) for f in functions}


if __name__ == '__main__':
    database = "extracted_reversing_data_bw_141.json"
    json_data = json.load(open(database, "r"))
    replacement_dict = build_replacement_dict(json_data)

    # Go through every file matching the pattern src/asm/unprocessed/runblack.reassemble.*.asm and replace instances of the keys with the values
    for path in Path("src/asm/unprocessed").rglob("runblack.reassemble.*.asm"):
        with open(path, "r") as f:
            contents = f.read()
        for k, v in replacement_dict.items():
            k = ".extern " + k
            v = ".extern " + v
            contents = contents.replace(k, v)
        for k, v in replacement_dict.items():
            k = ".globl " + k
            v = ".globl " + v
            contents = contents.replace(k, v)
        for k, v in replacement_dict.items():
            k = k + ":"
            v = v + ":"
            diff = len(v) - len(k)
            if diff > 0:
                k = k + " " * diff
                contents = contents.replace(k, v)
        for k, v in replacement_dict.items():
            diff = len(v) - len(k)
            if diff > 0:
                k = k + " " * diff
                contents = contents.replace(k, v)
        for k, v in replacement_dict.items():
            k = k + ":"
            v = v + ":"
            diff = len(k) - len(v)
            if diff > 0:
                v = v + " " * diff
            contents = contents.replace(k, v)
        for k, v in replacement_dict.items():
            diff = len(k) - len(v)
            if diff > 0:
                v = v + " " * diff
            contents = contents.replace(k, v)
        with open(path, "w") as f:
            f.write(contents)

    exit(0)
