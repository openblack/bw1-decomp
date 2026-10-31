#include "HelpSystem.h"

#include <string.h> /* For memset */

#include "Game.h"
#include "HelpProfile.h"
#include "MagicInfo.h"
#include "Player.h"
#include "Rand.h"
#include "SpellSeed.h"

const float BanterDelay = 120.0f;
const float RepeatMessageDelay = 1200.0f;
const float LongRepeatMessageDelay = 5760.0f;

#include "GameTimeConstants.h"

#define HELP_SYSTEM_MAX_SENT_COUNT_DIVISOR 15
#define HELP_SYSTEM_ONE_IN_TWENTY          20
#define HELP_SYSTEM_ONE_IN_FIVE            5

void HelpSystem::ProcessConditions()
{
	memset(Conditions, 0, sizeof(Conditions));
	Conditions[HELP_SYSTEM_CONDITION_ALWAYS] = true;
	HelpSystem* helpSystem = GGame::g_game->help_system;
	if (!helpSystem->WideScreen || !helpSystem->GetWideScreenControl())
	{
		Conditions[HELP_SYSTEM_CONDITION_BANTER] =
			GGame::g_game->help_profile->GetTimeSinceTrigger(HELP_EVENT_TYPE_43) > BanterDelay;
	}
}

bool32_t HelpSystem::ConditionSuccess(Object* object, HELP_SYSTEM_MESSAGE_SET set, HELP_SYSTEM_CONDITION condition)
{
	uint32_t count;
	switch (condition)
	{
	case HELP_SYSTEM_CONDITION_ALWAYS:
	case HELP_SYSTEM_CONDITION_BANTER:
	case HELP_SYSTEM_CONDITION_7:
	case HELP_SYSTEM_CONDITION_LOOK_CLOSE_AT_LAND:
	case HELP_SYSTEM_CONDITION_COLLIDE_WITH_INCLUSION:
	case HELP_SYSTEM_CONDITION_LOOK_AT_SKY:
		return Conditions[condition];
	case HELP_SYSTEM_CONDITION_SPELL_SEED_NOT_ENABLED:
		if (object == NULL)
		{
			return false;
		}
		if (!object->IsSpellSeed())
		{
			return false;
		}
		return MessageSetSentCount[set] == 0 &&
		       !GGame::g_game->MyPlayer()->IsMagicTypeEnabled(((SpellSeed*)object)->GetMagicInfo()->GetMagicType());
	case HELP_SYSTEM_CONDITION_5:
	case HELP_SYSTEM_CONDITION_6:
		return MessageSetSentCount[set] == 0 && Conditions[condition];
	case HELP_SYSTEM_CONDITION_SOME_OF_THE_TIME:
		if (object == NULL)
		{
			return false;
		}
		count = MessageSetSentCount[set];
		return count == 0 || object->GetUniqueId() % count == 0;
	case HELP_SYSTEM_CONDITION_SOME_OF_THE_TIME_CAPPED:
		if (object == NULL)
		{
			return false;
		}
		count = MessageSetSentCount[set];
		return count == 0 || object->GetUniqueId() % min(count, HELP_SYSTEM_MAX_SENT_COUNT_DIVISOR) == 0;
	case HELP_SYSTEM_CONDITION_NOT_SENT_FOR_A_LONG_TIME:
		return HasTimeElaspedSinceMessageSent(set, LongRepeatMessageDelay);
	case HELP_SYSTEM_CONDITION_ONE_IN_TWENTY:
		return GRand::LocalRand(HELP_SYSTEM_ONE_IN_TWENTY) == 0;
	case HELP_SYSTEM_CONDITION_ONE_IN_FIVE:
		return GRand::LocalRand(HELP_SYSTEM_ONE_IN_FIVE) == 0;
	case HELP_SYSTEM_CONDITION_NOT_SENT_FOR_A_WHILE:
		return MessageSetSentCount[set] == 0 ||
		       (HasTimeElaspedSinceMessageSent(set, RepeatMessageDelay) &&
		        GGame::g_game->help_profile->GetTimeSinceTrigger(HELP_EVENT_TYPE_11) != 0.0f);
	case HELP_SYSTEM_CONDITION_FIRST_TIME:
	case HELP_SYSTEM_CONDITION_NEVER_SENT:
		return MessageSetSentCount[set] == 0;
	}
	return Conditions[condition];
}
