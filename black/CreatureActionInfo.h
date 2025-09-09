#ifndef BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureActionInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureActionInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004917c0 mac 1022eaa0 CreatureActionInfo::_dt(void)
void __fastcall __dt__18CreatureActionInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureActionInfo@@UAEPAXI@Z");
// win1.41 00491750 mac 1022ebc0 CreatureActionInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__18CreatureActionInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureActionInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H */
