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
	uint32_t field_0x124;

	// Override methods

	// BW1W120 0077eb70 BW1M119 015bb120
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count)
	{
		info_count = WORSHIP_SITE_UPGRADE_INFO_LAST;
		return Infos;
	}

	// Static data

	// BW1W120 00dcc9a0
	static GWorshipSiteUpgradeInfo Infos[WORSHIP_SITE_UPGRADE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 015bafe0
	static GWorshipSiteUpgradeInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in WorshipSiteUpgrade.h.
	INFO_DATA_BLOCK(field_0x124, field_0x124)
	INFO_DERIVED_LOADERS(GFeatureInfo, "WorshipSiteUpgrade.h", 13)
};

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INFO_INCLUDED_H */
