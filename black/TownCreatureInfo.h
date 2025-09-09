#ifndef BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct TownCreatureInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct TownCreatureInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 007437d0 mac 10557190 TownCreatureInfo::_dt(void)
void __fastcall __dt__16TownCreatureInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownCreatureInfo@@UAEPAXI@Z");
// win1.41 007437c0 mac 10558ea0 TownCreatureInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16TownCreatureInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@TownCreatureInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H */
