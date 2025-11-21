import subprocess
from typing import Optional
from pathlib import Path
from glob import glob

VFTABLE_FILEPATHS = list(map(Path, glob("src/asm/unprocessed/rdata.*-vftables.asm")))

def sed(pattern, replacement, path: Path):
    sep="/"
    cmd = ["sed", "-i", "-E", f"s{sep}{pattern}{sep}{replacement}{sep}g", path]
    subprocess.run(cmd)

def git_grep(pattern: str, path: Optional[Path]=None) -> str:
    cmd = ["git", "grep", pattern]
    if path:
        cmd += ["--", path.as_posix()]
    return subprocess.run(cmd, capture_output=True, text=True).stdout

def git_grep_quiet(pattern: str, path: Optional[Path]=None) -> bool:
    cmd = ["git", "grep", "-q", pattern]
    if path:
        cmd += ["--", path.as_posix()]
    return subprocess.run(cmd).returncode == 0

def get_grep_filenames(pattern: str, path: Optional[Path]=None) -> list[str]:
    cmd = ['git', 'grep', '-l', pattern]
    if path:
        cmd += ["--", path.as_posix()]
    result = subprocess.run(cmd, capture_output=True, text=True)
    return result.stdout.strip().split('\n')

def get_grep_filename(pattern: str, path: Optional[Path]=None) -> str:
    filenames = get_grep_filenames(pattern, path)
    assert len(filenames) == 1, f"Expected 1 match, got {len(filenames)}: {filenames}"
    return filenames[0]

def git_sed(pattern: str, replacement: str, path: Optional[Path]=None):
    filenames = get_grep_filenames(pattern, path)
    for f in map(Path, filter(None, filenames)):
        sed(pattern, replacement, f)

def replace_function_name_in_repo_asm_rtti(source: str, destination: str):
    for vftable_filepath in VFTABLE_FILEPATHS:
        sed(", " + source + ", ", "\\n.long " + destination + "\\n.long ", vftable_filepath)
        sed(", " + source, "\\n.long " + destination, vftable_filepath)
        sed(source + ", ", destination + "\\n.long ", vftable_filepath)
        git_sed(source, destination, vftable_filepath)

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
    if not filename:
        raise ValueError(f'Could not find pattern "{pattern}"')
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
