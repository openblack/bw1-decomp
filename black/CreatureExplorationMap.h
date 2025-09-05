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

// win1.41 008d00dc mac 1098b8d8 CreatureExplorationMap::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__22CreatureExplorationMap asm("??_R4CreatureExplorationMap@@6B@");

// win1.41 008d00e0 mac 1098b8e0 CreatureExplorationMap::`vftable'
extern const struct BaseVftable __vt__22CreatureExplorationMap asm("??_7CreatureExplorationMap@@6B@");

#endif /* BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H */
