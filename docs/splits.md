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

## Per-unit `extra` symbols are shared COMDATs

`objdiff` compares our **pre-link** object against the **post-link** split object. The shipped
link resolved every shared COMDAT — header-defined inline functions, `__real@` constants, RTTI
descriptors, and `/OPT:ICF`-folded identical bodies — to a single copy, which `dtk` assigns by
address to one unit's split object. Our compiled object still carries a COMDAT copy of each of
those it touches, so every surviving copy that did not land in this unit shows as **`extra`** in
the diff. (See `tools/project.py` `add_unit`/`fold` and `configure.py`'s function-level-linking
note.) Example: a unit can show hundreds of `extra` symbols and only a couple of `nonmatching`
ones; the extras are inline members of unrelated classes pulled in by headers.

So per-unit `extra` counts are **not** a source or split defect. To compare fairly, either diff
against the unit's `.fold.o` (the `fold` step folds the recompiled unit's shared COMDATs onto the
image's copies), or ignore `extra` symbols that are absent from `config/<ver>/symbols.txt`.

## Lenient vs strict relocation comparison

`objdiff-cli report generate` defaults to `functionRelocDiffs=none` (most lenient), under which a
function can read 100% while a relocation references a different symbol/addend than the target.
`configure.py`'s `config.progress_report_args` can pass
`"--config functionRelocDiffs=data_value"` to make the report stricter. `tools/decomp-strict.py`
surfaces strict-only mismatches read-only (functions 100% under the lenient comparison but below
100% under `functionRelocDiffs=all`) without changing the report.
