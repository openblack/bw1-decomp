#ifndef BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H
#define BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSpellSystemInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSpellSystemInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 0072ae00 mac 1052de00 GSpellSystemInfo::_dt(void)
void __fastcall __dt__16GSpellSystemInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpellSystemInfo@@UAEPAXI@Z");
// win1.41 0072adb0 mac 1052dea0 GSpellSystemInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GSpellSystemInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpellSystemInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SPELL_SYSTEM_INFO_INCLUDED_H */
