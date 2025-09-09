#ifndef BW1_DECOMP_VORTEX_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GVortexInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GVortexInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 005fd3f0 mac 103b8d80 GVortexInfo::_dt(void)
void __fastcall __dt__11GVortexInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGVortexInfo@@UAEPAXI@Z");
// win1.41 005fd390 mac 103b9150 GVortexInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GVortexInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GVortexInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_VORTEX_INFO_INCLUDED_H */
