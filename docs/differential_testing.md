# Differential testing against the original binary

A byte-matching function is equivalent to the original by construction. A nonmatching one is
not, and reading two listings side by side does not tell you whether a register swap or a
different branch layout changes what the code does. `tools/difftest` gives evidence for those
functions: it runs **the original BW1W120 machine code and our compiled code side by side in an
x86 emulator**, on the same random program states, and compares everything a caller can
observe.

A pass is evidence, not proof (see [Limitations](#limitations)). A failure comes with a
concrete input that reproduces it.

## Running it

The tool needs two Python packages that the build doesn't:

```sh
pip install unicorn capstone
```

Test the current build object of a unit (nothing is built; rebuild the unit first):

```sh
python tools/difftest GestureSystemMatch
python tools/difftest GestureSystem --only RemoveNonKeyPoints --trials 2000
python tools/difftest --controls
```

- The unit is an objdiff unit name or unique basename. Its object is `base_path` from
  `objdiff.json`; `--object` tests another object (e.g. a variant compiled elsewhere).
- `--trials` defaults to 10,000 per function. A few thousand is enough while iterating.
- `--own-callees` lets callees defined in the same object run our code as well (see below).
- `--controls` runs the negative controls instead of a unit's cases.

One line per function: `PASS` or `FAIL`, how many trials agreed, a count per failure class,
and instruction coverage of both versions, with the instructions no trial reached. The first
failing trial of each class is printed with its inputs, its seed and trial number, and the
differences. The exit status is 1 if any function fails.

## How it works

1. **One address space.** Unicorn maps every section of `orig/BW1W120/runblack-decrypted.exe`
   at its virtual address, so a call from either version into another game function runs the
   original code. The original version is called at its address from `symbols.txt`.
2. **Our version** is linked into a scratch region from our COFF object (`Linker` in
   `emu.py`). Constants, string literals and TU statics are our own copies, filled by our
   `.CRT$XCU` initializers; callees and shared globals resolve to the original addresses, so
   the function is tested in isolation. `--own-callees` runs our compiled callees from the
   same object instead, which tests how the unit composes.
3. **States.** Each trial builds one random program state from a seeded generator, so any trial
   can be reproduced from `--seed` and its trial number. Both versions start from identical
   copies of it.
4. **x87 precision.** Half of the trials run with control word 0x27F (53-bit, the MSVC CRT
   default), half with 0x07F (24-bit, what the game sets in `LHResetFPU`). Some source changes
   are only visible at one precision. Nobody has checked which precision is in effect when a
   given function runs in the game.
5. **Stack fill.** Both versions get the same random pattern in unused stack, so reads of
   uninitialised locals are deterministic within a trial.
6. **Comparison** (`compare.compare`): how each version stopped, the return value (EAX, or
   all 80 bits of ST0), ESP after return, x87 stack depth, the sequence of calls to hooked
   functions with their arguments, and every byte either version wrote outside the callee's
   own frame and argument slots.

### Failure classes

Each failing trial gets exactly one class, checked in this order:

| Class | Meaning | Fails the function |
|---|---|---|
| `uninitialised-read` | Re-running the **original** with other stack fills changes its own outcome in every observable where the versions differ: the original reads uninitialised memory there too. | no |
| `hang` | Exactly one version hit the instruction limit. | yes |
| `fault` | The versions stopped differently: one faulted, they faulted on different data addresses, or they hung in different places. | yes |
| `float-only` | Every difference is a pair of finite float32 values of the same sign within 4,096 ULP (a memory word or ST0). Usually a different evaluation order or a spilled intermediate. | yes |
| `real` | Anything else: a logic difference. | yes |

Only the original's dependence counts, and only where it shows. If only our version's result
depends on the stack contents, we introduced the read, and the difference is `real`. The
re-run fills include small values (0, 2, 5) as well as large ones, because an uninitialised
index that is out of range is often clamped the same way for every large value. If the
original's dependence still goes undetected, the trial is reported as `real`: a false alarm to
look at, never a hidden bug.

### Hooks

Some functions need game state that a random generator can't build: the landscape, a live
camera, the allocator. A case can replace such an original function with a Python handler.
The same handler serves both versions, and each call is recorded and compared, so the test
shows that both versions make the same calls with the same arguments and use the results in
the same way. It says nothing about the replaced function itself.

## Controls

A harness that never fails proves nothing. Two kinds of control check it:

- **Byte-matching functions must pass.** They are equivalent by construction, so any
  difference is a harness bug. The gesture cases include several.
- **Planted bugs must be caught.** `--controls` compiles one-token source edits with the
  unit's exact compile command (from Ninja, into `--workdir`, default
  `build/probe-difftest`), and patches single bytes of our loaded copy of a function. Each
  control states whether it must fail. One is an equivalent change, which must pass: the
  harness compares behaviour, not bytes.

The gesture controls also show the limits of random testing. S2 changes behaviour only when a
region's ratio is exactly 4.0, which random states never hit; the generator needs a boundary
mode for it, and even then few trials catch it. S3 is a float reassociation that only shows at
24-bit precision.

## Adding cases for another class

Cases live in a suite module next to `tools/difftest/gesture.py`, listed in `SUITES` in
`tools/difftest/__main__.py`. A suite provides `CASES`, `CONTROLS` and `INITIALIZERS` (the
original `.CRT$XCU` range to run first, when the unit's statics matter). `Case` and `Hook` in
`tools/difftest/runner.py` document their fields; `gesture.py` is the worked example.

The generator does the real work. `gen(emu, rng, fs)` writes one random state into emulator
memory and returns `({"ecx": this, "args": [dwords]}, inputs)`, where `inputs` describes the
state for failure reports. Guidelines learned on the gesture system:

- Put objects at fixed addresses in `STATE` (`tools/difftest/layout.py`) inside the first
  `STATE_CLEAR` bytes, which are zeroed before every trial. Change exe globals with
  `emu.poke()`, which is undone after the trial.
- Use the original vtable addresses for objects with virtual functions.
- Draw floats from `fs` (a `FloatSource`: normal, random-walk, few-distinct-values, tiny and
  special profiles). Draw counts and indices with their edges (0, 1, max − 1, max, −1, beyond).
- Most generated states should be valid ones, as the game produces them. Deliberately invalid
  ones (15% in the gesture suite) find shared bugs, but they mostly measure the original.
- Add a boundary mode for every threshold comparison in the function. Random floats almost
  never land exactly on a constant.
- Check the coverage. Missed instructions are either dead code or a hole in the generator.
- Add a control for the new suite: a planted bug the cases must catch.

## Limitations

- **It is testing, not proof.** A difference that needs a very specific input can be missed,
  as the S2 control shows.
- **The input model is ours.** States are plausible, not recorded from the game. Fields the
  generators don't vary are only partly exercised, and functions run in isolation from the
  game loop. State that persists between calls (function-local statics, caches) only starts
  from its initial value.
- **Hooks replace real behaviour.** A hooked function is only checked for being called the
  same way.
- **Emulator fidelity.** Unicorn's x87 is QEMU's soft-float. Precision control, rounding and
  comparisons behave as on hardware in our checks, but `fsin`/`fcos` and other
  transcendentals are not bit-exact to a real Pentium. Both versions share the emulated
  results, so this hides a difference only if one version uses a transcendental the other
  doesn't. FPU exception flags are not compared.
- **Uninitialised reads.** An `uninitialised-read` trial doesn't fail, because the original
  shares the bug. If the bug matters to the game, it's a `BUGFIX` candidate; the harness
  can't tell whether a given read is reachable with real game states.
