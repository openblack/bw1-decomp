#ifndef BW1_DECOMP_LH3D_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_ISLAND_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DColor;
struct LH3DMapCoords;
struct LH3DMaterial;
struct LH3DTexture;
struct LHPoint;
struct LandBlock;

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

	// BW1W120 inlined BW1M100 1000cd10 LandCell::IsWater(void)
	bool IsWater();
};

class LH3DIsland
{
public:
	// Original Mac names; storage remains in the extracted island data.
	static uint8_t    g_index_block[32][32]; // 00e9c964, indexed [x][z]
	static LandBlock* g_ptr_blocks[256];     // 00e9c564
	static float      g_height_unit;         // 00c3720c

	// Static methods
	// BW1W120 007ff2d0 BW1M100 LH Combined Release Shared 00022e10
	static void PreDraw();
	// BW1W120 00803c00 LH3DIsland::Create(void)
	static bool32_t Create();
	// BW1W120 00800c10 LH3DIsland::SetFileToLoad(char *)
	static void SetFileToLoad(char* path);
	// BW1W120 00516aa0 LH3DIsland::GetCell(long, long)
	static LandCell* GetCell(long x, long z);
	// BW1W120 00802550. ECX/EDX are the points; the two output pointers are on the stack.
	static bool32_t __fastcall RayCast(const LHPoint& from, const LHPoint& to, float* x, float* z);
	// BW1W120 00804790 BW1M100 1061cc34 LH3DIsland::Release(void)
	static bool32_t Release();

	// BW1W120 00803090 LH3DIsland::GetAltitude(LH3DMapCoords const &)
	static float __fastcall GetAltitude(const LH3DMapCoords& coords);
	// BW1W120 00803340 LH3DIsland::GetAltitudeAndSetColorSpecular(LH3DMapCoords const &, ulong *, ulong *)
	static float __fastcall GetAltitudeAndSetColorSpecular(const LH3DMapCoords& coords, uint32_t* color,
	                                                       uint32_t* specular);
};

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */
