#ifndef BW1_DECOMP_CELL_SIZE_INCLUDED_H
#define BW1_DECOMP_CELL_SIZE_INCLUDED_H

#include <float.h> /* For FLT_MAX */

// Internal linkage, so each including TU gets its own copy and cl6 emits the
// load from memory rather than folding it. Only TUs that use it emit it.
// fabricated name: every TU that keeps a FLT_MAX in its .rdata has it right before CellSize, so it is
// defined in the same (unknown) header, just above it. Stores of it are copies through a register.
const float MaxFloat = FLT_MAX;
const float CellSize = 10.0f;

// fabricated: stands in for the unknown uncalled header inline that forces CellSize into .rdata without LandscapeExtent.
inline float GetCellSize()
{
	return CellSize;
}

#endif /* BW1_DECOMP_CELL_SIZE_INCLUDED_H */
