from pathlib import Path


def patch_libcmt(input_file: Path, output_file: Path, do_patching: bool):
    with open(input_file, 'rb') as fin:
        data = bytearray(fin.read())

    if do_patching:
        # IMAGE_SCN_TYPE_NO_PAD
        data[0x38] |= 0x8

    with open(output_file, 'wb') as fout:
        fout.write(data)


if __name__ == "__main__":
    import sys
    if len(sys.argv) != 4:
        print(f"Usage: {sys.argv[0]} <input_file> <output_file> <do_patching>")
        sys.exit(1)
    patch_libcmt(Path(sys.argv[1]), Path(sys.argv[2]), sys.argv[3] == 'ON')
