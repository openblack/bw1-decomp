# Project conventions

## Header signatures vs debug comments

The comments above function declarations show the mangled name from the
original BW1 binary, which encodes the true C++ signature. When the header
signature disagrees with the comment, the header needs fixing.

### Rule 1: Pointer vs reference

If the comment says `Type&` or `Type const &` but the header has `Type*`,
the header should use `Type&` or `const Type&` instead.

```cpp
// BW1W120 005ef9c0 Living::CalculateDancePosition(MapCoords const &, MapCoords *)
bool CalculateDancePosition(const MapCoords* param_1, MapCoords* param_2);
//                                        ^ should be const MapCoords&
```

This applies to any type, not just `MapCoords`.

### Rule 2: Hidden output parameter returned as pointer

If a function is declared as `Type* Func(Type* first_param, ...)` but the
comment omits `first_param` (showing fewer params), then `first_param` is
a hidden output buffer. The function should return `Type` by value instead
of `Type*`, and the first parameter should be removed.

```cpp
// Comment:  Living::CalcRandomPos(MapCoords const &, float, float)
// Current:  MapCoords* CalcRandomPos(MapCoords* param_1, MapCoords* param_2, float, float)
// Fix:      MapCoords CalcRandomPos(MapCoords* param_2, float, float)
//                            ^^ return by value, remove first param
```
