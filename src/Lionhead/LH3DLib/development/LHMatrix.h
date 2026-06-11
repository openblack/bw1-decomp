#ifndef BW1_DECOMP_LH_MATRIX_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct LHPoint;

struct LHMatrix
{
    float m[0xc]; /* 0x0 */

    // Static methods

    // win1.41 00403530 mac inlined LHMatrix::Translation(const LHPoint&)
    static void Translation(LHMatrix* this, const LHPoint* translation);
    // win1.41 00403570 mac inlined LHMatrix::PostTranslation(const LHPoint&)
    static void PostTranslation(LHMatrix* this, LHPoint* translation);

    // Non-virtual methods

    // win1.41 00403500 mac 100417d0 LHMatrix::SetIdentityMatrix(void)
    void SetIdentityMatrix();
    // win1.41 007fb290 mac 1004f05c LHMatrix::SetInverse(LHMatrix const &)
    void SetInverse(const LHMatrix* r);
};

#endif /* BW1_DECOMP_LH_MATRIX_INCLUDED_H */
