# Binary transformations

The shipped executable is MSVC 6.0 linker output wrapped by SafeDisc, then run
through a third-party decryptor. Neither the SafeDisc wrapping nor the decryptor
graffiti is linker output, so the build strips it before splitting and
reproduces it after linking. dtk and lld-link only ever see pristine linker
output.

```
orig/<ver>/runblack-decrypted.exe        third-party-decrypted, vandalized
  │  pre_dtk_patch.py   (pre-split step)
  ▼
build/<ver>/runblack-preprocessed.exe    pristine linker shape
  │  dtk coff split  →  objs  →  lld-link
  ▼
build/<ver>/runblack-linked.exe          pristine linker output, debuggable
  │  post_link_patch.py   (post-link step)
  ▼
build/<ver>/runblack.exe                 byte-identical to the source
```

Both patch scripts are wired through the standard `custom_build_steps` hooks in
`configure.py` (`pre-split` and `post-link`).

## Header layout

The exestr comments are the crux. MSVC's Intel-compiled objects carry
`#pragma comment(exestr, "…")`, which the compiler emits as an `-?comment:"…"`
directive in the object's `.drectve` section. Real MSVC 6.0 `link.exe` embeds
the string **flush after the section table** in the header padding (verified:
gap 0). Nothing in the PE references it — it is free-floating bytes inside
`SizeOfHeaders`.

SafeDisc and the decryptor then rearrange that region:

```
link.exe:   [section table][comment flush]
SafeDisc:   inserts 2 section headers (stxt774, stxt371 = 2*40 = 0x50) after the
            section table, shoving the comment forward 0x50
decryptor:  removes those 2 headers (zeroing the 0x50), writes a cracker
            signature into the freed space, and over-zeros the first 24 bytes of
            the first comment when wiping it
```

So on the decrypted exe the first comment is truncated (`Intel(R) C++ Compiler
fo` gone, `r 32-bit…` survives), preceded by cracker graffiti; the encrypted
disc image still has the full strings intact.

## pre_dtk_patch.py (decrypted → preprocessed)

Restores the pristine linker shape:

- zeroes the whole header padding (`section_table_end … SizeOfHeaders`), wiping
  the cracker graffiti (`crazy bad bwoy`, `Safedisc2Cleaner …`, `BoG_`, etc.);
- restores the first comment's 24-byte prefix (hardcoded — the decrypted exe no
  longer has it; a future decryptor working from the encrypted image would carry
  it through);
- writes the full comments flush after the section table.

Comments are identified by content (`32-bit applications`), so graffiti and
unrelated markers are never mistaken for them.

## dtk / lld-link

The comment range is declared in `splits.txt` like any other segment:

```
Sections:
	.drectve    type:comment vaddr:0x00400328 end:0x004006B2
```

dtk reads it (`read_splits_sections`), extracts the bytes from the header
padding, and re-emits them as `-?comment:"…"` directives in a generated
`.drectve` object. lld-link (openblack fork) understands `-?comment` and embeds
each string flush after the section table, matching link.exe.

## post_link_patch.py (linked → decrypted)

Reproduces everything the wrapping/decryptor did, at their final offsets:

- inserts the Rich header (`insert_rich_header`), shifting the PE header and the
  free-floating comment bytes forward;
- inserts the 0x50 SafeDisc bump after the section table so the comments land at
  their decrypted offset, then re-applies the decryptor's 24-byte prefix erasure;
- writes the cracker graffiti and SafeDisc markers.

The Intel comment strings are no longer hardcoded here — they flow from the
objects through lld-link.

## Debug directory

1.10 and 1.20 were linked with `/debug`: link.exe put an `IMAGE_DEBUG_DIRECTORY`
in `.rdata` immediately past the IAT, naming an NB10 CodeView record appended
past the last section. 1.00 has neither.

Rather than copy those 0x1C bytes out of the original, the build makes the
linker emit them:

- `splits.txt` extends `.idata$5` over link.exe's IAT tail padding (`…99A8` →
  `…99C0`) and declares the directory as the sub-region `.rdata$debug` in
  `Sections:`, marked `linker`;
