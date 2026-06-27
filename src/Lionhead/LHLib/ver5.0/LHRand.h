#ifndef BW1_DECOMP_LH_RAND_INCLUDED_H
#define BW1_DECOMP_LH_RAND_INCLUDED_H

#include <stdint.h> /* For uint32_t */

// BW1W120 007db600 BW1M100 100267d0 LHRand(long, unsigned &)
uint32_t __cdecl LHRand__FlRU(uint32_t scale, uint32_t* seed);
// BW1W120 0081d180 BW1M100 1001f510 Random(float, float)
float __stdcall Random__Fff(float min_val, float max_val);

#endif /* BW1_DECOMP_LH_RAND_INCLUDED_H */
