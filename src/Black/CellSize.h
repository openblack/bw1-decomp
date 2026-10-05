#ifndef BW1_DECOMP_CELL_SIZE_INCLUDED_H
#define BW1_DECOMP_CELL_SIZE_INCLUDED_H

#include "MaxFloat.h" /* For MaxFloat */

const float CellSize = 10.0f;

// fabricated: stands in for the unknown uncalled header inline that forces CellSize into .rdata without LandscapeExtent.
inline float GetCellSize()
{
	return CellSize;
}

#endif /* BW1_DECOMP_CELL_SIZE_INCLUDED_H */
