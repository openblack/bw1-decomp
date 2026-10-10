"""Gesture system cases: state generators, hooks, cases and negative controls.

Objects are written at fixed STATE addresses, identical for both versions of a trial.
Layouts follow include/GestureSystem*.h.
"""

import math
import struct

from inputs import FloatSource, f2b, f32, fbits
from layout import STATE
from runner import Case, Control, Hook

# Original .CRT$XCU entries of the five gesture units, run before the cases.
INITIALIZERS = (0x9C69E0, 0x9C6A68)

GS = STATE + 0x1000  # GestureSystem, 0xC98 bytes
GSD = STATE + 0x8000  # GestureSystemData, 0x65C bytes
GSD2 = STATE + 0x9000  # a second GestureSystemData
LIST = STATE + 0xA000  # GestureSystemDataList {vtbl, Base field, Data @+8, Count @+0xC}
RESULT = STATE + 0xA100  # GestureSystemResult (0xC)
PACKET = STATE + 0xA200  # GestureSystemPacketData (0x18)
REGION = STATE + 0xA300  # LHRegionF (0x10)
OUTS = STATE + 0xA400  # long* outputs
ARRAY = STATE + 0x10000  # GestureSystemData[] (with the new[] count cookie at -4)
FAKE_CAMERA = STATE + 0x30000
FAKE_GAME = STATE + 0x38000  # GGame stand-in: only &g_game->landscape is used, as `this`

GSD_SIZE = 0x65C
VTABLE = 0x008A9A44  # some vtable pointer; the tested functions don't use it
GSD_VTABLE = 0x008DF7E0  # ??_7GestureSystemData@@6B@
TS_SCREEN = 0x18  # LHSys::TheSystem.screen width/height (u16, u16)

THE_SYSTEM = "LHSys::TheSystem"
CAMERA = "LH3DTech::g_camera"


# Random values


def rand_flags(rng):
    return rng.choices([0, 2, 1, 8, 4, 3, 0xB, 0x10, 0x12, rng.getrandbits(32)],
                       weights=[40, 20, 8, 8, 5, 4, 4, 3, 3, 5])[0]


def rand_count(rng, hi=80):
    if rng.random() < 0.3:
        return rng.choice([0, 1, 2, 3, hi - 1, hi])
    return rng.randint(0, hi)


def rand_index(rng, count):
    return rng.choice([0, 1, count - 1, count, count + 1, -1, rng.randint(0, max(count, 0)),
                       rng.randint(0, max(count, 0)), rng.randint(-3, 85)])


# Object builders: write into emulator memory, return a description for reports


def build_gesture_system(emu, rng, fs, address=GS):
    count = rand_count(rng)
    head = (rng.choice([0, 1, 79, count % 80, (count - 1) % 80]) if rng.random() < 0.3
            else rng.randint(0, 79))
    buf = bytearray(0xC98)
    struct.pack_into("<I", buf, 0, VTABLE)
    flags = []
    for i in range(80):
        x, y, z = fs(0), fs(1), fs(2)
        if rng.random() < 0.05:
            x = y = z = 0.0
        turn, direction = fs(), rng.choice([rng.randint(0, 7), rng.getrandbits(32)])
        wx, wy, wz = fs(0), fs(1), fs(2)
        flag = rand_flags(rng)
        key_angle = rng.uniform(-7, 7) if fs.profile != "special" else fs()
        struct.pack_into("<ffffIfffIf", buf, 8 + i * 0x28, x, y, z, turn, direction, wx, wy, wz,
                         flag, key_angle)
        flags.append(flag)
    buf[0xC88] = count
    struct.pack_into("<I", buf, 0xC8C, rng.getrandbits(32) if rng.random() < 0.5 else 0)
    buf[0xC90] = head
    emu.uc.mem_write(address, bytes(buf))
    # How many samples CalculateGestureOffsets counts as key points (logical order).
    keys = sum(1 for i in range(count) if i >= count - 1 or flags[(head - count + i + 80) % 80] & 0xB)
    return {"PointCount": count, "Head": head, "KeyCount": keys}


