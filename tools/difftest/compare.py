"""Compare two runs of the same trial and classify a difference.

Pure Python: no emulator needed, so the classification can be tested on synthetic outcomes.
An outcome is the dict returned by emu.Emu.call().
"""

import math
import struct
from collections import namedtuple

from layout import STACK, region_name

FLOAT_ULP_BOUND = 4096  # differences up to this many float32 ULPs count as rounding only

# Failure classes, in the order they are checked. Only UNINIT does not fail a function.
UNINIT = "uninitialised-read"  # every difference is one the ORIGINAL makes with other stack fills
HANG = "hang"  # exactly one version hit the instruction limit
FAULT = "fault"  # the versions stopped differently: one faulted, or at different places
FLOAT = "float-only"  # every difference is a float32 word within FLOAT_ULP_BOUND, or ST0
REAL = "real"  # anything else
CLASSES = (UNINIT, HANG, FAULT, FLOAT, REAL)
GATING = (HANG, FAULT, FLOAT, REAL)

# One observable that differs. key names it the same way in every run of a trial ("eax",
# ("mem", word address), ...); ulp is the float32 ULP distance when both values are
# comparable floats, else None.
Difference = namedtuple("Difference", "key text ulp")


def x87_to_float(raw):
    mantissa, sign_exp = struct.unpack("<QH", raw)
    sign = -1.0 if sign_exp & 0x8000 else 1.0
    exponent = sign_exp & 0x7FFF
    if exponent == 0x7FFF:
        return math.nan if mantissa & 0x7FFFFFFFFFFFFFFF else sign * math.inf
    if exponent == 0 and mantissa == 0:
        return sign * 0.0
    return sign * math.ldexp(mantissa, exponent - 16383 - 63)


def word_ulp(va, vb):
    """ULP distance between two float32 words, or None unless both are finite floats of the
    same sign. Integers (counts, indices, pointers) look like denormals, so those are None too."""
    ia, ib = struct.unpack("<i", va)[0], struct.unpack("<i", vb)[0]
    for x in (ia, ib):
        exponent = x & 0x7F800000
        if exponent == 0x7F800000 or (exponent == 0 and x & 0x7FFFFFFF):
            return None
    if (ia < 0) != (ib < 0):
        return None
    return abs(ia - ib)


def st0_ulp(ra, rb):
    try:
        va, vb = (struct.pack("<f", x87_to_float(r)) for r in (ra, rb))
    except OverflowError:
        return None
    ulp = word_ulp(va, vb)
    return None if ulp is None else max(ulp, 1)  # 80-bit values that round to one float32


def _stop(outcome):
    return bool(outcome["error"]), outcome["fault"], outcome["hang"], outcome["hang_at"]


def _word(outcome, saved, address):
    return bytes(outcome["writes"].get(address + i, saved.get(address + i, 0)) for i in range(4))


def compare(returns, a, b, nargs):
    """Return the differences between the original run a and our run b.

    returns is "int", "float" or "void"; nargs is the number of stack argument dwords.
    Compared: how each version stopped, EAX or ST0, ESP after return, x87 stack depth, the
    sequence of hooked calls, and every byte either version wrote outside the callee's own
    frame, return address and argument slots (which MSVC reuses as temporaries).
    """
    differences = []
    if a["error"] or b["error"]:
        if _stop(a) != _stop(b):
            differences.append(Difference(
                "hang" if a["hang"] != b["hang"] else "stop",
                f"versions stopped differently: orig={a['error']} {a['fault']} {a['hang_at']} "
                f"ours={b['error']} {b['fault']} {b['hang_at']}", None))
    else:
        if returns == "int" and a["eax"] != b["eax"]:
            differences.append(Difference("eax", f"EAX orig={a['eax']:#x} ours={b['eax']:#x}", None))
        if returns == "float" and a["st0"] != b["st0"]:
            differences.append(Difference(
                "st0", f"ST0 orig={x87_to_float(a['st0'])!r} ({a['st0'].hex()}) "
                       f"ours={x87_to_float(b['st0'])!r} ({b['st0'].hex()})",
                st0_ulp(a["st0"], b["st0"])))
        if a["esp_delta"] != b["esp_delta"]:
            differences.append(Difference(
                "esp", f"ESP after return differs: {a['esp_delta']} vs {b['esp_delta']}", None))
        if a["fpu_top"] != b["fpu_top"]:
            differences.append(Difference(
                "fpu_top", f"x87 stack depth differs: TOP {a['fpu_top']} vs {b['fpu_top']}", None))
    if a["hook_calls"] != b["hook_calls"]:
        differences.append(Difference(
            "hooks", f"hooked-call sequence differs: orig={a['hook_calls']} ours={b['hook_calls']}", None))
    if a["writes"] != b["writes"]:
        differences += _memory(a, b, a["entry_sp"] + 4 + 4 * nargs)
    return differences


def _memory(a, b, frame_top):
    saved = dict(b["saved"])
    saved.update(a["saved"])
    words = sorted({address & ~3 for address in set(a["writes"]) | set(b["writes"])
                    if not STACK <= address < frame_top
                    and a["writes"].get(address, saved.get(address))
                    != b["writes"].get(address, saved.get(address))})
    differences = []
    for w in words:
        va, vb = _word(a, saved, w), _word(b, saved, w)
        differences.append(Difference(
            ("mem", w), f"{region_name(w)}: orig={va.hex()} ({struct.unpack('<f', va)[0]!r}) "
                        f"ours={vb.hex()} ({struct.unpack('<f', vb)[0]!r})", word_ulp(va, vb)))
    return differences


def classify(differences, unstable=frozenset()):
    """(class, max ULP or None) of a failing trial.

    unstable holds the keys of the observables in which the original's own outcome changed
    when the trial was re-run with other stack fills. A difference there comes from an
    uninitialised read the original shares, so it doesn't count.
    """
    remaining = [d for d in differences if d.key not in unstable]
    if not remaining:
        return UNINIT, None
    keys = {d.key for d in remaining}
    if "hang" in keys:
        return HANG, None
    if "stop" in keys:
        return FAULT, None
    ulps = [d.ulp for d in remaining]
    if None not in ulps and max(ulps) <= FLOAT_ULP_BOUND:
        return FLOAT, max(ulps)
    return REAL, None
