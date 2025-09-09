#ifndef BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H
#define BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GToolTipsInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GToolTipsInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 005c9a40 mac 10354310 GToolTipsInfo::_dt(void)
void __fastcall __dt__13GToolTipsInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGToolTipsInfo@@UAEPAXI@Z");
// win1.41 005c99e0 mac 10354720 GToolTipsInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__13GToolTipsInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GToolTipsInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H */