def build_gesture_data(emu, rng, fs, address=GSD):
    buf = bytearray(GSD_SIZE)
    struct.pack_into("<I", buf, 0, GSD_VTABLE)
    for i in range(80):
        struct.pack_into("<ffffI", buf, 8 + i * 0x14, fs(0), fs(1), fs(2), fs(), rng.getrandbits(3))
    count = rand_count(rng) if rng.random() > 0.02 else rng.randint(81, 255)
    buf[0x648] = count
    buf[0x649] = rng.randint(0, 40)
    buf[0x64A] = rng.choice([0, 1, 2, 3, rng.randint(0, 255)])
    struct.pack_into("<f", buf, 0x64C, rng.choice([0.15, f32(0.15), 4.0, rng.uniform(0, 6), fs()]))
    for offset in (0x650, 0x654, 0x658):
        struct.pack_into("<I", buf, offset, rng.choice([0, 1, rng.getrandbits(32)]))
    emu.uc.mem_write(address, bytes(buf))
    return {"SampleCount": count, "Gesture": buf[0x649], "field_0x64a": buf[0x64A]}


def build_region(emu, rng, fs):
    values = [fs(0), fs(2), fs(0), fs(2)]
    if rng.random() < 0.3:  # an ordered region
        values = [min(values[0], values[2]), min(values[1], values[3]),
                  max(values[0], values[2]), max(values[1], values[3])]
    emu.uc.mem_write(REGION, struct.pack("<4f", *values))
    return {"region": values}


def set_screen(emu, rng):
    w, h = rng.choice([(640, 480), (800, 600), (1024, 768), (1280, 1024), (1600, 1200),
                       (rng.randint(1, 4096), rng.randint(1, 4096)), (rng.randint(0, 65535), 0),
                       (rng.randint(0, 65535), rng.randint(0, 65535))])
    emu.poke(emu.lookup(THE_SYSTEM) + TS_SCREEN, struct.pack("<HH", w, h))
    return {"screen": [w, h]}


def build_result(emu, rng, max_sample=80, keys=None):
    """With keys, 85% of results use valid key indices 0 <= start <= end < keys, as the
    in-game matcher produces; the rest are arbitrary."""
    gesture = rng.randint(0, 40)
    if keys and rng.random() < 0.85:
        start = rng.choice([0, rng.randint(0, keys - 1)])
        end = rng.choice([keys - 1, rng.randint(start, keys - 1)])
    else:
        start = rng.choice([0, 0, 1, rng.randint(0, max_sample), 255])
        end = rng.choice([rng.randint(0, max_sample), max_sample, 0, 255])
    reversed_ = rng.choice([0, 1, rng.getrandbits(32)])
    emu.uc.mem_write(RESULT, struct.pack("<BxxxIBBBx", gesture, reversed_, start, end,
                                         rng.randint(0, 255)))
    return {"result": {"Gesture": gesture, "Reversed": reversed_, "StartSample": start,
                       "EndSample": end}}


def build_list(emu, rng, fs, n):
    """A list whose Data is a `new GestureSystemData[n]` block; returns (Gesture, type) pairs."""
    gestures = []
    if n > 0:
        emu.uc.mem_write(ARRAY - 4, struct.pack("<I", n))
        for i in range(n):
            d = build_gesture_data(emu, rng, fs, ARRAY + i * GSD_SIZE)
            gestures.append((d["Gesture"], d["field_0x64a"]))
    data = ARRAY if n or rng.random() < 0.5 else 0
    emu.uc.mem_write(LIST, struct.pack("<IIIi", VTABLE, 0, data, n))
    return gestures


# Hooks: the same handler serves both versions


def hook_new_array(emu):
    """Base::operator new[]: bump allocation, failing when the trial asks for it."""
    if emu.trial_ctx.get("new_fails"):
        return 0
    address = (emu.heap_ptr + 15) & ~15
    emu.heap_ptr = address + emu.arg(0)
    return address


def hook_noop(emu):
    return None


def hook_get_camera(emu):
    return FAKE_CAMERA


