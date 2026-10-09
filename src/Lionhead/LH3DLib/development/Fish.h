#ifndef BW1_DECOMP_FISH_INCLUDED_H
#define BW1_DECOMP_FISH_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

class FishRush
{
public:
	// Static members

	// BW1W120 00ea9f40 BW1M119 011f1e44 (LHCombined Release)
	static LHPoint g_emergency;
	// BW1W120 00eb99f0 BW1M119 011f1e50 (LHCombined Release)
	static int g_b_er_valid;
};

#endif /* BW1_DECOMP_FISH_INCLUDED_H */
