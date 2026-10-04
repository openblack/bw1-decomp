#ifndef BW1_DECOMP_P_SYS_LIGHT_MAPS_INCLUDED_H
#define BW1_DECOMP_P_SYS_LIGHT_MAPS_INCLUDED_H

#include <stdint.h> /* For int32_t */

struct LightMapList
{
	int32_t BlurState;

	// Non-virtual methods

	// BW1W120 006ca5d0 BW1M119 01481210
	void StopBlur();
};

class PSysLightMaps
{
public:
	// BW1W120 00d4edb0
	static LightMapList List;

	// BW1W120 006ca6e0 BW1M119 01015540
	static void AddDrawing();
};

#endif /* BW1_DECOMP_P_SYS_LIGHT_MAPS_INCLUDED_H */
