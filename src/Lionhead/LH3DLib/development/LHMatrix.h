#ifndef BW1_DECOMP_LH_MATRIX_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

struct LHMatrix
{
	float m[0xc]; /* 0x0 */

	// Static methods

	// BW1W120 00403530 BW1M100 inlined LHMatrix::Translation(const LHPoint&)
	static LHMatrix Translation(const LHPoint& translation);
	// BW1W120 00403570 BW1M100 inlined LHMatrix::PostTranslation(const LHPoint&)
	static LHMatrix PostTranslation(const LHPoint& translation);

	// Non-virtual methods

	// BW1W120 00403500 BW1M100 100417d0 LHMatrix::SetIdentityMatrix(void)
	void SetIdentityMatrix();
	// BW1W120 007fb290 BW1M100 1004f05c LHMatrix::SetInverse(LHMatrix const &)
	// __fastcall: callers pass the destination in ECX and the source in EDX, no stack args.
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
