"""name_structs2.py - byte-exact VERIFIER / renamer for Black & White `*Info` structs.

Where `name_structs.py` lays a `DETAIL_*_INFO` data table out onto a struct from
scratch, this tool goes the other way: it parses the ALREADY-declared struct fields
(types, array sizes, `/* 0xNN */` offsets) from `_repos/bw1-decomp/black/*.h`, flattens
the inheritance chain, and checks them column-by-column against the data table. A struct
is reported as a BYTE-EXACT MATCH only when, for every data field at offset >= 0x10 (past
the runtime `GBaseInfo` header):
  * the field count equals the column count, AND
  * each declared field size matches the column size, AND
  * `float` columns are declared `float` and string columns are declared `char[]`.

For matches it also proposes camelCase renames derived from the column headers (skipping
fields already correctly named, and `name`). Structs with enum-sized arrays or any
mismatch are listed under `skipped` with the first failing reason.

Type rule (same as name_structs.py): decimals-formatted column -> float; `:N` width with
N>4 (not an ENUM/DETAIL ref) -> char[N]; `DebugString` -> char[N] (default 48); else word.

Struct-field side: the header parser (`parse_structs`) understands the C `struct X { ... }`
declarations and sizes each member as -- scalar (`char`/`int`/`uintN_t`/`bool`/`float`,
1/2/4 bytes), `enum X` (4 bytes, every enum here is uint32_t), or `struct X` / named typedef
(sized from that struct's `static_assert(sizeof == ...)`). A member whose size cannot be
resolved makes the verifier skip that struct rather than mis-count.

All input paths are anchored to this file's location, so the tool works from any working
directory (black/ is `<this>/../black`; the data tables are `<this>/../../../scripts/Info*.txt`).

Usage:
  python tools/name_structs2.py          # list byte-exact matches + skipped reasons
  python tools/name_structs2.py --self-test
"""
import os,re,glob,sys

# Anchor input paths to THIS file's location so the tool works from any cwd
# (the original used cwd-relative paths and silently produced 0 matches when not
# run from the workspace root). Layout:  <ws>/_repos/bw1-decomp/tools/<this>
#   black headers  -> tools/../black
#   data tables    -> tools/../../../scripts  (workspace-root scripts/ dir)
_HERE=os.path.dirname(os.path.abspath(__file__))
REPO=os.path.join(_HERE,"..","black")
SCRIPTS_GLOB=os.path.join(_HERE,"..","..","..","scripts","Info*.txt")

# ---- data tables: ordered columns with (header, kind, size) ----
def classify_col(h,vals):
    """Classify a data-table column from header `h` + sample values `vals`.
       Returns (header, kind, size) with kind in {"str","float","word"}."""
    size=4; kind="word"               # default: a 4-byte word column
    m=re.search(r":(\d+)$",h)         # trailing ":N" numeric width, if any
    # DebugString is always a string: width from its ":N" suffix, else default 48.
    if "DebugString" in h: kind="str"; size=int(re.search(r":(\d+)",h).group(1)) if ":" in h else 48
    # A ":N" width with N>4 marks a fixed char[N] string (e.g. Text:128) -- BUT
    # only when the part after ':' is the numeric width, not a `:ENUM_`/`:DETAIL_`
    # type reference (those are 4-byte words, not strings).
    elif m and int(m.group(1))>4 and not h.split(":")[1].startswith(("ENUM","DETAIL")):
        kind="str"; size=int(m.group(1))
    else:
        # No width hint: a decimal-formatted sample value (e.g. "1.50") marks
        # the column as a float; otherwise it stays a plain integer word.
        for v in vals:
            if re.fullmatch(r"-?\d+\.\d+",v): kind="float";break
    return (h,kind,size)

