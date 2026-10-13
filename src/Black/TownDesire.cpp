#include "GameTimeConstants.h"
#include "TownDesire.h"
#include "TownDesireFlags.h"
#include "TownDesireInfo.h"

bool TownDesireFlags::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t TownDesireFlags::CreatureMustAvoid(Creature*)
{
	return false;
}

GBaseInfo* GTownDesireInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TOWN_DESIRE_INFO_LAST;
	return InfoList;
}

TownDesire::~TownDesire() {}
