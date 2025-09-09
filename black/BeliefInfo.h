#ifndef BW1_DECOMP_BELIEF_INFO_INCLUDED_H
#define BW1_DECOMP_BELIEF_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GBeliefInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GBeliefInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00437db0 mac 100b22b0 GBeliefInfo::_dt(void)
void __fastcall __dt__11GBeliefInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBeliefInfo@@UAEPAXI@Z");
// win1.41 00437d60 mac 100b2260 GBeliefInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GBeliefInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GBeliefInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_BELIEF_INFO_INCLUDED_H */
