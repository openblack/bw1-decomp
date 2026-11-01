# MSVC6 matching tips

## Folded float constants have a different name

A float constant that c2 (not c1) computes, e.g. `1.0f / value` after inlining with a constant argument, or a division by a constant turned into a reciprocal multiply, is emitted as `__real@4@<double-precision mantissa>` (1/255 -> `__real@4@3ff78080808080808000`). That is a different COMDAT from c1's float-precision `__real@4@3ff78080810000000000`, so they do not fold and the unit gets its own 4-byte copy. Such constants still sort as constants in x87 operand order; a `const float` variable does not (it loads first).

Symptom: target `.rdata` holds a 4-byte value duplicating an existing `__real` elsewhere in the image; a `const float` global reproduces the data but flips `fld a; fmul [k]` to `fld [k]; fmul a`.

## Dead struct members keep their frame slot

A dead scalar local vanishes from c2's frame entirely, but a dead member of a struct local keeps its slot: struct storage is allocated as one unit, so unassigned members stay as untouched holes. When the target frame is larger than the live values need and has 4-byte holes at struct-member positions (e.g. y between x and z at +4), write struct locals with only the used members assigned member-wise. A full struct copy does not reproduce it: c2 does not dead-store-eliminate member copies through an inline copy ctor.

Symptom: `sub esp, N` larger on the target, with `[ebp-X]` slots never referenced, at the offset a skipped member would occupy. (`LandBlock::MorphBlock`: 64% -> 86%.)

## Local slot order is inert

c2's local stack-slot order cannot be reached from source spelling: permutations of the declaration block, branch-assignment order, ternary vs if/else, hoisted post-branch assignments and x87 operand order (`a*b` vs `b*a`) compile byte-identical. What does move it: scalar vs struct locals (storage shape) and block-scope vs function-scope promotion. If the only diff is which slot address each spilled value uses, with identical instruction structure, stop searching there.

## Disassembling Mac module code

Code in the resource-fork modules (LHCombined Release etc.) can be disassembled without capstone:

1. Find the module's PEF container in `orig/BW1M119/Black & White` (scan for `Joy!peff`). LHCombined is the container at 0x863a10, code section 0x1bf57c bytes at container+0x47990, based at 0x01000000.
2. Carve the code section and wrap it: `llvm-objcopy -I binary -O elf32-powerpc --rename-section .data=.text,code`.
3. Run `llvm-objdump -d --triple=powerpc`. Resolve `bl` targets as `(addr + rel) & 0xffffffff` against `config/BW1M119/<module>/symbols.txt`.

`tools/mac-disasm.py` refuses module symbols. The Mac body answered structural questions (TransformPoint for uv, LHPoint centre/size locals, nested zone tests, index-based neighbours) that lifted several LandBlock functions by 4-18%.
