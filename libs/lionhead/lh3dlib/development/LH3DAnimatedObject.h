#ifndef BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

struct LH3DAnimatedObject
{
  struct LH3DMeshedObject super;  /* 0x0 */
  uint32_t current_anim;  /* 0x80 */
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  uint32_t field_0xa0;
};
static_assert(sizeof(struct LH3DAnimatedObject) == 0xa4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a329c mac 101cc084 LH3DAnimatedObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18LH3DAnimatedObject asm("??_R4LH3DAnimatedObject@@6B@");
// win1.41 009a32a0 mac 101cc08c LH3DAnimatedObject::`vftable'
extern const struct LH3DObjectVftable __vt__18LH3DAnimatedObject asm("??_7LH3DAnimatedObject@@6B@");

// Constructors

// win1.41 inlined mac inlined LH3DAnimatedObject::LH3DAnimatedObject(void)
struct LH3DAnimatedObject* __fastcall __ct__18LH3DAnimatedObjectFv(struct LH3DAnimatedObject* this) asm("??0LH3DAnimatedObject@@QAE@XZ");

#endif /* BW1_DECOMP_LH3D_ANIMATED_OBJECT_INCLUDED_H */
