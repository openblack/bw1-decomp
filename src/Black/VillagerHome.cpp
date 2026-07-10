#include "Villager.h"

#include "chlasm/GStates.h"

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
