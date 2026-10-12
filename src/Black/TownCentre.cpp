#include "GameTimeConstants.h"
#include "TownCentre.h"

#include "TotemStatue.h"
#include "TownSpellIcon.h" /* For TownCentreSpellIcon */

bool TownCentre::InteractsWithPhysicsObjects()
{
	return true;
}

void TownCentre::AddToPlayer()
{
	if (totem_statue.Get() != NULL)
	{
		totem_statue.Get()->AddToPlayer();
	}
}

int TownCentre::GetSpellIconIndex(SpellIcon* icon)
{
	for (int i = 0; i < MAX_TOWN_CENTRE_SPELLS; i++)
	{
		if (icons[i] == icon)
		{
			return i;
		}
	}
	return 0;
}

void TownCentre::RemoveSpellFromArray(TownCentreSpellIcon* icon)
{
	for (int i = 0; i < MAX_TOWN_CENTRE_SPELLS; i++)
	{
		if (icon == icons[i])
		{
			icons[i] = NULL;
		}
	}
}
