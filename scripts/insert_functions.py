import csv
import json
import sys
from copy import copy
from pathlib import Path

from mac_unmangler import UnmangledDetails
from msvc_mangler import mangle_class, mangle_function
from repo_replace_function_names import set_function_name_in_repo_files

EMBEDDED_ENUMS = {
    "GGuidance": ["GUIDANCE_SFX_TYPE"],
}


CALL_TYPE_REPLACEMENTS = {
    "thiscall": "__thiscall",
    "fastcall": "__fastcall",
    "stdcall": "__stdcall",
    "ccall": "__cdecl",
    "cdecl": "__cdecl",
}


def fix_calltype(input: str) -> str:
    return CALL_TYPE_REPLACEMENTS.get(input, input)


def fix_mac_mangled(input: str) -> str:
    return input.lstrip(".")


def fix_addr(input: str) -> int:
    if input.lower() in {'inline', 'inlined', "-1", "null", "none"}:
        return -1
    return int(input, 16)


def insert_functions_from_csv(csv_path: Path, json_path: Path):
    with json_path.open() as f:
        data = json.load(f)
    custom_types_lut = {i['type'].removeprefix("struct ").removeprefix("union ").removeprefix("enum "): i['type'] for i in data['types']}

    new_entries = []
    with csv_path.open() as f:
        for line in csv.DictReader(f.readlines()):
            is_virtual = False  # Normally, all virtual functions are named
            win_addr = fix_addr(line['win addr'])
            mac_addr = fix_addr(line['mac addr'])
            call_type = fix_calltype(line['call type'])
            mac_mangled = fix_mac_mangled(line['mac mangled name'])
            return_type = line['return type']
            if return_type in custom_types_lut:
                return_type = custom_types_lut[return_type]
            elif return_type.removesuffix(" *") in custom_types_lut:
                return_type = custom_types_lut[return_type.removesuffix(" *")] + " *"
            elif return_type.removesuffix("*") in custom_types_lut:
                return_type = custom_types_lut[return_type.removesuffix("*")] + "*"
            return_type = custom_types_lut.get(return_type, return_type)
            mac_unmangled = UnmangledDetails(mac_mangled)
            argument_types = []
            if mac_unmangled.args != [UnmangledDetails.Arg([], "void")]:
                for i in mac_unmangled.args:
                    i = copy(i)
                    i.typename = custom_types_lut.get(i.typename, i.typename)
                    t = str(i).replace("&", "*")
                    if t.count("const") == 1 and t.endswith(" const *"):
                        t = f"const {t.removesuffix(" const *")} *"
                    argument_types.append(t)
            argument_names = [f"param_{i + 1}" for i in range(len(argument_types))]

            if hasattr(mac_unmangled, "type_name"): # class function

                embedded_enums = "\n".join(f"enum {i} {{{i}_0}};" for i in EMBEDDED_ENUMS.get(mac_unmangled.type_name, []))

                class_definition = f"""\
class {mac_unmangled.type_name}
{{
public:
    {embedded_enums}
    {return_type if mac_unmangled.function_name not in ['__ct', '__dt'] else ''}\
    {mac_unmangled.get_post_namespace_signature()};
}};
"""
                mangled_class = mangle_class(class_definition)
                mangled_name = mangled_class[0]

                this_type = f"{'const ' if mac_unmangled.isconst else ''}struct {mac_unmangled.type_name} *"

                argument_types = [this_type] + argument_types
                argument_names = ["this"] + argument_names

            else: # non-class function
                function_definition = f"{return_type} {mac_unmangled.get_post_namespace_signature()};"
                mangled_name = mangle_function(function_definition)

            print(f"Inserting {str(mac_unmangled)}")
            entry = dict(
                win_addr=win_addr,
                mac_addr=mac_addr,
                decorated_name=str(mac_unmangled),
                undecorated_name=mac_mangled,
                mangled_name=mangled_name,
                return_type=return_type,
                call_type=call_type,
                argument_types=argument_types,
                argument_names=argument_names,
                is_function_variadic=False,
                inline_body=None,
            )
            new_entries.append(entry)

            if win_addr != -1:
                set_function_name_in_repo_files(win_addr, mangled_name)

    data['functions'] += new_entries
    with json_path.open("w") as f:
        data = json.dump(data, f, indent=2)

if __name__ == "__main__":
    csv_path = Path(sys.argv[1])
    json_path = Path(sys.argv[2])
    insert_functions_from_csv(csv_path, json_path)
