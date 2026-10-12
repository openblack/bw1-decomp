#include "WorshipSiteUpgrade.h"
#include "WorshipSiteUpgradeInfo.h"

GBaseInfo* GWorshipSiteUpgradeInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = WORSHIP_SITE_UPGRADE_INFO_LAST;
	return Infos;
}
