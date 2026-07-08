#ifndef BW1_DECOMP_RAND_INCLUDED_H
#define BW1_DECOMP_RAND_INCLUDED_H

#include <stdint.h> /* For uint32_t */

struct GRand
{
	// BW1W120 006de510 BW1M100 104cc380 GRand::GameRand(long)
	static int GameRand(uint32_t max, const char* src_file, uint32_t src_line);
	// BW1W120 006de530 BW1M100 104cc2c0 GRand::GameFloatRand(float)
	static float GameFloatRand(float scale, const char* src_file, uint32_t src_line);
	// BW1W120 006de570 BW1M100 10044b40 GRand::LocalRand(long)
	uint32_t LocalRand(long param_1);
};

#endif /* BW1_DECOMP_RAND_INCLUDED_H */
