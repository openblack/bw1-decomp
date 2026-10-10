#include "GameTimeConstants.h"
#include "TownCentre.h"

#include "TotemStatue.h"

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
