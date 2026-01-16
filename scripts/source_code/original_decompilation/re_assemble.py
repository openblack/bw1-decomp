import argparse
import json
import os
import subprocess
import sys

import pefile
from tqdm import tqdm
from pathlib import Path
from export_asm import Snippet, export_asm, get_all_referred_to_addresses, JMP_TARGET_PREFIX
from post_assemble_patch import patch_black


def process_group_to_asm_file(code, pe, group, exteral_addresses_refs, args):
    parts = group["parts"]
    i = group["index"]

    start = int(parts[0]['start'], base=16)
    end = int(parts[-1]['end'], base=16)
    snippets: list[Snippet] = [Snippet(e['type'], int(e['start'], base=16), int(e['end'], base=16)) for e in parts]

    asm_file: Path = args.output.parent / (args.output.stem + f".{i:04}.{start:08x}-{end:08x}" + ".asm")
    data = export_asm(
        code=code,
        pe=pe,
        output_file=asm_file,
        snippets=snippets,
        exteral_addresses_refs=exteral_addresses_refs,
    )
    return data, asm_file


def get_section(pe, name: str):
    b = name.encode()
    return next(i for i in pe.sections if i.Name.strip(b'\0') == b)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Disassemble and output assembly code.")
    parser.add_argument("--input", "-i", type=Path, default=Path("runblack.nocd.1.20.exe"), help="Input file for the binary code")
    parser.add_argument("--output", "-o", type=Path, default=Path("runblack.reassemble.exe"), help="Optional output file for the assembly code")
    parser.add_argument("--layout-file", "-f", type=Path, default=Path("textlayout.json"), help="Layout of parts to re-assemble")
    parser.add_argument("--assembler", "-a", type=Path, default="/usr/bin/clang")
    parser.add_argument("--linker", "-l", type=Path, default=Path("/usr/bin/lld"))
    args = parser.parse_args()

    layout = json.load(open(args.layout_file))

    grouped_parts = []
    current_group = None

    with args.input.open("rb") as f:
        code = f.read()
    
    pe = pefile.PE(args.input.as_posix())
    text_section_vsize = get_section(pe, '.text').Misc_VirtualSize
    data_section_vsize = get_section(pe, '.data').Misc_VirtualSize

    entry_point = pe.OPTIONAL_HEADER.ImageBase + pe.OPTIONAL_HEADER.AddressOfEntryPoint
    external_addresses_refs = {entry_point}
    print("Gathering all jump labels")
    for part in tqdm(layout['parts']):
        type_ = part['type']
        if part['type'] == 'asm':
            start = int(part['start'], base=16)
            end = int(part['end'], base=16)
            snippet_addrs = get_all_referred_to_addresses(code, pe, Snippet(type_, start, end))
            external_addresses_refs.update(snippet_addrs)

    for i, part in enumerate(layout['parts']):
        type_ = part['type']
        start = int(part['start'], base=16)
        end = int(part['end'], base=16)

        if type_ == 'asm' and start % 0x10 == 0:
            # Start a new group
            if current_group is not None:
                grouped_parts.append(current_group)
            current_group = {
                "index": i,
                "parts": [part],
            }
        elif current_group is not None:
            # Append db to the current group
            current_group["parts"].append(part)
        else:
            raise RuntimeError("Can't start a group or add to one")

    # Add the last group
    if current_group is not None:
        grouped_parts.append(current_group)

    asm_files = []
    print("Disassembling groups of assembly and data to assembly files")
    for group in tqdm(grouped_parts):
        data, asm_file = process_group_to_asm_file(code, pe, group, external_addresses_refs, args)
        asm_files.append(asm_file)
        program_base = data["program_base"]
        file_alignment = data["file_alignment"]
        sections_start = data["sections_start"]

    subprocess.run([args.assembler.as_posix(), "-target", "i686-pc-windows-gnu", "-m32", "-c", "rdata.asm", "-o", "rdata.o"], check=True)
    subprocess.run([args.assembler.as_posix(), "-target", "i686-pc-windows-gnu", "-m32", "-c", "data.asm", "-o", "data.o"], check=True)
    subprocess.run([args.assembler.as_posix(), "-target", "i686-pc-windows-gnu", "-m32", "-c", "data1.asm", "-o", "data1.o"], check=True)
    subprocess.run([args.assembler.as_posix(), "-target", "i686-pc-windows-gnu", "-m32", "-c", "SELFMOD.asm", "-o", "SELFMOD.o"], check=True)
    subprocess.run([args.assembler.as_posix(), "-target", "i686-pc-windows-gnu", "-m32", "-c", "rsrc.asm", "-o", "rsrc.o"], check=True)

    obj_files = []
    print("Reassembling disassembled parts to object files")
    for asm_file in asm_files:
        obj_file = Path(asm_file.as_posix().rstrip(".asm") + ".o")
        assembler_cmd = [args.assembler.as_posix(), "-target", "i686-pc-windows-gnu", "-m32", "-c", asm_file.as_posix(), "-o", obj_file.as_posix()]
        subprocess.run(assembler_cmd, check=True)
        obj_files.append(obj_file)

    unpatched_output = args.output.with_stem(args.output.stem + ".unpatched")

    sections_added_by_linker_to_remove = ['.idata', '.reloc']
    print("Linking")
    linker_cmd = [args.linker.as_posix()] + [
        "-flavor",
        "link",
        "/FIXED",
        f"/sectionvsize:.text,{hex(text_section_vsize)}",
        f"/sectionvsize:.data,{hex(data_section_vsize)}",
        "/subsystem:windows,4",
        f"/stack:{hex(0x100000)},{0x1000}",
        f"/heap:{hex(0x100000)},{0x1000}",
        f"/base:{hex(program_base)}",
        f"/filealign:{hex(file_alignment)}",
        f"/entry:jmp_addr_0x{entry_point:08x}",
        "/safeseh:no",
        f"/out:{unpatched_output}",
    ] + [
        obj_file.as_posix() for obj_file in obj_files] + [
        "rdata.o",
        "data.o",
        "data1.o",
        "SELFMOD.o",
        "rsrc.o",
    ]
    subprocess.run(linker_cmd, check=True, env=dict(**os.environ, WINEDEBUG= "-all"))

    print("Removing sections added by linker")
    subprocess.run(['objcopy'] + [f'--remove-section={name}' for name in sections_added_by_linker_to_remove] + [unpatched_output], check=True)

    print("Stripping Debug unwanted debug info")
    subprocess.run(['strip', unpatched_output], check=True)

    print("Patching the PE header")
    patch_black(unpatched_output, args.output, False, False)

    result = subprocess.run(["cmp", "-l", args.input, args.output], capture_output=True)
    MAX_LINES = 40
    for line in result.stdout.decode().splitlines()[:MAX_LINES]:
        split_line = tuple(map(lambda x: int(x, 8), line.split()))
        sys.stdout.write(f"0x{start + split_line[0] - 1:08x}: {split_line[1]:3x}, {split_line[2]:3x}\n")
    if len(result.stdout.decode().splitlines()) > MAX_LINES:
        sys.stdout.write(f"truncated at {MAX_LINES}/{len(result.stdout.decode().splitlines())} lines...\n")
    if result.returncode != 0:
        exit(result.returncode)

    subprocess.run(['md5sum', args.input.as_posix(), args.output.as_posix()], check=True)
