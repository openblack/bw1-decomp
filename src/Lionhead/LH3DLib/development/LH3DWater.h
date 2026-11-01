#ifndef BW1_DECOMP_LH3D_WATER_INCLUDED_H
#define BW1_DECOMP_LH3D_WATER_INCLUDED_H

#include <stdint.h>

class LH3DWater
{
public:
	// BW1W120 00c398fc BW1M119 011d17f4 (LHCombined Release)
	static uint32_t g_color_water;

	// Static methods

	// BW1W120 008792e0 BW1M119 010d1f80 (LHCombined Release)
	static void __fastcall Open(long screen_height);
	// BW1W120 008794a0 BW1M119 010d1ec0 (LHCombined Release)
	static void Close();
};

#endif /* BW1_DECOMP_LH3D_WATER_INCLUDED_H */
