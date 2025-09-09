#ifndef BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureInitialDesireInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureInitialDesireInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004918a0 mac 1022e850 CreatureInitialDesireInfo::_dt(void)
void __fastcall __dt__25CreatureInitialDesireInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureInitialDesireInfo@@UAEPAXI@Z");
// win1.41 00491830 mac 1022ec70 CreatureInitialDesireInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__25CreatureInitialDesireInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureInitialDesireInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H */
