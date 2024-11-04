#ifndef BW1_DECOMP_WATERFALL_INCLUDED_H
#define BW1_DECOMP_WATERFALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Object.h" /* For struct Object */

struct GWaterfall
{
  struct Object super;  /* 0x0 */
  uint8_t field_0x54[0x4];
};
static_assert(sizeof(struct GWaterfall) == 0x58, "Data type is of wrong size");

static struct ObjectVftable* const __vt__10GWaterfall = (struct ObjectVftable* const)0x008ec14c;

DECLARE_LH_LIST_HEAD(GWaterfall);

#endif /* BW1_DECOMP_WATERFALL_INCLUDED_H */
