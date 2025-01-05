#ifndef BW1_DECOMP_STREET_LIGHT_INCLUDED_H
#define BW1_DECOMP_STREET_LIGHT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct GStreetLight
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
};
static_assert(sizeof(struct GStreetLight) == 0x2c, "Data type is of wrong size");

static struct GameThingWithPosVftable* const __vt__12GStreetLight = (struct GameThingWithPosVftable* const)0x008eb138;

DECLARE_LH_LIST_HEAD(GStreetLight);

#endif /* BW1_DECOMP_STREET_LIGHT_INCLUDED_H */
