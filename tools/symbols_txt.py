"""Parse, order and three-way merge decomp-toolkit symbols.txt files.

A symbols.txt line is one of

    <name> = <section>:0x<ADDR>; // <attributes>
    <name> = extern; // <attributes>                  (the Mac configs only)

dtk writes the file in a fixed order, and rewrites it when a split finds it in any other:

- the `extern` lines first, by name (byte order);
- then every other line by section, in the image's section order (.text, .rdata, .data, .data1,
  .idata; .code0, .pidata1 on the Mac), then by address;
- lines at one section and address stay in the order the file had them: dtk keeps its symbols in
  insertion order there, and appends a symbol it finds itself after the ones it read.

`canonical_order` reproduces that order (a stable sort), so a file it leaves unchanged is one the
next split will not rewrite. Checked by running `dtk coff split` on reordered copies: lines moved
across addresses come back, swapped lines at one address stay swapped.

`merge` is a three-way merge keyed by symbol rather than by line, used by tools/merge-symbols.py
(the git merge driver). See that script for the rules.
"""

from __future__ import annotations

import re
from dataclasses import dataclass, field

LINE_RE = re.compile(
    r"^(?P<name>\S+) = (?:(?P<section>[^\s:;]+):0x(?P<addr>[0-9A-Fa-f]+)|(?P<extern>extern));"
    r"(?: // (?P<attrs>.*))?$"
)

# The image section order dtk sorts by; a section not listed here sorts after these, in the order
# it first appears.
SECTION_ORDER = (".text", ".rdata", ".data", ".data1", ".idata", ".code0", ".pidata1")

# The order dtk writes the attributes in (type, size, scope, align, data, then flags).
ATTR_ORDER = ("type", "size", "scope", "align", "data", "noreloc", "comdat", "nocomdat", "alias", "stripped")
FLAG_ATTRS = frozenset(("noreloc", "comdat", "nocomdat", "alias", "stripped"))
VALUE_ATTRS = frozenset(("type", "size", "scope", "align", "data"))

# Labels cl numbers per unit, in an order any header change can shift: dynamic initializers and
# their .CRT$XCU slots (_$E, _$S), function-local static guards (?$S<n>@ and its data symbol
# _?$S<n>@), EH funclets ($L). tools/relabel-initializers.py names the initializer labels of
# compiled units after their address (_$E_<address>, _$S_<address>), which no header change
# moves; tools/funclets.py regenerates the funclets from the compiled objects.
COMPILER_LABEL_RE = re.compile(r"^(?:_\$[ES]\d+|\$L\d+|_?\?\$S\d+@.*)$")
FUNCLET_LABEL_RE = re.compile(r"^\$L\d+$")
# relabel-initializers.py's own placeholder for a .CRT$XCU entry it could not pair yet.
CRT_PLACEHOLDER_RE = re.compile(r"^crt_xc_fn_\w+$")
# dtk's placeholders for a symbol nobody has named.
PLACEHOLDER_RE = re.compile(r"^(?:fn_|lbl_|data_0x)[0-9A-Fa-f]+$")


def is_compiler_label(name):
    """A name the relabel passes regenerate: a compiler-numbered label or their placeholder."""
    return bool(COMPILER_LABEL_RE.match(name) or CRT_PLACEHOLDER_RE.match(name))


def is_placeholder(name):
    return bool(PLACEHOLDER_RE.match(name))


class ParseError(ValueError):
    pass


@dataclass
class Symbol:
    text: str
    name: str
    section: str | None  # None for extern
    addr: int
    attrs: str | None

    @property
    def tokens(self):
        return self.attrs.split() if self.attrs else []

    @property
    def is_extern(self):
        return self.section is None

    @property
    def is_alias(self):
        toks = self.tokens
        return "alias" in toks or "type:label" in toks

    @property
    def size(self):
        for tok in self.tokens:
            if tok.startswith("size:"):
                return int(tok[5:], 16)
        return 0

    @property
    def is_local(self):
        return "scope:local" in self.tokens

    @property
    def key(self):
        """Merge key: one primary symbol per section and address; labels and aliases by name too."""
        if self.is_extern:
            return ("e", self.name)
        if self.is_alias:
            return ("a", self.section, self.addr, self.name)
        return ("p", self.section, self.addr)


def parse_line(line):
    m = LINE_RE.match(line)
    if not m:
        raise ParseError(f"unrecognised symbols.txt line: {line!r}")
    if m["extern"]:
        return Symbol(line, m["name"], None, 0, m["attrs"])
    return Symbol(line, m["name"], m["section"], int(m["addr"], 16), m["attrs"])


