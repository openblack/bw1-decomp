#ifndef BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureSourceBoundsInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureSourceBoundsInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004dd400 mac 1025eab0 CreatureSourceBoundsInfo::_dt(void)
void __fastcall __dt__24CreatureSourceBoundsInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureSourceBoundsInfo@@UAEPAXI@Z");
// win1.41 004dd3a0 mac 1025ee20 CreatureSourceBoundsInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__24CreatureSourceBoundsInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureSourceBoundsInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H */
