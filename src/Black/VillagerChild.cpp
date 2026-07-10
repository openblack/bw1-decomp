#include "Villager.h"

#include "chlasm/GStates.h"

// BW1W120 00757e80 BW1M100 10084940 Villager::CheckChild(void)
uint32_t Villager::CheckChild()
{
	if (IsChild() == 0)
	{
		return GoHome();
	}
	if (IsMotherAlive() == 0)
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
	if (CheckChild() != 1 && ChildAtCreche() != 1 && ChildGotoCreche() == 0)
	{
		SetTopState(VILLAGER_STATE_CHILD_FOLLOWS_MOTHER);
	}
	return true;
}
