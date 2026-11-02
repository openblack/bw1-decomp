#ifndef BW1_DECOMP_LH_3D_ISLAND_BLOCK_INCLUDED_H
#define BW1_DECOMP_LH_3D_ISLAND_BLOCK_INCLUDED_H

#include "LH3DIsland.h" /* For class LH3DIsland, struct LandBlock */

// Inliner IL size: 92
// BW1W120 inlined BW1M119 inlined
inline LandBlock* GetLandBlock(long x, long z)
{
	if (x < 0 || x > LAND_MAP_MAX || z < 0 || z > LAND_MAP_MAX)
	{
		return NULL;
	}
	uint32_t block = LH3DIsland::g_index_block[x >> 4][z >> 4];
	if (block == 0)
	{
		return NULL;
	}
	return LH3DIsland::g_ptr_blocks[block];
}

#endif /* BW1_DECOMP_LH_3D_ISLAND_BLOCK_INCLUDED_H */
