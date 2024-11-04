#ifndef BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DSmoke;

struct LH3DSpriteObject
{
  struct LH3DObject super;  /* 0x0 */
  struct LH3DSmoke* smoke;  /* 0x7c */
};
static_assert(sizeof(struct LH3DSpriteObject) == 0x80, "Data type is of wrong size");

static struct LH3DObjectVftable* const __vt__16LH3DSpriteObject = (struct LH3DObjectVftable* const)0x009a34d0;

// Constructors

// win1.41 00815380 mac 10078250 LH3DSpriteObject::LH3DSpriteObject(long)
struct LH3DSpriteObject* __fastcall __ct__16LH3DSpriteObjectFl(struct LH3DSpriteObject* this, const void* edx, int type);

#endif /* BW1_DECOMP_LH3D_SPRITE_OBJECT_INCLUDED_H */
