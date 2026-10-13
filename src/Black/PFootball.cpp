#include "GameTimeConstants.h"
#include "PFootball.h"
#include "FootballInfo.h"
#include "FootballPositionInfo.h"

GPlayer* PFootball::GetPlayer()
{
	return NULL;
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
