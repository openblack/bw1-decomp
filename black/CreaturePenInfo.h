#ifndef BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GCreaturePenInfo
{
  struct GCitadelPartInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GCreaturePenInfo) == 0x134, "Data type is of wrong size");

// Override methods

// win1.41 004eee30 mac 10274c20 GCreaturePenInfo::_dt(void)
void __fastcall __dt__16GCreaturePenInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGCreaturePenInfo@@UAEPAXI@Z");
// win1.41 004eedc0 mac 102755a0 GCreaturePenInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GCreaturePenInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GCreaturePenInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H */
