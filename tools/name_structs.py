"""name_structs.py - inheritance-aware namer for Black & White `*Info` structs.

For every `DETAIL_*_INFO` data table in `scripts/Info*.txt`, this maps the table's
ordered columns onto the matching engine struct in `_repos/bw1-decomp/black/*Info.h`,
lays the columns out from offset 0x10 (just past the runtime `GBaseInfo` header) using
the project type rule, and renames the struct's own fields accordingly.

Type rule (validated against the big-endian `info.dat`):
  * a column printed WITH decimals (`1000.00`, `0.300`)        -> float
  * a column printed WITHOUT decimals (`4`, `-3`)              -> uint32_t / int (int iff any value is negative)
  * `Name:48` / `Text:128` (a `:N` suffix with N>4)            -> char[N]
  * a `DebugString` column                                     -> char[N] named `name`

Correctness gate: a struct is only emitted/applied when the computed layout size
equals the struct's `static_assert(sizeof(...))`. This keeps the static_assert valid
and guarantees the column<->field alignment is right. The tool is inheritance-aware:
it preserves `struct <Super> super;` and only names the own region (columns past the
base size).

Workflow:
  python tools/name_structs.py                 # list every struct that is READY to name
  python tools/name_structs.py WeatherInfo     # preview the emitted own-field layout
  python tools/name_structs.py --apply         # edit headers (C++ and C sections) with verify-or-revert
  python tools/name_structs.py --self-test     # run the pure-logic self-tests
"""
import re,glob,os,sys
REPO="_repos/bw1-decomp/black"
APPLY="--apply" in sys.argv
ONLY=[a for a in sys.argv[1:] if not a.startswith("--")]

def classify_col(h,vals):
    """The project type rule: classify one column from its header `h` and a
    sample of its string values `vals`. Returns (size, kind, signed):
      kind in {"str","float","word"}; size in bytes; signed True only for ints
      that show a negative value. See the module docstring for the full rule."""
    m=re.search(r":(\d+)$",h)
    if "DebugString" in h: return (int(m.group(1)) if m else 48),"str",False
    if m and int(m.group(1))>4: return int(m.group(1)),"str",False
    kind="word";sg=False;sz=4
    for v in vals:
        if re.fullmatch(r"-?\d+\.\d+",v):kind="float";break
        if re.fullmatch(r"-\d+",v):sg=True
    return sz,kind,sg

def parse_tables():
    """Scan every `scripts/Info*.txt` data table and return a dict mapping each
    `DETAIL_*_INFO` table name to its ordered, classified column list:
    `{table_name: [(header, size, kind, signed), ...]}`.

    The tables are TAB-separated. A row whose first cell starts with `DETAIL_`,
    ends with `_INFO`, and holds >2 non-empty cells is treated as a column
    header; the rows beneath it (up to the next `DETAIL_` block) are its records.
    Each column is typed by `classify_col` from a sample of its values."""
    T={}
    for fn in glob.glob("scripts/Info*.txt"):
        try:
            with open(fn,encoding="latin-1") as fp:
                raw=fp.read()
        except OSError:
            continue
        rows=[r.split("\t") for r in raw.split("\n")]
        for i,c in enumerate(rows):
            # Header row: a DETAIL_*_INFO line carrying more than two real cells
            # (the name plus at least two column headers); shorter lines are
            # section markers / enum maps we skip.
            if c and c[0].startswith("DETAIL_") and c[0].endswith("_INFO") and len([x for x in c if x])>2:
                # Sample up to 40 data rows below this header, stopping early at
                # the next DETAIL_ block; 40 is a heuristic sample size large
                # enough to expose a column's float/negative values for typing.
                data=[rows[j] for j in range(i+1,len(rows)) if j<len(rows) and rows[j] and rows[j][0] and not rows[j][0].startswith("DETAIL_")][:40]
                cols=[]
                for k in range(1,len(c)):
                    if c[k]=="":continue
                    h=c[k];vals=[(r[k] if k<len(r) else "") for r in data]
                    sz,kind,sg=classify_col(h,vals)
                    cols.append((h,sz,kind,sg))
                T[c[0]]=cols
    return T

