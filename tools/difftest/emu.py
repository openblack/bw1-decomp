"""Unicorn x86 emulator holding the original executable and our relocated COFF code.

The original runblack-decrypted.exe is mapped with every section at its VA; the rest of
the memory map is in layout.py.
"""

import re
import struct
import sys
from pathlib import Path

from unicorn import (UC_ARCH_X86, UC_HOOK_CODE, UC_HOOK_MEM_INVALID, UC_HOOK_MEM_READ,
                     UC_HOOK_MEM_WRITE, UC_MODE_32, UC_PROT_ALL, Uc, UcError)
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_EBP, UC_X86_REG_EBX, UC_X86_REG_ECX,
                               UC_X86_REG_EDI, UC_X86_REG_EDX, UC_X86_REG_EFLAGS, UC_X86_REG_EIP,
                               UC_X86_REG_ESI, UC_X86_REG_ESP, UC_X86_REG_FPCW, UC_X86_REG_FPSW)

sys.path.insert(0, str(Path(__file__).resolve().parents[1]))
from decomp_binary import PE, RELOCATIONS, Coff, Unresolved, resolve_relocation
from decomp_common import ROOT
from layout import HEAP, REGIONS, SCRATCH, SCRATCH_SIZE, STACK, STACK_SIZE, STACK_TOP, on_stack

EXE = ROOT / "orig" / "BW1W120" / "runblack-decrypted.exe"
SYMBOLS = ROOT / "config" / "BW1W120" / "symbols.txt"

INSN_LIMIT = 2_000_000

SYM_CLASS_EXTERNAL = 2
SCN_CNT_CODE = 0x20

REGS = {"eax": UC_X86_REG_EAX, "ecx": UC_X86_REG_ECX, "edx": UC_X86_REG_EDX}


def find_symbol(names, function):
    """The one mangled name in names for function.

    function is "Class::Method", matched as the mangled prefix "?Method@Class@@" so the
    signature isn't spelled out, or a full mangled name starting with "?" for overloads and
    operators.
    """
    if function.startswith("?"):
        found = [function] if function in names else []
    else:
        cls, method = function.rsplit("::", 1)
        prefix = "?" + method + "@" + "@".join(reversed(cls.split("::"))) + "@@"
        found = sorted({name for name in names if name.startswith(prefix)})
    if len(found) != 1:
        raise Unresolved(f"{function}: {len(found)} matching symbols {found[:4]}")
    return found[0]


def load_symbols(path=SYMBOLS):
    """Return ({name: [addresses]}, {address: size}) from a symbols.txt."""
    names, sizes = {}, {}
    pattern = re.compile(r"^(\S+) = \.\w+:0x([0-9A-Fa-f]+);(?: // (.*))?$")
    for number, line in enumerate(Path(path).read_text(encoding="utf-8").splitlines(), 1):
        if not line.strip():
            continue
        m = pattern.match(line.strip())
        if not m:
            raise ValueError(f"{path}:{number}: unrecognised symbol line: {line!r}")
        address = int(m.group(2), 16)
        names.setdefault(m.group(1), []).append(address)
        size = re.search(r"size:0x([0-9A-Fa-f]+)", m.group(3) or "")
        if size:
            sizes[address] = int(size.group(1), 16)
    return names, sizes


