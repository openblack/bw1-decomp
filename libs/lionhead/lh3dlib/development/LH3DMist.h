#ifndef BW1_DECOMP_LH3D_MIST_INCLUDED_H
#define BW1_DECOMP_LH3D_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

struct LH3DMist
{
  struct LH3DStaticObject super;  /* 0x0 */
  uint32_t field_0x80;
  uint32_t field_0x84;
  float field_0x88;
  float field_0x8c;
  uint32_t field_0x90;
  struct LH3DMist* next;
  uint32_t field_0x98;
};
static_assert(sizeof(struct LH3DMist) == 0x9c, "Data type is of wrong size");

static struct LH3DObjectVftable* const __vt__8LH3DMist = (struct LH3DObjectVftable* const)0x009a22e8;

// Constructors

// win1.41 007f9560 mac 100b45b0 LH3DMist::LH3DMist(void)
struct LH3DMist* __fastcall __ct__8LH3DMistFv(struct LH3DMist* this);

#endif /* BW1_DECOMP_LH3D_MIST_INCLUDED_H */
