#include "PrayerSite.h"
#include "PrayerSiteInfo.h"
#include "PrayerIconInfo.h"
#include "GameTimeConstants.h"
#include "WorshipSpellIcon.h"

inline MESH_LIST GPrayerSiteInfo::GetMesh() const
{
	return Mesh;
}

inline GBaseInfo* GPrayerSiteInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}

GPrayerSiteInfo GPrayerSiteInfo::Infos[PRAYER_SITE_INFO_LAST];

inline GBaseInfo* GPrayerIconInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = ARRAY_SIZE(Infos);
	return Infos;
}

GPrayerIconInfo GPrayerIconInfo::Infos[PRAYER_ICON_INFO_LAST];

#ifndef VERSION_BW1W100
MESH_LIST PrayerSite::GetMesh() const
{
	return info->GetMesh();
}
#endif

void PrayerSite::ToBeDeleted(bool32_t delete_now) {}

uint32_t PrayerSite::Process()
{
	return 3;
}

GPlayer* PrayerSite::GetPlayer()
{
	return NULL;
}

Town* PrayerSite::GetTown()
{
	return MultiMapFixed::GetTown();
}

bool32_t PrayerSite::CreatureMustAvoid(Creature* creature)
{
	return false;
}

uint32_t PrayerIcon::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_MOBILE_OBJECT;
}

#ifndef VERSION_BW1W100
MESH_LIST PrayerIcon::GetMesh() const
{
	return SingleMapFixed::GetMesh();
}
#endif

uint32_t PrayerIcon::Process()
{
	return 3;
}