def parse_tables():
    """Parse the TAB-separated scripts/Info*.txt data tables into column specs.

    Returns {DETAIL_NAME: [(header, kind, size), ...]} -- one entry per data
    table, columns in declared order. A table is recognised by a header row
    whose first cell is `DETAIL_*_INFO` and which has >3 non-empty cells; the
    rows that follow (until the next DETAIL_ header) are sampled as data so
    `classify_col` can spot float-formatted values. Empty header cells (the
    sparse trailing tabs common in these files) are skipped.
    """
    tables={}
    for fn in glob.glob(SCRIPTS_GLOB):
        try:
            with open(fn,encoding="latin-1") as fh: raw=fh.read()
        except OSError:
            continue
        rows=[r.split("\t") for r in raw.split("\n")]
        i=0
        while i<len(rows):
            c=rows[i]
            # Header row: first cell DETAIL_*_INFO with >3 populated cells.
            if c and c[0].startswith("DETAIL_") and c[0].endswith("_INFO") and len([x for x in c if x])>3:
                hdr=c; data=[]
                j=i+1
                # Gather data rows until the next DETAIL_ table starts.
                while j<len(rows) and rows[j] and rows[j][0] and not rows[j][0].startswith("DETAIL_"):
                    data.append(rows[j]); j+=1
                cols=[]
                for k in range(1,len(hdr)):
                    h=hdr[k]
                    if h=="":continue   # skip empty (trailing-tab) header cells
                    vals=[(r[k] if k<len(r) else "") for r in data]
                    cols.append(classify_col(h,vals))
                tables[hdr[0]]=cols
                i=j
            else: i+=1
    return tables

# ---- parse structs: name -> (superName, [ (off,size,typ,fieldname,rawline) ]) ----

# Byte size of each scalar C type we recognise as a struct field. Anything not
# listed here (named structs, enums) is resolved separately:
#   * `enum X`   -> 4 bytes  (every enum in this codebase is a uint32_t)
#   * `struct X` -> looked up from that struct's `static_assert(sizeof == 0xNN)`
# The element size is what `field_size` multiplies by the array length, so e.g.
# `uint16_t[4]` is 8 bytes (not 16) -- the old code wrongly used 4 for every type.
_SCALAR_SIZE={
    "char":1, "bool":1, "uint8_t":1, "int8_t":1,
    "uint16_t":2, "int16_t":2, "short":2,
    "float":4, "int":4, "uint32_t":4, "int32_t":4,
    "bool32_t":4, "long":4, "unsigned":4,
}

def type_size(typ,struct_sizes=None):
    """Byte size of one element of declared C type `typ`, or None if unknown.

    `typ` is the type token captured from the field declaration (e.g. "uint16_t",
    "ABODE_TYPE", "Name"). Scalars come from `_SCALAR_SIZE`; an entry in
    `struct_sizes` (mapping struct name -> sizeof) resolves named struct fields
    such as `struct Name description;`. Unknown named types (e.g. an enum we
    treat elsewhere, or a struct whose size we never parsed) return None so the
    caller can decide to skip the struct rather than guess a wrong size.
    """
    if typ in _SCALAR_SIZE: return _SCALAR_SIZE[typ]
    if struct_sizes and typ in struct_sizes: return struct_sizes[typ]
    return None

def field_size(typ,arr,struct_sizes=None):
    """Total byte size of a declared field of type `typ` with array suffix `arr`.

    `arr` is the bracketed array spec exactly as it appears in the source (e.g.
    "[0x30]", "[16]", "[ENUM_TRIBE_TYPE]") or None for a scalar. The element
    size comes from `type_size`; it is multiplied by the (decimal or 0x-hex)
    array length. Returns None -- meaning "skip this struct" -- when the array
    length is an enum constant (non-numeric) or the element type is unknown.
    Note `enum X` fields are mapped to 4 bytes by the caller (parse_structs),
    so they are not passed here as a named-but-unknown type.
    """
    elem=type_size(typ,struct_sizes)
    if arr:
        n=arr.strip("[]")
        # Array length is either a hex (0x..) or decimal literal; an ENUM_/named
        # constant length (e.g. char[ENUM_TRIBE_TYPE]) is not numeric -> unknown.
        try: base=int(n,16) if n.lower().startswith("0x") else int(n)
        except ValueError: return None  # enum-sized array -> unknown, skip struct
        if elem is None: return None     # unknown element type -> skip struct
        return base*elem
    # Scalar field: its element size, or None for an unknown named type -> skip the struct rather than
    # GUESS a (possibly wrong) 4 bytes. The "computed == sizeof" gate would reject a wrong guess anyway,
    # but skipping is cleaner and is what the caller (parse_structs) treats as "can't size this struct".
    return elem

