#ifndef BW1_DECOMP_LH3D_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_ISLAND_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DColor;
struct LH3DMapCoords;
struct LH3DMaterial;
struct LH3DTexture;
struct LHPoint;

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

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0100f850
	bool IsWater();
};

struct LandBlock
{
	LandCell Cells[17][17];
};

class LH3DIsland
{
public:
	// BW1W120 00e9c964 BW1M119 01202288 (LHCombined Release)
	static uint8_t g_index_block[32][32];
	// BW1W120 00e9c564 BW1M119 011ffed8 (LHCombined Release)
	static LandBlock* g_ptr_blocks[0x100];

	// Static methods

	// BW1W120 inlined BW1M119 0102f130 (LHCombined Release)
	static LandCell* GetCell(long x, long z)
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

	// BW1W120 00804790 BW1M119 01045ba0 (LHCombined Release)
	static bool32_t Release();

	// BW1W120 00803090 BW1M119 0102f1e0 (LHCombined Release)
	static float __fastcall GetAltitude(const LH3DMapCoords& coords);
	// BW1W120 00803340 BW1M119 01047430 (LHCombined Release)
	static float __fastcall GetAltitudeAndSetColorSpecular(const LH3DMapCoords& coords, uint32_t* color,
	                                                       uint32_t* specular);
	// BW1W120 00803630 BW1M119 0101c2c0 (LHCombined Release)
	static void __fastcall GetNormal(const LH3DMapCoords& coords, LHPoint* normal);
};

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */
