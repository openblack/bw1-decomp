# MSVC6 back end: instruction scheduler and register allocation

This note records how the back end of the project compiler orders instructions within a basic
block and assigns registers. It is derived from disassembling `build/compilers/MSVC/6.5/c2.dll`
(the 8966 / Processor Pack back end that builds BW1W120) and from a patched copy of that DLL that
logs the scheduler's decisions (`tools/c2-sched-log.py`). Use it when the same instructions appear
in a different order, or a store lands a few instructions away from where the target has it.

Confidence markers used below:

- **[verified]**: read from the disassembly *and* confirmed by the scheduler log or by compiling test cases.
- **[decompiled]**: read from the disassembly but not independently tested.
- **[inferred]**: fits the behaviour and the matches found so far, but not shown by the logger or the disassembly.
- **[measured]**: found by compiling probes with the project flags, not traced in c2.

Everything here is for the project flags (`/O2 /Og /Ob1 /G6`). The priority weights and issue
model are chosen by the `/G` option, so other `/G` settings behave differently.

## Prior art

The model follows work on other VC6-era decompilations, which patched C2.DLL to log its
decisions:

- gta2_re: <https://github.com/CriminalRETeam/gta2_re> (`docs/matching_quirks.md`, `Scripts/x87_sched/`).
- byte-tactics: <https://github.com/HectorBailey/byte-tactics> (`docs/c2-regalloc.md`, MSVC 5).

Our build differs from gta2_re's in three ways:

- **Compiler.** Theirs is C2 12.00.8804 (VC6 SP4); ours is 12.00.8966 (SP5 + Processor Pack).
  Their patch script checks the SP4 DLL's hash and does not run on ours.
- **Priority.** Their formula is a different row of the same per-CPU weight table. Under `/G6`,
  out-degree weighs as much as height (below).
- **Issue model.** They describe two integer instructions pairing and an x87 instruction issuing
  alone. Under our `/G6` it is one integer instruction per cycle, with at most one x87 instruction
  beside it.

The window size, node layout, opcode table and register colouring order are the same in both
builds.

## Where the code lives

Addresses are the DLL's preferred VAs (image base `0x10700000`).

| Address | Role |
|---|---|
| `0x107374aa` | Scheduler entry, once per function. [verified] |
| `0x1073754e` | Window node list built. [verified] |
| `0x10737a43` | Window builder. `cmp esi,0x50; jg` at `0x10737a55` is the size limit. [verified] |
| `0x1073a684` | Heights, out-degrees and priorities (`0x1073a786..0x1073a841`). [verified] |
| `0x1073af80` | Shift helper: `<<w` for w ≥ 0, `>>-w` for w < 0. [decompiled] |
| `0x1073af90` | List scheduler. [verified] |
| `0x1073b06b` | Issues one node. [verified] |
| `0x1073b0ad` | Ready-list insertion: by priority, ties by IL order. [decompiled] |
| `0x1073b176` | Start of a cycle. [verified] |
| `0x1073b489` | Unit-busy check. [decompiled] |
| `0x1077a3cd` | `/G6` slot picker. [decompiled] |
| `0x1078cefb` | Instruction emitter. [verified] |
| `0x107a0d98` | Priority weight rows, 8 × int16 each. The current row's pointer is at `0x10799204`. [verified] |
| `0x107a09e8` | Register colouring order for class 0. [decompiled] |
| `0x107a5a90` | Opcode name table (270 names). [verified] |

`.bss` globals: ready list head `0x1079f278`, current cycle `0x1079f238`, current window
`0x1079f268`.

Node layout [inferred, consistent with every log]: next `+0`, successor edges `+0xc` (edge: next
`+0`, target `+0xc`, latency `+0x14`), ready links `+0x10`/`+0x14`, instruction `+0x1c`, predecessor
count `+0x20`, out-degree `+0x22`, priority `+0x28` (copied to `+0x2c`), earliest cycle `+0x30`,
height `+0x34`, IL sequence `+0x36`, flags `+0x39` and `+0x3a`.

## The scheduler

### Windows [verified]

The scheduler works per basic block, in windows of at most **81 IL nodes**. The limit is the same
for every `/G` option. A window ends at a label or branch, not at a call: a long straight-line
probe gave nine windows of exactly 81 nodes, and window 19 of `CalculateForJunctionMerge` holds
two calls. Nothing moves across a window boundary.

The x87 instruction order is fixed before scheduling, by code generation from the expression tree.
The scheduler only decides the cycle each node issues in, so it moves integer instructions around
the x87 chain. This is why `docs/msvc6_inliner.md` finds the x87 operand-order tie-break
unaffected by `/G5` versus `/G6`.

### Priority [verified]

Under `/G6` (row 3 of the weight table at `0x107a0d98`):

```
prio = (height + out_degree) << 10  +  mem << 15  +  bit7 << 23  (+ 1 for an x87 instruction with f3a bit 1)
```

- `mem` is `f3a` bit 0, a memory operand. It is worth 32 units of height. Each successor in the
  dependency graph is worth as much as one unit of height.
- `bit7` is `f39` bit 7. It puts a node above everything else; in the logs it is set on the
  compare before a branch (`test eax,eax`, `cmp eax,ecx`).
- The +1 applies only when the instruction's kind (`ins+0xa & 0xf000`) is `0x4000`, x87. Integer
  stores also have `f3a` bit 1 set, but get nothing.
- The formula reproduces every logged priority in all 36 windows of
  `GestureSystem::CalculateForJunctionMerge`.

### Issue model [verified]

- Each node has a unit class (`f39 & 7`). A node can issue in a cycle only if no node already
  issued in that cycle has the same class, and its unit is not busy. At most 3 nodes issue per
  cycle. [decompiled]
