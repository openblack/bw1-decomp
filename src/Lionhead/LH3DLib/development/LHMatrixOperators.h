#ifndef BW1_DECOMP_LH_MATRIX_OPERATORS_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_OPERATORS_INCLUDED_H

#include "LHMatrix.h" /* For struct LHMatrix */

#ifdef VERSION_BW1WCI
// BW1WCI inlined BW1MCI119 inlined
inline void operator+=(LHMatrix& matrix, const LHMatrix& other)
{
	matrix.m[0] += other.m[0];
	matrix.m[1] += other.m[1];
	matrix.m[2] += other.m[2];
	matrix.m[3] += other.m[3];
	matrix.m[4] += other.m[4];
	matrix.m[5] += other.m[5];
	matrix.m[6] += other.m[6];
	matrix.m[7] += other.m[7];
	matrix.m[8] += other.m[8];
	matrix.m[9] += other.m[9];
	matrix.m[10] += other.m[10];
	matrix.m[11] += other.m[11];
}

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
