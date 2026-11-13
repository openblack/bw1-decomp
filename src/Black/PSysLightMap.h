#ifndef BW1_DECOMP_P_SYS_LIGHT_MAP_INCLUDED_H
#define BW1_DECOMP_P_SYS_LIGHT_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

class GJBitmap;

class PSysLightMap
{
public:
	uint32_t  field_0x0;
	uint32_t  field_0x4;
	uint16_t  Frame;
	LHPoint   Position;
	float     Intensity;
	GJBitmap* Bitmap;

	// BW1W120 006ca200 BW1M119 01481510
	PSysLightMap();
	// BW1W120 006ca220 BW1M119 01481450
	~PSysLightMap();
};
static_assert(sizeof(PSysLightMap) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_LIGHT_MAP_INCLUDED_H */
