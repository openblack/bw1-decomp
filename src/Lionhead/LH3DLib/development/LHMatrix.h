#ifndef BW1_DECOMP_LH_MATRIX_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct LHPoint;

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
	void SetInverse(const LHMatrix* r);
};

#endif /* BW1_DECOMP_LH_MATRIX_INCLUDED_H */
