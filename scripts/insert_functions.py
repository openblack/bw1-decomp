import csv
import json
import sys
from pathlib import Path

from mac_unmangler import UnmangledDetails
from msvc_mangler import mangle_class
from repo_replace_function_names import set_function_name_in_repo_files

EMBEDDED_ENUMS = {
    "GGuidance": ["GUIDANCE_SFX_TYPE"],
}


CALL_TYPE_REPLACEMNTS = {
    "thiscall": "__thiscall",
    "fastcall": "__fastcall",
    "stdcall": "__stdcall",
    "ccall": "__cdecl",
    "cdecl": "__cdecl",
}


def fix_calltype(input: str) -> str:
    return CALL_TYPE_REPLACEMNTS.get(input, input)


def fix_mac_mangled(input: str) -> str:
    return input.lstrip(".")


def insert_functions_from_csv(csv_path: Path, json_path: Path):
    new_entries = []
    with csv_path.open() as f:
        for line in csv.DictReader(f.readlines()):
            is_virtual = False  # Normally, all virtual functions are named
            win_addr = int(line['win addr'], 16)
            mac_addr = int(line['mac addr'], 16)
            call_type = fix_calltype(line['call type'])
            mac_mangled = fix_mac_mangled(line['mac mangled name'])
            return_type = line['return type']
            mac_unmangled = UnmangledDetails(mac_mangled)
            argument_types = list(map(str, mac_unmangled.args))
            argument_names = [f"param_{i + 1}" for i in range(len(argument_types))]

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

            if call_type == '__thiscall':
                if argument_types:
                    argument_types = [f"{mac_unmangled.type_name}*", "void*"] + argument_types
                    argument_names = ["this", "edx"] + argument_names
                else:
                    argument_types = [f"{mac_unmangled.type_name}*"]
                    argument_names = ["this"]
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

            set_function_name_in_repo_files(win_addr, mangled_name)

    with json_path.open() as f:
        data = json.load(f)
    data['functions'] += new_entries
    with json_path.open("w") as f:
        data = json.dump(data, f, indent=2)

if __name__ == "__main__":
    csv_path = Path(sys.argv[1])
    json_path = Path(sys.argv[2])
    insert_functions_from_csv(csv_path, json_path)
