#include <re_common.h> /* For ARRAY_SIZE */

#include "GameTimeConstants.h"
#include "TownSpellIcon.h"

#include "Game.h"             /* For class GGame */
#include "GameOSFile.h"       /* For class GameOSFile */
#include "SpellSeedGraphic.h" /* For class SpellSeedGraphic */
#include "Town.h"             /* For class Town */

TownSpellIcon::~TownSpellIcon() {}

void TownSpellIcon::ToBeDeleted(int delete_now)
{
	if (GetTown())
	{
		GetTown()->RemoveSpellIcon(this);
		town = NULL;
	}
	SpellIcon::ToBeDeleted(delete_now);
}

GPlayer* TownSpellIcon::GetPlayer()
{
	if (GetTown())
	{
		return GetTown()->GetPlayer();
	}
	return NULL;
}

uint32_t TownSpellIcon::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 1;
}

WorshipSite* TownSpellIcon::GetWorshipSite()
{
	if (GetTown())
	{
		return GetTown()->GetWorshipSite();
	}
	return NULL;
}

bool32_t TownSpellIcon::Save(GameOSFile& file)
{
	if (SpellIcon::Save(file))
	{
		file.WritePtr(town.Get());
		return true;
	}
	return false;
}

bool32_t TownSpellIcon::Load(GameOSFile& file)
{
	if (SpellIcon::Load(file))
	{
		file.ReadPtr((GameThing**)&town);
		return true;
	}
	return false;
}

TownCentreSpellIcon::~TownCentreSpellIcon() {}

void TownCentreSpellIcon::SetToZero()
{
	for (int i = 0; i < POWER_UP_TYPE_LAST; i++)
	{
		PowerUpEnabled[i] = 0;
	}
}

void TownCentreSpellIcon::SetPULevel(POWER_UP_TYPE power_up_type, bool enabled)
{
	PowerUpEnabled[power_up_type] = enabled;
	UpdateGraphicWithPULevels();
}

void TownCentreSpellIcon::UpdateGraphicWithPULevels()
{
	POWER_UP_TYPE level = POWER_UP_TYPE_NONE;
	for (int i = 0; i < POWER_UP_TYPE_LAST; i++)
	{
		if (PowerUpEnabled[i])
		{
			level = (POWER_UP_TYPE)i;
		}
	}
	if (graphic.Get())
	{
		graphic.Get()->SetPowerUpType(level);
	}
}
