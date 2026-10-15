#ifndef BW1_DECOMP_LH3D_IN_BUILD_INCLUDED_H
#define BW1_DECOMP_LH3D_IN_BUILD_INCLUDED_H

#include <stdint.h> /* For uint16_t */

#include <re_common.h> /* For bool32_t */

// Draws the outline of an object that is being built.
struct LH3DInBuild
{
	// BW1W120 00eb9994 BW1M119 011f2240 (LHCombined Release)
	static uint16_t g_edge_count;
	// BW1W120 00eb9998 BW1M119 011f223c (LHCombined Release)
	static int ec1;
	// BW1W120 00eb999c BW1M119 011f2238 (LHCombined Release)
	static int ec2;
	// BW1W120 00eb99a0 BW1M119 011f2234 (LHCombined Release)
	static bool32_t g_b_fuck;

	// BW1W120 00820b20 BW1M119 010c0b00 (LHCombined Release)
	static void Draw();
};

#endif /* BW1_DECOMP_LH3D_IN_BUILD_INCLUDED_H */
