#ifndef BW1_DECOMP_RANK_INFO_INCLUDED_H
#define BW1_DECOMP_RANK_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GRankInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GRankInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 006e0870 mac 10133c10 GRankInfo::_dt(void)
void __fastcall __dt__9GRankInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGRankInfo@@UAEPAXI@Z");
// win1.41 006e0810 mac 101340a0 GRankInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__9GRankInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GRankInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_RANK_INFO_INCLUDED_H */