- dtk carves a `linker` region into its own unit (`linker/rdata_debug`) and
  leaves it out of the link, and `configure.py` links the base image with
  `/debug`, so the directory's 0x1C bytes are a hole;
- lld-link (openblack fork, `bw1-decomp-021`+) inserts its debug directory after
  the last `.idata$5` chunk, matching link.exe, and fills the hole exactly.

`post_link_patch.py` then restamps the entry to the shipped link time, size and
CodeView offset, and erases the RSDS record lld-link leaves in `.rdata`'s tail
slack — zero in the shipped image. 1.20's NB10 record is written past the last
section and then trimmed off by `force_size`; 1.10 keeps it.

The payoff is `build/<ver>/runblack-linked.exe`: the pre-patch artifact is now a
debuggable image whose debug directory points at `runblack-linked.pdb`, so it
loads in Ghidra or under a debugger with ~38k symbol names, while the patched
`runblack.exe` stays byte-identical. `--debug` adds `/Zi` types on top and is
layout-neutral — that build still matches.

The IAT tail padding itself is unexplained: link.exe's gap between IAT end and
debug directory is 0 on its own output and on 1.30, 0xC on LHMultiplayerR.dll,
but 0x18 on the 1.10/1.20 executables. Absorbing it into `.idata$5` sidesteps
needing the rule. With linker-generated imports (below), dtk turns that extent
into padding after the last IAT entry.

## Import and export tables

For 1.20 the linker writes the import tables of every image, and the export
tables of the four DLLs, instead of the split objects copying them. As with the
debug directory, `splits.txt` marks the tables' sections `linker` in
`Sections:` (`.idata$2`–`$6`, or LHDialog's single `.idata`, and `.edata`), and
dtk gives each its own `linker` unit (`linker/idata_5`, `linker/edata`, ...),
which stays out of the link. dtk refuses a module that generates a table whose
section isn't marked `linker`, or a splits.txt unit that claims part of one.
`config.yml` turns on `generate_imports` / `generate_exports` for each module,
and dtk passes the linker what the original tables say:

- **Exports:** every split object carries `-export:` directives for the symbols it
  defines that the image exports. A recompiled unit keeps cl.exe's own
  `__declspec(dllexport)` directives. The image's DLL name and timestamp come in
  through `exports.def` and `/TIMESTAMP:`. LHLog's link.exe 7.0 `/OPT:ICF` folds
  are `alias` labels in its symbols. LHDialogLib.dll was linked incrementally and
  exports through its `@ILT+n_` thunks.
- **Imports:** `imports.lib` is a short-format import library holding the original
  hints and imported names. `imports.order` gives lld-link's `/vc6imports:` the
  layout link.exe produced: descriptor order, IAT slot order, and the hint/name
  area with its DLL names, as listed below. This is because link.exe 6 laid the
  tables out by its library-search order, which can't be redone without the
  original import libraries.
  - LHDialogLib.dll's incremental link left zero padding after each DLL's
    entries, which the order file carries too.
  - The executable's thunks (`jmp [__imp_X]`) stay in the split objects, as link.exe
    placed them among the code.

The executable's own "export table" (13 nameless entries all pointing at the
image base) and LHMultiplayerR.dll's delay-load tables are still copied.

`post_link_patch.py` restores what SafeDisc changed: every import descriptor of
the executable is stamped bound (`TimeDateStamp` and `ForwarderChain`
0xFFFFFFFF), although there is no bound import directory and the IAT is
unbound.

The report counts these units as well. For each `linker` unit,
`tools/linker_unit.py` compares our final image with the original over that
range, and objdiff gets the target object as its base only if the bytes are
identical.

## SHA verification

- `orig/<ver>/runblack-decrypted.exe` — source of truth, checked by `build.sha1`.
- `build/<ver>/runblack-preprocessed.exe` — deterministic; checked by dtk against
  `config.yml`'s `hash` (the split input).
- `build/<ver>/runblack.exe` — final output, checked by `build.sha1`.
