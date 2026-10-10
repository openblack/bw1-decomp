"""The emulator's memory map, shared by the emulator, the comparison and the suites."""

SCRATCH, SCRATCH_SIZE = 0x10000000, 0x400000  # our relocated sections, hook stubs, sentinels
STATE, STATE_SIZE = 0x20000000, 0x400000  # per-trial objects built by a suite's generators
STACK, STACK_SIZE = 0x30000000, 0x100000
HEAP, HEAP_SIZE = 0x40000000, 0x1000000  # bump allocator for hooked allocators
STACK_TOP = STACK + STACK_SIZE - 0x1000

REGIONS = (("SCRATCH", SCRATCH, SCRATCH_SIZE), ("STATE", STATE, STATE_SIZE),
           ("STACK", STACK, STACK_SIZE), ("HEAP", HEAP, HEAP_SIZE))

# Zeroed before every trial; generators must keep their objects inside it.
STATE_CLEAR = 0x40000
HEAP_CLEAR = 0x10000


def region_name(address):
    for name, base, size in REGIONS:
        if base <= address < base + size:
            return f"{name}+{address - base:#x}"
    return f"{address:#x}"


def on_stack(address):
    return STACK <= address < STACK + STACK_SIZE
