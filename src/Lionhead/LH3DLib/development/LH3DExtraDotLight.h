#ifndef BW1_DECOMP_LH3D_EXTRA_DOT_LIGHT_INCLUDED_H
#define BW1_DECOMP_LH3D_EXTRA_DOT_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */

#define LH3D_EXTRA_DOT_LIGHT_MAX 32

struct LH3DExtraDotLight
{
	long          X;
	long          Z;
	unsigned long Color;

	// BW1W120 00eb97c8 BW1M119 011cea1c (LHCombined Release)
	static LH3DExtraDotLight g_list[LH3D_EXTRA_DOT_LIGHT_MAX];
	// BW1W120 00eb99a4 BW1M119 011f20b0 (LHCombined Release)
	static long g_count;

	// Static methods

	// BW1W120 00820f30 BW1M119 0103c060 (LHCombined Release)
	static void Draw();
	// BW1W120 00820fc0 BW1M119 0103b580 (LHCombined Release)
	static void Clear();
};
static_assert(sizeof(LH3DExtraDotLight) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_EXTRA_DOT_LIGHT_INCLUDED_H */
