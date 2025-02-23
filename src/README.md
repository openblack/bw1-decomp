# bw1-decomp source

This directory contains the decompilation source and the tools needed to rebuild the original `runblack.exe` executable.

## Assembly

In `asm/`, there is the source to generate `runblack.exe` in assembly format. As decompilation processes, there will be less and less source in there as they move to C or C++.

### Unprocessed

In `asm/unprocessed/` are raw parts of assembly with no processing done. The processing requires going through the functions, splitting them off to `asm/Game.asm` or `cpp/Game.cpp` for example.
This process should be done in a way that preserves the final md5sum when building for original compatibility. As decompilation progresses, all assembly source should move out into processed areas or go directly into C/C++ files.

Files with names starting with `runblack.reassemble.` are part of the `.text` sections of the exectuable. These are the main source code.

They do contain some `db` definitions. These can be either be:

* Garbage bytes
* Assembly instructions which were not easily assembled. These would have the original capstone disassembly and expected opcodes in comments.
* Switch statement [jump tables](https://reverseengineering.stackexchange.com/a/11699) or indirect jump table indices. These need to be changed to labels to allow for non-exact reassembly.

The rest of the files are more of data.
* `rdata.asm`: read-only data section, contains function pointers and vtables
* `data.asm`: read-write data section, contains function pointers and RTTI structs
* `data1.asm`: read-write data section, doesn't contain much. Could be from static linking.
* `SELFMOD.asm`: read-only section but in reality should be executable. It contains non-disassembled code. Not sure where it comes from. Could be safedisk related.
* `rsrc.asm`: read-only section, contains resource data such as icons. Built with cvtres from vs97. This should be replaced by source in a `.rc` file.

## Scripts

In `scripts/`, there are various scripts that fix-up the executable post-linking as well as an archive of the script used to decompile.

See [scripts/README.md](src/README.md) for more details.

## Building

CMake can rebuild a byte-for-byte replica of the original `runblack.exe`.

For the assembly, patching, linking and others, it requires a **patched** llvm.

If the wrong assembler is used, then there won't be the correct object code generated (e.g. register displacements might be of different sizes or opcodes may vary).

We try to use labels instead of hardcoded absolute offsets, but there are some that remain. This means if opcodes vary in length, addresses will shift and no longer match.

If the wrong linker is used, sections may be placed in different virtual and physical offsets. This means the post process script will likely assign wrong offsets.

If either the assembler or linker are wrongly used, then the md5 sums will not match.

```bash
# Download the latest llvm-project from https://github.com/openblack/llvm-project/releases

# from the bw1-decomp directory
cmake -Ssrc -Bbuild -DLLVM_BINARIES_DIR=/path/to/the/latest/llvm-project
cmake --build build
```

### Supported versions

| md5sum                             | version         |
| ---------------------------------- | --------------- |
| `174b1a64e74b2321f3c38ccc8a511e78` | 1.20 with no cd |
