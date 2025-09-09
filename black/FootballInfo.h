#ifndef BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GPFootballInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPFootballInfo) == 0x120, "Data type is of wrong size");

// Override methods

// win1.41 00643620 mac 10111690 GPFootballInfo::_dt(void)
void __fastcall __dt__14GPFootballInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPFootballInfo@@UAEPAXI@Z");
// win1.41 006435d0 mac 10111730 GPFootballInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GPFootballInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPFootballInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 006435c0 mac 10111320 GPFootballInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__14GPFootballInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GPFootballInfo@@UBEIXZ");

#endif /* BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H */