def hook_landscape_point(emu):
    """GLandscape::GetLHPointFromScreenCoord (__fastcall member): ECX=this, EDX=coord,
    stack: LHPoint* out, float* height. A deterministic plane-like mapping."""
    sx, sy = struct.unpack("<ii", emu.uc.mem_read(emu.reg("edx"), 8))
    emu.hook_inputs = ("coord", sx, sy)
    point = (f32(sx * 0.37 + 100.0), f32((sx ^ sy) % 97 * 0.5), f32(sy * 0.41 + 50.0))
    emu.write(emu.arg(0), struct.pack("<3f", *point))
    if emu.arg(1):
        emu.write(emu.arg(1), f2b(point[1]))
    return 1


def hook_get_distance(emu):
    """GCamera::GetDistance(const LHPoint&): float32 distance to g_camera's position."""
    raw = bytes(emu.uc.mem_read(emu.arg(0), 12))
    emu.hook_inputs = ("point", raw.hex())
    point = struct.unpack("<3f", raw)
    camera = struct.unpack("<3f", emu.uc.mem_read(emu.lookup(CAMERA), 12))
    return f32(math.sqrt(sum((p - c) ** 2 for p, c in zip(point, camera))))


def hook_point_from_screen(emu):
    """GUtils::SetPointFromScreenPointAndDistance (static __fastcall): ECX=coord, EDX=out,
    stack: float distance."""
    sx, sy = struct.unpack("<ii", emu.uc.mem_read(emu.reg("ecx"), 8))
    distance = struct.unpack("<f", struct.pack("<I", emu.arg(0)))[0]
    emu.hook_inputs = ("coord", sx, sy)
    point = (f32(sx * 0.37 + distance * 0.01), f32(distance * 0.5), f32(sy * 0.41 - distance * 0.02))
    emu.write(emu.reg("edx"), struct.pack("<3f", *point))


def hook_rotation_angle(emu):
    return emu.trial_ctx["angle"]


# Operators have no "Class::Member" spelling, so they are given mangled.
ALLOC_HOOKS = (
    Hook("??_UBase@@SAPAXI@Z", hook_new_array, nargs=1),
    Hook("??_VBase@@SAXPAXI@Z", hook_noop, nargs=2),
    Hook("??3Base@@SAXPAXI@Z", hook_noop, nargs=2),
)
PACKET_HOOKS = (
    Hook("GLandscape::GetLHPointFromScreenCoord", hook_landscape_point, pop=8, regs=("ecx", "edx")),
    Hook("GGame::GetCamera", hook_get_camera, regs=("ecx",)),
    Hook("GCamera::GetDistance", hook_get_distance, pop=4, regs=("ecx",), returns_float=True),
    Hook("GUtils::SetPointFromScreenPointAndDistance", hook_point_from_screen, pop=4,
         regs=("ecx", "edx")),
    Hook("GCamera::CalculateRotationAngleY", hook_rotation_angle, regs=("ecx",), returns_float=True),
)


# Generators: gen(emu, rng, fs) -> (call, inputs)


def g_remove_non_key_points(emu, rng, fs):
    return {"ecx": GS, "args": []}, build_gesture_system(emu, rng, fs)


def g_calculate_gesture_offsets(emu, rng, fs):
    d = build_gesture_system(emu, rng, fs)
    d.update(build_result(emu, rng, d["PointCount"] + 2, d["KeyCount"]))
    emu.uc.mem_write(OUTS, struct.pack("<II", 0xAAAAAAAA, 0xBBBBBBBB))
    return {"ecx": GS, "args": [RESULT, OUTS, OUTS + 4]}, d


def g_gs_transformed_region(emu, rng, fs):
    d = build_gesture_system(emu, rng, fs)
    start, end = rand_index(rng, d["PointCount"]), rand_index(rng, d["PointCount"])
    d.update(start=start, end=end)
    return {"ecx": GS, "args": [REGION, start, end]}, d


