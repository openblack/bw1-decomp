#ifndef BW1_DECOMP_LH_MATRIX_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <math.h>   /* For cos, sin */

#include "LHPoint.h" /* For struct LHPoint */

struct LHMatrix
{
	float m[0xc]; /* 0x0 */

	// Non-virtual methods

	// BW1W120 00403500 BW1M100 100417d0 LHMatrix::SetIdentityMatrix(void)
	void SetIdentityMatrix()
	{
		m[11] = 0.0f;
		m[10] = 0.0f;
		m[9] = 0.0f;
		m[7] = 0.0f;
		m[6] = 0.0f;
		m[5] = 0.0f;
		m[3] = 0.0f;
		m[2] = 0.0f;
		m[1] = 0.0f;
		m[8] = 1.0f;
		m[4] = 1.0f;
		m[0] = 1.0f;
	}
	// BW1W120 00403530 BW1M100 inlined LHMatrix::Translation(const LHPoint&)
	void __fastcall Translation(const LHPoint& translation)
	{
		SetIdentityMatrix();
		m[9] = translation.x;
		m[10] = translation.y;
		m[11] = translation.z;
	}
	// BW1W120 00403570 BW1M100 inlined LHMatrix::PostTranslation(const LHPoint&)
	void __fastcall PostTranslation(const LHPoint& translation)
	{
		m[9] = translation.x + m[9];
		m[10] = translation.y + m[10];
		m[11] = translation.z + m[11];
	}
	// BW1W120 007fb290 BW1M100 1004f05c LHMatrix::SetInverse(LHMatrix const &)
	void __fastcall SetInverse(const LHMatrix& r);
	// BW1W120 inlined BW1M100 10027e00 LHMatrix::TransformPoint(LHPoint &) const
	void TransformPoint(LHPoint& point) const
	{
		float x = point.x;
		float y = point.y;
		float z = point.z;
		point.x = m[0] * x + m[3] * y + m[6] * z + m[9];
		point.y = m[1] * x + m[4] * y + m[7] * z + m[10];
		point.z = m[2] * x + m[5] * y + m[8] * z + m[11];
	}
};

#endif /* BW1_DECOMP_LH_MATRIX_INCLUDED_H */
