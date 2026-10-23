# MSVC6 back end: operand order of commutative operations

This note records how `c2.dll` 12.00.8966 (`build/compilers/MSVC/6.5`, the back end that builds
BW1W120 and BW1W130) decides which operand of a commutative expression it evaluates first. It
explains the x87 "tie-breaks" of [`msvc6_inliner.md`](msvc6_inliner.md#tie-breaks-in-x87-operand-order):
`fld a; fmul b` against `fld b; fmul a`, or the order in which the terms of a sum are added. It was
derived by disassembling the DLL and by hooking the routines named below (see
[`msvc6_scheduler.md`](msvc6_scheduler.md) for the hook framework, `tools/c2_patch.py`).

Confidence markers: **[verified]** read from the disassembly and confirmed by hook logs on
LH3DTech.cpp; **[decompiled]** read from the disassembly only.

## The sort [verified]

After inlining, a pass walks every expression tree (`0x1070d7dd`, called from `0x1070f1ab` and
others). For each node it

1. gives every operand a 32-bit *weight*, stored at node+0xc;
2. if the node's operator is commutative (`0x107062ec`), sorts the operand list with a stable
   bottom-up merge sort (`0x1070f584`, merge `0x1070f65c`) using the comparator `0x1070f6ae`,
   which orders by weight **descending** (ties keep the list order);
3. computes the node's own weight.

The weight (`0x1070da9a`) is

```
height << 24 | size << 16 | hash16
```

- *height* and *size* are Sethi–Ullman style: a leaf has height 0 and size 1; an expression's size is
  the sum of its operands' sizes plus one, and its height grows when a later operand is at least as
  tall as the running maximum.
- *hash16* (`0x1070db59`) identifies the node:
  - symbol leaf of a local or temp (node kind 2): `symbol number << 5` (folded to 16 bits);
  - pointer temp (node kind 3): the symbol number;
  - memory reference with a symbol base and offset 0 (node kind 6): `(base hash << 8) + 7`;
    a non-zero offset makes the reference an expression over an address temp (height 1), whose
    weight is copied from that temp's defining node;
  - constant (node kind 7): the value; constants also lose the `0x10000` size bit, so they sort last;
  - expression: `Σ operand.hash16 << i` over the operands in list order, plus `op − 0x145`.

The *symbol number* is the dword at descriptor+0x1c (see below).

## What the code generator does with the sorted list [verified]

- A sum (op `0x16d`) evaluates its operands first to last, so the heaviest term is computed first
  and the lightest is added last (`positions->x * m[0] + positions->y * m[3] + ...` in
  `Draw3DWorldTriangle` is emitted z-term, y-term, x-term because the hashes order that way).
- A binary operation loads its first (heavier) operand and uses the second as the `fmul`/`fadd`
  memory operand, except when exactly one operand is a memory-reference node: that one becomes the
  memory operand and the other is loaded first.

So two same-shape leaves (`m[1] * x` with `m[1]` held in a temp and `x` a local) are ordered purely
by their symbol numbers, and the only way to flip the order is to change those numbers.

## Where symbol numbers come from [verified]

Symbol descriptors are 0x54-byte records handed out by `0x107017eb`. Locals and parameters
(descriptor kind 4 and 5, allocator class 1) come from a chunk of 32 slots that is carved per
function (`0x107079c3`); each slot's number is taken from the global counter `0x1079bc4c` when the
chunk is carved, so the first 32 class-1 descriptors of a function are `#0..#1f` and the 33rd starts
a new chunk numbered wherever the counter stands by then (`#160` in `LH3DTech::UpdateCamera(2)`,
`#1a0` in `UpdateCamera(3)`). Compiler temps (kind 7, class 2) use a separate pool that advances the
same counter.

Freed descriptors go to a LIFO free list (`0x10706247`, list head `0x1079bc84`) and **keep their
number** when they are handed out again (`0x1070188c`). The inliner frees the descriptors of a
callee's parameters when it binds them (`0x1075c4b6`, frees at `0x1075c526`, `0x1075c534`,
`0x1075c60b`), and the next symbols created — usually the next inline's `this`, parameters and
locals — recycle those slots. A descriptor is created the first time a symbol record is turned into
a leaf node (`0x1071db20`, cached at record+8), i.e. in order of first reference in the IL.

Consequences seen in LH3DTech:

- The same inline's locals can be "low" (recycled slot `< 0x20`) in one function and "late"
  (fresh second-chunk slot) in another, which flips `fld x; fmul m` against `fld m; fmul x`.
- A dead store before a local's first use shifts the numbers of the locals referenced after it
  (`long i = 0;` in `Draw3DWorldTriangle`).
- Which of an inline's locals gets the recycled slot depends on the order of their first references
  (the first initialised local of `LHMatrix::TransformVector` takes the slot freed by the preceding
  inline), so reordering those initialisations changes callers and the out-of-line copy together.

## Logging it

The hooks used for this note are not shipped as a tool. To reproduce, hook the comparator
`0x1070f6ae` (print both weights), the weight routine `0x1070da9a` (print node, op, kind and up to
four operands), and `0x1071db20` / `0x10706247` (descriptor creation and release) with
`tools/c2_patch.py`; a scheduler-entry hook at `0x107374aa` separates functions. Symbol numbers
of leaf nodes are at `[[node+0x14]+0x1c]`.
