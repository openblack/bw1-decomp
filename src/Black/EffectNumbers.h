#ifndef BW1_DECOMP_EFFECT_NUMBERS_INCLUDED_H
#define BW1_DECOMP_EFFECT_NUMBERS_INCLUDED_H

#include <string.h> /* For memset */

#include <chlasm/Enum.h> /* For EFFECT_TYPE_LAST, enum EFFECT_TYPE */

struct EffectNumbers
{
	float values[EFFECT_TYPE_LAST]; /* 0x0 */

	// Constructors

	// BW1W120 inlined BW1M100 1051f0e0 EffectNumbers::EffectNumbers(void)
	EffectNumbers() { memset(values, 0, sizeof(values)); }

	// Non-virtual methods

	// BW1W120 00525720 BW1M100 100cba20 EffectNumbers::operator*=(const float&)
	EffectNumbers& operator*=(const float& rhs);
};

#endif /* BW1_DECOMP_EFFECT_NUMBERS_INCLUDED_H */
