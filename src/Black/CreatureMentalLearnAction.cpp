#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "CreatureMental.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureActionPrerequisite.h"
#include "CreatureMentalLearnAction.h"
#include "Game.h"
#include "GameInfo.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "MagicEffectInfo.h"
#include "MagicInfo.h"
#include "SpellSeedInfo.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureMentalLearnAction.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalLearnAction.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalLearnAction.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalLearnAction.cpp"
#endif

#define MAGIC_ACTION_SEEN_AGAIN_GAME_TURNS      50
#define MAGIC_ACTION_RECENTLY_LEARNT_SIGHTINGS  3.0f
#define NEARLY_LEARNT_MAGIC_ACTION_FRACTION     0.75f
#define NEARLY_LEARNT_NORMAL_ACTION_LIGHTBULB   0.5f
#define ROPE_LEASH_EXTRA_MAGIC_ACTION_SIGHTINGS 2
#define MIN_NORMAL_ACTION_SIGHTINGS             1

CreatureActionsKnownAbout::CreatureActionsKnownAbout(const CreatureInfo* info) {}

CreatureActionsKnownAbout::~CreatureActionsKnownAbout()
{
	for (int type = 0; type < CREATURE_ACTION_LEARNING_TYPE_LAST; type++)
	{
		ActionsKnown[type].DeleteAll();
	}
}

float CreatureLearning::GetSkillAtAction(CREATURE_ACTION action)
{
	float skill = NumTimesActionPerformed[action] / CreatureActionInfo::GetInfo()[action].FullSkillCount;
	if (skill < 0.0f)
	{
		return 0.0f;
	}
	if (skill > 1.0f)
	{
		return 1.0f;
	}
	return skill;
}

void CreatureLearning::SetSkillAtAction(CREATURE_ACTION action, float skill)
{
	NumTimesActionPerformed[action] = (uint32_t)(skill * CreatureActionInfo::GetInfo()[action].FullSkillCount);
}

bool32_t CreatureMental::ConsiderLearningAction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action)
{
	if (!debug.IsProcessing)
	{
		return false;
	}

	if (CreatureActionPrerequisite::Table[type][action].Type != CREATURE_ACTION_LEARNING_TYPE_NONE &&
	    !ActionsKnownAbout.KnowsAction(CreatureActionPrerequisite::Table[type][action].Type,
	                                   CreatureActionPrerequisite::Table[type][action].Action))
	{
		return false;
	}

	bool32_t learnt = false;
	switch (type)
	{
	case CREATURE_ACTION_LEARNING_TYPE_NORMAL:
		if (creature->DevelopmentPhase >=
		    CreatureActionKnownAboutEntry::GetNormalActionKnownAboutInfo()[action].DevelopmentPhase)
		{
			if (learning.GameTurnNormalActionFirstSeen[action] == 0)
			{
				learning.GameTurnNormalActionFirstSeen[action] = GGame::g_game->data.GameTurn;
			}
			learning.NumTimesNormalActionSeen[action]++;
			if (learning.NumTimesNormalActionSeen[action] >= MIN_NORMAL_ACTION_SIGHTINGS &&
			    (GGame::g_game->data.GameTurn - learning.GameTurnNormalActionFirstSeen[action]) /
			            GGameInfo::Info.NumGameTicksPerSecond() >=
			        CreatureActionKnownAboutEntry::GetNormalActionKnownAboutInfo()[action].SecondsToLearn)
			{
				learnt = true;
				if (!ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, action))
				{
					creature->CreateLightbulb(1.0f);
				}
				ActionsKnownAbout.AddActionLearnt(creature, type, action, true);
			}
			else if (!ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, action))
			{
				creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_NEARLY_LEARNT_NORMAL_ACTION, action,
				                                  NULL, NULL, 0);
				creature->CreateLightbulb(NEARLY_LEARNT_NORMAL_ACTION_LIGHTBULB);
			}
		}
		else
		{
			creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_CANT_LEARN_NORMAL_ACTION_YET, action, NULL,
			                                  NULL, 0);
		}
		break;
	case CREATURE_ACTION_LEARNING_TYPE_MAGIC:
		if (creature->DevelopmentPhase >=
		    CreatureMagicActionKnownAboutEntry::GetMagicActionKnownAboutInfo()[action].DevelopmentPhase)
		{
			if (GGame::g_game->data.GameTurn - learning.GameTurnMagicActionLastSeen[action] >
			        MAGIC_ACTION_SEEN_AGAIN_GAME_TURNS ||
			    learning.GameTurnMagicActionLastSeen[action] == 0)
			{
				learning.NumTimesMagicActionSeen[action]++;
				if (creature->GetInterfaceStatusLeashOn() != NULL &&
				    creature->GetInterfaceStatusLeashOn()->LeashStatus != NULL &&
				    creature->GetInterfaceStatusLeashOn()->LeashStatus->LeashType == LEASH_TYPE_ROPE)
				{
					learning.NumTimesMagicActionSeen[action] += ROPE_LEASH_EXTRA_MAGIC_ACTION_SIGHTINGS;
				}
			}
			learning.GameTurnMagicActionLastSeen[action] = GGame::g_game->data.GameTurn;
			ActionsKnownAbout.AddActionLearnt(creature, type, action, false);

			if (learning.NumTimesMagicActionSeen[action] >=
			    creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(action))
			{
				learnt = true;
				creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_LEARN_MAGIC_ACTION, action, NULL, NULL,
				                                  0);
				if (learning.NumTimesMagicActionSeen[action] -
				        creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(action) <
				    MAGIC_ACTION_RECENTLY_LEARNT_SIGHTINGS)
				{
					creature->CreateLightbulb(1.0f);
				}
			}
			else
			{
				float progress = min(1.0f, learning.NumTimesMagicActionSeen[action] /
				                               creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(action));
				if (progress >= NEARLY_LEARNT_MAGIC_ACTION_FRACTION)
				{
					creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_NEARLY_LEARNT_MAGIC_ACTION, action,
					                                  NULL, NULL, 0);
				}
				creature->CreateLightbulb(progress);
			}
		}
		else
		{
			creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_CANT_LEARN_MAGIC_ACTION_YET, action, NULL,
			                                  NULL, 0);
		}
		break;
	}
	return learnt;
}

