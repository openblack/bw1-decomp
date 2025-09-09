#ifndef BW1_DECOMP_JOB_INFO_INCLUDED_H
#define BW1_DECOMP_JOB_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GJobInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GJobInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 005e1720 mac 100fe5c0 GJobInfo::_dt(void)
void __fastcall __dt__8GJobInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGJobInfo@@UAEPAXI@Z");
// win1.41 005e16c0 mac 100fe6d0 GJobInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__8GJobInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GJobInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_JOB_INFO_INCLUDED_H */