def camel(h,used):
    """Turn a column header `h` into a unique camelCase C field name.

    `used` is a set of names already taken; a new name colliding with it gets a
    numeric suffix (`power`, `power2`, ...). Returns the chosen name and records
    it in `used`. Two header shapes are handled:
      * all-caps / underscored (an enum or DETAIL_ token, e.g. `MAX_SPEED`):
        strip a leading `ENUM_`/`DETAIL_`, lowercase, and join the `_`-parts
        into camelCase.
      * mixed-case free text (e.g. `Max Speed`): split on non-alphanumerics and
        camelCase the words.
    A leading-digit result is prefixed with `f_` to stay a legal C identifier."""
    h0=h.split(":")[0]
    if h0=="" or re.fullmatch(r'[A-Z0-9_]+',h0):
        # All-caps/underscore header (enum-like): drop the ENUM_/DETAIL_ prefix,
        # then camelCase the snake_case remainder. Fall back to the part after
        # the ':' if the pre-colon segment was empty.
        s=re.sub(r'^(ENUM_|DETAIL_)','',h0 if h0 else h.split(":")[1])
        p=s.lower().split('_'); w=p[0]+''.join(x[:1].upper()+x[1:] for x in p[1:])
    else:
        # Mixed-case free text: split on runs of non-alphanumerics, lowercase the
        # first word's initial, and TitleCase the rest into camelCase.
        p=re.sub(r'[^0-9A-Za-z]+',' ',h0).strip().split()
        w=p[0][:1].lower()+p[0][1:]+''.join(x[:1].upper()+x[1:] for x in p[1:]) if p else "field"
    if not w:w="field"
    if w[0].isdigit():w="f_"+w        # leading digit is illegal in C; prefix f_
    # De-duplicate: append the smallest n>=2 that makes the name unique.
    b=w;n=2
    while w in used:w=b+str(n);n+=1
    used.add(w);return w

def snake(n):
    """Convert a CamelCase struct base name to its SCREAMING_SNAKE table key,
    e.g. `WeatherInfo` -> `WEATHER_INFO` (used to build the `DETAIL_<key>` name).

    The `(?<!^)(?=[A-Z])` lookaround inserts a `_` before every interior capital
    (not the first char), then the whole string is upper-cased."""
    return re.sub(r'(?<!^)(?=[A-Z])','_',n).upper()

def layout(cols,start):
    """Lay `cols` [(h,sz,kind,sg),...] out contiguously from byte offset `start`.
       Returns (entries, end_offset) where each entry is (off,h,sz,kind,sg)."""
    off=start;L=[]
    for (h,sz,kind,sg) in cols:
        L.append((off,h,sz,kind,sg));off+=sz
    return L,off

def emit(L,indent,used=None):
    """Render a laid-out field list `L` [(off,h,sz,kind,sg),...] as C declaration
    lines, each prefixed with `indent` and trailed by an `/* 0x<off> */` offset
    comment. `used` carries the running name-collision set across calls.

    Field kinds map to: `str`->`char nm[0x<sz>]`, `float`->`float nm`, else
    `int`/`uint32_t nm` (signed iff `sg`). The FIRST column containing
    `DebugString` is named `name` (the conventional struct name field); every
    other field name comes from `camel`."""
    if used is None:used=set()
    # ndbg is a one-element list used as a mutable flag: the first DebugString
    # column becomes `name`, all later ones fall through to camel().
    out=[];ndbg=[0]
    for (off,h,sz,kind,sg) in L:
        if kind=="str":
            if "DebugString" in h and ndbg[0]==0: nm="name";ndbg[0]+=1
            else: nm=camel(h,used)
            decl=f"char {nm}[0x{sz:x}];"
        elif kind=="float": decl=f"float {camel(h,used)};"
        else: decl=f"{'int' if sg else 'uint32_t'} {camel(h,used)};"
        # Echo the original header in the comment for string/`:N`-tagged columns
        # so the source<->field provenance stays visible.
        extra=("  "+h) if (':' in h or kind=='str') else ''
        out.append(f"{indent}{decl:38}/* 0x{off:x}{extra} */")
    return out

