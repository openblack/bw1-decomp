#ifndef BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct DifferentCreatureInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct DifferentCreatureInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00472d50 mac 101d2170 DifferentCreatureInfo::_dt(void)
void __fastcall __dt__21DifferentCreatureInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GDifferentCreatureInfo@@UAEPAXI@Z");
// win1.41 00472cf0 mac 101e2a50 DifferentCreatureInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__21DifferentCreatureInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@DifferentCreatureInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_DIFFERENT_CREATURE_INFO_INCLUDED_H */
