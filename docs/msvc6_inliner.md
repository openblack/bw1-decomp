# MSVC 6 (c2.dll 8966) inliner: reverse-engineered rules

This note records how the back end of the project compiler decides which inline functions get
expanded. It is derived from decompiling `build/compilers/MSVC/6.5/c2.dll` (the 8966 / Processor
Pack back end that builds BW1W120) in Ghidra and checking the result against compiled output.
Use it when a target function inlines a different subset of calls than our build does.

Confidence markers used below:

- **[verified]**: read from the decompiled code *and* confirmed by compiling test cases.
- **[decompiled]**: read from the decompiled code but not independently tested.
- **[inferred]**: a reading of field meanings, flags or globals that fits the behaviour but was not proven.

## Where the code lives

`c2.dll` embeds the source path `E:\8966\vc98\p2\src\P2\inline.c`. The functions below are in that
module, but the linker scattered it across the image (hot/cold split), so Ghidra's automatic
function boundaries are sometimes wrong. Addresses are the DLL's preferred VAs (image base
`0x10700000`).

| Address | Role |
|---|---|
| `FUN_107180fd` | Per-function driver. Computes the top-level budget and calls the worker. |
| `FUN_107181a8` | Recursive worker `(fn, depth, budget, flag)`. Makes every accept/reject decision. |
| `FUN_10718a2a` | Builds the candidate list of inlinable call sites for a function body, in IL order. Also returns the count. |
| `FUN_1071ba73` | Copies the callee's IL for expansion. |
| `FUN_1075bdb3`, `FUN_1075bec0`, `FUN_1075c155`, `FUN_1075c4b6`, `FUN_1075c70e`, `FUN_1075cc23` | Splice the copied body into the caller (argument binding, return value, labels). |
| `FUN_10794a84` | Post-expansion veto, active only when global `DAT_107ac0b4 == 0` (see Open questions). |
| `FUN_10742bbe(4, 0x2c6 / 0x2c7)` | Issues warnings C4710 ("not inlined") and C4711 ("selected for automatic inline"). |

## The algorithm

### Top level (`FUN_107180fd`) [verified]

```c
size   = fn->ILSize;               // short at fn+0x6d
global = size;                     // DAT_1079f234, running total of IL across the TU
budget = size * 2;
if (budget < 1000) budget = 1000;
else if (budget > 35000) return;   // too big: no inlining at all
worker(fn, /*depth*/1, budget, 0);
```

A function whose own IL size is 500 or less gets a flat budget of **1000**. Only larger
functions get more, and the budget grows at twice their size.

### Worker (`FUN_107181a8`) [verified]

```c
remaining = budget;
list = collect_candidates(fn, &count);        // FUN_10718a2a, IL/source order
for (site in list) {                           // count decrements after each site
    callee = site->target;
    size   = callee->ILSize;                   // short at +0x6d
    force  = callee->flags73 & 0x2000;         // __forceinline

    if (site->maxDepth < depth) reject;        // #pragma inline_depth
    if (!force && ((remaining < size && size > 40) || global > 35000)) reject;
    if (argcount mismatch) reject;

    if (!force && size > 40) remaining -= size;
    if (!force)              global    += size;

    body = copy(callee);
    used = worker(body, depth + 1, remaining / count, flag);   // nested sites
    if (!force) { remaining -= used; global += used; }
    splice(body, site);
}
return budget - remaining;
```

What follows from this:

1. **A callee of 40 IL units or less is always inlined and never charged.** Size is the only
   test for this; the remaining budget doesn't matter.
2. **A larger callee is accepted only if it still fits in the remaining budget.** Its size is then
   deducted. The process is greedy: a big rejected callee does not stop a later, smaller one from
   fitting.
3. **Order is IL order, which is source order.** When a candidate is accepted, its own call
   sites are processed straight away (depth-first), before the caller's next candidate.
4. **Nested call sites get only a share of what is left:** `remaining / count`, where `count` is
   the number of candidates at the parent's level not yet processed, including the current one.
   A nested helper inside an early call site in a long list gets a small share. The same helper
   nested in the last call site gets everything that is left.
