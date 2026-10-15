#ifndef BW1_DECOMP_LH3D_TRIANGLE_INCLUDED_H
#define BW1_DECOMP_LH3D_TRIANGLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

struct LH3DTriangle
{
	uint16_t A; /* 0x0 */
	uint16_t B;
	uint16_t C; /* 0x4 */

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01067e60 (LHCombined Release)
	uint16_t GetA() { return A; }
	// BW1W120 inlined BW1M119 01067e20 (LHCombined Release)
	uint16_t GetB() { return B; }
	// BW1W120 inlined BW1M119 01067de0 (LHCombined Release)
	uint16_t GetC() { return C; }
};
static_assert(sizeof(LH3DTriangle) == 0x6, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_TRIANGLE_INCLUDED_H */
