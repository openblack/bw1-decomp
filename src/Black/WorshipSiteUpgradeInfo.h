#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GWorshipSiteUpgradeInfo: public GFeatureInfo
{
public:

    // Override methods

    // win1.41 0077ebc0 mac 105b4170 GWorshipSiteUpgradeInfo::_dt(void)
    virtual ~GWorshipSiteUpgradeInfo();
    // win1.41 0077eb70 mac 105b4210 GWorshipSiteUpgradeInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H */
