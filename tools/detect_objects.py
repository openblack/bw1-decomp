#!/usr/bin/env python3
r"""detect_objects.py - recover original .obj (TU) boundaries of BW1E142's .text.

WHY HARD (empirical; doc 12): a stripped MSVC6 PE has NO single clean boundary signal -
gaps=16B function alignment (3x over), class-names reliable but only 45% named, call/data
connectivity ~0 across getter regions, splat data-ordering NON-monotonic. There is NO public
.map/.pdb for B&W (confirmed) - so we use the binary's OWN partial ground truth to detect AND
score, with a label-free dashboard (the published "delinking"/compile-unit-recovery problem).

METHOD (fused, v2):
 1. class-name transitions among named funcs (@X@@ ⇒ X's object) = reliable cut.
 2. object-start markers (??0 ctor, _crt_global_initialize, ??__E dynamic-init).
 3. PRIVATE-CALL MUST-LINK VETO: a private/static function's callers are all in one tight window
    (caller-span < 0x1800); a call to such a function is an INTRA-object edge. A class-change cut is
    VETOED if >= veto_T such private edges cross it (strong same-.cpp evidence) - this both keeps
    multi-class .objs together and prevents cutting through a static helper's call. Minimising the
    private-call-cross metric is the principled flooring signal (a private call can't cross a real
    boundary).
 4. COMDAT-merge (scattered inline/template classes' small islands absorbed into host).
 5. adjacent same-class merge.

ACCURACY: ~264 objects at veto_T=2 (tunable). Rich-header ~951 (incl tiny COMDAT/CRT, not source
files); meaningful TUs ~400-600. The DASHBOARD (--dashboard) shows error metrics improve monotonically
with merging (no sharp knee) => the exact count is under-determined without a .map/.pdb; veto_T trades
granularity vs private-call-cross. Validated by eye on the Abode hierarchy + by the dashboard.

ROADMAP to push further (SOTA "delinking", refs in doc 12): APS articulation-points (call-graph cut
vertices) to seed splits in over-merged regions; data-overlap-minimisation GA (REcover, ~75%);
contiguity-constrained Louvain (alpha-sweep); PELT change-point on a feature sequence; FLIRT the MSVC6
.libs to lock CRT/library objects; Rich-header per-language count as a hard target; RTTI must-links.

Usage:
  python tools/detect_objects.py                 # detect -> _objects.json + summary
  python tools/detect_objects.py --dashboard     # label-free metrics across veto_T (tuning)
  python tools/detect_objects.py --validate ADDR # objects around an address (eyeball)
  python tools/detect_objects.py --veto N        # set veto strength (default 2)
  python tools/detect_objects.py --rebuild-graph
"""
import os, re, sys, json, collections

DTK = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
VER = os.environ.get("BW1_VERSION","BW1E142")
EXE = os.path.join(DTK,"orig",VER,"runblack-decrypted.exe")
SYMS= os.path.join(DTK,"config",VER,"symbols.txt")
GRAPH=os.path.join(DTK,"_objgraph.json")
GAME_END=0x7bf000; TIGHT=0x1800

def build_graph():
    import pefile, capstone
    pe=pefile.PE(EXE, fast_load=True); base=pe.OPTIONAL_HEADER.ImageBase
    secs=[(base+s.VirtualAddress, base+s.VirtualAddress+s.Misc_VirtualSize, s.get_data(),
           s.Name.rstrip(b'\x00').decode()) for s in pe.sections]
    def sec(va):
        for a,b,_,n in secs:
            if a<=va<b: return n
    text=[s for s in secs if s[3]==".text"][0]; tva,traw=text[0],text[2]
    funcs=[]
    for ln in open(SYMS,encoding="latin-1"):
        m=re.match(r'(\S+)\s*=\s*\.text:0x([0-9a-fA-F]+);.*type:function',ln)
        if m:
            sm=re.search(r'size:0x([0-9a-fA-F]+)',ln)
            funcs.append((int(m.group(2),16), int(sm.group(1),16) if sm else 0, m.group(1)))
    funcs.sort()
    md=capstone.Cs(capstone.CS_ARCH_X86, capstone.CS_MODE_32); md.detail=True
    out=[]
    for a,sz,nm in funcs:
        if not (tva<=a<GAME_END): continue
        dr=set(); ct=set()
        if sz:
            for ins in md.disasm(traw[a-tva:a-tva+sz], a):
                if ins.mnemonic in ("call","jmp") and ins.operands and ins.operands[0].type==capstone.x86.X86_OP_IMM:
                    ct.add(ins.operands[0].imm & 0xffffffff)
                for op in ins.operands:
                    for v in ([op.mem.disp&0xffffffff] if (op.type==capstone.x86.X86_OP_MEM and op.mem.base==0 and op.mem.index==0 and op.mem.disp) else []) + \
                             ([op.imm&0xffffffff] if op.type==capstone.x86.X86_OP_IMM else []):
                        if sec(v) in (".rdata",".data",".bss"): dr.add(v)
        out.append((a,sz,nm,sorted(dr),sorted(ct)))
    json.dump(out, open(GRAPH,"w")); return out