def _collect_struct_sizes():
    """Scan every black/*.h for `static_assert(sizeof(struct X) == 0xNN)` lines.

    Returns {structName: byteSize}. This lets named-struct fields such as
    `struct Name description;` (a char[0x20] wrapper) be sized correctly without
    fully parsing the referenced struct. Both 0x-hex and decimal sizes accepted.
    """
    sizes={}
    for hf in glob.glob(REPO+"/*.h"):
        try:
            with open(hf,encoding="latin-1") as fh: txt=fh.read()
        except OSError:
            continue
        for m in re.finditer(r"static_assert\(\s*sizeof\(struct (\w+)\)\s*==\s*(0[xX][0-9a-fA-F]+|\d+)",txt):
            nm,val=m.group(1),m.group(2)
            sizes[nm]=int(val,16) if val.lower().startswith("0x") else int(val)
    return sizes

def parse_structs():
    """Parse every C `struct X { ... };` block in black/*.h into field records.

    Returns {structName: (superName | None, [field, ...])} where each field is
    the 5-tuple (offset|None, byteSize|None, typeToken, fieldName, rawLine).
    The `struct <Super> super;` first member is recorded as the superName and
    drives the inheritance flattening done later by `flatten`.

    Recognised member shapes (this is the load-bearing parser):
      * `enum  E name;`        -> 4-byte word  (enums are uint32_t-sized)
      * `struct S name;`       -> sizeof(S) from `_collect_struct_sizes`
      * `<scalar> name[arr];`  -> char/float/int/uintN_t/boolN_t scalars
    A NAMED (typedef'd) type token (e.g. `MeshId meshId;`) is also accepted and
    sized via the struct-size table; if its size cannot be resolved the field's
    byteSize is None, which makes the verifier skip that struct rather than
    silently mis-count. (The original regex accepted ONLY a fixed scalar list,
    so it dropped every enum/struct/typedef field and matched nothing.)
    """
    struct_sizes=_collect_struct_sizes()
    S={}
    for hf in glob.glob(REPO+"/*.h"):
        try:
            with open(hf,encoding="latin-1") as fh: txt=fh.read()
        except OSError:
            continue
        for m in re.finditer(r"\nstruct (\w+)\s*\{\n(.*?)\n\};",txt,re.S):
            nm=m.group(1); body=m.group(2)
            sup=None; fields=[]
            for line in body.split("\n"):
                # The first member `struct <Super> super;` is the base class.
                sm=re.match(r"\s*struct (\w+) super;",line)
                if sm: sup=sm.group(1); continue
                # Field grammar: optional `enum`/`struct` keyword, then a type
                # token (scalar, enum, struct, or bare typedef name), the field
                # name, an optional [array] spec, and an optional /* 0xNN */
                # offset comment. group(1)=kind keyword, group(2)=type token.
                fm=re.match(r"\s*(?:(enum|struct)\s+)?(\w+)\s+(\w+)(\[[^\]]+\])?\s*;\s*(?:/\*\s*(0x[0-9a-fA-F]+))?",line)
                if not fm: continue
                kind,typ,fn2,arr,off=fm.group(1),fm.group(2),fm.group(3),fm.group(4),fm.group(5)
                if kind=="enum":
                    # Every enum in this codebase is stored as a 4-byte uint32_t.
                    sz=field_size("uint32_t",arr,struct_sizes)
                else:
                    sz=field_size(typ,arr,struct_sizes)
                fields.append((int(off,16) if off else None, sz, typ, fn2, line.rstrip()))
            S[nm]=(sup,fields)
    return S

def flatten(S,name):
    """Flatten `name`'s inheritance chain into [(owningStruct, field), ...].

    Walks up the `super` links, returning base-class fields FIRST then the
    struct's own fields (memory order). Recursion stops at the root: when there
    is no super, the super is "Base" (the empty sentinel root in these headers),
    or the super is not itself a parsed struct -- in those cases only `name`'s
    own fields are returned. Each element pairs the field with the struct that
    declared it, so the caller can report which level a field came from.
    """
    sup,fields=S[name]
    if sup and sup in S and sup!="Base":
        return flatten(S,sup)+[(name,f) for f in fields]
    return [(name,f) for f in fields]