5. **`__forceinline` bypasses the size test and is never charged.** Its nested sites are still
   budgeted normally.
6. **Inline depth:** each candidate carries a depth limit taken from a marker tuple in the IL
   (opcode `0x1b8`). `#pragma inline_depth` inserts these markers where the callee's body is
   parsed. A candidate is rejected when that limit is below the current depth.

### Candidate collection (`FUN_10718a2a`) [decompiled]

A call site becomes a candidate when its callee:

- is marked inline-able: flag `0x4000` at callee `+0x36` [inferred meaning];
- is smaller than a global maximum callee size `DAT_10799280`. This is skipped when
  `DAT_107ac0b4 != 0`. The value of `DAT_10799280` is set at runtime and was not read;
- is not the function currently being expanded. Flag `0x10` at `+0x73` marks functions that are
  already on the expansion stack, which prevents recursion.

The returned count feeds the `remaining / count` share described above.

## Measuring IL sizes

The size units are internal. Measure them empirically with a threshold probe.
`tools/inline-budget.py size` automates the recipe below, reuses the unit's real compile
command, and prints an exact integer (or `<=40 (free)`):

```bash
python tools/inline-budget.py size --source src/Black/Object3D.cpp \
    --include Lionhead/LH3DLib/development/LHMatrix.h \
    --params "LHMatrix& m, float a" --call "m.RotateY(a)" --symbol RotateY@LHMatrix
```

The manual recipe, for reference:

1. **Build the ruler.** Define `BIG_N`, a static inline function with `N` statements of
   `p[i] = 0.0f;`. With a small caller (budget 1000), `BIG_N` alone inlines up to **N = 141**,
   so `size(BIG_N) ≈ 13 + 7·N`.
2. **Probe each helper.** Compile `void F(...) { BIG_N::Go(p); X(); }` and binary-search the
   largest `N` for which both are still inlined. Then
   `size(X) ∈ (980 − 7N, 987 − 7N]`, a resolution of about 7 units.
   For an exact size, split the ruler across `k` fillers (k = 1..7). Each filler adds 13 units of
   overhead, which shifts the residue mod 7. Intersecting the seven intervals gives one integer.
   A helper that stays inlined at every `N` is 40 units or less, so it is free.
3. **Build setup.** Compile with the project flags
   (`/O2 /Og /Ob1 /G6`, `wibo build/compilers/MSVC/6.5/cl.exe`). Use **relative** source paths:
   wibo passes an absolute `/tmp/...` path to cl, which treats it as a switch. Read the call
   relocations with `objdump -dr`. Alternatively, enable `/w14710 /w14711` to get the
   compiler's own inline warnings.

Rough unit costs, calibrated against a 7-unit float store:

| Construct | Approximate cost |
|---|---|
| Float store `p[i] = 0.0f` | 7 |
| Function overhead | about 13 |
| Member store through `this` | slightly more than a plain store |
| Each call site (for example `matrix.Foo(x)`) | about 14 |
| Two nested `if`s on float compares with four blocks | about 56 |

Chained assignment (`a = b = c = 0.0f`) is sometimes cheaper than separate statements, but not
always; measure it.

### Measured sizes (BW1W120 headers as of 2026-09-27)

Exact values, measured with the multi-filler ruler. They are also recorded as
`// Inliner IL size:` comments in the headers.

| Inline function | IL size (units) |
|---|---|
| `LHMatrix::SetIdentity` | 125 |
| `LHMatrix::SetScale` | 129 |
| `LHMatrix::PostTranslation` | 81 |
| `LHMatrix::RotateY` | 223 |
| `LHMatrix::Translation` | 68 (its nested `SetIdentity` is not included) |
| `LHMatrix::SetRotationY` | 81 (its nested `SetIdentity` is not included) |
| `LHMatrix::SetTranslateOnly` | 60 |
| `LHMatrix::PreScale` | 110 |
| `LHMatrix::TransformPoint` | 180 |
| `LHMatrix::operator*(const LHPoint&)` | 183 |
| `LHMatrix::GetPos` | 40 or less (free) |
| `GLandscape::ConvertMapCoordToLandscapePoint` | 81 |
| `LH3DMesh::GetPackedMesh` | 40 or less in the current ternary form (the old `if` form was 50) |
| `LH3DObject::SetPosition(const LHPoint&, float, float)` | 194 |

