#ifndef BW1_DECOMP_POT_INFO_INCLUDED_H
#define BW1_DECOMP_POT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GPotInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPotInfo) == 0x114, "Data type is of wrong size");

// Override methods

// win1.41 0066cc40 mac 10117210 GPotInfo::_dt(void)
void __fastcall __dt__8GPotInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPotInfo@@UAEPAXI@Z");
// win1.41 0066cbd0 mac 1011d400 GPotInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__8GPotInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPotInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_POT_INFO_INCLUDED_H */
