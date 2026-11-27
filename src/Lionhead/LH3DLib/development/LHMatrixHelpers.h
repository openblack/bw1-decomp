#ifndef BW1_DECOMP_LH_MATRIX_HELPERS_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_HELPERS_INCLUDED_H

#include <math.h> /* For cos, sin */

#include "LHMatrix.h" /* For struct LHMatrix */
#include "LHPoint.h"  /* For struct LHPoint */

// These can't live in LHMatrix.h: every game unit sees that header through BlackPCH.h, so declaring them there moves
// c2's symbol numbering and takes matched functions such as WorshipSite::SaveObject out of their matching windows.

// Inliner IL size: 77, plus the nested SetIdentity
// BW1W120 inlined BW1M119 inlined
inline void SetRotationZ(LHMatrix& matrix, float angle)
{
	matrix.SetIdentity();
	matrix.m[0] = matrix.m[4] = cos(angle);
	matrix.m[3] = sin(angle);
	matrix.m[1] = -matrix.m[3];
}

// Inliner IL size: 56
// BW1W120 inlined BW1M119 inlined
inline float TransformX(const LHPoint& point, const LHMatrix& matrix)
{
	return point.x * matrix._11 + point.y * matrix._21 + point.z * matrix._31 + matrix._41;
}

// Inliner IL size: 56
// BW1W120 inlined BW1M119 inlined
inline float TransformY(const LHPoint& point, const LHMatrix& matrix)
{
	return point.x * matrix._12 + point.y * matrix._22 + point.z * matrix._32 + matrix._42;
}

// Inliner IL size: 56
// BW1W120 inlined BW1M119 inlined
inline float TransformZ(const LHPoint& point, const LHMatrix& matrix)
{
	return point.x * matrix._13 + point.y * matrix._23 + point.z * matrix._33 + matrix._43;
}

#endif /* BW1_DECOMP_LH_MATRIX_HELPERS_INCLUDED_H */