A header edit changes these sizes. Re-measure after touching any of these functions.

These are not affected by:

- `/Zi`: the sizes are identical with and without it;
- the order of functions in the TU;
- an earlier function that forces an out-of-line copy of the helper.

### Per-construct costs

| Construct | Cost |
|---|---|
| Store to `m[i]` (array element, including `m[0]`) | 10 |
| Store to a nested struct field (`row.x`) | 10 |
| Store to a flat float member | 8 |
| `a = b = c = …` chain | about 8 per element instead of 10 |
| Compound assignment (`m[0] *= c`) | cheaper than the explicit `m[0] = m[0] * c` |

Examples of the compound saving:

- `RotateY` written as `m[0] = m[0] * c + m[6] * s` costs 229, against 223 for the current form.
- `PostTranslation` written as `m[9] += t.x` costs 57, against 81.

## Worked example: Game3DObject::SetPositionAndXZYScale(LHPoint)

`LH3DObject::SetPosition` has four branches, which gives eight candidate sites in source order:
`SetScale, PostTranslation, RotateY | Translation(→SetIdentity), RotateY | SetScale,
PostTranslation | Translation(→SetIdentity)`.

In the target, every one of these is inlined except the final `Translation`.

**Calling `LH3DObject::SetPosition` (our original source):**

1. The budget starts at 1000.
2. `SetPosition` itself costs about 193, leaving about 807.
3. `SetScale`, `PostTranslation` and `RotateY` leave about 377.
4. `Translation` leaves about 311.
5. `Translation`'s nested `SetIdentity` gets a share of 311 / 5 ≈ 62, less than its size of
   122, so it is **rejected**.
6. Later, the third branch's `SetScale` (130) no longer fits, but `PostTranslation` (80) does.

This reproduces our old call pattern exactly: `SetIdentity`, `SetScale` and `Translation` stay
as calls.

**Hand-written body with `SetIdentity(); m[9..11] = point; RotateY()` in the second branch
(current source):**

- `SetPosition`'s own size is no longer charged.
- `SetIdentity` becomes a top-level candidate, so it is checked against the full remainder
  (about 570) instead of a one-fifth share.
- The model then predicts, and the compiler produces, the target pattern: only the final
  `Translation` stays a call.

The function now scores 99.0%. The rest is an x87 operand-order tie-break (see below).

## Open questions

- **`FUN_10794a84` veto [decompiled].** This runs after nested expansion, and only when
  `DAT_107ac0b4 == 0` and the callee is not forceinline. It counts statement-like tuples in the
  expanded body: kind `0x0c` counts 1, kinds `0x12` and `0x0e` count 2. It vetoes the inline when
  that count exceeds `(argcount + 2) · DAT_107ae244`, with extra allowance when some EH-related
  flag is set. When the veto fires, the expansion is discarded (`FUN_10762258`).
  - It is unknown which command-line switch sets `DAT_107ac0b4`, and what `DAT_107ae244` holds.
  - The size model above fits every case tested without this veto, which suggests it is inactive
    under `/O2 /Ob1`. That has not been proven.
- **Veto side effects [decompiled].**
  - A callee's own size is subtracted from the budget before its nested sites are expanded. If
    the veto then fires, the body is discarded and the call stays, but the budget spent on it is
    not given back. A vetoed callee therefore still consumes budget.
  - The veto threshold is `(argcount + 2) · DAT_107ae244` statements. `BIG_141` (141 statements,
    1 argument) is never vetoed, so `DAT_107ae244` is at least 47. None of the `LHMatrix`
    helpers or `SetPosition` come close to that.
- **Candidate filters [decompiled].** `FUN_10718a2a` only lists direct calls to callees flagged
  inline-able (`+0x36 & 0x4000`). It then drops a callee in any of these cases:
  - it has EH-state flags (`+0x73 & 0x300`) and the caller does not have `0x18000` set;
  - `FUN_10714b55` rejects it;
  - it is larger than `DAT_10799280`;
  - it is already being expanded.

  A dropped callee is never counted in `count`. Rejected candidates, on the other hand, are
  counted.
