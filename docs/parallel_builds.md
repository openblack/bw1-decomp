# Using every core for long verifications

A full build of one version only saturates the cores while compiling; splitting, linking, hashing and the report are mostly serial. Run independent builds side by side (e.g. `main` against the branch, or the five versions of one revision):

- One checkout builds one version at a time: the root `objdiff.json` (read by the report) and `.ninja_log`/`.ninja_deps` belong to the version `configure.py -v` last set up.
- Add checkouts with `git worktree add --detach <dir> <rev>`. In each, symlink `orig`, `build/tools` and `build/compilers` to the main checkout, copy `build/lib` (its copy command embeds the checkout path) and the root `.ninja_log`/`.ninja_deps`.
- Fresh timestamps make the tool downloads look stale and ninja would rewrite the shared `build/tools`. Backdate the worktree's files and confirm nothing shared is dirty:

  ```sh
  find . -path ./build -prune -o -path ./orig -prune -o -type f -print0 | xargs -0 touch -d 2001-01-01
  python configure.py -v BW1W100 && ninja -n -d explain | grep -E 'build/(tools|compilers)/'
  ```

- Give each checkout its own version list and run them as background jobs, then `wait`. After header changes delete `build/<version>/src/**/*.o` first (the `cl` rule has no header dependencies), and afterwards restore `config/*/symbols.txt` if dtk rewrote labels.
- For sweeps over one unit (knob counts, alternative spellings) use `tools/tiebreak-probe.py --variants FILE -j <cores>`: each variant compiles from a private copy of `src/` in parallel with an exact byte comparison. Do not loop over single-object rebuilds.
- When no variant is expected to match exactly, use `tools/variant-sweep.py`: same variant list, or knobs (named alternatives, swept as every combination or one at a time). It ranks variants by objdiff score and lists the inline calls c2 rejected per function, so a budget shift shows next to the score.