- Integer instructions are class 0 and x87 instructions class 2. So **one integer instruction
  issues per cycle, and one x87 instruction may share the cycle**. When the best ready node's class
  is already used in this cycle, the scheduler takes the next ready node of another class.
- The ready list is sorted by priority, highest first. Ties go to the earlier node in IL order.
- Nodes that emit nothing (op 354, "nop-node" in the log) still take a slot, as integer work. A
  no-op node therefore waits behind higher-priority integer instructions.

An x87 store therefore issues as soon as it is ready, because it does not compete for the integer
slot. If the target's store comes *later* than ours, something delayed its readiness, usually a
no-op node in front of it waiting for an integer slot. If the target's store comes *earlier*, look
for one parenthesis or cast too many in our source.

### Worked example: redundant parentheses add a node [verified]

`GestureSystem::CalculateForJunctionMerge` (`src/Black/GestureSystemSamples.cpp`) matches only as:

```cpp
float keepTurn = ((float)fabs(CalculateTurn(earlierPoint, previousPoint, indexPoint)));
```

Without the outer parentheses, window 19 reads (`tools/c2-sched-log.py ... -r`, abridged):

```
   8 s10  p19456  (h17  d2  m0 x87) e8   fabs                    -> s17/0 s11/1
   9 s14  p54272  (h19  d2  m1) e8   mov ecx, _earlierPoint
   9 s11  p16385  (h15  d1  m0 x87) e9   fstp _keepTurn          (x87: shares cycle 9)
  10 s12  push edi / 11 s13 push ebp / 12 s15 push ecx / 13 s16 mov ecx, esi
```

With them, a no-op node sits between `fabs` and the `fstp`:

```
   8 s10  p21504  (h18  d3  m0 x87) e8   fabs                    -> s18/0 s12/0 s11/1
   9 s15  p54272  (h19  d2  m1) e8   mov ecx, _earlierPoint
  10 s13  push edi / 11 s14 push ebp / 12 s16 push ecx
  13 s11  p18432  (h16  d2  m0) e9   nop-node                (ready since cycle 9; loses the integer slot to the pushes)
  13 s12  p16385  (h15  d1  m0 x87) e13  fstp _keepTurn          (latency 0 after the no-op: pairs in cycle 13)
  14 s17  p17408  (h16  d1  m0) e12  mov ecx, esi
```

The second form is the target's order, and no other function in the unit changes.

Where the node lands decides the result: parentheses around the inner call, `(float)fabs((T))`,
put it between the call and `fabs` instead. The node count is not one per pair of parentheses,
so count the nop-nodes in the log after each change.

An inline accessor's float return value, or an inline setter's float parameter, also adds a node
that a plain field access does not, and delays the x87 chain the same way [inferred]. This is how
`GestureSystemData::CalculateRatio` (`end.Y() - start.Y()`) and the `CalculateTransformedRegion`
functions (`region->start.Set(...)`) match; the logger has not been run on them.

## Register allocation

### Colouring order [decompiled]

The class-0 colouring order table at `0x107a09e8` holds {1,2,3,7,8,4,6}:

| Order | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|---|---|---|---|---|---|---|---|
| Register | eax | ecx | edx | esi | edi | ebx | ebp |

Probes agree with it [measured]:

- Five locals that are live across calls, ranked by use count, get esi, edi, ebx and ebp. The
  fifth gets no register.
- Leaf code with a loop fills ecx, edx, esi, edi, ebx and ebp. eax went to an address temporary.

### Constants in registers [measured]

How many stores of the same constant it takes before c2 keeps the constant in a register:

| Stores | `p->f[i] = 0` | same, with a call after each | `G[i] = 0` (global by name) | `p->f[i] = 5` | `= 5` with a call |
|---|---|---|---|---|---|
| 1 | immediate | immediate | immediate | immediate | immediate |
| 2 | immediate | immediate | **`xor eax,eax`** | immediate | immediate |
| 3–4 | **`xor ecx,ecx`** | immediate | `xor eax,eax` | **`mov ecx,5`** | immediate |
| 5+ | `xor ecx,ecx` | **`xor edi,edi`** | `xor eax,eax` | `mov ecx,5` | **`mov edi,5`** |

The field-store columns match byte-tactics' MSVC 5 table. A store to a global by name has a longer
immediate form, so two stores are already enough.

## Using the logger

```bash
python tools/c2-sched-log.py --source src/Black/GestureSystemSamples.cpp -f CalculateForJunctionMerge -r
```

Without `-f` it lists every function with its window sizes. `--help` explains the columns.

Use it the way AGENTS.md asks for any experiment. Find the window that holds the differing
instructions. Work out from the priorities and ready lists which node would have to move, and how
(an extra no-op node in front of an x87 store, a heavier integer node). Only then try the source
shape that adds or removes that node, and rerun to confirm the log moved as predicted.

## Open questions

- Per-opcode unit classes, the memory bit and the latency model (table at `0x107a0dd8`) are not
  reversed, nor are the extra issue checks at `0x1073b4a8` and `0x1073b500`. The log shows their
  effect (earliest cycle, successor latencies), so read them off instead of predicting them.
- `f39` bit 7 is only observed on compares before a branch; where c2 sets it was not traced.
- The colouring pass was not logged on our build, and its tie-break rules were not tested. The
  gta2_re colouring description probably carries over, but this is unproven.
- The other passes gta2_re modelled (cross-jumping, tail duplication, stack-slot order) were not
  checked on our build. The inliner is covered in [`docs/msvc6_inliner.md`](msvc6_inliner.md).
- The logger matches scheduled functions to listing PROCs by their emitted instructions, because
  c2 also schedules inline functions that are later discarded. The matching is heuristic.
