#ifndef BW1_DECOMP_LH_COORD_INCLUDED_H
#define BW1_DECOMP_LH_COORD_INCLUDED_H

#include <assert.h> /* For static_assert */

struct LHCoord
{
	int x; /* 0x0 */
	int y;

	// Constructors

	LHCoord() {}
	// BW1W120 inlined BW1M119 01071330
	LHCoord(const LHCoord* other);

	// BW1W120 007e5af0 BW1M119 011458c0 (LHCombined Release)
	// Defined out-of-line where the screen is in scope (LHSystem.cpp); inlined at call sites.
	void AddMSWindowOffset();
};

#endif /* BW1_DECOMP_LH_COORD_INCLUDED_H */
