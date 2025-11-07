import sys
from pathlib import Path

def clean_up_externs_and_globls(filepath: Path) -> int:
    with filepath.open() as f:
        lines = f.readlines()
    externs = {i.split(" ")[1].strip() : idx for idx, i in enumerate(lines) if i.startswith(".extern")}
    globls = {i.split(" ")[1].strip() : idx for idx, i in enumerate(lines) if i.startswith(".globl")}
    labels = {i.split(":")[0].strip() for i in lines if ":" in i}

    used_externs = set()

    for l in lines:
        if l.startswith(".extern"):
            continue
        for e in externs.keys():
            if e in l:
                used_externs.add(e)


    non_existent_globls = set(globls.keys()) - labels
    non_existent_externs = set(externs.keys()) - used_externs
    non_existent_globls_lines = {globls[i] for i in non_existent_globls}
    non_existent_extern_lines = {externs[i] for i in non_existent_externs}
    lines_to_remove = sorted(non_existent_globls_lines.union(non_existent_extern_lines))
    for line_index in reversed(lines_to_remove):
        lines.pop(line_index)

    with filepath.open("w") as f:
        f.writelines(lines)

    return len(lines_to_remove)

if __name__ == "__main__":
    lines_removed = 0
    for path in map(Path, sys.argv[1:]):
        lines_removed += clean_up_externs_and_globls(path)
    print(f"removed {lines_removed} lines")
