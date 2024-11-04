#ifndef BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

struct LH3DStaticMorphableObject
{
  struct LH3DStaticObject super;  /* 0x0 */
  uint32_t field_0x80;
};
static_assert(sizeof(struct LH3DStaticMorphableObject) == 0x84, "Data type is of wrong size");

static struct LH3DObjectVftable* __vt__25LH3DStaticMorphableObject = (struct LH3DObjectVftable*)0x009a2e34;

// Constructors

// win1.41 inlined mac 100826b0 LH3DStaticMorphableObject::LH3DStaticMorphableObject(void)
struct LH3DStaticMorphableObject* __fastcall __ct__25LH3DStaticMorphableObjectFv(struct LH3DStaticMorphableObject* this);

#endif /* BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H */