def g_convert_angle(emu, rng, fs):
    q = math.pi / 4
    a = rng.choice([rng.uniform(-20, 20), rng.uniform(-7, 7), rng.randint(-16, 16) * q,
                    rng.randint(-16, 16) * q / 2, f32(rng.randint(-16, 16) * q / 2) + 1e-7,
                    0.0, -0.0, 2 * math.pi, -2 * math.pi, rng.uniform(-1e6, 1e6), fs()])
    return {"ecx": GS, "args": [fbits(a)]}, {"angle": f32(a)}


def g_calculate_content(emu, rng, fs):
    d = build_gesture_system(emu, rng, fs)
    build_gesture_data(emu, rng, fs)  # garbage that SetToZero must clear
    return {"ecx": GSD, "args": [GS]}, d


def g_gsd_transformed_region(emu, rng, fs):
    d = build_gesture_data(emu, rng, fs)
    n = d["SampleCount"]
    start = rng.choice([0, 0, 1, n - 1, rng.randint(0, 79)])
    end = rng.choice([n - 1, n, start, start - 1, rng.randint(0, 79), 79])
    d.update(start=start, end=end)
    return {"ecx": GSD, "args": [REGION, start, end]}, d


def g_calculate_ratio(emu, rng, fs):
    d = build_region(emu, rng, fs)
    d.update(set_screen(emu, rng))
    return {"ecx": 0, "args": [REGION]}, d


def g_normalise_samples(emu, rng, fs):
    d = build_gesture_data(emu, rng, fs)
    d.update(set_screen(emu, rng))
    return {"ecx": GSD, "args": []}, d


def g_get_data(emu, rng, fs):
    n = rng.choice([0, 1, 2, rng.randint(0, 50), 0x7FFFFFFF, -1, -5])
    emu.uc.mem_write(LIST, struct.pack("<IIIi", VTABLE, 0, ARRAY, n))
    index = rng.choice([0, 1, -1, n, n - 1, n + 1, rng.randint(-100, 100), -0x80000000, 0x7FFFFFFF])
    return {"ecx": LIST, "args": [index]}, {"Count": n, "index": index}


def g_remove_data(emu, rng, fs):
    n = rng.choice([0, 1, 1, 2, 3, 5])
    gestures = build_list(emu, rng, FloatSource(rng, "normal", 10.0), n)
    which = rng.choice(["valid", "valid", "valid", "first", "last", "before", "after", "misaligned",
                        "null"])
    index = {"valid": rng.randint(0, max(n - 1, 0)), "first": 0, "last": n - 1, "before": -1,
             "after": n}.get(which, 0)
    pointer = ARRAY + index * GSD_SIZE
    if which == "misaligned":
        pointer = ARRAY + rng.randint(1, GSD_SIZE * max(n, 1))
    if which == "null":
        pointer = 0
    emu.trial_ctx["new_fails"] = rng.random() < 0.1
    return {"ecx": LIST, "args": [pointer]}, {
        "Count": n, "which": which, "pointer_offset": pointer - ARRAY,
        "new_fails": emu.trial_ctx["new_fails"], "gestures": gestures}


def g_check_for_gesture_ratio(emu, rng, fs):
    build_gesture_data(emu, rng, fs, GSD2)
    d = build_gesture_data(emu, rng, fs, GSD)
    d.update(build_result(emu, rng, max(d["SampleCount"] - 1, 0)))
    d.update(set_screen(emu, rng))
    if rng.random() < 0.25:
        # Boundary mode: the input region's ratio lands exactly on GESTURE_WIDE_RATIO (4.0),
        # just off it, or on its inverse, and the stored ratio sits on or next to the
        # thresholds. Random states almost never hit an exact threshold.
        w, h = rng.choice([(800, 800), (1600, 800)])
        aspect = w // h
        width = rng.choice([4 * aspect, 4 * aspect + 1, 4 * aspect - 1, 1])  # dx + 1
        xs = [0.0, float(width - 1)]
        zs = [5.0, 5.0 + rng.choice([0.0, 0.0, 3.0])]
        for i in range(80):
            emu.uc.mem_write(GSD + 8 + i * 0x14, struct.pack("<fff", rng.choice(xs), 0.0, rng.choice(zs)))
        emu.uc.mem_write(GSD + 8, struct.pack("<fff", xs[0], 0.0, zs[0]))
        emu.uc.mem_write(GSD + 8 + 0x14, struct.pack("<fff", xs[1], 0.0, zs[1]))
        emu.uc.mem_write(RESULT + 8, bytes([0, rng.choice([1, 2, 5, 79])]))
        emu.uc.mem_write(GSD2 + 0x64C, f2b(rng.choice([0.15, 4.0, f32(4.0000005), f32(0.1499999), 1.0])))
        emu.uc.mem_write(GSD2 + 0x658, struct.pack("<I", 1))
        emu.poke(emu.lookup(THE_SYSTEM) + TS_SCREEN, struct.pack("<HH", w, h))
        d["boundary_mode"] = {"screen": [w, h], "xs": xs, "zs": zs}
    d["stored_AspectRatio"] = emu.f32(GSD2 + 0x64C)
    d["stored_CheckAspectRatio"] = emu.u32(GSD2 + 0x658)
    return {"ecx": LIST, "args": [GSD2, GSD, RESULT]}, d


