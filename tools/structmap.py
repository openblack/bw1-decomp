#!/usr/bin/env python3
"""structmap.py - offset -> struct field resolver (the missing piece for reading asm).

The recurring pain when lifting B&W code is "what is `[esi + 0x140]`?" - you hand-map the
offset to a field against the headers. This parses every `black/*.h` C-struct (the
`<type> name[...];  /* 0xNN */` lines) into {class: {offset: (name, type, size)}} and
answers it instantly - exact field or nearest-preceding field + delta (for sub-field /
interior hits). Wired into gpr.py / fpu.py via `--struct <Class>` to annotate `[reg+0xN]`.

Two kinds of header field lines carry an *explicit* offset:
  * a trailing comment:        ``uint32_t field;  /* 0x94 */``
  * the offset baked in name:  ``uint32_t field_0x94;``
Most members, however, have *neither* (e.g. ``LH3DSmoke* smoke;`` in Abode between the
0x80 and 0x90 anchors). Those are recovered by INTERPOLATION: starting from each anchored
field, a running byte cursor is advanced by each member's computed size; an interpolated
field is only ACCEPTED when the cursor lands *exactly* on the next anchor (or, for the
final run, on the struct's own ``static_assert(sizeof(...) == 0xNN)``). That "must hit the
next anchor" proof makes interpolation self-checking: a wrong size never silently produces
a wrong offset - the run simply fails to verify and those members are left out (so a query
falls back to the documented nearest-preceding behaviour rather than lying). See StructMap.

Usage:
  python3 tools/structmap.py CreatureDesires 0xa8        # -> desireValue / field_0xa8 (float)
  python3 tools/structmap.py CreatureActionInfo 0xe4     # -> initialUsefulness
  python3 tools/structmap.py --class CreatureMental      # list all fields with offsets
  python3 tools/structmap.py --self-test

Hex offsets accept either case (0xAC and 0xac are equivalent).

Library:  from structmap import StructMap; sm = StructMap(); sm.field('CreatureDesires', 0xa8)
"""
import os, re, sys, glob, functools
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# a field line with an explicit offset comment:  "<type> name[..];  /* 0xNN */"
# the trailing ";" before the comment is what keeps this from matching virtual-method
# declarations (those end in ")" / "();", never ";<comment>") .
_FIELD = re.compile(r'^\s*(.+?)\s+([A-Za-z_]\w*)\s*(\[[^\]]*\])?\s*;\s*/\*\s*(0x[0-9a-fA-F]+)\s*\*/')
# a field whose offset is encoded in its name:  "<type> field_0xNN[..];"  (no comment needed)
_FIELDN = re.compile(r'^\s*(.+?)\s+(field_0x([0-9a-fA-F]+))\s*(\[[^\]]*\])?\s*;')
# any plain field declaration (no offset info at all) - used only for interpolation. We
# require a trailing ";" with nothing-but-array between name and ";" so method decls
# (which contain "(") and bitfields (":") are excluded.
_PLAIN = re.compile(r'^\s*(.+?)\s+([A-Za-z_]\w*)\s*(\[[^\]]*\])?\s*;\s*(?:$|//|/\*)')
# opener for a struct/union/class definition. The body's "{" may be on this or a later
# line (multi-line "class Foo: public Bar {" openers are common), so _OPEN does NOT
# require "{"; forward declarations are instead rejected via _FWD below.
_OPEN  = re.compile(r'^\s*(?:struct|union|class)\s+([A-Za-z_]\w*)\b')
# a forward declaration: "struct Foo;" (terminates in ";" with no "{" - no body to parse).
_FWD   = re.compile(r'^\s*(?:struct|union|class)\s+[A-Za-z_]\w*\s*;')
# "static_assert(sizeof(struct|union|enum X) == 0xNN..)" -> records the byte size of X so
# named-type members can be sized during interpolation, and the whole-struct size can be
# used to verify the final field run.
_SIZEOF = re.compile(r'static_assert\(\s*sizeof\(\s*(?:struct|union|enum)?\s*([A-Za-z_]\w*)\s*\)\s*==\s*(0x[0-9a-fA-F]+|\d+)')
# an enum constant assignment "  NAME = 0xN," / "NAME = 5" -> used to size arrays whose
# dimension is an enum constant (e.g. "resources[RESOURCE_TYPE_LAST]").
_ENUMVAL = re.compile(r'^\s*([A-Za-z_]\w*)\s*=\s*(0x[0-9a-fA-F]+|\d+)\s*,?\s*(?:$|//|/\*)')

