# `splits.txt`

This file contains file splits for a module.

Example (PE/COFF, MSVC 6):

```yaml
Sections:
	.text       type:code align:4096
	.rdata      type:rodata align:4096
	.data       type:data align:4096
	.data1      type:data align:4096
	SELFMOD     type:data align:4096
	.rsrc       type:rodata align:4096

Black/Abode.cpp:
	.text       start:0x00401000 end:0x00405070
	.rdata      start:0x008A99DC end:0x008AB278
	.rdata      start:0x009A62D8 end:0x009A6570
	.data       start:0x00C3C680 end:0x00C4CC80
```

## Header

```yaml
Sections:
    section     [section attributes]
```

### Attributes

- `type:` The section type. `code`, `data`, `rodata` or `bss`.
- `align:` The section alignment in bytes.
- `vaddr:` (relocatable modules only) The fixed virtual address of the section. When set, split and symbol addresses are written as absolute addresses.

## Files

```yaml
path/to/file.cpp: [file attributes]
    section     [section attributes]
    ...
```

- `path/to/file.cpp` The name of the source file, usually relative to `src`. The file does **not** need to exist to start.  
  This corresponds to an entry in `configure.py` for specifying compiler flags and other options.

### File attributes

- `order:` Allows influencing the resolved link order of objects. This is **not required**, as decomp-toolkit will generate the link order automatically. This can be used to fine-tune the link order for ambiguous cases.  
  Example:
  ```
  file1.cpp: order:0
    ...

  file2.cpp: order:1
    ...

  file3.cpp: order:2
    ...
  ```
  This ensures that `file2.cpp` is always anchored in between 1 and 3 when resolving the final link order.

### Section attributes

- `start:` The start address of the section within the file. Absolute virtual address for the platform (e.g. `0x00401000` for a PE `.text` section based at `0x00400000`).
- `end:` The end address of the section within the file.
- `align:` Specifies the alignment of the section. If not specified, the default alignment for the section is used.
- `rename:` Writes this section under a different name when generating the split object.
- `skip` Skips this data when writing the object file. Used for ignoring data that's linker-generated.
