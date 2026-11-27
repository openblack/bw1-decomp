#ifndef BW1_DECOMP_LH_MATRIX_OPERATORS_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_OPERATORS_INCLUDED_H

#include "LHMatrix.h" /* For struct LHMatrix */

// These can't live in LHMatrix.h: Object.cpp sees that header ahead of its code, so declaring them there moves c2's
// symbol numbering and takes Creature Isle's Object::SetUpPhysObAsATree out of its matching window.

// Inliner IL size: 134
// BW1W120 0086dac0 BW1M119 inlined
inline void __fastcall PostScale(LHMatrix& matrix, float scale)
{
	matrix.m[0] *= scale;
	matrix.m[3] *= scale;
	matrix.m[6] *= scale;
	matrix.m[9] *= scale;
	matrix.m[1] *= scale;
	matrix.m[4] *= scale;
	matrix.m[7] *= scale;
	matrix.m[10] *= scale;
	matrix.m[2] *= scale;
	matrix.m[5] *= scale;
	matrix.m[8] *= scale;
	matrix.m[11] *= scale;
}

#ifdef VERSION_BW1WCI
// BW1WCI inlined BW1MCI119 inlined
inline void operator*=(LHMatrix& matrix, float scale)
{
	matrix.m[0] *= scale;
	matrix.m[1] *= scale;
	matrix.m[2] *= scale;
	matrix.m[3] *= scale;
	matrix.m[4] *= scale;
	matrix.m[5] *= scale;
	matrix.m[6] *= scale;
	matrix.m[7] *= scale;
	matrix.m[8] *= scale;
	matrix.m[9] *= scale;
	matrix.m[10] *= scale;
	matrix.m[11] *= scale;
}
#endif

#endif /* BW1_DECOMP_LH_MATRIX_OPERATORS_INCLUDED_H */
