#ifndef BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H
#define BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

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
	// BW1W120 00c381e0 BW1M119 011ce84c (LHCombined Release)
	static LH3DCitadelLevelOfDetail g_citadellod;
	// BW1W120 00c3820c BW1M119 011ce878 (LHCombined Release)
	static bool32_t g_b_draw_dynamic_shadow;
	// BW1W120 00c38220 BW1M119 011ce88c (LHCombined Release)
	static bool32_t g_b_objects_cast_shadow;
	// BW1W120 00c38224 BW1M119 011ce890 (LHCombined Release)
	static bool32_t g_b_dynamic_lighting_on_objects;
};

#endif /* BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H */
