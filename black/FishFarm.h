#ifndef BW1_DECOMP_FISH_FARM_INCLUDED_H
#define BW1_DECOMP_FISH_FARM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/ver5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Villager.h" /* For struct Villager */

// Forward Declares

struct GFishFarmInfo;
struct MapCoords;
struct Town;

struct FishFarm
{
  struct MultiMapFixed super;  /* 0x0 */
  struct FishFarm* next;  /* 0x7c */
  struct LHLinkedList__Villager villagers;  /* 0x80 */
  uint32_t field_0x88;
  struct Town* town;
  float field_0x90;
  float field_0x94;
};
static_assert(sizeof(struct FishFarm) == 0x98, "Data type is of wrong size");

// win1.41 008dadbc mac 107402f8 FishFarm::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8FishFarm asm("??_R4FishFarm@@6B@");

// win1.41 008dadc0 mac 10740300 FishFarm::`vftable'
extern const struct MultiMapFixedVftable __vt__8FishFarm asm("??_7FishFarm@@6B@");

// Constructors

// win1.41 0052c360 mac 100dd070 FishFarm::FishFarm(MapCoords const &, GFishFarmInfo const *, Town *)
struct FishFarm* __fastcall __ct__8FishFarmFRC9MapCoordsPC13GFishFarmInfoP4Town(struct FishFarm* this, const void* edx, struct MapCoords* coords, struct GFishFarmInfo* info, struct Town* town);

DECLARE_LH_LINKED_LIST(FishFarm);
DECLARE_LH_LIST_HEAD(FishFarm);

#endif /* BW1_DECOMP_FISH_FARM_INCLUDED_H */
