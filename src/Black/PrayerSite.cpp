#include "GameTimeConstants.h"
#include "PrayerSite.h"
#include "PrayerIconInfo.h"
#include "PrayerSiteInfo.h"

void PrayerSite::ToBeDeleted(int param_1) {}

GPlayer* PrayerSite::GetPlayer()
{
	return NULL;
}

Town* PrayerSite::GetTown()
{
	return NULL;
}

bool32_t PrayerSite::CreatureMustAvoid(Creature* param_1)
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
	info_count = PLAYER_INFO_LAST;
	return Infos;
}
