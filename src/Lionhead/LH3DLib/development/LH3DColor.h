#ifndef BW1_DECOMP_LH3D_COLOR_INCLUDED_H
#define BW1_DECOMP_LH3D_COLOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LH3DColor
{
	uint8_t b; /* 0x0 */
	uint8_t g;
	uint8_t r;
	uint8_t a;

	// Constructors

	// BW1W120 inlined BW1M119 011c3178 (LHCombined Release)
	LH3DColor() {}
	// BW1W120 inlined BW1M119 01086020
	// White's per-TU startup initialisers store the packed color as one DWORD.
	LH3DColor(uint32_t color) { *(uint32_t*)this = color; }
	// BW1W120 inlined BW1M119 01055a40
	// fabricated
	LH3DColor(const LH3DColor& other) { *(uint32_t*)this = *(uint32_t*)&other; }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01352630
	// fabricated
	void operator=(const LH3DColor& other) { *(uint32_t*)this = *(uint32_t*)&other; }
};

#endif /* BW1_DECOMP_LH3D_COLOR_INCLUDED_H */
