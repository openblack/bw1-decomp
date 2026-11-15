#ifndef BW1_DECOMP_LH3D_SCALE_CONSTANTS_INCLUDED_H
#define BW1_DECOMP_LH3D_SCALE_CONSTANTS_INCLUDED_H

inline float GetOneEighth()
{
	return 0.125f;
}

// The name is a guess, but not a free one. cl6 orders .bss by a hash of the symbol name, not
// by include or definition order. Container's target needs this one after SecondsPerYear and
// Object3D's needs it ahead of PI_OVER_2; of the descriptive candidates tried ("OneEighth",
// "ScaleEighth", "Eighth", "ONE_EIGHTH", ...) only "EighthScale" sorts between the two.
// Renaming it will move it: re-check both units' .bss first.
static float EighthScale = GetOneEighth();

#elif !defined(BW1_DECOMP_LH3D_SCALE_CONSTANTS_USED)
#define BW1_DECOMP_LH3D_SCALE_CONSTANTS_USED

// A unit built with a precompiled header that defines EighthScale holds it only if it uses it.
// Stand-in for the inline code of the original header through which those units use it; nothing calls it.
inline float UseEighthScale()
{
	return EighthScale;
}

#endif /* BW1_DECOMP_LH3D_SCALE_CONSTANTS_INCLUDED_H */
