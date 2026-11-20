---
name: eh-funclets
description: EH funclets ($L<n> labels, .text$x) in BW1. Use when a report loses `$L…` matches (LHMultiplayer, LHAudio, LHLog DLL units, STL code) while the hashes still pass, after a header change, before pushing a branch that touches headers or DLL sources, or when a lib object needs `.text$x` holder ranges. One tool, tools/funclets.py: `relabel` (rename $L labels after the compiled objects), `owners` (which unit owns each .text$x funclet), `holders` (write .text$x split lines).
---

# EH funclets

Run every command below from the checkout you are working in, your current directory (it holds
`tools/`, `config/` and `build.ninja`). Do not `cd` to the directory this skill was loaded from.

Units built with `/GX` (the DLLs: LHMultiplayer, LHAudio, LHLog; STL code in a few Black units)
have unwind funclets and handlers named `$L<n>`. cl numbers them in a sequence that every
declaration before them moves, so **a header change renumbers them** in every unit that
includes it. objdiff pairs these local labels by name: the report loses the `$L` matches while
every hash still passes. The fix is to rename the labels in `config/<V>/.../symbols.txt` after
the compiled objects, with the tool. Never rename `$L` labels by hand.

## Relabel after a header change (the common job)

For the configured version (`configure_args` at the top of `build.ninja`):

```
ninja                                         # split the target and compile with the change
python tools/funclets.py relabel --check      # "0 labels to rename" = nothing to do; stop here
python tools/funclets.py relabel --apply      # rewrite symbols.txt
ninja                                         # re-split with the new names
python tools/funclets.py relabel --check      # must print 0 now
```

Then each other version: `python configure.py --version <V>`, then the same five steps. The
versions are BW1W100, BW1W110, BW1W120, BW1W130 and BW1WCI. Reconfigure for BW1W120 at the end.

Narrow it with `--unit <name>` or `--prefix LHMultiplayer/`. `--quiet` prints the total only.

What its messages mean:

| Message | Action |
|---|---|
| `N labels to rename` / `N labels renamed` | normal |
| `<unit>: the target object is older than symbols.txt; run ninja first` | run `ninja`, then relabel again |
| `<unit>: two target funclets pair with one compiled funclet; skipped` | leave that unit's labels and report it; do not edit by hand |
| `<unit>: <COFF error>` | that object did not parse; rebuild it |

It only renames a target label when the funclet's bytes equal the compiled one (relocated fields
aside), so every rename it makes matches. A label that would collide moves to a fresh number, and
renamed labels get `scope:local`.

## Which unit owns a `.text$x` funclet (lib objects)

```
python tools/funclets.py owners BW1W110 --at 00896300  # the unit that owns the funclet at one address
python tools/funclets.py owners BW1W110 [LO HI]        # runs `start end unit`; default: all of .text$x
python tools/funclets.py owners BW1W110 LO HI --verbose  # also every funclet start and its kind
python tools/funclets.py holders BW1W110 LO HI [--apply]  # write a .text$x line per holder into splits.txt
```

`owners` reads the original image, not symbols.txt. `unit (carried)` means the owner's code is not
split into a unit yet, so the nearest earlier unit holding extracted bytes carries the funclets.
`holders` is needed once any lib object claims its own funclets: then every funclet run needs an
explicit holder (details in the `libcmt-obj-matching` skill).

## Reference

- The EH tables (handler stub, FuncInfo, unwind and try maps) are read by `tools/ehtables.py`,
  which `tools/port_version.py` also uses for each unit's `.text$x`/`.xdata$x` ranges when porting.
- The `_$E`/`_$S` initializer labels renumber the same way in our objects, but the build renames
  them after the target's right after `cl` (`tools/label-objects.py`), and `symbols.txt` names
  them by address (`tools/relabel-initializers.py`, AGENTS.md, "Header dependencies").
