#ifndef BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GPrayerSiteInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPrayerSiteInfo) == 0x120, "Data type is of wrong size");

// Override methods

// win1.41 006706c0 mac 1011ea20 GPrayerSiteInfo::_dt(void)
void __fastcall __dt__15GPrayerSiteInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPrayerSiteInfo@@UAEPAXI@Z");
// win1.41 00670670 mac 1011eb00 GPrayerSiteInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__15GPrayerSiteInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPrayerSiteInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00670660 mac 1011eac0 GPrayerSiteInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__15GPrayerSiteInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GPrayerSiteInfo@@UBEIXZ");

#endif /* BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H */