void CreatureActionsKnownAbout::ToggleKnowsAction(Creature* creature, CREATURE_ACTION_LEARNING_TYPE type,
                                                  unsigned long action)
{
	for (LHLinkedNode<CreatureActionKnownAbout*>* node = ActionsKnown[type].GetStart(); node != NULL;
	     node = node->next.Get())
	{
		CreatureActionKnownAbout* known = node->payload;
		if (known->Action == action)
		{
			ActionsKnown[type].Remove(known);
			return;
		}
	}
	AddActionLearnt(creature, type, action, true);
}

void CreatureActionsKnownAbout::SetKnowsAction(Creature* creature, CREATURE_ACTION_LEARNING_TYPE type,
                                               unsigned long action, bool32_t knows)
{
	if (knows)
	{
		AddActionLearnt(creature, type, action, true);
		return;
	}
	for (LHLinkedNode<CreatureActionKnownAbout*>* node = ActionsKnown[type].GetStart(); node != NULL;
	     node = node->next.Get())
	{
		CreatureActionKnownAbout* known = node->payload;
		if (known->Action == action)
		{
			ActionsKnown[type].Remove(known);
			return;
		}
	}
}

bool32_t CreatureActionsKnownAbout::KnowsAction(CREATURE_ACTION_LEARNING_TYPE type, unsigned long action)
{
	for (LHLinkedNode<CreatureActionKnownAbout*>* node = ActionsKnown[type].GetStart(); node != NULL;
	     node = node->next.Get())
	{
		if (node->payload->Action == action)
		{
			return true;
		}
	}
	return false;
}

CreatureActionKnownAbout* CreatureActionsKnownAbout::AddActionLearnt(Creature*                     creature,
                                                                     CREATURE_ACTION_LEARNING_TYPE type,
                                                                     unsigned long action, bool32_t show_help)
{
	for (LHLinkedNode<CreatureActionKnownAbout*>* node = ActionsKnown[type].GetStart(); node != NULL;
	     node = node->next.Get())
	{
		CreatureActionKnownAbout* known = node->payload;
		if (known->Action == action)
		{
			return known;
		}
	}

	CreatureActionKnownAbout* learnt = new (FILEPATH, 299) CreatureActionKnownAbout;
	learnt->Action = action;
	ActionsKnown[type].AddToEnd(learnt);

	if (show_help)
	{
		switch (type)
		{
		case CREATURE_ACTION_LEARNING_TYPE_NORMAL:
			if (creature != NULL)
			{
				creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_LEARN_NORMAL_ACTION, action, NULL,
				                                  NULL, 0);
			}
			break;
		case CREATURE_ACTION_LEARNING_TYPE_MAGIC:
			if (creature != NULL)
			{
				creature->SendCandidateHelpScript(CREATURE_HELP_TYPE_SHOW_LESSON_LEARN_MAGIC_ACTION, action, NULL, NULL,
				                                  0);
			}
			break;
		}
	}
	return learnt;
}

