#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GWorshipSiteUpgradeInfo
{
  struct GFeatureInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GWorshipSiteUpgradeInfo) == 0x120, "Data type is of wrong size");

// Override methods

// win1.41 0077ebc0 mac 105b4170 GWorshipSiteUpgradeInfo::_dt(void)
void __fastcall __dt__23GWorshipSiteUpgradeInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGWorshipSiteUpgradeInfo@@UAEPAXI@Z");
// win1.41 0077eb70 mac 105b4210 GWorshipSiteUpgradeInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__23GWorshipSiteUpgradeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GWorshipSiteUpgradeInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H */
