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

	void Set(uint8_t red, uint8_t green, uint8_t blue);
};

#endif /* BW1_DECOMP_LH_COLOR_INCLUDED_H */
