#include "GameTimeConstants.h"
#include "PrayerSite.h"
#include "PrayerIconInfo.h"
#include "PrayerSiteInfo.h"

GPrayerSiteInfo GPrayerSiteInfo::Infos[PRAYER_SITE_INFO_LAST];
GPrayerIconInfo GPrayerIconInfo::Infos[PRAYER_ICON_INFO_LAST];

void PrayerSite::ToBeDeleted(int delete_now) {}

GPlayer* PrayerSite::GetPlayer()
{
	return NULL;
}

Town* PrayerSite::GetTown()
{
	return NULL;
}

bool32_t PrayerSite::CreatureMustAvoid(Creature* creature)
{
	return false;
}

MESH_LIST PrayerSite::GetMesh() const
{
	return info->GetMesh();
}

GBaseInfo* GPrayerSiteInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = PRAYER_SITE_INFO_LAST;
	return Infos;
}

GBaseInfo* GPrayerIconInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = PRAYER_ICON_INFO_LAST;
	return Infos;
}
