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

class LH3DIsland
{
public:
	// Static methods
	// BW1W120 00804790 BW1M119 01045ba0 (LHCombined Release)
	static bool32_t Release();

	// BW1W120 00803090 BW1M119 0102f1e0 (LHCombined Release)
	static float __fastcall GetAltitude(const LH3DMapCoords& coords);
	// BW1W120 00803340 BW1M119 01047430 (LHCombined Release)
	static float __fastcall GetAltitudeAndSetColorSpecular(const LH3DMapCoords& coords, uint32_t* color,
	                                                       uint32_t* specular);
};

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */
