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

// win1.41 00403570 mac inlined LHMatrix::PostTranslation(const LHPoint&)
void __fastcall PostTranslation__8LHMatrixFRC7LHPoint(struct LHMatrix* this, struct LHPoint* translation);

// Non-virtual methods

// win1.41 inlined mac inlined LHMatrix::operator=(LHMatrix const &)
struct LHMatrix* __fastcall __as__8LHMatrixFRC8LHMatrix(struct LHMatrix* this, const void* edx, const struct LHMatrix* other);
// win1.41 inlined mac inlined LHMatrix::IdentityMatrix(void)
struct LHMatrix* __fastcall IdentityMatrix__8LHMatrixFv(struct LHMatrix* this);
// win1.41 inlined mac inlined LHMatrix::TranslationMatrix(LHPoint*)
struct LHMatrix* __fastcall TranslationMatrix__LHMatrixFP7LHPoint(struct LHMatrix* this, const void* edx, struct LHPoint* translation);
// win1.41 inlined mac inlined LHMatrix::ScaleTranslationMatrix(LHPoint*,float)
struct LHMatrix* __fastcall ScaleTranslationMatrix__8LHMatrixFP7LHPointf(struct LHMatrix* this, const void* edx, struct LHPoint* translation, float scale);
// win1.41 inlined mac inlined LHMatrix::RotationScaleTranslationMatrix(LHPoint*,float,float)
struct LHMatrix* __fastcall RotationScaleTranslationMatrix__8LHMatrixFP7LHPointff(struct LHMatrix* this, const void* edx, struct LHPoint* translation, float y_angle, float scale);
// win1.41 inlined mac inlined LHMatrix::operator*(LHPoint const &) const
struct LHPoint* __fastcall __ml__8LHMatrixCFRC7LHPoint(const struct LHMatrix* this, const void* edx, struct LHPoint* out_point, const struct LHPoint* point);
// win1.41 007fb290 mac 1004f05c LHMatrix::SetInverse(LHMatrix const &)
void __fastcall SetInverse__8LHMatrixFRC8LHMatrix(struct LHMatrix* this, const void* edx, const struct LHMatrix* r);

#endif /* BW1_DECOMP_LH_MATRIX_INCLUDED_H */