def load_graph(rebuild=False):
    if rebuild or not os.path.exists(GRAPH): return build_graph()
    return [tuple(x) for x in json.load(open(GRAPH))]

def dcls(n):
    # defining class from MSVC mangling. Catches regular methods AND ctors(??0)/dtors(??1)/deleting-
    # dtors(??_G,??_E)/operators - the latter were a bug in v1/v2 (treated as unnamed, losing ~610 labels).
    for p in (r'\?[A-Za-z0-9_]+@([A-Za-z0-9_]+)@',     # ?method@Class@@
              r'\?\?[0-9]([A-Za-z0-9_]+)@@',           # ??0 ctor / ??1 dtor
              r'\?\?_[A-Z]([A-Za-z0-9_]+)@@',          # ??_G / ??_E deleting dtors
              r'\?\?[A-Za-z0-9_]+@([A-Za-z0-9_]+)@'):  # operators ??Hadd@Class@@
        m=re.match(p,n)
        if m: return m.group(1)
    return None
def is_start(n): return n.startswith("??0") or n.startswith("_crt_global_initialize") or n.startswith("??__E")

class Model:
    def __init__(self, recs):
        recs=sorted(recs); self.N=N=len(recs)
        self.addr=[r[0] for r in recs]; self.size=[r[1] for r in recs]; self.name=[r[2] for r in recs]
        self.draw=[set(r[3]) for r in recs]; self.calls=[set(r[4]) for r in recs]
        self.idx={a:i for i,a in enumerate(self.addr)}; self.cls=[dcls(n) for n in self.name]
        pop=collections.Counter(x for d in self.draw for x in d)
        self.local=[set(x for x in d if pop[x]<=8) for d in self.draw]
        self.calledges=[]; self.callers=collections.defaultdict(set)
        for i in range(N):
            for t in self.calls[i]:
                j=self.idx.get(t)
                if j is not None and j!=i: self.calledges.append((i,j)); self.callers[j].add(i)
        self.private=[False]*N
        for j in range(N):
            cs=self.callers.get(j)
            if cs:
                cad=[self.addr[c] for c in cs]+[self.addr[j]]
                if max(cad)-min(cad)<TIGHT: self.private[j]=True

    def detect(self, veto_T=2, data_merge=0, lib_segment=False):
        # data_merge>0 over-merges (chains across boundaries; the OLD dashboard falsely rewarded it) -- OFF.
        # lib_segment: also cut in UNNAMED runs at call-connectivity breaks. Segments the high-address
        # library/CRT blobs (no class signal there), but adds singleton noise -- OFF by default; that
        # region is static library code matched via libcmt-linking, not lifted as game TUs. See doc 12.
        N=self.N; addr=self.addr; cls=self.cls; name=self.name; size=self.size
        def cross(i):
            lo=addr[i]-TIGHT; hi=addr[i]+TIGHT; n=0
            for j in range(max(0,i-40),min(N,i+40)):
                if not self.private[j]: continue
                for c in self.callers[j]:
                    u,v=min(c,j),max(c,j)
                    if u<i<=v and addr[u]>=lo and addr[v]<=hi: n+=1
            return n
        def conn_break(i,W=6):  # no call edge spans i within window, live code both sides
            lo=max(0,i-W); hi=min(N,i+W); span=lL=lR=0
            for j in range(lo,hi):
                for t in self.calls[j]:
                    tj=self.idx.get(t)
                    if tj is not None and lo<=tj<hi:
                        if (j<i)!=(tj<i): span+=1
                        lL+= j<i; lR+= j>=i
            return span==0 and lL>=1 and lR>=1
        cuts=[0]
        for i in range(1,N):
            named=cls[i-1] and cls[i] and cls[i-1]!=cls[i]
            if named or is_start(name[i]):
                if named and veto_T and cross(i)>=veto_T: continue
                cuts.append(i)
            elif lib_segment and cls[i-1] is None and cls[i] is None and conn_break(i) and cross(i)<2:
                cuts.append(i)
        cuts.append(N)
        objs=[(cuts[k],cuts[k+1]) for k in range(len(cuts)-1)]
        def dom(s,e):
            c=collections.Counter(cls[j] for j in range(s,e) if cls[j]); return c.most_common(1)[0][0] if c else None
        spread=collections.Counter(dom(s,e) for s,e in objs if dom(s,e)); comdat={c for c,n in spread.items() if n>=3}
        m=[]
        for s,e in objs:
            if m and dom(s,e) in comdat and (e-s)<=4: m[-1]=(m[-1][0],e)
            else: m.append((s,e))
        m2=[]
        for s,e in m:
            if m2 and dom(*m2[-1])==dom(s,e) and dom(s,e): m2[-1]=(m2[-1][0],e); continue
            # data-overlap merge (REcover signal as a MERGE, not a cut): adjacent objects sharing
            # >=data_merge object-private data addresses are one TU. (Tested: data as a CUT
            # over-segments badly in unnamed library regions -- 3103 spurious fires -- so merge only.)
            if data_merge and m2:
                la=set().union(*[self.local[j] for j in range(m2[-1][0],m2[-1][1])]) or set()
                lb=set().union(*[self.local[j] for j in range(s,e)]) or set()
                if len(la&lb)>=data_merge: m2[-1]=(m2[-1][0],e); continue
            m2.append((s,e))
        self._dom=dom
        return m2

    def dashboard(self, parts):
        # GAMING-RESISTANT metrics (using named funcs as partial labels): pairwise class precision
        # (over-MERGE mixes classes -> P drops) + recall (over-SPLIT scatters a class -> R drops) -> F1.
        # The old single-number metrics (data_overlap/call_cross) were monotonically lowered by merging,
        # so a giant blob "scored best" - F1 fixes that. PRIV_call_cross is kept as the anti-over-split guard.
        N=self.N; oid=[0]*N
        for k,(s,e) in enumerate(parts):
            for j in range(s,e): oid[j]=k
        def C2(n): return n*(n-1)//2
        cell=collections.Counter(); perobj=collections.Counter(); percls=collections.Counter()
        for i in range(N):
            if self.cls[i]: cell[(oid[i],self.cls[i])]+=1; perobj[oid[i]]+=1; percls[self.cls[i]]+=1
        soc=sum(C2(v) for v in cell.values()); so=sum(C2(v) for v in perobj.values()); sc=sum(C2(v) for v in percls.values())
        P=soc/max(1,so); R=soc/max(1,sc); F1=2*P*R/max(1e-9,P+R)
        objcls=collections.defaultdict(collections.Counter)
        for i in range(N):
            if self.cls[i]: objcls[oid[i]][self.cls[i]]+=1
        pur=sum(c.most_common(1)[0][1] for c in objcls.values())/max(1,sum(sum(c.values()) for c in objcls.values()))
        pcross=sum(1 for i,j in self.calledges if self.private[j] and oid[i]!=oid[j])
        return ("objs=%d  F1=%.3f (P=%.3f R=%.3f)  purity=%.3f  PRIV_call_cross=%d"
                %(len(parts),F1,P,R,pur,pcross))

