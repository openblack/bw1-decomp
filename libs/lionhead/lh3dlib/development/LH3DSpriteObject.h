#ifndef BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <reversing_utils/re_rtti.h> /* For struct RTTICompleteObjectLocator */

#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DSmoke;

struct LH3DSpriteObject
{
  struct LH3DObject super;  /* 0x0 */
  struct LH3DSmoke* smoke;  /* 0x7c */
};
static_assert(sizeof(struct LH3DSpriteObject) == 0x80, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009a34cc mac 101cc748 LH3DSpriteObject::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16LH3DSpriteObject asm("??_R4LH3DSpriteObject@@6B@");
// win1.41 009a34d0 mac 101cc750 LH3DSpriteObject::`vftable'
extern const struct LH3DObjectVftable __vt__16LH3DSpriteObject asm("??_7LH3DSpriteObject@@6B@");

// Constructors

// win1.41 00815380 mac 10078250 LH3DSpriteObject::LH3DSpriteObject(long)
struct LH3DSpriteObject* __fastcall __ct__16LH3DSpriteObjectFl(struct LH3DSpriteObject* this, const void* edx, int type) asm("??0LH3DSpriteObject@@QAE@J@Z");

#endif /* BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H */
