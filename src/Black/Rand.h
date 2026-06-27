#ifndef BW1_DECOMP_RAND_INCLUDED_H
#define BW1_DECOMP_RAND_INCLUDED_H

#include <stdint.h> /* For uint32_t */

// Forward Declares

struct GRand;

// BW1W120 006de510 BW1M100 104cc380 GRand::GameRand(long)
int __cdecl GameRand__5GRandFl(uint32_t max, const char* src_file, uint32_t src_line) asm("?GameRand@GRand@@SAHJ@Z");
// BW1W120 006de530 BW1M100 104cc2c0 GRand::GameFloatRand(float)
float __cdecl GameFloatRand__5GRandFf(float scale, const char* src_file, uint32_t src_line) asm("?GameFloatRand@GRand@@SAMM@Z");
// BW1W120 006de570 BW1M100 10044b40 GRand::LocalRand(long)
uint32_t __cdecl LocalRand__5GRandFl(struct GRand* this, long param_1) asm("?LocalRand@GRand@@SAIJ@Z");

#endif /* BW1_DECOMP_RAND_INCLUDED_H */