class Emu:
    def __init__(self):
        self.syms, self.sizes = load_symbols()
        self._lookups = {}
        self.uc = Uc(UC_ARCH_X86, UC_MODE_32)
        pe = PE.read(EXE)
        end = max(s.address + max(s.size, s.virtual_size) for s in pe.sections)
        self.uc.mem_map(pe.image_base, (end - pe.image_base + 0xFFF) & ~0xFFF, UC_PROT_ALL)
        self.uc.mem_write(pe.image_base, pe.data[:pe.header_size])
        for s in pe.sections:
            if s.size:
                self.uc.mem_write(s.address, pe.data[s.raw_offset:s.raw_offset + s.size])
        for _name, address, size in REGIONS:
            self.uc.mem_map(address, size, UC_PROT_ALL)
        self.scratch_ptr = SCRATCH

        # Return sentinels: a plain stop, and one that first stores ST0 as 80 bits.
        self.stop = self.alloc(16)
        self.uc.mem_write(self.stop, b"\xF4")  # hlt; never executed, emulation stops here
        self.st0_slot = self.alloc(16)
        self.ret_float = self.alloc(16)
        self.uc.mem_write(self.ret_float, b"\xDB\x3D" + struct.pack("<I", self.st0_slot) + b"\xF4")
        self.float_stop = self.ret_float + 6

        self._saved = None  # address -> byte before this run's first write; None: not tracking
        self._fault = None
        self._uninit = set()
        self._entry_sp = 0
        self.hook_calls = []
        self.hook_inputs = ()
        self.heap_ptr = HEAP
        self.trial_undo = {}
        self.trial_ctx = {}
        self.uc.hook_add(UC_HOOK_MEM_WRITE, self._on_write)
        self.uc.hook_add(UC_HOOK_MEM_INVALID, self._on_invalid)
        self.uc.hook_add(UC_HOOK_MEM_READ, self._on_stack_read, begin=STACK, end=STACK + STACK_SIZE - 1)

    # Allocation and symbols

    def alloc(self, size, align=16):
        self.scratch_ptr = (self.scratch_ptr + align - 1) & ~(align - 1)
        address = self.scratch_ptr
        self.scratch_ptr += max(size, 1)
        if self.scratch_ptr >= SCRATCH + SCRATCH_SIZE:
            raise MemoryError("SCRATCH region exhausted")
        return address

    def orig(self, name):
        """Original address of a symbol, by mangled name."""
        addresses = self.syms.get(name)
        if not addresses:
            raise Unresolved(name)
        if len(set(addresses)) != 1:
            raise Unresolved(f"{name} (ambiguous: {len(addresses)} entries in symbols.txt)")
        return addresses[0]

    def lookup(self, function):
        """Original address of "Class::Member" (see find_symbol)."""
        if function not in self._lookups:
            self._lookups[function] = self.orig(find_symbol(self.syms, function))
        return self._lookups[function]

    # Hooks

    def add_hook(self, address, handler, pop_bytes, nargs, regs=(), returns_float=False, name=None):
        """Replace the original function at address, for both versions, with handler(emu).

        handler returns EAX (int), ST0 (float, with returns_float) or None. Each call is
        recorded as (name, register args, stack args, handler's emu.hook_inputs) so that
        both versions' call sequences can be compared.
        """
        stub = self.alloc(16)
        slot = self.alloc(4)
        code = b"\xD9\x05" + struct.pack("<I", slot) if returns_float else b""  # fld dword [slot]
        code += b"\xC2" + struct.pack("<H", pop_bytes) if pop_bytes else b"\xC3"
        self.uc.mem_write(stub, code)
        name = name or hex(address)

        def norm(value):
            # A pointer into the stack: frame layouts differ, so compare by content instead.
            return "<stack ptr>" if on_stack(value) else value

        def callback(uc, _address, _size, _data):
            esp = uc.reg_read(UC_X86_REG_ESP)
            self.hook_inputs = ()
            values = (tuple(norm(uc.reg_read(REGS[r])) for r in regs),
                      tuple(norm(self.u32(esp + 4 + 4 * i)) for i in range(nargs)))
            result = handler(self)
            self.hook_calls.append((name,) + values + (self.hook_inputs,))
            if returns_float:
                uc.mem_write(slot, struct.pack("<f", result))
            elif result is not None:
                uc.reg_write(UC_X86_REG_EAX, result & 0xFFFFFFFF)
            uc.reg_write(UC_X86_REG_EIP, stub)

        self.uc.hook_add(UC_HOOK_CODE, callback, begin=address, end=address)

    def add_coverage(self, start, size):
        """Record every executed instruction address in [start, start + size)."""
        seen = set()
        self.uc.hook_add(UC_HOOK_CODE, lambda uc, address, sz, _: seen.add(address),
                         begin=start, end=start + size - 1)
        return seen

    def arg(self, i):
        """The i-th (0-based) stack argument at a hooked function's entry."""
        return self.u32(self.uc.reg_read(UC_X86_REG_ESP) + 4 + 4 * i)

    def reg(self, name):
        return self.uc.reg_read(REGS[name])

    # Memory

    def u32(self, address):
        return struct.unpack("<I", self.uc.mem_read(address, 4))[0]

    def f32(self, address):
        return struct.unpack("<f", self.uc.mem_read(address, 4))[0]

    def write(self, address, data):
        """A write done by a hook on behalf of emulated code; tracked like a CPU write."""
        self._track(address, len(data))
        self.uc.mem_write(address, bytes(data))

    def poke(self, address, data):
        """Write trial state outside STATE (e.g. exe globals); undone by end_trial()."""
        old = bytes(self.uc.mem_read(address, len(data)))
        for i, byte in enumerate(old):
            self.trial_undo.setdefault(address + i, byte)
        self.uc.mem_write(address, bytes(data))

    def end_trial(self):
        for address, byte in self.trial_undo.items():
            self.uc.mem_write(address, bytes([byte]))
        self.trial_undo = {}
        self.trial_ctx = {}

    def _track(self, address, size):
        """Save the old bytes of a write about to happen, the first time each is written."""
        if self._saved is None:
            return
        new = [a for a in range(address, address + size) if a not in self._saved]
        if new:
            old = self.uc.mem_read(address, size)
            for a in new:
                self._saved[a] = old[a - address]

    def _on_write(self, _uc, _access, address, size, _value, _data):
        self._track(address, size)

    def _on_stack_read(self, uc, _access, address, size, _value, _data):
        # A read of the callee's own frame (below the return address) that this run never wrote.
        if self._saved is None or address >= self._entry_sp:
            return
        if any(a not in self._saved for a in range(address, address + size)):
            self._uninit.add((uc.reg_read(UC_X86_REG_EIP), address - self._entry_sp, size))

    def _on_invalid(self, _uc, access, address, _size, _value, _data):
        self._fault = (access, address)
        return False

    # Running

    def call(self, address, *, ecx=0, args=(), returns="void", fpcw=0x27F, track=True,
             stack_fill=0, size=0):
        """Call a function and return an outcome dict.

        size is the function's length: a hang inside it is reported as "in function", so that
        both versions' hangs compare equal. Memory is left as the function left it;
        restore(outcome) undoes every tracked write.
        """
        uc = self.uc
        sp = STACK_TOP
        # The same fill for both versions, so uninitialised locals read the same values.
        uc.mem_write(STACK_TOP - 0x10000, struct.pack("<I", stack_fill) * (0x11000 // 4))
        for value in reversed(args):
            sp -= 4
            uc.mem_write(sp, struct.pack("<I", value & 0xFFFFFFFF))
        ret = self.ret_float if returns == "float" else self.stop
        until = self.float_stop if returns == "float" else self.stop
        sp -= 4
        uc.mem_write(sp, struct.pack("<I", ret))
        self._entry_sp = sp
        self._uninit = set()
        for r in (UC_X86_REG_EAX, UC_X86_REG_EBX, UC_X86_REG_ESI, UC_X86_REG_EDI, UC_X86_REG_EBP):
            uc.reg_write(r, 0xDEAD0000 | r)
        uc.reg_write(UC_X86_REG_ECX, ecx & 0xFFFFFFFF)
        uc.reg_write(UC_X86_REG_EDX, 0)
        uc.reg_write(UC_X86_REG_ESP, sp)
        uc.reg_write(UC_X86_REG_EFLAGS, 0x202)
        # An finit-like x87 state, then the requested control word.
        uc.reg_write(UC_X86_REG_FPSW, 0)
        uc.reg_write(UC_X86_REG_FPCW, fpcw)
        uc.mem_write(self.st0_slot, b"\0" * 10)
        self._saved = {} if track else None
        self._fault = None
        self.hook_calls = []
        self.heap_ptr = HEAP + 0x100
        error = None
        try:
            uc.emu_start(address, until, count=INSN_LIMIT)
        except UcError as exc:
            error = str(exc)
        eip = uc.reg_read(UC_X86_REG_EIP)
        hang = error is None and eip != until
        if hang:
            error = f"instruction limit hit at {eip:#x}"
        out = {
            "eax": uc.reg_read(UC_X86_REG_EAX),
            "esp_delta": (uc.reg_read(UC_X86_REG_ESP) - self._entry_sp) & 0xFFFFFFFF,
            "fpu_top": (uc.reg_read(UC_X86_REG_FPSW) >> 11) & 7,
            "st0": bytes(uc.mem_read(self.st0_slot, 10)) if returns == "float" else None,
            "error": error,
            "fault": self._fault,
            "hang": hang,
            "hang_at": None if not hang else "in function" if address <= eip < address + size
                       else f"{eip:#x}",
            "entry_sp": self._entry_sp,
            "hook_calls": list(self.hook_calls),
            "uninit_stack_read_sites": sorted(self._uninit),
            "writes": {},
            "saved": {},
        }
        if track:
            for start, length in runs(self._saved):
                out["writes"].update(zip(range(start, start + length), uc.mem_read(start, length)))
            out["saved"] = self._saved
        self._saved = None
        return out

    def restore(self, out):
        saved = out["saved"]
        for start, length in runs(saved):
            self.uc.mem_write(start, bytes(saved[a] for a in range(start, start + length)))


def runs(addresses):
    """(start, length) of each run of consecutive addresses."""
    start = length = None
    for address in sorted(addresses):
        if length is not None and address == start + length:
            length += 1
            continue
        if length is not None:
            yield start, length
        start, length = address, 1
    if length is not None:
        yield start, length


class Linker:
    """Load sections of one of our COFF objects into SCRATCH and apply relocations.

    Resolution policy for a relocation's target symbol:
      * `__real@...` float constants and `??_C@...` string literals: our own copy.
      * symbols defined STATIC in our object (TU-local constants, file statics, jump
        tables, our own .bss): our own copy.
      * any other symbol, defined here or not, that symbols.txt names (callees, shared
        globals, vtables): the ORIGINAL address, so callees run the original code and
        shared globals are the real ones. With own_callees, functions defined in our
        object run our copy instead.
      * an EXTERNAL symbol defined here that symbols.txt lacks: our own copy.
      * an undefined symbol that symbols.txt lacks: Unresolved.
    The function under test is always loaded from our object.
    """

    def __init__(self, emu, path, own_callees=False):
        self.emu = emu
        self.coff = Coff.read(path)
        self.loaded = {}  # section index -> address
        self.own_callees = own_callees

    def _is_ours(self, sym):
        if sym.section <= 0:
            return False
        if sym.name.startswith(("__real@", "??_C@")) or sym.storage != SYM_CLASS_EXTERNAL:
            return True
        if self.own_callees and self.coff.section(sym.section).flags & SCN_CNT_CODE:
            return True
        return sym.name not in self.emu.syms

    def resolve(self, sym):
        if self._is_ours(sym):
            return self.load_section(sym.section) + sym.value
        return self.emu.orig(sym.name)

    def load_section(self, index):
        if index in self.loaded:
            return self.loaded[index]
        sec = self.coff.section(index)
        address = self.emu.alloc(sec.size, 16)
        self.loaded[index] = address
        data = bytearray(sec.size if sec.bss else self.coff.bytes(index, 0, sec.size))
        for reloc in sec.relocations:
            # Others (DIR32NB, SECTION, SECREL) are relative to an image this isn't.
            if RELOCATIONS.get(reloc.type, ("",))[0] not in ("DIR32", "REL32"):
                raise Unresolved(f"relocation type {reloc.type:#x} in {sec.name}")
            target = self.resolve(self.coff.symbols[reloc.symbol_index])
            data[reloc.offset:reloc.offset + 4] = resolve_relocation(
                reloc.type, target, self.coff.addend(index, reloc), address + reloc.offset, None)
        self.emu.uc.mem_write(address, bytes(data))
        return address

    def symbol(self, mangled):
        found = [s for s in self.coff.symbols.values() if s.name == mangled and s.section > 0]
        if len(found) != 1:
            raise Unresolved(f"{mangled}: {len(found)} definitions in the object")
        return found[0]

    def defined_names(self):
        return {s.name for s in self.coff.symbols.values() if s.section > 0}

    def load_function(self, mangled):
        sym = self.symbol(mangled)
        return self.load_section(sym.section) + sym.value

    def run_static_initializers(self):
        """Run our object's .CRT$XCU initializers, which fill our TU-local statics."""
        for index, sec in enumerate(self.coff.sections, 1):
            if sec.name != ".CRT$XCU":
                continue
            base = self.load_section(index)
            run_initializers(self.emu, base, base + sec.size)


def run_initializers(emu, start, end):
    """Run the .CRT$XCU entries in [start, end); a failing one is an error."""
    for address in range(start, end, 4):
        function = emu.u32(address)
        error = function and emu.call(function, track=False)["error"]
        if error:
            raise RuntimeError(f"static initializer {function:#x} failed: {error}")
