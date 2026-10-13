#ifndef BW1_DECOMP_LH3D_LAND_CELL_INCLUDED_H
#define BW1_DECOMP_LH3D_LAND_CELL_INCLUDED_H

#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DColor.h"  /* For struct LH3DColor */
#include "LH3DIsland.h" /* For class LH3DIsland */

#define LAND_CELL_DARKNESS_LEVELS 256

struct LandCell
{
	uint8_t r; /* 0x0 */
	uint8_t g;
	uint8_t b;
	uint8_t luminosity;
	uint8_t altitude;
	uint8_t SaveColor;
	uint8_t properties;
	uint8_t flags;

	// Static data

	// BW1W120 00edd90c BW1M119 01202f80 (LHCombined Release)
	static LH3DColor g_darkness_to_color[LAND_CELL_DARKNESS_LEVELS];

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0100f850
	bool32_t IsWater() { return properties & 0x10; }
};

struct LandBlock
{
	LandCell Cells[17][17];
};

inline LandCell* LH3DIsland::GetCell(long x, long z)
{
	if (x < 0 || x > 511 || z < 0 || z > 511)
	{
		return NULL;
	}
	uint32_t block = g_index_block[x >> 4][z >> 4];
	if (block == 0)
	{
		return NULL;
	}
	return &g_ptr_blocks[block]->Cells[x & 0xf][z & 0xf];
}

inline float LH3DIsland::GetHeightAsFloat(long x, long z)
{
	LandCell* cell = GetCell(x, z);
	if (cell != NULL)
	{
		return cell->altitude * g_height_unit;
	}
	return 0.0f;
}

inline bool32_t LH3DIsland::IsWater(long x, long z)
{
	LandCell* cell = GetCell(x, z);
	if (cell != NULL)
	{
		return cell->IsWater();
	}
	return 1;
}

#endif /* BW1_DECOMP_LH3D_LAND_CELL_INCLUDED_H */
