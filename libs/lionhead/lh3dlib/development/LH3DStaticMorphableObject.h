#ifndef BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

struct LH3DStaticMorphableObject
{
  struct LH3DStaticObject super;  /* 0x0 */
  uint32_t field_0x80;
};
static_assert(sizeof(struct LH3DStaticMorphableObject) == 0x84, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a2e30 mac 101ca694 LH3DStaticMorphableObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__25LH3DStaticMorphableObject asm("??_R4LH3DStaticMorphableObject@@6B@");
// win1.41 009a2e34 mac 101ca6bc LH3DStaticMorphableObject::`vftable'
extern const struct LH3DObjectVftable __vt__25LH3DStaticMorphableObject asm("??_7LH3DStaticMorphableObject@@6B@");

// Constructors

// win1.41 inlined mac 100826b0 LH3DStaticMorphableObject::LH3DStaticMorphableObject(void)
struct LH3DStaticMorphableObject* __fastcall __ct__25LH3DStaticMorphableObjectFv(struct LH3DStaticMorphableObject* this) asm("??0LH3DStaticMorphableObject@@QAE@XZ");

#endif /* BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H */
