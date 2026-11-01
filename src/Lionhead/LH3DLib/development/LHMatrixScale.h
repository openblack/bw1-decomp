#ifndef BW1_DECOMP_LH_MATRIX_SCALE_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_SCALE_INCLUDED_H

#include "LHMatrix.h" /* For struct LHMatrix */

// Inliner IL size: 136
// BW1W120 inlined BW1M119 inlined
inline void PostScale(LHMatrix& matrix, float x, float y, float z)
{
	matrix.m[0] *= x;
	matrix.m[3] *= x;
	matrix.m[6] *= x;
	matrix.m[9] *= x;
	matrix.m[1] *= y;
	matrix.m[4] *= y;
	matrix.m[7] *= y;
	matrix.m[10] *= y;
	matrix.m[2] *= z;
	matrix.m[5] *= z;
	matrix.m[8] *= z;
	matrix.m[11] *= z;
}

#endif /* BW1_DECOMP_LH_MATRIX_SCALE_INCLUDED_H */
