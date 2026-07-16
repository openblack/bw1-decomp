#ifndef BW1_DECOMP_LH3D_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_ISLAND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

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

	// BW1W120 inlined BW1M100 1000cd10 LandCell::IsWater(void)
	bool IsWater();
};

class LH3DIsland
{
public:
	// Static methods

	// BW1W120 00803090 LH3DIsland::GetAltitude(LH3DMapCoords const &)
	static float __fastcall GetAltitude(const LH3DMapCoords& coords);
};

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */
