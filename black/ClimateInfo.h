#ifndef BW1_DECOMP_CLIMATE_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GClimateInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GClimateInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00770ff0 mac 105a16b0 GClimateInfo::_dt(void)
void __fastcall __dt__12GClimateInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGClimateInfo@@UAEPAXI@Z");
// win1.41 00770f80 mac 105a3780 GClimateInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__12GClimateInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GClimateInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CLIMATE_INFO_INCLUDED_H */
