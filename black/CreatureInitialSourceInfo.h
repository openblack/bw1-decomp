#ifndef BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureInitialSourceInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureInitialSourceInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004dd2c0 mac 1025d520 CreatureInitialSourceInfo::_dt(void)
void __fastcall __dt__25CreatureInitialSourceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureInitialSourceInfo@@UAEPAXI@Z");
// win1.41 004dd260 mac 1025eee0 CreatureInitialSourceInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__25CreatureInitialSourceInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureInitialSourceInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H */
