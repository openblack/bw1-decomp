#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "TotemStatue.h"

#include "TotemStatueInfo.h"
#include "TownCentre.h"

#include "ColourConstants.h" /* For White */

GTotemStatueInfo GTotemStatueInfo::Infos[TRIBE_TYPE_LAST];

bool TotemStatue::InteractsWithPhysicsObjects()
{
	return false;
}

SCRIPT_OBJECT_TYPE TotemStatue::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_TOTEM_STATUE;
}

void TotemStatue::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

float TotemStatue::GetWorshipSpeed()
{
	return WorshipSpeed;
}

Town* TotemStatue::GetTown()
{
	if (town_centre.Get() != NULL)
	{
		return town_centre.Get()->GetTown();
	}
	return NULL;
}

bool32_t TotemStatue::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
	return true;
}

GBaseInfo* GTotemStatueInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TRIBE_TYPE_LAST;
	return Infos;
}
