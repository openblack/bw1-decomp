#ifndef BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H
#define BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h>

struct LH3DCitadelLevelOfDetail
{
	bool    Reflections;
	uint8_t field_0x1[0x3];
	bool    Lightmaps;
	uint8_t field_0x5[0x3];
};
static_assert(sizeof(LH3DCitadelLevelOfDetail) == 0x8, "Data type is of wrong size");

struct LH3DLevelOfDetail
{
	enum DETAIL_PRESET
	{
		DETAIL_PRESET_CONFIG_0,
		DETAIL_PRESET_CONFIG_1,
		DETAIL_PRESET_CONFIG_2,
		DETAIL_PRESET_CONFIG_3,
		DETAIL_PRESET_CONFIG_4,
		DETAIL_PRESET_CUSTOM,
		DETAIL_PRESET_CONFIG_6,
	};

	// BW1W120 00c381ec BW1M119 011ce858 (LHCombined Release)
	static DETAIL_PRESET g_detail_idx;
	// BW1W120 00c381e0 BW1M119 011ce84c (LHCombined Release)
	static LH3DCitadelLevelOfDetail g_citadellod;
	// BW1W120 00c38200 BW1M119 011ce86c (LHCombined Release)
	static bool32_t g_b_use_day_and_night;
	// BW1W120 00eb9970 BW1M119 011f2494 (LHCombined Release)
	static float g_colour_boost;
};

#endif /* BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H */
