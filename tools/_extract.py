import json, re, sys, html
if len(sys.argv) < 2 or sys.argv[1] in ("-h","--help"):
    sys.exit("usage: _extract.py <file>  -- extract the result JSON array from captured tool/agent output")
raw = open(sys.argv[1], encoding="utf-8", errors="ignore").read()
m = re.search(r'\[\s*\{\s*"name"', raw)
if not m:
    print("no result array found"); sys.exit(1)
start = m.start()
depth = 0; instr = False; esc = False; end = None
for i in range(start, len(raw)):
    c = raw[i]
    if instr:
        if esc: esc = False
        elif c == "\\": esc = True
        elif c == '"': instr = False
        continue
    if c == '"': instr = True
    elif c in "[{": depth += 1
    elif c in "]}":
        depth -= 1
        if depth == 0: end = i + 1; break
data = json.loads(raw[start:end])
for r in data:                                   # un-escape any HTML entities in bodies (&amp; &lt; &gt;)
    if r.get("body"): r["body"] = html.unescape(r["body"])
    if r.get("blocker"): r["blocker"] = html.unescape(r["blocker"])
json.dump(data, open("tools/_fanout_results.json", "w"))
bodies = [r for r in data if r.get("body", "").strip()]
print("parsed %d results; %d have a body, %d blocked" % (len(data), len(bodies), len(data) - len(bodies)))
import collections
bl = collections.Counter((r.get("blocker", "") or "?").split(":")[0].split("—")[0].split()[0] for r in data if not r.get("body", "").strip())
print("blocker categories:", dict(bl))