def main():
    a=sys.argv[1:]
    M=Model(load_graph("--rebuild-graph" in a))
    if "--dashboard" in a:
        print("Rich ~951 (C++690+C261); meaningful TUs ~400-600. Lower error metrics = better (but merging trivially lowers them).")
        for T in [None,3,2,1]:
            print("  veto_T=%-4s %s"%(T, M.dashboard(M.detect(T))))
        return
    T=int(a[a.index("--veto")+1]) if "--veto" in a else 2
    parts=M.detect(T, lib_segment="--lib-segment" in a)
    if "--validate" in a:
        c=int(a[a.index("--validate")+1],16)
        for s,e in parts:
            if c-0x100<=M.addr[s]<c+0x8000:
                print("  0x%06x-0x%06x %4d  ~%s"%(M.addr[s],M.addr[e-1]+M.size[e-1],e-s,M._dom(s,e) or "(unnamed)"))
        return
    out=[(hex(M.addr[s]),hex(M.addr[e-1]+M.size[e-1]),e-s,M._dom(s,e)) for s,e in parts]
    json.dump(out, open(os.path.join(DTK,"_objects.json"),"w"), indent=0)
    print("DETECTED OBJECTS: %d (veto_T=%d) -> _objects.json"%(len(parts),T))
    print("  "+M.dashboard(parts))

if __name__=="__main__": main()
