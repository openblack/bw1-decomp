#ifndef BW1_DECOMP_RAND_INCLUDED_H
#define BW1_DECOMP_RAND_INCLUDED_H

#include <stdint.h> /* For uint32_t */

struct GRand
{
	// BW1W120 006de510 BW1M119 014d2790
	static int GameRand(uint32_t max, const char* src_file, uint32_t src_line);
	// BW1W120 006de530 BW1M119 014d26d0
	static float GameFloatRand(float scale, const char* src_file, uint32_t src_line);
	// BW1W120 006de570 BW1M119 01047590
	uint32_t LocalRand(long param_1);
	// BW1W120 006de590 BW1M119 01099e80
	static float LocalFloatRand(float scale);
};

#endif /* BW1_DECOMP_RAND_INCLUDED_H */