# fixed-width primitive type sizes, keyed by a normalised type token (see _type_size).
_PRIM = {
    'bool': 1, 'char': 1, 'int8_t': 1, 'uint8_t': 1,
    'short': 2, 'int16_t': 2, 'uint16_t': 2, 'wchar_t': 2,
    'int': 4, 'unsigned': 4, 'long': 4, 'float': 4,
    'int32_t': 4, 'uint32_t': 4, 'bool32_t': 4, 'size_t': 4,
    'double': 8, 'int64_t': 8, 'uint64_t': 8,
}

class Field:
    __slots__ = ('off', 'name', 'type', 'arr', 'exact')
    def __init__(self, off, name, type_, arr, exact=True):
        # exact=True  -> offset came straight from a /* 0xNN */ comment or a field_0xNN name
        # exact=False -> offset was interpolated and proven by hitting the next anchor
        self.off = off; self.name = name; self.type = type_; self.arr = arr or ''
        self.exact = exact
    def __repr__(self):
        return '%s %s%s @0x%x' % (self.type, self.name, self.arr, self.off)

class StructMap:
    """Parses every ``black/*.h`` header into per-class offset->field tables.

    A C struct and its mirror C++ class are both parsed; the larger field list wins
    (the C ``struct`` lists every data member flatly, whereas the C++ ``class`` may fold
    members into an inherited base, so it usually yields fewer/named-base entries).
    Anchored fields (with explicit offsets) are always recorded exactly; un-anchored
    members are filled in by proof-gated interpolation (see module docstring / _parse).
    """
    def __init__(self):
        self.structs = {}     # class -> [Field] sorted by off
        self.sizeof = {}      # type name -> byte size (from static_assert(sizeof==N))
        self.enumval = {}     # enum constant name -> int value (for array dimensions)
        self._parse()
    def _type_size(self, type_, arr):
        """Byte size of a member declared `<type_> name<arr>;`, or None if unknown.

        Handles: pointers (always 4 on this 32-bit target, incl. LHFastPointer<T>),
        fixed primitives (_PRIM), and named struct/union/enum types via the harvested
        `sizeof` table. The optional `arr` ("[N]" / "[ENUM_CONST]") multiplies the base
        size, where N is a hex/decimal literal or a known enum constant. Returns None
        whenever any piece can't be sized so the caller can refuse to interpolate.
        """
        t = type_.strip()
        # pointer of any kind is one machine word on this 32-bit (i686) target.
        if '*' in t or t.startswith('LHFastPointer') or t.startswith('LHPointer'):
            base = 4
        else:
            # strip leading struct/union/enum/const qualifiers down to the bare type name
            tok = re.sub(r'^(?:const\s+)?(?:struct|union|enum)\s+', '', t).strip()
            tok = tok.rstrip('&').strip()
            if tok in _PRIM:
                base = _PRIM[tok]
            elif tok == 'unsigned int' or tok == 'unsigned long' or tok == 'unsigned char' or tok == 'unsigned short':
                base = {'unsigned char': 1, 'unsigned short': 2, 'unsigned int': 4, 'unsigned long': 4}[tok]
            elif tok in self.sizeof:
                base = self.sizeof[tok]
            else:
                return None
        if not arr:
            return base
        # array dimension: "[N]" or "[ENUM_CONST]" -> multiply (nested "[a][b]" multiplies all)
        total = base
        for dim in re.findall(r'\[([^\]]*)\]', arr):
            dim = dim.strip()
            if re.fullmatch(r'0x[0-9a-fA-F]+', dim):
                total *= int(dim, 16)
            elif dim.isdigit():
                total *= int(dim)
            elif dim in self.enumval:
                total *= self.enumval[dim]
            else:
                return None     # unknown dimension -> can't size the array
        return total
    def _harvest(self, lines):
        """First pass over one header's lines: record sizeof() asserts and enum values.

        These feed _type_size during the interpolation pass and must be collected up
        front because a member's named type may be sized by an assert later in the file.
        """
        for ln in lines:
            ms = _SIZEOF.search(ln)
            if ms:
                self.sizeof[ms.group(1)] = int(ms.group(2), 16) if ms.group(2).startswith('0x') else int(ms.group(2))
            me = _ENUMVAL.match(ln)
            if me:
                self.enumval[me.group(1)] = int(me.group(2), 16) if me.group(2).startswith('0x') else int(me.group(2))
    def _commit(self, cur, fields):
        """Record `fields` for class `cur`, keeping the larger of any duplicate definitions.

        The same class is declared twice per header (C++ `class` + C `struct`); the
        definition with more parsed fields is the more useful one to keep.
        """
        if fields and (cur not in self.structs or len(fields) > len(self.structs[cur])):
            self.structs[cur] = sorted(fields, key=lambda x: x.off)
    def _parse(self):
        # Harvest sizeof()/enum tables across ALL headers first, then parse fields - a
        # member in header A may be sized by a struct declared in header B.
        # Headers live in black/ (bw1-decomp) or include/black/ (bw1-dtk build copy); use whichever exists.
        files = (glob.glob(os.path.join(ROOT, 'black', '*.h'))
                 or glob.glob(os.path.join(ROOT, 'include', 'black', '*.h')))
        headers = []
        for f in files:
            try:
                with open(f, encoding='latin-1') as fh:   # latin-1 = lossless byte passthrough
                    lines = fh.read().split('\n')
            except OSError:
                continue
            headers.append(lines)
            self._harvest(lines)
        for lines in headers:
            cur = None; depth = 0
            fields = []     # anchored fields (explicit offset) for the current definition
            # `pending` collects un-anchored declarations seen since the last anchor, so the
            # gap between two anchors can be interpolated and verified in one shot.
            pending = []    # list of (type, name, arr) with no explicit offset yet
            last_off = None # offset of the most recent anchored field (the run's start)
            last_sz = None  # size of that anchored field (cursor = last_off + last_sz)
            cur_size = None # struct's own sizeof, used to verify the final field run
            def flush_gap(next_off):
                # Try to assign offsets to everything in `pending` by walking a byte cursor
                # from the previous anchor; accept ONLY if the cursor lands exactly on
                # `next_off` (the proof). next_off=None means "verify against struct size".
                nonlocal pending
                if not pending or last_off is None or last_sz is None:
                    pending = []
                    return
                target = next_off if next_off is not None else cur_size
                if target is None:
                    pending = []
                    return
                cursor = last_off + last_sz
                staged = []
                ok = True
                for (ty, nm, ar) in pending:
                    sz = self._type_size(ty, ar)
                    if sz is None:
                        ok = False; break
                    staged.append(Field(cursor, nm, ty, ar, exact=False))
                    cursor += sz
                # For an inner gap require an exact hit; for the final run allow the
                # cursor to be <= struct size (trailing alignment padding may follow).
                if ok and ((next_off is not None and cursor == target) or
                           (next_off is None and cursor <= target)):
                    fields.extend(staged)
                pending = []
            for ln in lines:
                if cur is None:
                    m = _OPEN.match(ln)
                    # open a definition unless this is a forward declaration ("struct Foo;",
                    # possibly with a base list but ending in ";" before any "{"). The body's
                    # "{" may be on this line or a later one (multi-line class openers).
                    if m and not _FWD.match(ln):
                        cur = m.group(1)
                        fields = []; pending = []; last_off = None; last_sz = None
                        cur_size = self.sizeof.get(cur)
                        depth = ln.count('{') - ln.count('}')
                    continue
                depth += ln.count('{') - ln.count('}')
                m = _FIELD.match(ln)
                if m:
                    off = int(m.group(4), 16)
                    flush_gap(off)                              # close the run up to this anchor
                    fields.append(Field(off, m.group(2), m.group(1).strip(), m.group(3)))
                    last_off = off; last_sz = self._type_size(m.group(1).strip(), m.group(3))
                else:
                    mn = _FIELDN.match(ln)
                    if mn:
                        off = int(mn.group(3), 16)
                        flush_gap(off)
                        fields.append(Field(off, mn.group(2), mn.group(1).strip(), mn.group(4)))
                        last_off = off; last_sz = self._type_size(mn.group(1).strip(), mn.group(4))
                    else:
                        mp = _PLAIN.match(ln)
                        # only stage plain members once we have an anchor to count from and
                        # while we're directly inside the struct body (depth==1)
                        if mp and last_off is not None and depth == 1 and '(' not in mp.group(1):
                            pending.append((mp.group(1).strip(), mp.group(2), mp.group(3)))
                if depth <= 0:
                    flush_gap(None)                             # verify the final run vs struct size
                    self._commit(cur, fields)
                    cur = None
    def field(self, cls, off):
        """exact field at off, or (nearest-preceding field, delta) for an interior hit; or None.

        Returns a (Field, delta) pair where delta==0 means an exact field hit and delta>0
        means `off` lands inside (or after) the field at `Field.off`. Caveat: if a member
        between two anchors could not be sized (so interpolation was refused), an offset in
        that gap resolves to the last *recorded* preceding field with a larger-than-real
        delta - i.e. it may name the wrong field. `Field.exact` distinguishes a real
        anchor from an interpolated one but cannot flag a missing field.
        """
        fs = self.structs.get(cls)
        if not fs: return None
        exact = [x for x in fs if x.off == off]
        if exact: return (exact[0], 0)
        # walk the offset-sorted list; keep the last field that starts at or before `off`
        prev = None
        for x in fs:
            if x.off <= off: prev = x
            else: break
        return (prev, off - prev.off) if prev else None
    def describe(self, cls, off):
        """Human-readable "Class->field" (or "Class->field+0xN" for an interior hit), or None."""
        r = self.field(cls, off)
        if not r: return None
        fld, delta = r
        base = '%s->%s' % (cls, fld.name)
        return base if delta == 0 else '%s+0x%x' % (base, delta)

