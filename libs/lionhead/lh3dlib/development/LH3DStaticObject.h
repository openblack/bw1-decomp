#ifndef BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

struct LH3DStaticObject
{
  struct LH3DMeshedObject super;  /* 0x0 */
};
static_assert(sizeof(struct LH3DStaticObject) == 0x80, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a2970 mac 101ca668 LH3DStaticObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16LH3DStaticObject asm("??_R4LH3DStaticObject@@6B@");
// win1.41 009a2974 mac 101ca688 LH3DStaticObject::`vftable'
extern const struct LH3DObjectVftable __vt__16LH3DStaticObject asm("??_7LH3DStaticObject@@6B@");

// Constructors

// win1.41 00816540 mac 100763e0 LH3DStaticObject::LH3DStaticObject(void)
struct LH3DStaticObject* __fastcall __ct__16LH3DStaticObjectFv(struct LH3DStaticObject* this) asm("??0LH3DStaticObject@@QAE@XZ");

#endif /* BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H */
