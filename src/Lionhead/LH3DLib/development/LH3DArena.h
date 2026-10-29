#ifndef BW1_DECOMP_LH3D_ARENA_INCLUDED_H
#define BW1_DECOMP_LH3D_ARENA_INCLUDED_H

#include <re_common.h> /* For bool32_t */

class LH3DArena
{
public:
	// Static methods

	// BW1W120 00829610 BW1M119 0103b130 (LHCombined Release)
	static void ComputeLight();
};

// BW1W120 00eb9960 BW1M119 011f24a4 (LHCombined Release)
extern bool32_t g_b_end_sequence;
// BW1W120 00eb9964 BW1M119 011f24a0 (LHCombined Release)
extern float g_b_end_sequence_dark;

#endif /* BW1_DECOMP_LH3D_ARENA_INCLUDED_H */
