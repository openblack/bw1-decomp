#ifndef BW1_DECOMP_LH_COORD_INCLUDED_H
#define BW1_DECOMP_LH_COORD_INCLUDED_H

#include <assert.h> /* For static_assert */

struct LHCoord
{
	int x; /* 0x0 */
	int y;

	// Constructors

	LHCoord() {}
	// BW1W120 inlined BW1M100 1006ebc0 LHCoord::LHCoord(LHCoord const &)
	LHCoord(const LHCoord* other);

	// BW1W120 007e5af0 LHCoord::AddMSWindowOffset(void)
	// Defined out-of-line where g_lhScreen is in scope (needs LHScreen); inlined at call sites.
	void AddMSWindowOffset();
};

#endif /* BW1_DECOMP_LH_COORD_INCLUDED_H */