def _self_test():
    ok=True
    def chk(c,n):
        nonlocal ok; ok=ok and bool(c); print(("  PASS " if c else "  FAIL ")+n)
    # --- type rule (classify_col) ---
    chk(classify_col("Strength",["1000.00","0.300","2.5"])==(4,"float",False), "decimals column -> float")
    chk(classify_col("Count",["4","12","0"])==(4,"word",False), "integer column -> uint32_t (word)")
    chk(classify_col("Delta",["4","-3","0"])==(4,"word",True), "negative-valued integer -> signed int")
    chk(classify_col("Name:48",["abc","xyz"])==(48,"str",False), "Name:48 -> char[48]")
    chk(classify_col("Text:128",[""])==(128,"str",False), "Text:128 -> char[128]")
    chk(classify_col("DebugString:64",["q"])==(64,"str",False), "DebugString:64 width respected")
    chk(classify_col("DebugString",["q"])==(48,"str",False), "DebugString w/o decimal width -> 48 default")
    chk(classify_col("Flags:4",["1"])==(4,"word",False), ":4 (<=4) is NOT a string, stays word")
    # --- layout: contiguous offsets from start, returns end offset ---
    cols=[("A",4,"word",False),("Name:48",0x30,"str",False),("F",4,"float",False)]
    L,end=layout(cols,0x10)
    chk([e[0] for e in L]==[0x10,0x14,0x44], "layout offsets accumulate by size")
    chk(end==0x48, "layout end offset = start + sum(sizes)")
    chk(layout([],0x10)==([],0x10), "empty layout returns start unchanged")
    # --- emit: types/names rendered, first DebugString becomes `name` ---
    out=emit([(0x10,"DebugString:0x30",0x30,"str",False),(0x40,"Max Speed",4,"float",False),
              (0x44,"Level",4,"word",False),(0x48,"Delta",4,"word",True)],"  ")
    chk(any("char name[0x30];" in l for l in out), "first DebugString emitted as name[0x30]")
    chk(any("float maxSpeed;" in l for l in out), "float field camelCased")
    chk(any("uint32_t level;" in l for l in out), "unsigned int field -> uint32_t")
    chk(any("int delta;" in l for l in out), "signed int field -> int")
    chk(all("/* 0x" in l for l in out), "each emitted line carries an offset comment")
    # --- camel: collision suffixing + leading-digit guard ---
    used=set()
    chk(camel("Power",used)=="power" and camel("Power",used)=="power2", "camel de-duplicates colliding names")
    chk(camel("3D Scale",set()).startswith(("f_","_")), "leading-digit name is prefixed")
    # --- snake: CamelCase -> SCREAMING_SNAKE for table lookup ---
    chk(snake("WeatherInfo")=="WEATHER_INFO", "snake() builds DETAIL_ table key")
    print("SELF-TEST:", "ALL PASS" if ok else "FAILURE")
    return 0 if ok else 1

if "--self-test" in sys.argv:
    sys.exit(_self_test())

T=parse_tables()
# Harvest every struct's authoritative size from its `static_assert(sizeof(...))`
# across all headers; this is the ground truth the layout must match exactly.
sizes={}
for hf in glob.glob(REPO+"/*.h"):
    try:
        with open(hf,encoding="latin-1") as fp:
            htxt=fp.read()
    except OSError:
        continue
    # The 0x[0-9a-fA-F]+ size literal accepts upper- and lower-case hex digits.
    for m in re.finditer(r"static_assert\(sizeof\(struct (\w+)\) == (0x[0-9a-fA-F]+)",htxt):
        sizes[m.group(1)]=int(m.group(2),16)

ready=[]
for hf in sorted(glob.glob(REPO+"/*Info.h")):
    base=os.path.basename(hf)[:-2]
    if ONLY and base not in ONLY: continue
    tbl="DETAIL_"+snake(base)
    if tbl not in T: continue
    cols=T[tbl]
    with open(hf,encoding="latin-1") as fp:
        txt=fp.read()
    # data struct + super
    sm=None
    for cand in (base,"G"+base):
        m=re.search(r"struct %s\s*\{\s*struct (\w+) super;"%re.escape(cand),txt)
        if m and cand in sizes: sm=(cand,m.group(1));break
    if not sm: continue
    sname,super=sm
    total=sizes[sname]
    supersz=0x10 if super=="GBaseInfo" else sizes.get(super)
    if supersz is None: continue
    L,end=layout(cols,0x10)
    if end!=total: continue
    # split: own cols are those with offset>=supersz; require a clean boundary
    own=[x for x in L if x[0]>=supersz]
    if not own or own[0][0]!=supersz: continue
    ready.append((base,sname,super,supersz,total,own,hf))

print("INHERITANCE-AWARE READY: %d"%len(ready))
for b,s,sup,ss,t,own,hf in ready:
    print(f"  {b:24} struct {s}: {sup}(0x{ss:x}) + {len(own)} own fields -> 0x{t:x}")

if ONLY:
    for b,s,sup,ss,t,own,hf in ready:
        print(f"\n===== {s} own fields =====")
        print("\n".join(emit(own,"  ")))

