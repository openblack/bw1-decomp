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

// Override methods

// win1.41 004df5c0 mac 10246800 CreatureExplorationMap::_dt(void)
void __fastcall __dt__22CreatureExplorationMapFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureExplorationMap@@UAEPAXI@Z");

struct CreatureExplorationRegionEntry
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureExplorationRegionEntry) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004df430 mac 10260660 CreatureExplorationRegionEntry::_dt(void)
void __fastcall __dt__30CreatureExplorationRegionEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureExplorationRegionEntry@@UAEPAXI@Z");

struct CreatureGlobalExplorationMap
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureGlobalExplorationMap) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004df450 mac 102605a0 CreatureGlobalExplorationMap::_dt(void)
void __fastcall __dt__28CreatureGlobalExplorationMapFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureGlobalExplorationMap@@UAEPAXI@Z");
// win1.41 004dfbd0 mac 10260d20 CreatureGlobalExplorationMap::Dump(void)
void __fastcall Dump__28CreatureGlobalExplorationMapFv(struct Base* this) asm("?Dump@CreatureGlobalExplorationMap@@UAEXXZ");

#endif /* BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H */
