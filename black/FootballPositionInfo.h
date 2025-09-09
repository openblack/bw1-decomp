#ifndef BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GFootballPositionInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFootballPositionInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00530f60 mac 102bcb80 GFootballPositionInfo::_dt(void)
void __fastcall __dt__21GFootballPositionInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFootballPositionInfo@@UAEPAXI@Z");
// win1.41 00530f00 mac 102bd7f0 GFootballPositionInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__21GFootballPositionInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GFootballPositionInfo@@UAEPAVGBaseInfo@@AAI@Z");

struct GPFootballPositionInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPFootballPositionInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 006436f0 mac 101113c0 GPFootballPositionInfo::_dt(void)
void __fastcall __dt__22GPFootballPositionInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPFootballPositionInfo@@UAEPAXI@Z");
// win1.41 00643690 mac 10111790 GPFootballPositionInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__22GPFootballPositionInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPFootballPositionInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H */
