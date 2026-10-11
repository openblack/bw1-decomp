#include "GameTimeConstants.h"
#include "PrayerSite.h"

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
