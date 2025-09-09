#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSpecialVillagerInfo
{
  struct GBaseInfo super;  /* 0x0 */
  char name[0x30];  /* 0x10 */
  uint32_t field_0x40;
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  int field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
};
static_assert(sizeof(struct GSpecialVillagerInfo) == 0x60, "Data type is of wrong size");

// win1.41 00980564 mac 1075b7e4 GSpecialVillagerInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__20GSpecialVillagerInfo asm("??_R4GSpecialVillagerInfo@@6B@");

// win1.41 00980568 mac 1075b7ec GSpecialVillagerInfo::`vftable'
extern const struct GBaseInfoVftable __vt__20GSpecialVillagerInfo asm("??_7GSpecialVillagerInfo@@6B@");

// Override methods

// win1.41 0071f880 mac 10146650 GSpecialVillagerInfo::_dt(void)
void __fastcall __dt__20GSpecialVillagerInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpecialVillagerInfo@@UAEPAXI@Z");
// win1.41 0071ee80 mac 101463b0 GSpecialVillagerInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__20GSpecialVillagerInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpecialVillagerInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H */