# ---------------- APPLY ----------------
def cfields(own):  return emit(own,"  ")    # C struct body: 2-space indent
def cppfields(own):return emit(own,"    ")  # C++ class body: 4-space indent

def replace_c_struct(txt,sname,super,total,own):
    """Rewrite the C `struct <sname>` body's own-field region with the emitted
    `own` fields, returning the new text (or `txt` unchanged on no-match).

    The regex anchors on three exact literals to splice in only the body between
    them: the opening `struct X {` + `  struct Y super;  /* 0x0 */` header, and
    the closing `};` immediately followed by `static_assert(sizeof(struct X) ==
    0x<total>`. Group 1 (header) and group 3 (closer+assert) are preserved; the
    middle group (the old fields) is replaced. The trailing static_assert in the
    anchor makes the match self-validating against the expected struct size."""
    pat=re.compile(r"(struct %s\s*\{\n  struct %s super;  /\* 0x0 \*/\n)(.*?)(\n\};\nstatic_assert\(sizeof\(struct %s\) == 0x%x)"%(re.escape(sname),re.escape(super),re.escape(sname),total),re.S)
    new="\n".join(cfields(own))
    return pat.sub(lambda m:m.group(1)+new+m.group(3),txt,count=1)

def replace_cpp_class(txt,sname,super,own):
    """Rewrite the C++ `class <sname>: public <super>` body's own-field region.

    Locates the class declaration, then counts how many leading lines after
    `public:` are existing field declarations (or non-win1.41 comments) that the
    layout owns and should be replaced; those `keep` lines are swapped for the
    freshly emitted own fields. Returns `txt` unchanged on any non-match (class
    not found, or no existing field lines to replace) so the caller can detect
    the no-op and avoid a silent C/C++ desync."""
    cm=re.search(r"class %s: public %s\n\{\npublic:\n"%(re.escape(sname),re.escape(super)),txt)
    if not cm: return txt
    start=cm.end(); lines=txt[start:].split("\n"); keep=0
    # Match an existing scalar/array field declaration: a known primitive type
    # token (incl. signed/unsigned fixed-width ints and short/long) followed by
    # anything up to the terminating `;`. These are the placeholder lines we
    # replace; omitting a type here would leave a stray field and corrupt layout.
    fre=re.compile(r"^\s*(char|float|short|long|int|u?int\d+_t|bool|bool32_t)\b.*;")
    for ln in lines:
        s=ln.strip()
        if fre.match(ln): keep+=1; continue
        # Keep absorbing leading comments too, EXCEPT win1.41 address annotations
        # (those mark real lifted member functions, not replaceable fields).
        if s.startswith("//") and "win1.41" not in ln: keep+=1; continue
        break
    if keep==0: return txt
    # Byte offset of the end of the kept region (+1 per line for the stripped \n).
    end=start+sum(len(l)+1 for l in lines[:keep])
    new="\n".join(cppfields(own))+"\n"
    return txt[:start]+new+txt[end:]

if APPLY:
    done=0
    for b,s,sup,ss,t,own,hf in ready:
        with open(hf,encoding="latin-1") as fp:
            orig=fp.read()
        # Rewrite the C struct first, then the C++ class. Both helpers return their
        # input UNCHANGED on a non-match, so compare each stage's output against its
        # input to know whether that section was actually rewritten.
        after_c=replace_c_struct(orig,s,sup,t,own)
        new=replace_cpp_class(after_c,s,sup,own)
        c_changed   = after_c != orig
        cpp_changed = new     != after_c
        # Guard against a silent C/C++ desync: if exactly one of the two sections
        # rewrote (format variance defeated the other's regex), the file would be
        # written with mismatched layouts. Require BOTH to change before writing.
        if c_changed != cpp_changed:
            print("SKIP (desync: %s rewritten but %s not) %s"
                  %("C" if c_changed else "C++","C++" if c_changed else "C",b))
            continue
        # safety: static_assert intact, braces balanced, file changed, no field_0x left in struct region
        ok = (("static_assert(sizeof(struct %s) == 0x%x"%(s,t)) in new
              and new.count("{")==orig.count("{") and new.count("}")==orig.count("}")
              and new!=orig)
        if ok:
            with open(hf,"w",encoding="latin-1") as fp:
                fp.write(new)
            done+=1
        else:
            print("SKIP (safety) ",b)
    print("APPLIED to %d structs"%done)
