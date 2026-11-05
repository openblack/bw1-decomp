#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "TotemStatue.h"

#include "TotemStatueInfo.h"
#include "Town.h"
#include "TownCentre.h"

#include "ColourConstants.h" /* For White */

GTotemStatueInfo GTotemStatueInfo::Infos[TRIBE_TYPE_LAST];

void TotemStatue::ToBeDeleted(bool32_t delete_now)
{
	DeleteDependancys();
	MultiMapFixed::ToBeDeleted(delete_now);
}

void TotemStatue::DeleteDependancys()
{
	if (town_centre.Get())
	{
		town_centre->totem_statue.Clear();
	}
}

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

WorshipSite* TotemStatue::GetWorshipSite()
{
	if (GetTown())
	{
		return GetTown()->GetWorshipSite();
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
