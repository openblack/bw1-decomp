#ifndef BW1_DECOMP_EFFECT_NUMBERS_INCLUDED_H
#define BW1_DECOMP_EFFECT_NUMBERS_INCLUDED_H

#include <string.h> /* For memset */

#include <chlasm/Enum.h> /* For EFFECT_TYPE_LAST, enum EFFECT_TYPE */

struct EffectNumbers
{
	float values[EFFECT_TYPE_LAST]; /* 0x0 */

	// Constructors

	// BW1W120 inlined BW1M119 0151f0e0
	EffectNumbers() { memset(values, 0, sizeof(values)); }

	// Non-virtual methods

	// BW1W120 00525720 BW1M119 010cfd50
	EffectNumbers& operator*=(const float& rhs);
	// BW1W120 005258c0 BW1M119 010cfcd0
	int IsDestructive();
};

#endif /* BW1_DECOMP_EFFECT_NUMBERS_INCLUDED_H */
