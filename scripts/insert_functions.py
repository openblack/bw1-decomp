import csv
import json
from pathlib import Path

from cross_mangler import mac_mangled_to_msvc_mangled
from repo_replace_function_names import set_function_name_in_repo_files


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
            win_addr = fix_addr(line['win addr'])
            mac_addr = fix_addr(line['mac addr'])
            call_type = fix_calltype(line['call type'])
            mac_mangled = fix_mac_mangled(line['mac mangled name'])
            return_type = line['return type']
            
            mangled_name, mac_unmangled, return_type, argument_types, argument_names = mac_mangled_to_msvc_mangled(return_type, call_type, mac_mangled, custom_types_lut)

            if call_type == "static":
                call_type = '__cdecl'
            
            print(f"Inserting {str(mac_unmangled)}", flush=True)
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

    if not new_entries:
        raise ValueError("No new entries to add.")

    data['functions'] += new_entries
    with json_path.open("w") as f:
        data = json.dump(data, f, indent=2)

if __name__ == "__main__":
    import sys
    csv_path = Path(sys.argv[1])
    json_path = Path(sys.argv[2])
    insert_functions_from_csv(csv_path, json_path)
