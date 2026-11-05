#include "MultiMapFixed.h"
#include "Creature.h" /* For Creature */
#include "Abode.h"    /* For Abode */
#include "Town.h"     /* For Town */
#include "OneOffSpellSeed.h"
#include "StoragePit.h"
#include "Villager.h"

bool32_t MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature* creature)
{
	if (GetPercentBuilt() < 1.0f || (Damaged == true && GetLife() < 1.0f))
	{
		return true;
	}
	return false;
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

bool32_t Villager::IsVillagerNotWorshipping(Creature* creature)
{
	return !IsDancing();
}

bool32_t OneOffSpellSeed::CanBeEatenByCreature(Creature* creature)
{
	return false;
}

bool32_t Villager::CanHaveMagicFoodCastOnMe(Creature* creature)
{
	return false;
}

bool32_t StoragePit::CanHaveMagicWoodCastOnMe(Creature* creature)
{
	return true;
}
