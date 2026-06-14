---
name: libcmt-obj-matching
description: Add a LibObject so a CRT object from the downloaded LIBCMT.LIB (e.g. util.obj) links verbatim and byte-exact into all three BW1 versions (BW1E100, BW1E110, BW1E142). Covers placement, __fltused, the __real@8 comdat fold, blob splits, and BW1E100's /OPT:REF dead-strip.
---

# Add a LIBCMT.LIB object (LibObject) — match all 3 versions

Goal: take one member of `LIBCMT.LIB` (e.g. `util.obj`) and make it link
verbatim and **byte-exact** into BW1E100, BW1E110 and BW1E142. Nothing new is
committed — the `.LIB` and the extracted `.obj` are build artifacts.

Work one object at a time. Do every command. Use the real numbers from the
worked example (util.obj) as a template.

## 0. Key facts (read first)

- Versions: `BW1E100`, `BW1E110`, `BW1E142`. Always pass `-v <VERSION>` to
  `configure.py` (default is BW1E100).
- The lib is downloaded to `build/lib/libcmt.lib` from `config.static_libs`
  in `configure.py`. List members:
  `build/tools/llvm/bin/llvm-ar t build/lib/libcmt.lib`
- A member name keeps its Windows archive path, e.g.
  `..\build\intel\mt_obj\util.obj` (backslashes; prefix varies). Stream one out:
  `build/tools/llvm/bin/llvm-ar p build/lib/libcmt.lib '..\build\intel\mt_obj\util.obj' > /tmp/m.obj`
- **BW1E100 links with `/OPT:REF`** (dead-strip — see `dead_strip: true` in
  `config/BW1E100/config.yml`). Functions the original build did **not** use
  are dropped. So in BW1E100 only the *referenced* functions of the object
  survive; in BW1E110/BW1E142 (NOREF) **all** functions are linked.
- `dtk` is at `build/tools/dtk`. `lld-link` at `build/tools/llvm/bin/lld-link`.
- Normal build is `ninja`. If the MSVC compiler download step is broken in this
  environment, use the manual link fallback in step 6.

## 1. Inspect the member

```
build/tools/llvm/bin/llvm-ar t build/lib/libcmt.lib | grep -i <NAME>
build/tools/llvm/bin/llvm-ar p build/lib/libcmt.lib '<MEMBER>' > /tmp/m.obj
objdump -h /tmp/m.obj      # sections: .text size, .data size, .rdata (comdat?)
objdump -dr /tmp/m.obj     # functions, calls, relocations
```
Note each function name + size, and whether `.text` is split into multiple
COMDAT sections (one per function — normal for libcmt). Note any
`__real@N@...` COMDAT in `.rdata` (a shared float constant) and references to
`__fltused`.

## 2. Find the placement in each version's exe

The object is linked at fixed original addresses. For **each** version find the
`.text` and `.data` byte ranges where its content appears in
`orig/<VERSION>/runblack-decrypted.exe`. Relocations differ between the obj and
the exe, so anchor on a **relocation-free** function or on `.data`.

Run this for each version (edit VER and the anchor bytes):

```python
python3 - <<'EOF'
import struct
VER='BW1E100'
f=open(f'orig/{VER}/runblack-decrypted.exe','rb').read()
# .data of the obj is usually relocation-free (float constants). Extract + find:
import subprocess
subprocess.run(['build/tools/llvm/bin/llvm-objcopy','-O','binary',
  '--only-section=.data','/tmp/m.obj','/tmp/m.data'])
d=open('/tmp/m.data','rb').read()
i=f.find(d)
print('.data VA', hex(i+0x400000) if i>=0 else 'NOT FOUND',
      'end', hex(i+0x400000+len(d)) if i>=0 else '')
# For .text, use a reloc-free function's first bytes as anchor (from objdump -dr):
anchor=bytes.fromhex('REPLACE_WITH_RELOC_FREE_FUNC_BYTES')
i=f.find(anchor)
print('.text anchor VA', hex(i+0x400000) if i>=0 else 'NOT FOUND')
EOF
```

