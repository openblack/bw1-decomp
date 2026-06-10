#!/usr/bin/env python3
"""vtable.py - RETIRED (dtk). Superseded by vtbl_bin.py.

Its old REAL source (the asm corpus `*vftables*.asm`) resolved 25.1% of slots to the WRONG function by
address vs the binary -- a systematic off-by-N slot shift (one missing/extra entry cascades to every later
slot). Proven: Field[0x6fc] -> old vtable.py said `IsTuggable` (0-param), the binary says
`ValidForPlaceInHand(GInterfaceStatus*)`; the binary's answer lifted Field::IsEffectReceiver byte-exact.

This file is now a thin compatibility SHIM: the whole library API (slot / real_vtable / best_vtable /
raw_call / struct_vtable / _name) is re-exported from vtbl_bin.py, which reads the slot->method map
straight from the binary `??_7<Class>@@6B@` array (authoritative; cannot drift). Existing imports keep
working and silently get CORRECT data. Prefer importing vtbl_bin directly in new code.

  python tools/vtbl_bin.py <Class> [0xOFF]   # full map / single slot (authoritative)
  python tools/vtbl_bin.py <Class> --find X  # reverse: method -> offset
  python tools/vtbl_bin.py --audit           # asm-corpus(old) vs binary disagreement rate
"""
import os, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
# re-export the revitalized, binary-backed API so `import vtable; vtable.slot(...)` keeps working
from vtbl_bin import (  # noqa: F401
    slot, real_vtable, best_vtable, raw_call, struct_vtable, _name,
    full, resolve, find, vtable_addr,
)

if __name__ == "__main__":
    sys.stderr.write("vtable.py is RETIRED -> forwarding to vtbl_bin.py (authoritative; use it directly).\n")
    import vtbl_bin
    vtbl_bin.main()
