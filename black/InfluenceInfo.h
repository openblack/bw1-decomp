#ifndef BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GInfluenceInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GInfluenceInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 005cd150 mac 100fd4f0 GInfluenceInfo::_dt(void)
void __fastcall __dt__14GInfluenceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGInfluenceInfo@@UAEPAXI@Z");
// win1.41 005cd110 mac 100fd4a0 GInfluenceInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GInfluenceInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GInfluenceInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H */
