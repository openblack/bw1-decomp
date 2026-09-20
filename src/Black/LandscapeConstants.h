#ifndef BW1_DECOMP_LANDSCAPE_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_LANDSCAPE_CONSTANTS_INCLUDED_H

// Internal linkage, so each including TU gets its own copy and cl6 emits the
// load from memory rather than folding it. Only TUs that use it emit it.
const float CellSize = 10.0f;

// cl6 does not fold const float arithmetic, so this gets a startup initialiser
// in each of the 26 TUs that carry it. The 512.0f literal lands in the __real@4
// COMDAT pool, which the linker folds to a single address image-wide; that one
// address is what every initialiser and LH3DIsland's grid clipping reference.
//
// TODO: real filename unknown; this is not the header the original used.
//
// The name is a guess too, but not a free one. cl6 orders the header statics that only
// their startup initialisers touch (this, White, SecondsPerYear) in .bss by a hash of the
// symbol name, not by include or definition order. GameThing's target needs this one at
// .bss+0, then White, then SecondsPerYear; "CellSizeXGridDim" sorted after White, and of
// 22 descriptive candidates only "LandscapeExtent" sorted before it (512 cells x 10 = the
// landscape edge length). Renaming it will move it: re-check GameThing's .bss first.
static float LandscapeExtent = 512.0f * CellSize;

#endif /* BW1_DECOMP_LANDSCAPE_CONSTANTS_INCLUDED_H */
