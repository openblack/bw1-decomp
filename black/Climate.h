#ifndef BW1_DECOMP_CLIMATE_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "GameThing.h" /* For struct GameThing */

struct GClimate
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x74];
};
static_assert(sizeof(struct GClimate) == 0x88, "Data type is of wrong size");

static struct GameThingVftable* __vt__8GClimate = (struct GameThingVftable*)0x008f9f9c;

DECLARE_LH_LINKED_LIST(GClimate);

#endif /* BW1_DECOMP_CLIMATE_INCLUDED_H */