def camel(h):
    """Convert a data-table header `h` to a camelCase C field name (or None).

    Strips any `:N` width suffix, splits on every run of non-alphanumeric
    characters, lower-cases the first word and Title-cases the rest, then joins
    them. A name that would start with a digit is prefixed with '_' to stay a
    valid C identifier. Returns None when `h` has no alphanumeric content.
    """
    h=h.split(":")[0]                                   # drop the ":N" width suffix
    h=re.sub(r"[^0-9A-Za-z]+"," ",h).strip().split()    # words = alnum runs
    if not h: return None
    # first word lower-cased, remaining words Title-cased, then concatenated
    w=h[0][:1].lower()+h[0][1:]+"".join(p[:1].upper()+p[1:] for p in h[1:])
    return ("_"+w) if w[:1].isdigit() else w            # keep it a valid C ident

def snake(n):
    """CamelCase -> SCREAMING_SNAKE, e.g. 'WeatherInfo' -> 'WEATHER_INFO'.

    Used to turn a header basename ('AbodeInfo') into its data-table key by
    prefixing 'DETAIL_'. The zero-width lookahead `(?<!^)(?=[A-Z])` inserts an
    underscore before every interior capital (not the first char), then the
    whole string is upper-cased.
    """
    return re.sub(r'(?<!^)(?=[A-Z])','_',n).upper()

def _self_test():
    ok=True
    def chk(c,n):
        nonlocal ok; ok=ok and bool(c); print(("  PASS " if c else "  FAIL ")+n)
    # --- type rule (classify_col): same rule as name_structs.py ---
    chk(classify_col("Strength",["1.5","0.30"])==("Strength","float",4), "decimals column -> float (size 4)")
    chk(classify_col("Count",["4","12"])==("Count","word",4), "integer column -> word (size 4)")
    chk(classify_col("Name:48",["abc"])==("Name:48","str",48), "Name:48 -> str size 48")
    chk(classify_col("Text:128",[""])==("Text:128","str",128), "Text:128 -> str size 128")
    chk(classify_col("DebugString:64",["q"])==("DebugString:64","str",64), "DebugString:64 -> str size 64")
    chk(classify_col("DebugString",["q"])==("DebugString","str",48), "DebugString -> str default 48")
    chk(classify_col("Kind:ENUM_TRIBE_TYPE",["0"])==("Kind:ENUM_TRIBE_TYPE","word",4),
        ":ENUM_ ref is NOT a string -> word")
    chk(classify_col("Slot:4",["1"])==("Slot:4","word",4), ":4 (<=4) is not a string -> word")
    # --- field_size: declared C field -> byte size ---
    chk(field_size("char","[0x30]")==0x30, "char[0x30] -> 48 bytes")
    chk(field_size("char","[16]")==16, "char[16] -> 16 bytes (decimal)")
    chk(field_size("uint32_t","[4]")==16, "uint32_t[4] -> 16 bytes (n*4)")
    chk(field_size("float",None)==4, "scalar float -> 4 bytes")
    chk(field_size("char","[ENUM_TRIBE_TYPE]") is None, "enum-sized array -> None (skip struct)")
    # element-size per type (fix: not every element is 4 bytes)
    chk(field_size("uint16_t","[4]")==8, "uint16_t[4] -> 8 bytes (n*2)")
    chk(field_size("uint8_t","[5]")==5, "uint8_t[5] -> 5 bytes (n*1)")
    chk(field_size("bool","[3]")==3, "bool[3] -> 3 bytes (n*1)")
    chk(field_size("uint16_t",None)==2, "scalar uint16_t -> 2 bytes")
    # case-insensitive hex array length (fix: accept upper-case 0X)
    chk(field_size("char","[0X10]")==16, "char[0X10] (upper-case X) -> 16 bytes")
    # named-struct field sized via the struct-size table
    chk(field_size("Name","[2]",{"Name":0x20})==0x40, "Name[2] with sizeof 0x20 -> 0x40 bytes")
    chk(field_size("Name",None,{"Name":0x20})==0x20, "scalar Name -> sizeof 0x20")
    chk(field_size("Mystery",None) is None, "unknown named type -> None (skip struct)")
    # --- camel: header -> camelCase, leading-digit prefixed, empty -> None ---
    chk(camel("Max Speed")=="maxSpeed", "camel: 'Max Speed' -> maxSpeed")
    chk(camel("Strength:48")=="strength", "camel strips :N suffix")
    chk(str(camel("3D Scale")).startswith("_"), "camel prefixes leading-digit name")
    chk(camel("---")is None, "camel returns None when no alnum content")
    # --- snake: CamelCase -> SCREAMING_SNAKE for table key ---
    chk(snake("WeatherInfo")=="WEATHER_INFO", "snake builds DETAIL_ table key")
    # --- flatten: inheritance chain order (base fields first) ---
    Stest={"Base":(None,[]),
           "GBaseInfo":("Base",[(None,4,"uint32_t","baseFld","x")]),
           "AbodeInfo":("GBaseInfo",[(0x10,4,"float","f0","y"),(0x14,4,"uint32_t","f1","z")])}
    fl=flatten(Stest,"AbodeInfo")
    chk([lvl for lvl,_ in fl]==["GBaseInfo","AbodeInfo","AbodeInfo"], "flatten: base fields precede own")
    chk(fl[-1][1][3]=="f1", "flatten preserves own-field order")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if "--self-test" in sys.argv:
    sys.exit(_self_test())

