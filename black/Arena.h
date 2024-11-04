#ifndef BW1_DECOMP_ARENA_INCLUDED_H
#define BW1_DECOMP_ARENA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

struct GArena
{
  struct GameThingWithPos super;  /* 0x0 */
  uint8_t field_0x28[0x24];
};
static_assert(sizeof(struct GArena) == 0x4c, "Data type is of wrong size");

static struct GameThingVftable* __vt__6GArena = (struct GameThingVftable*)0x008c2c98;

DECLARE_LH_LIST_HEAD(GArena);

#endif /* BW1_DECOMP_ARENA_INCLUDED_H */
