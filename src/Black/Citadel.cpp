#include <stddef.h> /* For NULL in intrusive-list templates */
#include "Citadel.h"
#include "Game.h"

// BW1W120 00464090 BW1M100 1002dc30 Citadel::GetInfluence(void)
float Citadel::GetInfluence()
{
	return GGame::g_game->PlayerInfluenceMultiplier * influence;
}

WorshipSite* Citadel::FindOrCreateWorshipSite(const GTribeInfo* tribe_info)
{
	WorshipSite* result = FindTribeWorshipSite(tribe_info);
	if (result == NULL)
	{
		result = RequestANewWorshipSite(tribe_info);
	}
	return result;
}
