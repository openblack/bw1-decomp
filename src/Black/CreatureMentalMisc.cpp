#include "MultiMapFixed.h"
#include "CreatureMentalLearnAction.h"
#include "Creature.h" /* For Creature */
#include "Abode.h"    /* For Abode */
#include "Town.h"     /* For Town */

bool32_t MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature* creature)
{
	if (GetPercentBuilt() < 1.0f || (Damaged == true && GetLife() < 1.0f))
	{
		return true;
	}
	return false;
}

GBaseInfo* CreatureActionKnownAboutEntry::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_ACTION_KNOWN_ABOUT_LAST;
	return NormalActionKnownAboutInfo;
}

float Creature::MaximumPickUpWeight()
{
	return GetWeight() * 0.8f;
}

bool32_t Creature::CanBePickedUpByCreature(Creature* creature)
{
	return false;
}

Abode* Town::GetMostImportantAbodeOnFire()
{
	Abode* found = NULL;
	for (Abode* abode = AbodeList.head; abode != NULL; abode = abode->next)
	{
		if (abode->IsOnFire())
		{
			if (abode->IsStoragePit(NULL) || abode->IsTownCentre())
			{
				return abode;
			}
			found = abode;
		}
	}
	return found;
}
