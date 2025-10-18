#ifndef BW1_DECOMP_LH_MATRIX_INCLUDED_H
#define BW1_DECOMP_LH_MATRIX_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct LHPoint;

struct LHMatrix
{
  float m[0xc];  /* 0x0 */
};
static_assert(sizeof(struct LHMatrix) == 0x30, "Data type is of wrong size");

// Static methods

// win1.41 00403530 mac inlined LHMatrix::Translation(const LHPoint&)
void __fastcall Translation__8LHMatrixFv(struct LHMatrix* this, const struct LHPoint* translation) asm("?Translation@LHMatrix@@QAEXABVLHPoint@@@Z");
// win1.41 00403570 mac inlined LHMatrix::PostTranslation(const LHPoint&)
void __fastcall PostTranslation__8LHMatrixFRC7LHPoint(struct LHMatrix* this, struct LHPoint* translation) asm("?PostTranslation@LHMatrix@@QAEXAAULHPoint@@@Z");

// Non-virtual methods

// win1.41 00403500 mac 100417d0 LHMatrix::SetIdentityMatrix(void)
void __fastcall SetIdentity__8LHMatrixFv(struct LHMatrix* this) asm("?SetIdentity@LHMatrix@@QAEXXZ");
// win1.41 007fb290 mac 1004f05c LHMatrix::SetInverse(LHMatrix const &)
void __fastcall SetInverse__8LHMatrixFRC8LHMatrix(struct LHMatrix* this, const void* edx, const struct LHMatrix* r) asm("?SetInverse@LHMatrix@@QAEXAAU1@@Z");

#endif /* BW1_DECOMP_LH_MATRIX_INCLUDED_H */
