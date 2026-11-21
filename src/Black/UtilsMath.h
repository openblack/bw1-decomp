#ifndef BW1_DECOMP_UTILS_MATH_INCLUDED_H
#define BW1_DECOMP_UTILS_MATH_INCLUDED_H

// BW1W120 0099a1d4
extern const float InverseSinTableOne;

// BW1W120 0074f590 BW1M119 0156c6d0
void build_inv_sqrt_table();
// BW1W120 0074f620 BW1M119 null
float FastInverseSqrt(float value);
// BW1W120 0074f660 BW1M119 null
float FastSqrt(float value);
// BW1W120 0074f6c0 BW1M119 01036690
float __cdecl hypotenuse(float dx, float dz);
// BW1W120 0074f720 BW1M119 null
float hypotenuse_squared(float x, float z);
// BW1W120 0074f740 BW1M119 null
int inverse_hypotenuse(int x, int z);

#endif /* BW1_DECOMP_UTILS_MATH_INCLUDED_H */
