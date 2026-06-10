"""corpus.py - resolve the decomp corpus root (lifted asm + headers + rdata).

The lifting / xref / symbol / vtable tools read the corpus that lives in the
bw1-decomp checkout:
  - `src/asm/unprocessed/*.asm`  (lifted asm, rdata/data dumps, *vftables* arrays)
  - `black/*.h`                  (struct + function-triple headers)

When a tool runs from a SIBLING checkout that lacks that corpus - e.g. the
bw1-dtk build repo, which stores code as .o + objdiff config rather than lifted
asm - the tool used to silently load 0 files and return None/empty, which read
as "the tool is broken." It isn't; it was just data-starved. This resolver lets
those tools fall back to the bw1-decomp sibling.

LOCAL-FIRST: if the local tree already has the corpus, it is used unchanged ->
zero behaviour change in bw1-decomp; only data-starved repos (bw1-dtk) gain the
fallback. If neither has it, the local root is returned (callers behave exactly
as before - empty corpus).

Usage (replaces the old `ROOT = os.path.dirname(os.path.dirname(__file__))`):
    import corpus
    ROOT = corpus.repo_root("src/asm/unprocessed/*.asm")     # symbolize / vtable
    ROOT = corpus.repo_root("black/*.h")                      # symbols
"""
import glob, os

_TOOLS = os.path.dirname(os.path.abspath(__file__))
_LOCAL = os.path.dirname(_TOOLS)  # parent of tools/ = this repo's root

def repo_root(*rel_globs):
    """Return the repo root whose tree matches any of `rel_globs` (LOCAL first,
    then a sibling 'bw1-decomp'). Falls back to the local root if neither has the
    corpus, so callers behave exactly as before when nothing matches."""
    candidates = [_LOCAL, os.path.join(os.path.dirname(_LOCAL), "bw1-decomp")]
    for root in candidates:
        if any(glob.glob(os.path.join(root, g)) for g in rel_globs):
            return root
    return _LOCAL

if __name__ == "__main__":
    import sys
    globs = sys.argv[1:] or ["src/asm/unprocessed/*.asm", "black/*.h"]
    print("local root :", _LOCAL)
    print("resolved   :", repo_root(*globs), " (for globs:", globs, ")")
