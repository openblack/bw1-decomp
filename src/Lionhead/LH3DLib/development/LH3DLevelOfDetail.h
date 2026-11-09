#ifndef BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H
#define BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

struct LH3DCitadelLevelOfDetail
{
	bool    Reflections;
	bool    VolumeLight;
	bool    Glows;
	bool    People;
	bool    Lightmaps;
	uint8_t field_0x5[0x3];
};
static_assert(sizeof(LH3DCitadelLevelOfDetail) == 0x8, "Data type is of wrong size");

struct LH3DLevelOfDetail
{
	// BW1W120 00c381e0 BW1M119 011ce84c (LHCombined Release)
	static LH3DCitadelLevelOfDetail g_citadellod;
	// BW1W120 00c381f0 BW1M119 011ce85c (LHCombined Release)
	static bool32_t g_b_draw_clouds;
	// BW1W120 00c381f4 BW1M119 011ce860 (LHCombined Release)
	static bool32_t g_b_draw_clouds_shadow;
	// BW1W120 00c381f8 BW1M119 011ce864 (LHCombined Release)
	static bool32_t g_b_use_small_bump;
	// BW1W120 00c381fc BW1M119 011ce868 (LHCombined Release)
	static bool32_t g_b_use_weather_system;
	// BW1W120 00c3820c BW1M119 011ce878 (LHCombined Release)
	static bool32_t g_b_draw_dynamic_shadow;
	// BW1W120 00c38220 BW1M119 011ce88c (LHCombined Release)
	static bool32_t g_b_objects_cast_shadow;
	// BW1W120 00c38224 BW1M119 011ce890 (LHCombined Release)
	static bool32_t g_b_dynamic_lighting_on_objects;
	// BW1W120 00c38228 BW1M119 011ce894 (LHCombined Release)
	static float g_water_tilling;
	// BW1W120 00eb996c BW1M119 011f2498 (LHCombined Release)
	static long g_num_rainsplash;

	// Static methods

	// BW1W120 008237b0 BW1M119 010a1fa0 (LHCombined Release)
	static void UpdateFromCustomRegistry(char* key, bool in_game);
	// BW1W120 00823ad0 BW1M119 010a0bf0 (LHCombined Release)
	static void UpdateFromRegistry(char* key, bool in_game, int detail_idx);
};

#endif /* BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H */