@functools.lru_cache(maxsize=1)
def _singleton():
    """Return a process-wide shared StructMap (parsing all headers is done once, lazily)."""
    return StructMap()

def describe(cls, off):
    """Module-level convenience wrapper over the shared StructMap().describe()."""
    return _singleton().describe(cls, off)

# annotate a `[reg + 0xN]` operand string given the class the base register points to.
# _MEMOFF matches a 2-3 char register name and a hex displacement; it does NOT handle
# index/scale forms ("[eax+ebx*4+0xN]") or non-hex displacements - those are left as-is.
_MEMOFF = re.compile(r'\[([a-z]{2,3})\s*\+\s*0x([0-9a-fA-F]+)\]')
def annotate_mem(text, cls):
    """Append a ``/*Class->field*/`` comment after every ``[reg + 0xN]`` operand in `text`.

    `cls` is the struct type the base register is assumed to point at. Operands whose
    offset resolves to no field are left untouched.
    """
    sm = _singleton()
    def sub(m):
        d = sm.describe(cls, int(m.group(2), 16))
        return m.group(0) + (' /*%s*/' % d if d else '')
    return _MEMOFF.sub(sub, text)

def _self_test():
    """Run pure-logic assertions over committed-header fields; returns 0 on success."""
    ok = True
    sm = StructMap()
    def chk(c, n, got=None):
        nonlocal ok; ok = ok and c
        print(("  PASS " if c else "  FAIL ") + n + ("" if c else "   got: %r" % (got,)))
    # use ONLY committed-header fields (don't couple the test to in-progress/stashed struct edits):
    # CreatureMental aggregates (CreatureMental.h): 0x2478 = decision_tree_collection, 0x710 = agenda
    chk(sm.describe('CreatureMental', 0x2478) == 'CreatureMental->decision_tree_collection',
        "CreatureMental 0x2478 -> decision_tree_collection", sm.describe('CreatureMental', 0x2478))
    chk(sm.describe('CreatureMental', 0x710) == 'CreatureMental->agenda',
        "CreatureMental 0x710 -> agenda", sm.describe('CreatureMental', 0x710))
    # CreatureDesires: 0xa8 = field_0xa8 (desireValue array), 0x328 = source_lists
    chk(sm.describe('CreatureDesires', 0x328) is not None and 'source_lists' in sm.describe('CreatureDesires', 0x328),
        "CreatureDesires 0x328 -> source_lists", sm.describe('CreatureDesires', 0x328))
    # interior hit: CreatureDesires 0xac = inside field_0xa8[] -> +0x4
    d = sm.describe('CreatureDesires', 0xac)
    chk(d is not None and d.endswith('+0x4'), "interior offset -> nearest field + delta", d)
    # CreatureMental aggregates: 0x25b8 = action_opinions
    chk(sm.describe('CreatureMental', 0x25b8) == 'CreatureMental->action_opinions',
        "CreatureMental 0x25b8 -> action_opinions", sm.describe('CreatureMental', 0x25b8))
    # annotate_mem rewrites an operand
    a = annotate_mem('mov eax, dword ptr [esi + 0x328]', 'CreatureDesires')
    chk('source_lists' in a, "annotate_mem injects field name", a)
    # unknown class -> None (no crash)
    chk(sm.describe('NoSuchClass', 0x10) is None, "unknown class -> None")
    # interpolation: Abode 'smoke' (no offset comment) sits between drinking_water /* 0x80 */
    # and destruction_mesh /* 0x90 */ and must be recovered exactly.
    sm2 = sm.describe('Abode', 0x8c)
    chk(sm2 == 'Abode->smoke', "Abode 0x8c -> smoke (interpolated, proven against next anchor)", sm2)
    # interpolation: Abode 'adult_count' between field_0xb0 and field_0xb5 anchors.
    chk(sm.describe('Abode', 0xb4) == 'Abode->adult_count',
        "Abode 0xb4 -> adult_count (interpolated)", sm.describe('Abode', 0xb4))
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