def g_calculate_gesture_packet(emu, rng, fs):
    gestures = build_list(emu, rng, fs, rng.choice([1, 2, 3, 5]))
    d = build_gesture_system(emu, rng, fs)
    r = build_result(emu, rng, d["PointCount"] + 1, d["KeyCount"])
    # Usually ask for a gesture in the list; otherwise both versions dereference NULL.
    if rng.random() < 0.95:
        gesture = rng.choice(gestures)[0]
        emu.uc.mem_write(RESULT, bytes([gesture]))
        r["result"]["Gesture"] = gesture
    d.update(r)
    d["gestures"] = gestures
    emu.uc.mem_write(PACKET, bytes(rng.getrandbits(8) for _ in range(0x18)))
    emu.poke(emu.lookup(CAMERA), struct.pack("<3f", fs(0), fs(1), fs(2)))
    emu.poke(emu.lookup("GGame::g_game"), struct.pack("<I", FAKE_GAME))
    emu.trial_ctx["angle"] = f32(rng.choice([rng.uniform(-7, 7), 0.0, math.pi, -math.pi / 2]))
    return {"ecx": LIST, "args": [GS, GSD, RESULT, PACKET]}, d


def g_junction_merge(emu, rng, fs):
    walk = FloatSource(rng, rng.choice(["walk", "walk", "equal", "tiny", "normal"]), 60.0)
    d = build_gesture_system(emu, rng, walk)
    junction, index = rand_index(rng, d["PointCount"]), rand_index(rng, d["PointCount"])
    d.update(junction=junction, index=index)
    return {"ecx": GS, "args": [junction, index]}, d


def g_sample_index(emu, rng, fs):
    d = build_gesture_system(emu, rng, fs)
    d["index"] = rand_index(rng, d["PointCount"])
    return {"ecx": GS, "args": [d["index"]]}, d


def g_required_junction_distance(emu, rng, fs):
    walk = FloatSource(rng, rng.choice(["walk", "walk", "equal", "normal"]), 60.0)
    d = build_gesture_system(emu, rng, walk)
    first, last = rand_index(rng, d["PointCount"]), rand_index(rng, d["PointCount"])
    dx = rng.choice([rng.uniform(-60, 60), rng.uniform(-13, 13), 4.0, -4.0, 12.0, -12.0, 0.0, fs()])
    dz = rng.choice([rng.uniform(-60, 60), rng.uniform(-13, 13), 4.0, 12.0, -0.0, fs()])
    d.update({"from": first, "to": last, "dx": f32(dx), "dz": f32(dz)})
    return {"ecx": GS, "args": [first, last, fbits(dx), fbits(dz)]}, d


