#ifndef BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureMimicInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureMimicInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004e9cf0 mac 1026ea60 CreatureMimicInfo::_dt(void)
void __fastcall __dt__17CreatureMimicInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureMimicInfo@@UAEPAXI@Z");
// win1.41 004e9c80 mac 1026ff90 CreatureMimicInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__17CreatureMimicInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureMimicInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_MIMIC_INFO_INCLUDED_H */
