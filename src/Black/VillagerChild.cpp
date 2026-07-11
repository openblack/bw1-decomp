#include "Villager.h"

#include "chlasm/GStates.h"

#include "VillagerInfo.h"

// BW1W120 00757e80 BW1M100 10084940 Villager::CheckChild(void)
uint32_t Villager::CheckChild()
{
	if (IsChild() == false)
	{
		return GoHome();
	}
	if (IsMotherAlive() == false)
	{
		mother = NULL;
	}
	if (IsHungry())
	{
		return GoHome();
	}
	return 0;
}

// BW1W120 00757ec0 BW1M100 105744c0 Villager::ChildDecideWhatToDo(void)
bool32_t Villager::ChildDecideWhatToDo()
{
	if (CheckChild() != true && ChildAtCreche() != true && ChildGotoCreche() == false)
	{
		SetTopState(VILLAGER_STATE_CHILD_FOLLOWS_MOTHER);
	}
	return true;
}

// BW1W120 00757f40 BW1M100 10095500 Villager::IsMotherAlive(void)
bool32_t Villager::IsMotherAlive()
{
	Villager* m = mother;
	if (m != NULL && m->IsAvailable() == 1 &&
	    ((const GVillagerInfo*)m->info)->TribeType == ((const GVillagerInfo*)info)->TribeType && m->IsAMother() == 1 &&
	    (m->status & 1) != 1)
	{
		return true;
	}
	return false;
}
