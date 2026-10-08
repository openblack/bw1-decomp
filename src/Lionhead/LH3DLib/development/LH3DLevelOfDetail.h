#ifndef BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H
#define BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

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
};

#endif /* BW1_DECOMP_LH3D_LEVEL_OF_DETAIL_INCLUDED_H */
