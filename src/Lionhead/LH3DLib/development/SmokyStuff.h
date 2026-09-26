#ifndef BW1_DECOMP_SMOKY_STUFF_INCLUDED_H
#define BW1_DECOMP_SMOKY_STUFF_INCLUDED_H

#include "LH3DColor.h" /* For struct LH3DColor */

struct LHPoint;

struct SmokyStuff
{
	// Static methods

	// BW1W120 00823c90 BW1M119 010bcfc0 (LHCombined Release)
	static SmokyStuff* Create(const LHPoint* pos, long param_2, float param_3, LH3DColor color);
};

#endif /* BW1_DECOMP_SMOKY_STUFF_INCLUDED_H */
