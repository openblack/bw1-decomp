#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Villager.h" /* For struct Villager */

// Forward Declares

struct GSpecialVillagerInfo;
struct GVillagerInfo;
struct MapCoords;

struct SpecialVillager
{
  struct Villager super;  /* 0x0 */
  uint32_t field_0x134;  /* 0x130 */
};
static_assert(sizeof(struct SpecialVillager) == 0x134, "Data type is of wrong size");

static struct VillagerVftable* const __vt__15SpecialVillager = (struct VillagerVftable* const)0x008e15b4;

// Static methods

// win1.41 0071f1a0 mac 10147420 SpecialVillager::Create(MapCoords const &, GVillagerInfo const *, unsigned long, int, GSpecialVillagerInfo *)
struct SpecialVillager* __cdecl Create__15SpecialVillagerFRC9MapCoordsPC13GVillagerInfoUliP20GSpecialVillagerInfo(const struct MapCoords* coords, const struct GVillagerInfo* villager_info, uint32_t age, bool skeleton, struct GSpecialVillagerInfo* info);

// Non-virtual methods

// win1.41 0071f470 mac 101470a0 SpecialVillager::CanShowName(void)
bool __fastcall CanShowName__15SpecialVillagerFv(struct SpecialVillager* this);

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INCLUDED_H */