- **Create / Convert callers.** `Game3DObject::Create(MapCoords…)`, `Object::SetXYZAngles`,
  `Abode::CallVirtualFunctionsForCreation` and the `NewCollideDescriptor` constructor inline
  `LH3DObject::SetPosition` after `ConvertMapCoordToLandscapePoint`.
  - The target implies about 117 more budget than our model gives at the point just before the
    second branch's `RotateY`.
  - `SetPosition` cannot shrink by that much: 8 call sites cost at least about 112. So the
    difference must come from elsewhere: caller IL size above 500, or cheaper helper or
    Convert bodies. This is unresolved.
  - `__forceinline` on `SetPosition` happens to fix these callers, but it was rejected as not
    being the original source.
  - **Constraint from Create against the other callers.** `Game3DObject::Create` differs from
    the `[LHPoint(), Convert, SetPosition]` callers only by an extra inlined `GetPackedMesh`
    (G). The other callers are `Object::SetXYZAngles`, `SetXYZAnglesAndScale`,
    `Abode::CallVirtualFunctionsForCreation` and the `NewCollideDescriptor` constructor.
    - In the target, those callers keep `SetScale#2` inline, while Create calls it.
    - With `D` the budget left after the first `RotateY#2`, the callers need
      `S ≤ D < S + min(T, X)` and Create needs `0 ≤ D − G < min(S, T, X)`.
    - Both can hold only if `SetScale − GetPackedMesh < min(PostTranslation, Translation)`.
      The current sizes give 79 against 68, so this fails whatever `SetPosition`, `Convert` or
      `RotateY` cost.
  - **Mac evidence for the original helper bodies.** Mac `Object::GetWorldMatrix` and
    `LH3DObject::SetPosition` show:
    - `SetScale` and `SetIdentity` zero all 12 elements, then set `m8`, `m4`, `m0`.
      CodeWarrior's `stfd` pairs include `m8`, and MSVC removes the dead x86 stores, so the
      x86 bytes are identical.
    - `PostTranslation` is `m[9] += t.x` (`m9` is loaded first).
    - `RotateY` has the current 5-statement shape.
    - `Translation` is `SetIdentity()` followed by three stores.
  - **Flat-member experiment.** Those bodies, written against a union of flat float members,
    give SetIdentity 96, SetScale 104, PostTranslation 51, Translation 62 and RotateY 187.
    - The four callers above match their target call sets.
    - `Object::GetWorldMatrix`, written naturally with `out->SetScale(...)` and `Translation`,
      reaches 100%.
    - Create still fails the inequality: 54 against 51.
  - **No consistent solution.** A brute-force search tried every source form for
    `GetWorldMatrix` (direct `SetIdentity` or `Translation`) and `SetPositionAndXZYScale`
    (hand-written, textual copy, or a call to `SetPosition`). Every size vector satisfying all
    targets is far from any plausible body, for example `SetIdentity` 60–92. The missing piece
    is probably a caller whose structure differs from what we assume, not the inliner.
- **x87 operand order is not a source hint.** Within one target function, the same inline
  `RotateY` can emit `s*m6 + c*m0` in one branch and `c*m0 + s*m6` in another. It also varies
  between translation units (`MapCoords.cpp` flips its first branch; `Object3D.cpp` does not).
  The choice depends on how nearby statements are written: struct copy versus field-by-field
  stores, and the order the helpers are expanded in. Don't infer different helper source from
  a flipped row.
- **GetPackedMesh must cost nothing.** Written as
  `return MeshPack->Meshes[(index < 0 || index >= MeshPack->MeshCount) ? 0 : index];`, it is 40
  units or less, so it is free. It emits the same bytes as the `if` form (50 units).
  - With current helper sizes, Create's pre-`SetPosition` spending must fall in (15, 83],
    which leaves room for `Convert` (81) but not for a charged `GetPackedMesh`.
  - This takes Create from 68.1% to 98.4%, and its call set now matches the target.
  - A full rebuild shows no regressions anywhere in the project.
  - A `long` parameter (the Mac mangling) makes it charged again.
