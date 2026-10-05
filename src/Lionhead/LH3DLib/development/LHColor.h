#ifndef BW1_DECOMP_LH_COLOR_INCLUDED_H
#define BW1_DECOMP_LH_COLOR_INCLUDED_H

#include <assert.h>
#include <stdint.h>

struct LHColor
{
	uint8_t b;
	uint8_t g;
	uint8_t r;
	uint8_t a;

	// BW1W120 inlined BW1M119 011346a0 (LHCombined Release)
	LHColor() {}
	// BW1W120 inlined BW1M119 inlined
	LHColor(uint8_t red, uint8_t green, uint8_t blue, uint8_t alpha) : b(blue), g(green), r(red), a(alpha) {}

	void Set(uint8_t red, uint8_t green, uint8_t blue);
};

#endif /* BW1_DECOMP_LH_COLOR_INCLUDED_H */
