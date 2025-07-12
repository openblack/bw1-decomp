import subprocess
import re

from convert_function_body import convert_asm_to_c_body, get_required_attributes
from parse_asm_functions import parse_functions_from_file

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


if __name__ == "__main__":
    import sys
    asm_path = sys.argv[1]
    max_iterations = int(sys.argv[2])
    with open(asm_path, "r") as f:
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
