#ifndef BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

struct LH3DStaticObject
{
  struct LH3DMeshedObject super;  /* 0x0 */
};
static_assert(sizeof(struct LH3DStaticObject) == 0x80, "Data type is of wrong size");

static struct LH3DObjectVftable* const __vt__16LH3DStaticObject = (struct LH3DObjectVftable* const)0x009a2974;

// Constructors

// win1.41 00816540 mac 100763e0 LH3DStaticObject::LH3DStaticObject(void)
struct LH3DStaticObject* __fastcall __ct__16LH3DStaticObjectFv(struct LH3DStaticObject* this);

#endif /* BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H */
