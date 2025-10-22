#ifndef BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

// Forward Declares

struct LH3DObjectHair;
struct LHMatrix;

struct LH3DComplexObject
{
  struct LH3DStaticObject super;  /* 0x0 */
  struct LHMatrix* matrix_0x80;
  uint32_t* field_0x84;
  struct LH3DObjectHair* hair;
  uint32_t field_0x8c;
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  struct LH3DComplexObject* next;  /* 0xb0 */
  uint32_t field_0xb4;
  uint32_t field_0xb8;
  uint32_t field_0xbc;
};
static_assert(sizeof(struct LH3DComplexObject) == 0xc0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a3064 mac 101cbdfc LH3DComplexObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17LH3DComplexObject asm("??_R4LH3DComplexObject@@6B@");
// win1.41 009a3068 mac 101cbe04 LH3DComplexObject::`vftable'
extern const struct LH3DObjectVftable __vt__17LH3DComplexObject asm("??_7LH3DComplexObject@@6B@");

// Constructors

// win1.41 inlined mac inlined LH3DComplexObject::LH3DComplexObject(void)
struct LH3DComplexObject* __fastcall __ct__17LH3DComplexObjectFv(struct LH3DComplexObject* this) asm("??0LH3DComplexObject@@QAE@XZ");

// Non-virtual methods

// win1.41 0080c020 mac 10081d10 LH3DComplexObject::CreateDynamicShadow
void __fastcall CreateDynamicShadow__17LH3DComplexObjectFv(struct LH3DComplexObject* this) asm("?CreateDynamicShadow@LH3DComplexObject@@QAEXXZ");

#endif /* BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H */
