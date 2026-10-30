#ifndef BW1_DECOMP_DYNAMIC_LIGHT_AND_SHADOW_INCLUDED_H
#define BW1_DECOMP_DYNAMIC_LIGHT_AND_SHADOW_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

struct LHPoint;

class DynamicLightAndShadow
{
public:
	enum LightType
	{
		LIGHT_TYPE_LIGHT = 1,
		LIGHT_TYPE_SHADOW = 2,
	};

	// BW1W120 0086cff0 BW1M119 010203a0 (LHCombined Release)
	static void __fastcall AddLight(LHPoint* pos, uint8_t* map, long size, bool32_t centred, float intensity,
	                                LightType type, bool32_t interpolate);
};

#endif /* BW1_DECOMP_DYNAMIC_LIGHT_AND_SHADOW_INCLUDED_H */
