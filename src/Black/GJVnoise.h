#ifndef BW1_DECOMP_GJ_VNOISE_INCLUDED_H
#define BW1_DECOMP_GJ_VNOISE_INCLUDED_H

#include <stdint.h> /* For uint8_t */

// Forward Declares

struct LHPoint;

#define NOISE_TABLE_SIZE 256
#define NOISE_TABLE_MASK (NOISE_TABLE_SIZE - 1)

// Value noise after Darwyn Peachey's vnoise.c ("Texturing and Modeling: A Procedural Approach").
class Noise
{
public:
	// BW1W120 00befdbc BW1M119 01973728
	static uint8_t PermTable[NOISE_TABLE_SIZE];

	// BW1W120 inlined BW1M119 01057c90
	static uint8_t Perm(unsigned long index) { return PermTable[index & NOISE_TABLE_MASK]; }
	// BW1W120 00590860 BW1M119 01057fb0
	static void VLNoise3to2(const LHPoint& point, float* x, float* y);
};

#endif /* BW1_DECOMP_GJ_VNOISE_INCLUDED_H */
