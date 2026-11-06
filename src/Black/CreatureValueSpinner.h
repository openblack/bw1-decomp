#ifndef BW1_DECOMP_CREATURE_VALUE_SPINNER_INCLUDED_H
#define BW1_DECOMP_CREATURE_VALUE_SPINNER_INCLUDED_H

#include "ValueSpinner.h" /* For struct ValueSpinner */

struct CreatureValueSpinner : public ValueSpinner
{
	// BW1W120 00479e10 BW1M119 011de290
	virtual void UpdatePosition(float time);
	// BW1W120 00475830 BW1M119 011d4950
	virtual ~CreatureValueSpinner() {}
};

#endif /* BW1_DECOMP_CREATURE_VALUE_SPINNER_INCLUDED_H */
