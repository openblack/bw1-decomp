#ifndef BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H
#define BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSpotVisualInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSpotVisualInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 0063e070 mac 101102f0 GSpotVisualInfo::_dt(void)
void __fastcall __dt__15GSpotVisualInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpotVisualInfo@@UAEPAXI@Z");
// win1.41 0063e020 mac 10110f10 GSpotVisualInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__15GSpotVisualInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpotVisualInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H */
