#ifndef BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GClimateRainInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GClimateRainInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00773ce0 mac 105a3a30 GClimateRainInfo::_dt(void)
void __fastcall __dt__16GClimateRainInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGClimateRainInfo@@UAEPAXI@Z");
// win1.41 00773c90 mac 105a39e0 GClimateRainInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GClimateRainInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GClimateRainInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H */
