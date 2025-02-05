# bw1-decomp source scripts

This directory contains various scripts that fix-up the executable post-linking as well as an archive of the script used to decompile.

* `post_assemble_patch.py`: This script is invoked by the rebuilding process as a last step. It reworks the PE header to match vanilla. It add the Rich Header which is not added by our linker. It inserts some random strings that exist in vanilla. It fixes some of the characteristics, the time stamp, linker id and version, virtual section sizes, clears the checksum and more.

## Original Decompilation

This directory is an archive of the scripts which were used to disassemble and reassemble the executable. They are kept there as a reference for future re-creations.

They include:
* `jump_table_detector.py`: a ghidra script used to detect inline db and switch statement jump tables. It generates `textlayout.json`. It has an unfixed bug when there are several jump tables in a row.
* `textlayout.json`: a database of data, code and jump table sections in the `.text` section of the executable. Is the reason the unprocessed asm sources are split the way they are.
* `export_asm.py`: this script uses capstone to disassemble ranges of bytes to x86 assembly. It also fixes up the source code in a way that can be reassembled by a patched `llvm` to produce the exact same op codes. In some cases, it will output `.byte` segments when such a reassembly is not possible even with the patched `clang`.
* `post_assemble_patch.py`: is an archive copy of the one in the parent directory.
* `re_assemble.py`: this is the original disassembly, re-assembly and validation script which makes use of some of the other scripts to disassemble, then reassemble using the patched `clang`, link, patch and compare the result against the original executable.
* `rename_globls.py`: This cross references known function names and addresses in assembly source to give proper decorated names.
* `clean_up_globls.py`: This cross references .globls and .extern declarations to remove .globls which aren't externally used.
