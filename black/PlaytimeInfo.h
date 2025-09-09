#ifndef BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GPlaytimeInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPlaytimeInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 0066c330 mac 10115d70 GPlaytimeInfo::_dt(void)
void __fastcall __dt__13GPlaytimeInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPlaytimeInfo@@UAEPAXI@Z");
// win1.41 0066c2d0 mac 10115f30 GPlaytimeInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__13GPlaytimeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPlaytimeInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H */
