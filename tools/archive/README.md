# tools/archive/ — phase-complete, kept-runnable (NOT dead)

These tools belong to a **completed** decomp phase. They are moved here so the active toolkit
(`../`) stays small and the agent-facing index (`../../docs/port-banks/00-TOOLKIT.md`) only points
at the *current-frontier* core. They are **not deleted** and **still run** — each had its repo-root
calc bumped one level (`tools/archive/X.py` → repo root) so paths resolve from here. If you genuinely
need to regenerate forward-decomp bodies, run them in place: `python tools/archive/<name>.py`.

## What's here — the forward-decomp GENERATION cluster (the "45% simple-klass slice — DONE")
These mass-produced trivial function bodies (getters/setters/const-returns/ctors) from asm shapes and
header signatures, then gated them through `verify_defs`. The **current** frontier is per-function
*expressive* matching (`lift` → `iterate_dtk` → `permute`), which superseded mass generation.

| tool | did |
|---|---|
| `gen_simple.py` | generate C for simple no-arg getters from header sig + encyclopedia offset |
| `gen_asm.py` | asm-driven body synth + the shape library (`body_from_asm`/`shape_to_c`) |
| `gen_targeted.py` | tile UNASSIGNED tractable fns |
| `gen_ctordtor.py` | ctor/dtor body generation |
| `gen_inplace.py` | fill tractable fns INSIDE existing TUs (the big forward-decomp lever) |
| `mangle_worklist.py` | enumerate mangle-mismatch fns (decl mangles ≠ binary symbol) |
| `decl_fix.py` | fix a header decl to match the binary's mangled symbol, then gen+verify the body |
| `bucket_dump.py` | bucket/group dump over the generator candidate set |
| `closeout_table.py` | "prove 100% of the tractable 45%" — per-class matched/blocked-with-reason table |

## Why archived (honest)
Not "dead code" — **phase-complete**. The migration is past the bulk forward-generation stage; new
work is one function at a time with the analysis+match core. Kept here so an agent doesn't rebuild
them, but out of the main list so the core reads clean. The CRT cluster and `scale_crt`/`changes_fmt`/
`decompctx` were **NOT** archived — they are build-time tools (`configure.py` / `build.ninja`).
