#include "GameTimeConstants.h"
#include "PrayerSite.h"
#include "PrayerIconInfo.h"
#include "PrayerSiteInfo.h"
#include "WorshipSpellIcon.h"

uint32_t PrayerIcon::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_MOBILE_OBJECT;
}

GPlayer* PrayerIcon::GetPlayer()
{
	return NULL;
}

Town* PrayerIcon::GetTown()
{
	return NULL;
}

Citadel* PrayerIcon::GetCitadel()
{
	return NULL;
}

void PrayerIcon::ToBeDeleted(int param_1) {}

void PrayerIcon::Draw() {}

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
