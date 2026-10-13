#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GWorshipSiteUpgradeInfo : public GFeatureInfo
{
public:
	float Scale;

	// Override methods

	// BW1W120 0077eb70 BW1M119 015bb120
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count);

	// Static data

	// BW1W120 00dcc9a0
	static GWorshipSiteUpgradeInfo Infos[WORSHIP_SITE_UPGRADE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 015bafe0
	static GWorshipSiteUpgradeInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in WorshipSiteUpgrade.h.
	INFO_DATA_BLOCK(Scale, Scale)
	INFO_DERIVED_LOADERS(GFeatureInfo, "WorshipSiteUpgrade.h", 13)
};

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H */