def parse(text):
    """Symbols in file order. Blank lines are ignored; anything else unrecognised raises ParseError."""
    out = []
    for n, line in enumerate(text.split("\n"), 1):
        line = line.rstrip("\r")
        if not line.strip():
            continue
        try:
            out.append(parse_line(line))
        except ParseError as e:
            raise ParseError(f"line {n}: {e}") from None
    return out


def section_ranks(*symbol_lists):
    """Rank of each section: SECTION_ORDER first, then any other in order of first appearance."""
    ranks = {s: i for i, s in enumerate(SECTION_ORDER)}
    for syms in symbol_lists:
        for s in syms:
            if s.section is not None and s.section not in ranks:
                ranks[s.section] = len(ranks)
    return ranks


def sort_key(sym, ranks):
    if sym.is_extern:
        return (0, sym.name.encode("utf-8", "surrogateescape"), 0)
    return (1, ranks[sym.section], sym.addr)


def canonical_order(symbols, ranks=None):
    """The symbols in dtk's order (a stable sort: ties keep their order), exact duplicate lines dropped."""
    ranks = ranks or section_ranks(symbols)
    seen = set()
    unique = []
    for s in symbols:
        if s.text in seen:
            continue
        seen.add(s.text)
        unique.append(s)
    return sorted(unique, key=lambda s: sort_key(s, ranks))


def render(symbols):
    return "".join(s.text + "\n" for s in symbols)


def canonicalize(text):
    return render(canonical_order(parse(text)))


# --- attributes ------------------------------------------------------------------------------


def split_attrs(attrs):
    """{attribute: value} for `key:value` tokens and {flag: True} for flags; None if any token is
    unknown, repeated, or out of dtk's order (the caller then refuses to rewrite the line)."""
    if attrs is None:
        return {}
    fields = {}
    last = -1
    for tok in attrs.split(" "):
        k, sep, v = tok.partition(":")
        if (sep and k not in VALUE_ATTRS) or (not sep and k not in FLAG_ATTRS) or k in fields:
            return None
        rank = ATTR_ORDER.index(k)
        if rank < last:
            return None
        last = rank
        fields[k] = v if sep else True
    return fields


def join_attrs(fields):
    toks = []
    for k in ATTR_ORDER:
        if k in fields:
            toks.append(k if fields[k] is True else f"{k}:{fields[k]}")
    return " ".join(toks)


def fields_of(sym):
    """Every part of a line a merge can change independently, or None if the line does not
    round-trip through them exactly."""
    attrs = split_attrs(sym.attrs)
    if attrs is None:
        return None
    fields = dict(attrs)
    fields["@name"] = sym.name
    if format_fields(sym, fields) != sym.text:
        return None
    return fields


def format_fields(sym, fields):
    attrs = {k: v for k, v in fields.items() if not k.startswith("@")}
    where = "extern" if sym.is_extern else f"{sym.section}:0x{sym.addr:08X}"
    text = f"{fields['@name']} = {where};"
    if attrs:
        text += " // " + join_attrs(attrs)
    return text


# --- merge ------------------------------------------------------------------------------------


@dataclass
class MergeResult:
    text: str
    clean: bool
    conflicts: list = field(default_factory=list)  # (key, reason)
    labels_from_upstream: list = field(default_factory=list)  # names taken from the upstream side
    labels_both_sides: bool = False  # both sides renamed compiler labels somewhere in the file
    label_kinds: set = field(default_factory=set)  # "initializer" / "funclet"


def _group(symbols):
    """key -> tuple of lines in file order (exact duplicate lines dropped), and keys in file order."""
    groups = {}
    order = []
    for s in symbols:
        k = s.key
        if k not in groups:
            groups[k] = []
            order.append(k)
        if all(x.text != s.text for x in groups[k]):
            groups[k].append(s)
    return {k: tuple(v) for k, v in groups.items()}, order


def _texts(value):
    return None if value is None else tuple(s.text for s in value)


def _label_only_change(old, new):
    """`new` is `old` with only a compiler-numbered label renamed (from another label or from a
    placeholder), and maybe the `scope:local` the relabel passes add."""
    if old is None or new is None or len(old) != 1 or len(new) != 1:
        return False
    o, n = old[0], new[0]
    if not ((is_compiler_label(o.name) or is_placeholder(o.name)) and is_compiler_label(n.name)):
        return False
    fo, fn = fields_of(o), fields_of(n)
    if fo is None or fn is None:
        return False
    for f in (fo, fn):
        f.pop("@name")
        f.pop("scope", None)
    return fo == fn


