#ifndef BW1_DECOMP_LH_COLOR_INCLUDED_H
#define BW1_DECOMP_LH_COLOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LHColor
{
	uint8_t b;
	uint8_t g;
	uint8_t r;

	// BW1W120 inlined BW1M119 011346a0 (LHCombined Release)
	LHColor() {}
	// BW1W120 inlined BW1M119 011855a0
	LHColor(uint8_t red, uint8_t green, uint8_t blue) : b(blue), g(green), r(red) {}

	void Set(uint8_t red, uint8_t green, uint8_t blue);
};
static_assert(sizeof(LHColor) == 0x3, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_COLOR_INCLUDED_H */
