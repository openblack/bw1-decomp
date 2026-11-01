# Symbol-numbering tie-break

A second c2 tie-break depends on the number the front end gives a symbol, i.e. how many declarations precede it in the unit. Register choice and store order can change with it. Names, name lengths and macros have no effect. The output repeats over a cycle of 64 declarations, and only declarations before one sensitive symbol count. A merge that adds unrelated declarations to shared headers can therefore break a matched unit. Localize it with `tools/tiebreak-probe.py --variants`:

1. Add N unused enumerators to an existing enum in a header the unit includes, for N from 0 to about 130. Record which N match.
2. Put a fixed number of matching declarations at points along the unit's include order (from a `/E` preprocess). Bisect to the declaration after which inserts stop having an effect: that is the sensitive symbol.

The fix is a real change to the headers before that symbol: add the members, enumerators or methods the Mac symbols show are missing. The count must land in a matching window for every version that links the unit. An inline body counts for more than one, so measure each candidate set with the same sweep. Every other unit including the edited headers is renumbered too: build all five versions and compare reports before choosing. Padding declarations without such evidence make a fakematch: ask the human first.

## Measured declaration costs

When header additions break a matched unit, measure each group's cost by sweeping 0..63 dummy enumerators with the group removed (window edge shift = cost). Measured: enumerator 1, enum type 1, static data member 2, member function declaration 1, inline member body ~8, struct with members 1 + members, and `#include`-ing a header earlier pulls its whole declaration count (`DynamicLightAndShadow.h` ~45). Intersect every affected unit's window in every version, then move unit-private helpers/enums out of the shared header to land in it.

Symptom: two-instruction swap in an unrelated matched unit (`WorshipSite::SaveObject`, `Base::operator new` in CI) after adding declarations to `LH3DIsland.h`.