# ---- main: verify each *Info header against its DETAIL_*_INFO data table ----
tables=parse_tables(); S=parse_structs()
matched=[]; skipped=[]
for hf in sorted(glob.glob(REPO+"/*Info.h")):
    base=os.path.basename(hf)[:-2]
    # Struct may be declared bare ("FooInfo") or G-prefixed ("GFooInfo").
    cand=[c for c in (base,"G"+base) if c in S]
    if not cand: continue
    name=cand[0]
    tbl="DETAIL_"+snake(base)
    if tbl not in tables: continue
    flat=flatten(S,name)
    # A None field size means an unresolved array length / element type -> we
    # cannot byte-verify this struct, so skip it (don't guess).
    if any(f[1] is None for lvl,f in flat):
        skipped.append((base,"enum-sized array field")); continue
    # Data fields = every field at offset >= 0x10. The on-disk record is the
    # runtime struct MINUS the 0x10-byte GBaseInfo header (vtable + bookkeeping),
    # so ALL members past 0x10 -- including those inherited from intermediate
    # base classes -- are serialized columns, in offset order.
    dataf=[(lvl,f) for lvl,f in flat if f[0] is not None and f[0]>=0x10]
    cols=tables[tbl]
    if len(dataf)!=len(cols): skipped.append((base,f"count {len(dataf)} fields vs {len(cols)} cols")); continue
    # Column-by-column byte/type check; stop at the first disagreement.
    ok=True; reasons=[]
    for (lvl,f),(h,kind,size) in zip(dataf,cols):
        off,fsize,typ,fn2,_=f
        if fsize!=size: ok=False; reasons.append(f"size {fn2}={fsize} vs {h}={size}"); break
        if kind=="float" and typ!="float": ok=False; reasons.append(f"type {fn2}={typ} but {h} is float"); break
        if kind=="str" and typ!="char": ok=False; reasons.append(f"{fn2} not char for {h}"); break
    if not ok: skipped.append((base,reasons[0] if reasons else "mismatch")); continue
    # Build proposed renames: map each column to its camelCase name, skipping a
    # field that is already correctly named or is the `name` member. `seen`/`_2`
    # de-duplicates two columns that camel-case to the same identifier.
    ren=[]
    seen=set()
    for (lvl,f),(h,kind,size) in zip(dataf,cols):
        nn=camel(h)
        if not nn: continue
        if nn in seen: nn=nn+"_2"   # avoid emitting a duplicate field name
        seen.add(nn)
        if f[3]!=nn and not f[3]=="name": ren.append((f[3],nn,f[2]))
    matched.append((base,name,len(dataf),ren))

print("=== BYTE-EXACT MATCHES: %d structs ==="%len(matched))
for base,name,nf,ren in matched:
    print(f"  {base:30} {nf} data fields, {len(ren)} renamed")
print("\n=== skipped: %d (first reason) ==="%len(skipped))
for b,r in skipped[:60]: print(f"  {b:30} {r}")
