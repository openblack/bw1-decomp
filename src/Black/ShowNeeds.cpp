#include "ShowNeeds.h"

#include "GameThingWithPos.h"

GPlayer* ShowNeeds::GetPlayer()
{
	if (thing.Get() != NULL)
	{
		return thing.Get()->GetPlayer();
	}
	return NULL;
}
