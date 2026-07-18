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
build/<ver>/runblack-decrypted-linked.exe
  │  post_link_patch.py   (post-link step)
  ▼
build/<ver>/runblack-decrypted.exe       byte-identical to the source
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

## SHA verification

- `orig/<ver>/runblack-decrypted.exe` — source of truth, checked by `build.sha1`.
- `build/<ver>/runblack-preprocessed.exe` — deterministic; checked by dtk against
  `config.yml`'s `hash` (the split input).
- `build/<ver>/runblack-decrypted.exe` — final output, checked by `build.sha1`.
