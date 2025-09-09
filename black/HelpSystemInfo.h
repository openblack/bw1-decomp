#ifndef BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H
#define BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct HelpSystemInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct HelpSystemInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 005c53f0 mac 10351af0 HelpSystemInfo::_dt(void)
void __fastcall __dt__14HelpSystemInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GHelpSystemInfo@@UAEPAXI@Z");
// win1.41 005c53a0 mac 10351aa0 HelpSystemInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14HelpSystemInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@HelpSystemInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H */
