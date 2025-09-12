import argparse
import json
import re
import subprocess
import sys

from convert_function_body import convert_asm_to_c_body, get_required_attributes
from glob import glob
from pathlib import Path
from parse_asm_functions import parse_functions_from_file
from cleanup_imports_exports import clean_up_externs_and_globls

def get_c_decl(mangled: str) -> str:
    result = subprocess.run(
        ["git", "grep", "-h", f'asm("{mangled}")'],
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
        check=True,
        text=True,
    )
    lines = result.stdout.strip().splitlines()
    decl = lines[0]

    match = re.search(rf' asm\("{re.escape(mangled)}"\);', decl)
    return decl[:match.start()]

def process_text_mode(asm_path: Path, max_iterations: int):
    with asm_path.open() as f:
        count = 0
        global_start_line = None
        global_end_line = None
        for name, body, start_line, end_line in parse_functions_from_file(f):
            if global_start_line is None or start_line < global_start_line:
                global_start_line = start_line
            if global_end_line is None or end_line > global_end_line:
                global_end_line = end_line
            print()
            attributes = get_required_attributes(body)
            if attributes:
                print(f"__attribute__(({", ".join(attributes)}))")

            print(get_c_decl(name))
            print("{")
            print(convert_asm_to_c_body(body))
            print("}")
            count += 1
            if count >= max_iterations:
                break

    # Remove lines in [global_start_line, global_end_line]
    with open(asm_path, "r") as f:
        all_lines = f.readlines()

    with open(asm_path, "w") as f:
        for lineno, line in enumerate(all_lines, start=1):
            if not (global_start_line <= lineno <= global_end_line):
                f.write(line)

def process_vtable_mode(filepath: Path):
    REVERSING_DATABASE_FILENAME = "extracted_reversing_data_bw_141.json"
    extra_headers = []
    with open(REVERSING_DATABASE_FILENAME, "r") as f:
        db = json.load(f)
    mangled_lookup = {i["mangled_name"]: i["undecorated_name"] for i in db['functions']}
    mangled_lookup['__purecall'] = '(void*)_purecall'
    extra_header_lookup = {'__purecall': "_libcmt_helper.h"}
    with open(filepath, "r") as f:
        all_lines = f.readlines()
    first_vt_line = next(i for i, l in enumerate(all_lines) if l.startswith("VftableAndRTTI"))
    last_vt_line = next(i for i, l in enumerate(all_lines[first_vt_line:], start=first_vt_line) if l == "\n")
    vt_block = all_lines[first_vt_line:last_vt_line]
    type_name = vt_block[0].split(" ")[1].rstrip()
    path = Path("src/c") / f"{type_name}.000.c"
    if path.exists():
        print(f"vftable needs to go in {path} but the file exists", file=sys.stderr)
        exit(1)
    entries = []
    for i in vt_block[1:]:
        entry = i.split(" ")[1].rstrip()
        if not entry.strip():
            print("vftable entry is blank", file=sys.stderr)
            exit(1)
        if entry[0] != '?' and entry != '__purecall':
            print(f"vftable entry is not properly formatted as thiscall: {entry}", file=sys.stderr)
            exit(1)
        entries.append(entry)
    extra_headers = sorted(filter(None, (extra_header_lookup.get(i) for i in entries)))
    c_entries = [mangled_lookup[i] for i in entries]
    with path.open("w") as f:
        f.write(f'#include "{type_name}.h"\n')
        for header in extra_headers:
            f.write(f'#include "{header}"\n')
        f.write(f'''
const struct RTTICompleteObjectLocator* const p__RTTICompleteObjectLocator__{len(type_name)}{type_name} = &__RTTICompleteObjectLocator__{len(type_name)}{type_name};

const struct {type_name}Vftable __vt__{len(type_name)}{type_name} = {{
''')
        for i in c_entries:
            f.write(f"  {i},\n")
        f.write("};\n")
    with open(filepath, "w") as f:
        f.writelines(all_lines[:first_vt_line])
        f.writelines(all_lines[last_vt_line+1:])
    print(f"Wrote the vftable for {type_name} in {path}")


def main():
    parser = argparse.ArgumentParser(description='Move Assembly code to C files')
    subparsers = parser.add_subparsers(dest='mode', help='Processing mode')

    text_parser = subparsers.add_parser('text', help='Process .text segment functions')
    text_parser.add_argument('asm_path', type=Path, help='Path to assembly file')
    text_parser.add_argument('max_iterations', type=int, help='Maximum number of iterations')

    vtable_parser = subparsers.add_parser('vftable', help='Process Virtual Function Tables')
    vtable_parser.add_argument('asm_path', type=Path, help='Path to assembly file')

    args = parser.parse_args()

    if args.mode == 'text':
        process_text_mode(args.asm_path, args.max_iterations)
        clean_up_externs_and_globls(args.asm_path)
    elif args.mode == 'vftable':
        process_vtable_mode(args.asm_path)
    else:
        parser.print_help()
        sys.exit(1)

if __name__ == "__main__":
    main()
