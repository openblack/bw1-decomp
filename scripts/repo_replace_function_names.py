import subprocess
from typing import Optional
from pathlib import Path

RTTI_DATA_FILE = Path("src/asm/unprocessed/rdata.003.008a99d0-0099f250.asm")

def sed(pattern, replacement, path):
    cmd = ["sed", "-i", "-E", f"s/{pattern}/{replacement}/g", path]
    subprocess.run(cmd)

def git_sed(pattern: str, replacement: str, path: Optional[Path]=None):
    cmd = ["git", "sed", pattern, replacement]
    if path:
        cmd += ["--", path]
    subprocess.run(cmd)

def git_grep(pattern: str, path: Optional[Path]=None) -> str:
    cmd = ["git", "grep", pattern]
    if path:
        cmd += ["--", path]
    return subprocess.run(cmd, capture_output=True, text=True).stdout

def git_grep_quiet(pattern: str, path: Optional[Path]=None) -> bool:
    cmd = ["git", "grep", "-q", pattern]
    if path:
        cmd += ["--", path]
    return subprocess.run(cmd).returncode == 0

def get_grep_filename(pattern: str, path: Optional[Path]=None) -> str:
    cmd = ['git', 'grep', '-l', pattern]
    if path:
        cmd += ["--", path]
    result = subprocess.run(cmd, capture_output=True, text=True, check=True)
    filenames = result.stdout.strip().split('\n')
    assert len(filenames) == 1, f"Expected 1 match, got {len(filenames)}: {filenames}"
    return filenames[0]

def replace_function_name_in_repo_asm_rtti(source: str, destination: str):
    sed(", " + source + ", ", "\\n.long " + destination + "\\n.long ", RTTI_DATA_FILE)
    sed(", " + source, "\\n.long " + destination, RTTI_DATA_FILE)
    sed(source + ", ", destination + "\\n.long ", RTTI_DATA_FILE)
    git_sed(source, destination, RTTI_DATA_FILE)

def replace_function_name_in_repo_files(source: str, destination: str):
    replace_function_name_in_repo_asm_rtti(source, destination)
    len_diff = len(source) - len(destination)
    if len_diff == 0:
        git_sed(source, destination)
    else:
        if len_diff < 0:
            source_spaces = (-len_diff) * ' '
            destination_spaces = ''
        else:
            source_spaces = ''
            destination_spaces = len_diff * ' '

        git_sed("global " + source, "global " + destination)
        git_sed("extern " + source, "extern " + destination)
        git_sed(source + ": ", destination + ":\\n  " + ' ' * (len(source)))
        git_sed(source + ":", destination + ":")
        git_sed(source + source_spaces, destination + destination_spaces)
        git_sed(source, destination)

def insert_global_function_name_to_asm_file(addr: int, label: str):
    pattern = f"// 0x{addr:08x}"
    filename = get_grep_filename(pattern)
    lines = open(filename).read().splitlines()

    # Insert `{label}:` before the line matching `// {addr}`
    for idx, line in enumerate(lines):
        if pattern in line:
            lines.insert(idx, f"{label}:")
            break
    else:
        raise ValueError(f"No line found in {filename} matching {pattern}")

    # Find the last `.globl` and insert `.globl {label}` after it
    last_globl_idx = max((i for i, line in enumerate(lines) if line.strip().startswith('.globl')), default=None)
    if last_globl_idx is not None:
        lines.insert(last_globl_idx + 1, f".globl {label}")
    else:
        last_extern_idx = max((i for i, line in enumerate(lines) if line.strip().startswith('.extern')), default=None)
        if last_extern_idx is not None:
            lines.insert(last_extern_idx + 1, f"")
            lines.insert(last_extern_idx + 1, f".globl {label}")
            lines.insert(last_extern_idx + 1, f"")
        else:
            raise RuntimeError(f"No `.globl` or `.extern` found in {filename}, skipping `.globl {label}` insertion.")
    # Write modified content back
    with open(filename, "w") as f:
        f.write('\n'.join(lines) + '\n')

def set_function_name_in_repo_files(addr: int, label: str):
    if git_grep_quiet(label + ":") or get_grep_filename(f"// 0x{addr:08x} ").endswith(".c"):
        return # Already properly named
    typical_jmp_addr = f"_jmp_addr_0x{addr:08x}"
    if git_grep_quiet(typical_jmp_addr + ":"):
        replace_function_name_in_repo_files(typical_jmp_addr, label)
    else:
        insert_global_function_name_to_asm_file(addr, label)

if __name__ == "__main__":
    import sys
    set_function_name_in_repo_files(int(sys.argv[1]), int(sys.argv[2]))
