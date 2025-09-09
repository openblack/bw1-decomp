#ifndef BW1_DECOMP_CITADEL_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GCitadelInfo
{
  struct GContainerInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GCitadelInfo) == 0x148, "Data type is of wrong size");

// Override methods

// win1.41 004629d0 mac 101bb390 GCitadelInfo::_dt(void)
void __fastcall __dt__12GCitadelInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGCitadelInfo@@UAEPAXI@Z");
// win1.41 00462980 mac 101bb430 GCitadelInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__12GCitadelInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GCitadelInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CITADEL_INFO_INCLUDED_H */