bool32_t Creature::PossibilityOfErrorFromLackOfSkill(CREATURE_ACTION action)
{
	return false;
}

uint32_t CreatureMental::GetNumNormalActionsLeftToLearnWhichCanBeTaughtByComputerPlayer()
{
	uint32_t count = 0;
	for (unsigned long action = 0; action < CREATURE_ACTION_KNOWN_ABOUT_LAST; action++)
	{
		if (CreatureActionKnownAboutEntry::GetNormalActionKnownAboutInfo()[action].CanBeTaughtByComputerPlayer &&
		    !ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, action))
		{
			count++;
		}
	}
	return count;
}

uint32_t CreatureMental::GetNumMagicActionsLeftToLearnWhichCanBeTaughtByComputerPlayer()
{
	uint32_t count = 0;
	for (unsigned long action = 0; action < MAGIC_TYPE_LAST; action++)
	{
		if (CreatureMagicActionKnownAboutEntry::GetMagicActionKnownAboutInfo()[action].CanBeTaughtByComputerPlayer &&
		    !ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, action))
		{
			count++;
		}
	}
	return count;
}

bool32_t CreatureMental::FillInFirstNormalActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type, unsigned long* action)
{
	for (unsigned long i = 0; i < CREATURE_ACTION_KNOWN_ABOUT_LAST; i++)
	{
		if (CreatureActionKnownAboutEntry::GetNormalActionKnownAboutInfo()[i].CanBeTaughtByComputerPlayer &&
		    !ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, i))
		{
			*type = CREATURE_ACTION_LEARNING_TYPE_NORMAL;
			*action = i;
			return true;
		}
	}
	return false;
}

bool32_t CreatureMental::FillInFirstAggressiveMagicActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type,
                                                                     unsigned long*                 action)
{
	for (unsigned long i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		if (CreatureMagicActionKnownAboutEntry::GetMagicActionKnownAboutInfo()[i].CanBeTaughtByComputerPlayer &&
		    !ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, i) &&
		    GMagicEffectInfo::GetInfo()[i].PerceivedPlayerDesire == CREATURE_DESIRE_ANGER)
		{
			GMagicInfo* info = GMagicInfo::Infos[i];
			if (info->GetSpellSeedInfo() != NULL && info->GetSpellSeedInfo()->Enabled)
			{
				*type = CREATURE_ACTION_LEARNING_TYPE_MAGIC;
				*action = i;
				return true;
			}
		}
	}
	return false;
}

bool32_t CreatureMental::FillInFirstCompassionateMagicActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type,
                                                                        unsigned long*                 action)
{
	for (unsigned long i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		if (CreatureMagicActionKnownAboutEntry::GetMagicActionKnownAboutInfo()[i].CanBeTaughtByComputerPlayer &&
		    !ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, i) &&
		    GMagicEffectInfo::GetInfo()[i].PerceivedPlayerDesire == CREATURE_DESIRE_COMPASSION)
		{
			GMagicInfo* info = GMagicInfo::Infos[i];
			if (info->GetSpellSeedInfo() != NULL && info->GetSpellSeedInfo()->Enabled)
			{
				*type = CREATURE_ACTION_LEARNING_TYPE_MAGIC;
				*action = i;
				return true;
			}
		}
	}
	return false;
}

bool32_t CreatureMental::FillInFirstImpressiveMagicActionLeftToLearn(CREATURE_ACTION_LEARNING_TYPE* type,
                                                                     unsigned long*                 action)
{
	for (unsigned long i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		if (CreatureMagicActionKnownAboutEntry::GetMagicActionKnownAboutInfo()[i].CanBeTaughtByComputerPlayer &&
		    !ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, i))
		{
			GMagicInfo* info = GMagicInfo::Infos[i];
			if (info->GetSpellSeedInfo() != NULL && info->GetSpellSeedInfo()->Enabled)
			{
				*type = CREATURE_ACTION_LEARNING_TYPE_MAGIC;
				*action = i;
				return true;
			}
		}
	}
	return false;
}
