#ifndef BW1_DECOMP_RAND_INCLUDED_H
#define BW1_DECOMP_RAND_INCLUDED_H

#include <stdint.h> /* For uint32_t */

// win1.41 006de510 mac 104cc380 GRand::GameRand(long)
int __cdecl GameRand__5GRandFl(uint32_t max, const char* src_file, uint32_t src_line);
// win1.41 006de530 mac 104cc2c0 GRand::GameFloatRand(float)
float __cdecl GameFloatRand__5GRandFf(float scale, const char* src_file, uint32_t src_line);

#endif /* BW1_DECOMP_RAND_INCLUDED_H */
