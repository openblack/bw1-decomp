#ifndef BW1_DECOMP_LH3D_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_ISLAND_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DMapCoords.h"
#include "LHPoint.h"

// Forward Declares

struct LH3DColor;
struct LHCoord;
struct LH3DMaterial;
struct LH3DTexture;

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
	bool32_t IsWater() { return properties & 0x10; }
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
	// BW1W120 00c3720c BW1M119 011ceb28 (LHCombined Release)
	static float g_height_unit;

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
	// BW1W120 inlined BW1M119 01017640
	static float GetHeightAsFloat(long x, long z)
	{
		LandCell* cell = GetCell(x, z);
		if (cell != NULL)
		{
			return cell->altitude * g_height_unit;
		}
		return 0.0f;
	}
	// BW1W120 0060d3a0 BW1M119 inlined
	static bool32_t IsWater(long x, long z)
	{
		LandCell* cell = GetCell(x, z);
		if (cell != NULL)
		{
			return cell->IsWater();
		}
		return 1;
	}

	// BW1W120 00804790 BW1M119 01045ba0 (LHCombined Release)
	static bool32_t Release();

	// BW1W120 00803090 BW1M119 0102f1e0 (LHCombined Release)
	static float __fastcall GetAltitude(const LH3DMapCoords& coords);
	// BW1W120 00803340 BW1M119 01047430 (LHCombined Release)
	static float __fastcall GetAltitudeAndSetColorSpecular(const LH3DMapCoords& coords, unsigned long* color,
	                                                       unsigned long* specular);
	// BW1W120 00803630 BW1M119 0101c2c0 (LHCombined Release)
	static void __fastcall GetNormal(const LH3DMapCoords& coords, LHPoint* normal);
	// BW1W120 00801c90 BW1M119 0102a1a0 (LHCombined Release)
	static void GetColorAndSpecular(const LHPoint* pos, unsigned long* color, unsigned long* specular);
	// BW1W120 007feb30 BW1M119 01026a30 (LHCombined Release)
	static unsigned long GetFogValue(const LHPoint* pos, unsigned long specular, unsigned long* color);
	// BW1W120 inlined BW1M119 01049370
	static void GetColorAndSpecularWithFog(const LHPoint* pos, unsigned long* color, unsigned long* specular)
	{
		GetColorAndSpecular(pos, color, specular);
		*specular = GetFogValue(pos, *specular, color);
	}
	// BW1W120 00802550 BW1M119 01019660 (LHCombined Release)
	static bool32_t __fastcall RayCast(const LHPoint& from, const LHPoint& to, float* x, float* z);
	// BW1W120 00800c30 BW1M119 01018fc0 (LHCombined Release)
	static bool32_t __fastcall RayCastFrom2DPoint(const LHCoord& point, float* x, float* z, bool param_4,
	                                              float param_5);
	// BW1W120 inlined BW1M119 inlined
	static float GetAltitude(const LHPoint& pos)
	{
		LH3DMapCoords coords(pos.x, pos.z);
		return GetAltitude(coords);
	}
	// BW1W120 inlined BW1M119 inlined
	static void GetNormal(const LHPoint& pos, LHPoint* normal)
	{
		LH3DMapCoords coords(pos.x, pos.z);
		GetNormal(coords, normal);
	}
	// BW1W120 00802120 BW1M119 01026d00 (LHCombined Release)
	static void GetColorAndSpecular(const LH3DMapCoords& coords, unsigned long* color, unsigned long* specular);
};

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */
