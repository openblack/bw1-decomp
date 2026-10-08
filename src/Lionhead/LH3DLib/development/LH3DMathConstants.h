#ifndef BW1_DECOMP_LH3D_MATH_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_LH3D_MATH_CONSTANTS_INCLUDED_H

const float PI = 3.14159265358979323846f;
// The name is a guess, but not a free one. cl6 orders .bss by a hash of the symbol name: Object3D
// needs this after EighthScale, and GJProperty needs it after <iostream>'s guards, which sort as
// "std". "HALF_PI" sorts ahead of "std". Renaming it will move it: re-check both units' .bss first.
static float PI_OVER_2 = PI * 0.5f;

#endif /* BW1_DECOMP_LH3D_MATH_CONSTANTS_INCLUDED_H */
