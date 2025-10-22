#ifndef BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DMesh;
struct LHPoint;

struct LH3DMeshedObject
{
  struct LH3DObject super;  /* 0x0 */
  struct LH3DMesh* mesh;  /* 0x7c */
};
static_assert(sizeof(struct LH3DMeshedObject) == 0x80, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a2744 mac 101ca644 LH3DMeshedObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16LH3DMeshedObject asm("??_R4LH3DMeshedObject@@6B@");
// win1.41 009a2748 mac 101ca65c LH3DMeshedObject::`vftable'
extern const struct LH3DObjectVftable __vt__16LH3DMeshedObject asm("??_7LH3DMeshedObject@@6B@");

// Static methods

// win1.41 007f9d60 mac 10029180 LH3DMeshedObject::SetDrawWithGlobalAlpha(int) (this is fastcall, not thiscall)
void __fastcall SetDrawWithGlobalAlpha__16LH3DMeshedObjectFi(struct LH3DMeshedObject* this, int value) asm("?SetDrawWithGlobalAlpha@LH3DMeshedObject@@SAXH@Z");
// win1.41 007f9fb0 mac 1000bf70 LH3DMeshedObject::GetDoorPos(LHPoint *) const (this is fastcall, not thiscall)
bool __fastcall GetDoorPos__16LH3DMeshedObjectCFP7LHPoint(struct LH3DMeshedObject* this, struct LHPoint* out_point);

// Constructors

// win1.41 008164b0 mac 10076460 LH3DMeshedObject::LH3DMeshedObject(void)
struct LH3DMeshedObject* __fastcall __ct__16LH3DMeshedObjectFv(struct LH3DMeshedObject* this) asm("??0LH3DMeshedObject@@QAE@XZ");

#endif /* BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H */