- `.text start` = the VA of the first surviving function (lowest address of the
  contiguous block). `.text end` = start + total size of the surviving
  functions.
- **BW1E100 only:** not all functions survive (REF). Find which functions are
  present (search each function's reloc-free bytes; absent → dropped). The
  survivors are placed **contiguously in the obj's section order**. Size the
  `.text` range to just the survivors.
- BW1E110/BW1E142: all functions present, full size.

Record, per version: `.text start/end`, `.data start/end`.

## 3. configure.py — one LibObject (shared by all versions)

In the `runblack` library's `objects` list add:

```python
LibObject(Matching, "libcmt", "<MEMBER WITH BACKSLASHES>", progress_category="sdk"),
```

e.g. `LibObject(Matching, "libcmt", "..\\build\\intel\\mt_obj\\util.obj", progress_category="sdk")`.
The unit name is auto-derived as `lib/libcmt/<basename>` — that is the splits.txt
key. (`LibObject` and `Matching` are already defined in configure.py.)

## 4. splits.txt — one unit per version

Add to `config/<VERSION>/splits.txt` for **each** version (use that version's
addresses from step 2):

```
lib/libcmt/<NAME>.obj:
	.text       start:0x........ end:0x........ align:1
	.data       start:0x........ end:0x........
```

(Indent with a TAB. Drop the `.data` line if the object has none.)

## 5. Resolve link errors (repeat per version)

After step 6's split+link, you may hit these. Fix in `config/<VERSION>/symbols.txt`.

**`undefined symbol: __fltused`** — the obj references the CRT float marker.
Find the `dd 0x9875` marker in `.data` and name it:
```python
python3 -c "f=open('orig/<VER>/runblack-decrypted.exe','rb').read();import sys;
i=0
while True:
 i=f.find(bytes.fromhex('75980000'),i)
 if i==-1:break
 va=i+0x400000
 if 0xb00000<va<0xc40000: print(hex(va))
 i+=1"
```
Find the symbol just before that VA (it's a gap after `_inflate_mask`). Add:
```
__fltused = .data:0x<VA>; // type:object size:0x4 data:4byte
lbl_0x<VA+4> = .data:0x<VA+4>; // type:object size:0x<remaining-gap>
```

**`duplicate symbol: __real@8@00000000000000000000`** (or it links but the exe
diffs by an 8-byte shift in `.rdata$r`) — the obj's shared float constant must
**fold** into the game's copy. Find the game's copy (the `dc 1d <addr>` operand
in the obj's function points at it; read that VA from the exe). It sits inside a
vtable like `??_7Feature@@6B@`. Shrink that symbol and carve the constant out as
a `comdat`:
```
??_7Feature@@6B@ = .rdata:0x<vtbl>; // type:object size:0x<shrunk so it ends at the constant>
__real@8@00000000000000000000 = .rdata:0x<const VA>; // type:object size:0x8 data:double comdat
lbl_0x<const+8> = .rdata:0x<const+8>; // type:object size:0x<to original vtbl end>
```
`dtk` auto-carves the `comdat` symbol into its own unit; the two copies fold,
the game's copy wins placement → byte-exact. Do **not** use `weak`.

**`Split X .data (...) ends within symbol 'lbl_Y'`** — the obj's `.data` (or
`.rdata`) lands inside a big blob symbol. Split that blob around the obj's range:
```
lbl_Y = .data:0xY; // type:object size:0x<obj.start - Y>
lbl_0x<obj.end> = .data:0x<obj.end>; // type:object size:0x<Y_end - obj.end>
```

## 6. Build + verify byte-exact (each version)

```
rm -f build/<VER>/config.json
build/tools/dtk coff split config/<VER>/config.yml build/<VER>      # regenerates splits + extracts members
python3 configure.py -v <VER> --dtk <path-to-dtk>                   # regenerates build.ninja
ninja                                                               # builds + checks build.sha1
```
Expect `<N> files OK` and `runblack-decrypted.exe: OK`.

**GOTCHA — regenerate after adding a comdat:** carving the `__real@8` comdat
creates new auto units. You **must** re-run `configure.py` (which reads the
fresh `config.json`) so those units are in the link, else `.rdata` looks
~hundreds of KB short. Always do `dtk coff split` *then* `configure.py`.

**Compiler-broken fallback** (manual link, skips the C/C++ compile step):
```
ln=$(grep -n "^build build/<VER>/runblack-decrypted-linked.exe: link" build.ninja | cut -d: -f1)
awk -v s=$ln 'NR>s{for(i=1;i<=NF;i++) if($i ~ /\.o(bj)?$/) print $i; if($0 !~ /\$$/) exit}' build.ninja > /tmp/objs.rsp
build/tools/llvm/bin/lld-link @build/<VER>/args.rsp /OUT:build/<VER>/runblack-decrypted-linked.exe @/tmp/objs.rsp
python3 tools/post_link_patch.py --version <VER> build/<VER>/runblack-decrypted-linked.exe build/<VER>/runblack-decrypted.exe
build/tools/dtk shasum -c config/<VER>/build.sha1 | grep runblack-decrypted.exe
```
This requires the C/C++ `.o` files already built (cached). Look for
`build/<VER>/runblack-decrypted.exe: OK`.

## Worked example — util.obj (real numbers)

Member: `..\build\intel\mt_obj\util.obj`. 6 functions
(`__set_exp`,`__get_exp`,`__add_exp`,`__set_bexp`,`__sptype`,`__decomp`), a
`.data` of 40 bytes (float consts), and a `__real@8@00000000000000000000`
COMDAT. References `__fltused`.

| Version | .text | .data | survivors |
|---|---|---|---|
| BW1E100 | 0x0073D2BF–0x0073D403 | 0x00B52358–0x00B52380 | 3 of 6 (REF drops `__get_exp`,`__add_exp`,`__set_bexp`) |
| BW1E110 | 0x007C0DED–0x007C0F95 | 0x00C1ECA8–0x00C1ECD0 | all 6 |
| BW1E142 | 0x007D0FDD–0x007D1185 | 0x00C2FE58–0x00C2FE80 | all 6 |

configure.py: `LibObject(Matching, "libcmt", "..\\build\\intel\\mt_obj\\util.obj", progress_category="sdk")`.

symbols.txt edits per version (addresses differ; pattern identical):
- `__fltused` at: BW1E100 0x00B4F894, BW1E110 0x00C1C1DC.
- `__real@8@00000000000000000000` (comdat) at: BW1E100 0x00802630 (in
  `??_7Feature@@6B@` @0x00801D08, shrink 0x978→0x928), BW1E110 0x008B2C48 (in
  Feature @0x008B2320, shrink 0x978→0x928).
- blob split around `.data`: BW1E100 `lbl_00B4F917` (0x177F41 → 0x2A41 +
  `lbl_00B52380`), BW1E110 `lbl_00C1C267` (0xED21 → 0x2A41 + `lbl_00C1ECD0`).

## Common mistakes

- **Wrong .text size on BW1E100.** REF drops unreferenced functions; size the
  range to the survivors only, in obj section order. 110/142 use the full size.
- **Forgetting to re-run configure.py after the comdat carve** → `.rdata`
  shrinks ~hundreds of KB (new auto units missing from the link). See step 6.
- **Using `weak` for `__real@8`.** Wrong for decomp — use `comdat` (folds, the
  earlier/game copy wins placement). Verified identical in lld-link and MSVC 6.5.
- **Member name basename.** `llvm-ar p` needs the *exact* member
  (`..\build\intel\mt_obj\...`), single-quoted to keep the backslashes.
- **Tabs in splits.txt** — fields are tab-indented, not spaces.
- Always `-v <VERSION>`; BW1E100 is the default and easy to hit by accident.
