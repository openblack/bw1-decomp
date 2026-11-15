#ifndef BW1_DECOMP_LH3D_MATH_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_LH3D_MATH_CONSTANTS_INCLUDED_H

const float PI = 3.14159265358979323846f;
// The name is a guess, but not a free one. cl6 orders .bss by a hash of the symbol name: Object3D
// needs this after EighthScale, and GJProperty needs it after <iostream>'s guards, which sort as
// "std". "HALF_PI" sorts ahead of "std". Renaming it will move it: re-check both units' .bss first.
static float PI_OVER_2 = PI * 0.5f;

#elif !defined(BW1_DECOMP_LH3D_MATH_CONSTANTS_USED)
#define BW1_DECOMP_LH3D_MATH_CONSTANTS_USED

// A unit built with a precompiled header that defines PI_OVER_2 holds it only if it uses it.
// Stand-in for the inline code of the original header through which those units use it; nothing calls it.
inline float UsePiOver2()
{
	return PI_OVER_2;
}

#endif /* BW1_DECOMP_LH3D_MATH_CONSTANTS_INCLUDED_H */
