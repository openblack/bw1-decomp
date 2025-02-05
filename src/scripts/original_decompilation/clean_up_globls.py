"""
Cross reference .globls and .extern declarations to remove .globls which aren't externally used.
"""

from pathlib import Path

if __name__ == '__main__':
    extern_labels = set()
    for path in Path("src/asm/unprocessed").rglob("runblack.reassemble.*.asm"):
        with open(path, "r") as f:
            for line in f:
                if line.startswith(".extern _jmp_addr_0x"):
                    extern_labels.add(line.removeprefix(".extern ").strip())

    for path in Path("src/asm/unprocessed").rglob("runblack.reassemble.*.asm"):
        filename = path.name
        file_globls = set()
        # get lines in file that start with .globl _jmp_addr_0x
        with open(path, "r") as f:
            for line in f:
                if line.startswith(".globl _jmp_addr_0x"):
                    file_globls.add(line.removeprefix(".globl ").strip())
        non_referenced_globls = file_globls - extern_labels
        non_referenced_globls = {f".globl {label}\n" for label in non_referenced_globls}
        # if there are non-referenced globals remove their lines
        if non_referenced_globls:
            with open(path, "r") as f:
                lines = f.readlines()
            with open(path, "w") as f:
                for line in lines:
                    if line not in non_referenced_globls:
                        f.write(line)