def _usage(msg=None):
    """Print an error (if any) plus the module usage, and return a non-zero exit code."""
    if msg:
        print('error:', msg)
    print(__doc__)
    return 2

if __name__ == '__main__':
    a = sys.argv[1:]
    if '--self-test' in a: sys.exit(_self_test())
    sm = StructMap()
    if '--class' in a:
        i = a.index('--class')
        if i + 1 >= len(a):                                 # guard: "--class" with no name
            sys.exit(_usage('--class requires a struct name'))
        cls = a[i + 1]
        fs = sm.structs.get(cls)
        if not fs: print('(unknown struct %r)' % cls); sys.exit(1)
        for x in fs: print('  0x%-5x %s %s%s' % (x.off, x.type, x.name, x.arr))
        sys.exit()
    if len(a) >= 2:
        cls = a[0]
        try:
            off = int(a[1], 16)                             # accepts upper- or lower-case hex
        except ValueError:
            sys.exit(_usage('offset %r is not a hex value (e.g. 0x140)' % a[1]))
        d = sm.describe(cls, off)
        print(d if d else '(no field for %s @0x%x)' % (cls, off)); sys.exit()
    if len(a) == 1:                                         # class given but no offset
        sys.exit(_usage('missing offset argument (e.g. "%s 0x140")' % a[0]))
    print(__doc__)
