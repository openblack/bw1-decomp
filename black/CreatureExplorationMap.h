#ifndef BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H
#define BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

struct CreatureExplorationMap
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  struct MapCoords coords;
  uint16_t field_0x18[0x40][0x40];
};
static_assert(sizeof(struct CreatureExplorationMap) == 0x2018, "Data type is of wrong size");

static struct BaseVftable* __vt__22CreatureExplorationMap = (struct BaseVftable*)0x008d00e0;

#endif /* BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H */