- **x87 operand-order tie-break in inlined `RotateY` [verified empirically].**
  - Only the first row group of each inlined `RotateY` varies: whether `m0*c` or `m6*s` is
    computed first. The target has `s*m6` first everywhere except
    `SetPositionAndXZYScale` branch 1.
  - The choice depends on how much IL the inliner has already built earlier in the same
    function.
    - Unused `LHPoint` locals (inline constructor calls) flip it. Create needs exactly 2 or
      3; `SetPositionAndXZYScale` needs 8 before branch 2's `RotateY`.
    - Unused float locals, extra `Altitude()` calls, and changes in earlier functions do
      not flip it.
    - `cosf`/`sinf` (inline wrappers in the MSVC6 `<math.h>`) flip some rows.
    - Adding one unused `int` parameter to a standalone function flips it.
    - Declaration order and line layout do not flip it.
  - The pattern is not a simple function of the count, so treat it as a hash- or
    address-ordered tie.
  - About 5,200 exact byte-compare builds tried natural variants:
    - helper bodies: SetIdentity, SetScale, PostTranslation, cos/sin forms;
    - `GetPackedMesh` and `Convert` forms;
    - Create and `SetPositionAndXZYScale` body shapes.

    None matched both functions. The 2-3 extra `LHPoint` constructions only mean that the
    original Create builds more IL than ours before branch 2. They are not a source to
    copy.
- **Field meanings.** In the callee structure, `+0x6d` is the IL size (short), `+0x6b` the
  argument count (short), `+0x73` holds flags (`0x2000` forceinline, `0x10` expansion in
  progress, `0x2080` warning enable), and `+0x36` holds flags (`0x4000` inline-able,
  `0x1000` indirect). These readings are [inferred].

## Practical checklist

The step-by-step procedure, with build budgets and stop rules, is the
[`inline-budget-matching`](../.claude/skills/inline-budget-matching/SKILL.md) skill. In short:

1. **Classify.** `tools/inline-budget.py callsets` shows whether the helper call sets differ
   (budget) or only the operand order does (tie-break).
2. **Measure and simulate.** `tools/inline-budget.py size` for each helper, then
   `tools/inline-budget.py sim` must reproduce our object's call set before you trust it
   for the target.
3. **Solve for a window.** Turn the target's pattern into inequalities. Compare callers
   that share a body but have different target patterns (`callsets --all --target-only`):
   the inline call present in one but not the other is the lever. For example,
   `Game3DObject::Create` differs from the `SetPosition` callers only by `GetPackedMesh`,
   which had to become free.
4. **Change IL size, not bytes.** Use a ternary, compound assignment or chained assignment.
   Delete every object and compare full reports before keeping a header change.
5. **Tie-breaks.** Run `tools/tiebreak-probe.py --dummies` once. If only some dummy counts
   match, stop searching for source and hand the fakematch-or-leave decision to a human.

## Tie-breaks in x87 operand order

With `/Og`, `m[0] *= c; m[0] += m[6] * s;` fuses into one expression. Which product is
computed first is a tie that c2 breaks using how much IL the inliner has already built in
the current function.

**What moves it:**
- unused parameters;
- extra inline-constructor calls (unused `LHPoint` locals);
- `cosf`/`sinf` (inline wrappers in the MSVC6 `<math.h>`).

**What does not:**
- identifier names;
- source line layout;
- `/G6` versus `/G5` (so it is not the Pentium Pro scheduler);
- other functions in the TU.

The matching counts form narrow windows, not a simple period. `Game3DObject::Create` matches
with 2–3 extra unused `LHPoint`s, and `SetPositionAndXZYScale` with exactly 8. Mac evidence
showed the original `Create` constructs only one `LHPoint`, so these counts say nothing about
the original source. Both functions currently match through such a fakematch, which a human
approved.

Tracing c2.dll under gdb (via wibo) to find the rule was not productive. `cl` forks, and c2 is
loaded, relocated and run between syscalls, so breakpoints must be armed from a hardware
breakpoint on `_InvokeCompilerPass@12` (0x10757444). Software breakpoints at jump-table
addresses corrupt execution, and hit counts under many breakpoints are unreliable.
