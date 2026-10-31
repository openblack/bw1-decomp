#include "HelpSystem.h"

#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "Rand.h"

void HelpSystem::ProcessBanter()
{
	if (Conditions[HELP_SYSTEM_CONDITION_BANTER])
	{
		HELP_SYSTEM_MESSAGE_SET set = GetRandomBanterSet();
		RunMessageSet(set, NULL);
	}
}

HELP_SYSTEM_MESSAGE_SET HelpSystem::GetRandomBanterSet()
{
	if (NumBanterSetsSent >= HELP_SYSTEM_NUM_BANTER_SETS)
	{
		NumBanterSetsSent = 0;
		for (uint32_t i = HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST; i < HELP_SYSTEM_MESSAGE_BANTER_SET_LAST; i++)
		{
			MessageSetSentCount[i] = 0;
		}
		return HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST;
	}
	int      numUnsent = HELP_SYSTEM_NUM_BANTER_SETS - NumBanterSetsSent;
	uint32_t choice = GRand::LocalRand(numUnsent);
	for (uint32_t set = HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST; set < HELP_SYSTEM_MESSAGE_BANTER_SET_LAST; set++)
	{
		if (MessageSetSentCount[set] == 0 && choice-- <= 0)
		{
			NumBanterSetsSent++;
			return (HELP_SYSTEM_MESSAGE_SET)set;
		}
	}
	NumBanterSetsSent = 0;
	for (uint32_t j = HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST; j < HELP_SYSTEM_MESSAGE_BANTER_SET_LAST; j++)
	{
		MessageSetSentCount[j] = 0;
	}
	return HELP_SYSTEM_MESSAGE_BANTER_SET_FIRST;
}

void HelpSystem::TriggerCategory(HELP_SET_CATEGORY category)
{
	CategoryTriggerTime[category] = GGame::g_game->data.GameTurn;
}
