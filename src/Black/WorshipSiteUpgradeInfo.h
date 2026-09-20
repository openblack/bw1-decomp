#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GWorshipSiteUpgradeInfo : public GFeatureInfo
{
public:
	// Override methods

	// BW1W120 0077ebc0 BW1M100 105b4170 GWorshipSiteUpgradeInfo::_dt(void)
	virtual ~GWorshipSiteUpgradeInfo();
	// BW1W120 0077eb70 BW1M100 105b4210 GWorshipSiteUpgradeInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H */
