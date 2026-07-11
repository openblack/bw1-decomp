#include "Villager.h"

#include "chlasm/GStates.h"

#include "VillagerInfo.h"
#include "Abode.h"
#include "Town.h"

// BW1W120 0075ff80 BW1M100 10003330 Villager::CheckNeededForSomething(void)
bool32_t Villager::CheckNeededForSomething()
{
	if (GetAbode() == NULL)
	{
		if (CheckHomelessMoveIntoAbode() != 0)
		{
			return true;
		}
	}
	return CheckNeededForSpecial() == 1;
}

// BW1W120 00760010 BW1M100 10096ee0 Villager::CheckNeededForSpecial(void)
bool32_t Villager::CheckNeededForSpecial()
{
	if (CheckNeededForWorship() == 1)
	{
		return true;
	}
	if (CheckNeededForCivic() == 1)
	{
		return true;
	}
	return CheckSatisfyOwnDesire(((const GVillagerInfo*)info)->OwnDesireThreshold) == 1;
}

// BW1W120 00761360 BW1M100 10092350 Villager::CheckHomelessMoveIntoAbode(void)
bool32_t Villager::CheckHomelessMoveIntoAbode()
{
	Town*  town = GetTown();
	Abode* abode;
	if (town == NULL || (abode = town->FindAbodeWithSpaceInTown(this, 0.0f)) == NULL)
	{
		return 0;
	}
	town->HomelessList.Remove(this);
	abode->AddVillagerToAbode(this);
	SetTopState(VILLAGER_STATE_GO_HOME);
	return 1;
}