CASES = [
    Case("GestureSystem::RemoveNonKeyPoints", "GestureSystem", "void", g_remove_non_key_points),
    Case("GestureSystem::CalculateGestureOffsets", "GestureSystem", "void",
         g_calculate_gesture_offsets, pop=12),
    Case("GestureSystem::CalculateTransformedRegion", "GestureSystem", "void",
         g_gs_transformed_region, pop=12),
    Case("GestureSystem::ConvertAngleToDirection", "GestureSystem", "int", g_convert_angle, pop=4),
    Case("GestureSystemData::CalculateContent", "GestureSystemData", "void", g_calculate_content,
         pop=4),
    Case("GestureSystemData::CalculateTransformedRegion", "GestureSystemData", "void",
         g_gsd_transformed_region, pop=12,
         mangled="?CalculateTransformedRegion@GestureSystemData@@QAEXPAULHRegionF@@JJ@Z"),
    Case("GestureSystemData::CalculateRatio", "GestureSystemData", "float", g_calculate_ratio,
         nargs=1, mangled="?CalculateRatio@GestureSystemData@@SAMPAULHRegionF@@@Z"),
    Case("GestureSystemData::NormaliseSamples", "GestureSystemData", "void", g_normalise_samples),
    Case("GestureSystemDataList::GetData", "GestureSystemDataList", "int", g_get_data, pop=4),
    Case("GestureSystemDataList::RemoveData", "GestureSystemDataList", "int", g_remove_data, pop=4,
         hooks=ALLOC_HOOKS),
    Case("GestureSystemDataList::CheckForGestureRatio", "GestureSystemMatch", "int",
         g_check_for_gesture_ratio, pop=12),
    Case("GestureSystemDataList::CalculateGesturePacket", "GestureSystemMatch", "void",
         g_calculate_gesture_packet, pop=16, hooks=PACKET_HOOKS),
    Case("GestureSystem::CalculateForJunctionMerge", "GestureSystemSamples", "int",
         g_junction_merge, pop=8),
    Case("GestureSystem::CalculateKeyAngleDifference", "GestureSystemSamples", "void",
         g_sample_index, pop=4),
    Case("GestureSystem::GetPreviousJunction", "GestureSystemSamples", "int", g_sample_index, pop=4),
    Case("GestureSystem::IsRequiredJunctionDistance", "GestureSystemSamples", "int",
         g_required_junction_distance, pop=16,
         mangled="?IsRequiredJunctionDistance@GestureSystem@@QAEHJJMM@Z"),
]

CONTROLS = [
    Control("S1 source: RemoveNonKeyPoints keeps the last sample's own key type (off by one)",
            "GestureSystem::RemoveNonKeyPoints", True, edit=(
                "src/Black/GestureSystem.cpp",
                "i < GetPointCount() - 1 ? GetKeyPointType(i) : GESTURE_KEY_POINT_TYPE_END;\n"
                "\t\tif (type != GESTURE_KEY_POINT_TYPE_NONE)\n\t\t{\n\t\t\tCopySample(i, keptCount++);",
                "i <= GetPointCount() - 1 ? GetKeyPointType(i) : GESTURE_KEY_POINT_TYPE_END;\n"
                "\t\tif (type != GESTURE_KEY_POINT_TYPE_NONE)\n\t\t{\n\t\t\tCopySample(i, keptCount++);")),
    Control("S2 source: CheckForGestureRatio `ratio > GESTURE_WIDE_RATIO` -> `>=` (exact 4.0 only)",
            "GestureSystemDataList::CheckForGestureRatio", True, edit=(
                "src/Black/GestureSystemMatch.cpp",
                "if (ratio > GESTURE_WIDE_RATIO)", "if (ratio >= GESTURE_WIDE_RATIO)")),
    Control("S3 source: NormaliseSamples `z * aspect / scale` -> `z * (aspect / scale)` (rounding)",
            "GestureSystemData::NormaliseSamples", True, edit=(
                "src/Black/GestureSystemData.cpp",
                "* aspect / scale;", "* (aspect / scale);")),
    Control("B1 bytes: GetPreviousJunction +0x41 jg -> jge (equivalent: index 0 returns 0 anyway)",
            "GestureSystem::GetPreviousJunction", False, patch=(0x41, 0x7F, 0x7D)),
    Control("B2 bytes: GetPreviousJunction +0x18 jle -> jl (off by one in inlined GetOffsetAt)",
            "GestureSystem::GetPreviousJunction", True, patch=(0x18, 0x7E, 0x7C)),
]