def _named_over_placeholder(a, b):
    """Of two lines for one symbol, where one has only a dtk placeholder name, type and size and
    the other names it with the same type and a size no larger, the named one (dtk labels any
    rest of the placeholder's range again on the next split); None otherwise."""
    for ph, named in ((a, b), (b, a)):
        if not is_placeholder(ph.name) or is_placeholder(named.name) or is_compiler_label(named.name):
            continue
        fp, fn = fields_of(ph), fields_of(named)
        if fp is None or fn is None or set(fp) - {"@name", "type", "size"}:
            continue
        if fp.get("type") != fn.get("type") or ph.size == 0 or not 0 < named.size <= ph.size:
            continue
        return named
    return None


def _label_kind(name):
    return "funclet" if FUNCLET_LABEL_RE.match(name) else "initializer"


class _Unresolved(Exception):
    pass


def _resolve(key, b, o, t, upstream, result):
    """Both sides changed `key` differently. Returns the merged lines or raises _Unresolved."""
    # A renumbered compiler label is regenerable: it gives way to any real change on the other
    # side, and when both sides only renumbered, the upstream numbering wins.
    o_label = _label_only_change(b, o)
    t_label = _label_only_change(b, t)
    if b is None and o is not None and t is not None:
        # Both added the same key: only a different label number is resolvable this way.
        o_label = t_label = _label_only_change(o, t) or _label_only_change(t, o)
    if o_label and t_label:
        up = o if upstream == "ours" else t
        result.labels_from_upstream.append(up[0].name)
        result.label_kinds.add(_label_kind(up[0].name))
        return up
    if o is None or t is None:
        if o_label or t_label:
            return None
        raise _Unresolved("changed on one side, deleted on the other")
    if b is None:
        # Both added it: a dtk placeholder gives way to a name for the same symbol.
        if len(o) == 1 and len(t) == 1:
            named = _named_over_placeholder(o[0], t[0])
            if named is not None:
                return (named,)
        raise _Unresolved("both sides added it differently")
    try:
        return _merge_fields(key, b, o, t, upstream, result)
    except _Unresolved:
        if o_label:
            return t
        if t_label:
            return o
        raise


def _merge_fields(key, b, o, t, upstream, result):
    """Merge one symbol's name and attributes field by field."""
    if not (len(o) == 1 and len(t) == 1 and len(b) == 1):
        raise _Unresolved("both sides changed a group of symbols at one address")
    so, st = o[0], t[0]
    fo, ft = fields_of(so), fields_of(st)
    fb = fields_of(b[0])
    if fo is None or ft is None or fb is None:
        raise _Unresolved("both sides changed a line in a form the driver does not rewrite")
    merged = {}
    for k in sorted(set(fb) | set(fo) | set(ft)):
        vb, vo, vt = fb.get(k), fo.get(k), ft.get(k)
        if vo == vt:
            v = vo
        elif vo == vb:
            v = vt
        elif vt == vb:
            v = vo
        elif k == "@name" and is_compiler_label(vo) and is_compiler_label(vt):
            v = (fo if upstream == "ours" else ft)[k]
            result.labels_from_upstream.append(v)
            result.label_kinds.add(_label_kind(v))
        else:
            raise _Unresolved(f"both sides changed {k.lstrip('@')}")
        if v is not None:
            merged[k] = v
    if "@name" not in merged or "type" not in merged:
        raise _Unresolved("merged line would lose its name or type")
    text = format_fields(so, merged)
    try:
        sym = parse_line(text)
    except ParseError:
        raise _Unresolved("merged line does not parse") from None
    if sym.key != key:
        raise _Unresolved("merged line changes kind (alias/label vs primary)")
    return (sym,)


def _overlaps(groups):
    """Pairs of primary-symbol keys whose [address, address + size) ranges overlap."""
    by_section = {}
    for k, v in groups.items():
        if k[0] != "p":
            continue
        size = max(s.size for s in v)
        if size:
            by_section.setdefault(k[1], []).append((k[2], size, k))
    pairs = set()
    for items in by_section.values():
        items.sort()
        for i, (addr, size, k) in enumerate(items):
            end = addr + size
            j = i + 1
            while j < len(items) and items[j][0] < end:
                pairs.add((k, items[j][2]))
                j += 1
    return pairs


def _nonlocal_names(groups):
    names = {}
    for k, v in groups.items():
        for s in v:
            if not s.is_local:
                names.setdefault(s.name, set()).add(k)
    return names


def _renamed_labels(base, side):
    for k, v in side.items():
        b = base.get(k)
        if b is not None and _label_only_change(b, v) and _texts(b) != _texts(v):
            return True
    return False


