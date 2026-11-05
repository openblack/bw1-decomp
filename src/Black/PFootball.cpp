#include "GameTimeConstants.h"
#include "PFootball.h"
#include "FootballInfo.h"
#include "FootballPositionInfo.h"
#include "Villager.h"

MESH_LIST GPFootballInfo::GetMesh() const
{
	return Mesh;
}

bool32_t PFootball::AddPlaytimeVillager(Villager* villager)
{
	return villager->CheckPlaytimeAvailableToPlayPFootball();
}

GPlayer* PFootball::GetPlayer()
{
	return NULL;
}

bool32_t PFootball::IsRepaired()
{
	return GetPercentRepaired() >= 1.0f;
}

bool32_t PFootball::IsBuilt()
{
	if ((FixedFlags & FIXED_FLAG_UNDER_CONSTRUCTION) == FIXED_FLAG_UNDER_CONSTRUCTION)
	{
		return false;
	}
	return GetPercentBuilt() >= 1.0f;
}

uint32_t PFootball::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 0;
}

MESH_LIST PFootball::GetMesh() const
{
	return info->GetMesh();
}

void PFootball::Draw()
{
	MultiMapFixed::Draw();
}

GBaseInfo* GPFootballInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = FOOTBALL_INFO_LAST;
	return Infos;
}

GBaseInfo* GPFootballPositionInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = FOOTBALL_POSITION_INFO_LAST;
	return Infos;
}
