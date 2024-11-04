#ifndef BW1_DECOMP_P_SYS_BASE_INCLUDED_H
#define BW1_DECOMP_P_SYS_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "GameThing.h" /* For struct GameThing */

struct PSysBase
{
  struct GameThing super;  /* 0x0 */
};
static_assert(sizeof(struct PSysBase) == 0x14, "Data type is of wrong size");

static struct GameThingVftable* __vt__8PSysBase = (struct GameThingVftable*)0x008c9c34;

#endif /* BW1_DECOMP_P_SYS_BASE_INCLUDED_H */