def merge(base_text, ours_text, theirs_text, upstream="ours", labels=("ours", "base", "theirs"),
          marker_size=7, diff3=False):
    """Three-way merge of symbols.txt contents. Raises ParseError if any input does not parse."""
    base_syms, ours_syms, theirs_syms = parse(base_text), parse(ours_text), parse(theirs_text)
    ranks = section_ranks(ours_syms, theirs_syms, base_syms)
    B, _ = _group(base_syms)
    O, o_order = _group(ours_syms)
    T, t_order = _group(theirs_syms)
    result = MergeResult("", True)
    result.labels_both_sides = _renamed_labels(B, O) and _renamed_labels(B, T)

    merged = {}
    conflicted = {}
    for k in dict.fromkeys(o_order + t_order + list(B)):
        b, o, t = B.get(k), O.get(k), T.get(k)
        tb, to, tt = _texts(b), _texts(o), _texts(t)
        if to == tt:
            r = o
        elif to == tb:
            r = t
        elif tt == tb:
            r = o
        else:
            try:
                r = _resolve(k, b, o, t, upstream, result)
            except _Unresolved as e:
                conflicted[k] = str(e)
                continue
        if r is not None:
            merged[k] = r

    # A merge must not create an overlap neither side had.
    side_pairs = _overlaps(O) | _overlaps(T)
    for k1, k2 in _overlaps(merged) - side_pairs:
        for k in (k1, k2):
            conflicted.setdefault(k, "overlaps a symbol from the other side")
    # Nor give one global name to two symbols where neither side did.
    o_names, t_names = _nonlocal_names(O), _nonlocal_names(T)
    for name, keys in _nonlocal_names(merged).items():
        if len(keys) > 1 and len(keys) > max(len(o_names.get(name, ())), len(t_names.get(name, ()))):
            for k in keys:
                if _texts(O.get(k)) != _texts(T.get(k)):
                    conflicted.setdefault(k, f"name {name} given to two symbols")
    for k in conflicted:
        merged.pop(k, None)

    # Order: canonical sort; at one section and address, ours' order, with theirs' additions
    # after their predecessor in theirs.
    def where(k):
        if k[0] == "e":
            return (0, k[1].encode("utf-8", "surrogateescape"), 0)
        return (1, ranks[k[1]], k[2])

    o_pos = {k: i for i, k in enumerate(o_order)}
    t_pos = {k: i for i, k in enumerate(t_order)}
    groups = {}
    for k in list(merged) + list(conflicted):
        groups.setdefault(where(k), []).append(k)
    ordered = []
    for w in sorted(groups):
        ks = groups[w]
        if len(ks) > 1:
            seq = sorted((k for k in ks if k in o_pos), key=o_pos.get)
            prev = None
            for k in sorted((k for k in ks if k in t_pos), key=t_pos.get):
                if k not in seq:
                    seq.insert(seq.index(prev) + 1 if prev is not None else 0, k)
                prev = k
            seq += [k for k in ks if k not in seq]
            ks = seq
        ordered.extend(ks)

    out = []
    block = []

    def flush():
        if not block:
            return
        ours_lines = [s.text for k in block for s in (O.get(k) or ())]
        theirs_lines = [s.text for k in block for s in (T.get(k) or ())]
        base_lines = [s.text for k in block for s in (B.get(k) or ())]
        out.append("<" * marker_size + (" " + labels[0] if labels[0] else ""))
        out.extend(ours_lines)
        if diff3:
            out.append("|" * marker_size + (" " + labels[1] if labels[1] else ""))
            out.extend(base_lines)
        out.append("=" * marker_size)
        out.extend(theirs_lines)
        out.append(">" * marker_size + (" " + labels[2] if labels[2] else ""))
        block.clear()

    for k in ordered:
        if k in conflicted:
            block.append(k)
            result.conflicts.append((k, conflicted[k]))
            continue
        flush()
        out.extend(s.text for s in merged[k])
    flush()
    result.text = "".join(line + "\n" for line in out)
    result.clean = not conflicted

    if result.clean:
        # Self-check: every merged symbol exactly once, in canonical order.
        again = parse(result.text)
        if render(canonical_order(again, ranks)) != result.text:
            raise AssertionError("merged symbols.txt is not in canonical order")
        if sorted(s.text for s in again) != sorted(s.text for v in merged.values() for s in v):
            raise AssertionError("merged symbols.txt lost or duplicated a symbol")
    return result


def describe_key(key):
    if key[0] == "e":
        return f"extern {key[1]}"
    text = f"{key[1]}:0x{key[2]:08X}"
    if key[0] == "a":
        text += f" ({key[3]})"
    return text
