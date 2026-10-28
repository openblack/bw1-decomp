#include "GameTimeConstants.h"
#include "CreatureDevelopment.h"
#include "CreatureDevelopmentPhaseFunctions.h"

#include "ColourConstants.h" /* For White */
#include "CreatureAttitudeConstants.h"

#include "Creature.h"
#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "Game.h"
#include "GameInfo.h"
#include "Rand.h"

#if defined(VERSION_BW1W100) || defined(VERSION_BW1WCI)
#define FILEPATH "C:\\dev\\black\\CreatureDevelopment.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureDevelopment.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureDevelopment.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureDevelopment.cpp"
#endif

#define MILLISECONDS_TO_SECONDS 0.001f

#define CREATURE_DEVELOPMENT_LAND_NUMBER     1
#define MIN_SECONDS_IN_DEVELOPMENT_PHASE     2.0f
#define INITIAL_STAGE_SECONDS                30.0f
#define LEARN_TO_EAT_STAGE_SECONDS           180.0f
#define MEET_GUIDE_STAGE_SECONDS             30.0f
#define FRIENDS_WITH_GUIDE_STAGE_SECONDS     30.0f
#define GUIDE_EXPLAINS_HISTORY_STAGE_SECONDS 30.0f
#define GUIDE_TEACHES_SPELLS_STAGE_SECONDS   30.0f
#define LEARN_TO_IMPRESS_TOWN_STAGE_SECONDS  30.0f
#define LEARN_TO_FIGHT_STAGE_SECONDS         10.0f
#define LEARN_TO_HELP_TOWN_STAGE_SECONDS     60.0f
#define MAXIMUM_SKILL                        1.0f

// clang-format off
CreatureDevelopmentPhaseFunctions CreatureDevelopmentPhaseFunctions::Table[DEVELOPMENT_PHASE_LAST] = {
	{&Creature::HasFinishedDevelopmentStageInitial,              NULL},
	{&Creature::HasFinishedDevelopmentStageLearnToEat,           NULL},
	{&Creature::HasFinishedDevelopmentStagePunishment,           NULL},
	{&Creature::HasFinishedDevelopmentStageLeashPullAndPickup,   NULL},
	{&Creature::HasFinishedDevelopmentStageLeashAttachToHouse,   NULL},
	{&Creature::HasFinishedDevelopmentStageMeetGuide,            NULL},
	{&Creature::HasFinishedDevelopmentStageFriendsWithGuide,     NULL},
	{&Creature::HasFinishedDevelopmentStageGuideExplainsHistory, NULL},
	{&Creature::HasFinishedDevelopmentStageGuideTeachesSpells,   NULL},
	{&Creature::HasFinishedDevelopmentStageLearnToImpressTown,   NULL},
	{&Creature::HasFinishedDevelopmentStageLearnToFight,         NULL},
	{&Creature::HasFinishedDevelopmentStageLearnToHelpTown,      NULL},
	{&Creature::HasFinishedDevelopmentStageLeashGoodAndEvil,     NULL},
	{&Creature::FalseFunction,                                   NULL},
};
// clang-format on

inline float Creature::GetSecondsInDevelopmentPhase()
{
	return (float)GameTurnsInDevelopmentPhase * GGameInfo::Info.MillisecondsPerGameTurn * MILLISECONDS_TO_SECONDS;
}

#ifndef VERSION_BW1W100
void Creature::CheckForNewDevelopmentPhase() {}

bool32_t Creature::IsAvailableToMoveToNextDevelopmentPhase()
{
	if (GetPlayer() == NULL)
	{
		return false;
	}
	if (GGame::g_game->LandNumber != CREATURE_DEVELOPMENT_LAND_NUMBER)
	{
		return false;
	}
	if (IsFighting())
	{
		return false;
	}
	if (mind->agenda.CommandState.Commanded && GetInterfaceStatusLeashOn() == NULL)
	{
		return false;
	}
	if (HelpStackEntries[CREATURE_HELP_TYPE_DEVELOPMENT_PHASE_INITIAL + DevelopmentPhase + 1].count > 0)
	{
		return false;
	}
	if (GetSecondsInDevelopmentPhase() < MIN_SECONDS_IN_DEVELOPMENT_PHASE)
	{
		return false;
	}
	return !IsShowingDevelopmentHelpScript;
}

bool32_t Creature::CanBeMovedToNextDevelopmentPhase(DEVELOPMENT_PHASE phase)
{
	return (this->*CreatureDevelopmentPhaseFunctions::Table[phase - 1].HasFinished)();
}
#endif // VERSION_BW1W100

void Creature::MoveToDevelopmentPhase(DEVELOPMENT_PHASE phase, int unused)
{
	if (IsConfinedToArea() && GetInterfaceStatusLeashOn() == NULL && phase >= DEVELOPMENT_PHASE_MEET_GUIDE)
	{
		ConfinementRadius = 0.0f;
	}
	DevelopmentPhase = phase;
	GameTurnsInDevelopmentPhase = 0;
	mind->desires.UnsuppressAllDesires();
	for (uint32_t desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
	{
		mind->desires.SetActivated((CREATURE_DESIRES)desire, false);
	}
	CreatureDevelopmentPhaseEntry* infos = CreatureDevelopmentPhaseEntry::GetInfo();
	for (uint32_t i = 0; i <= phase; i++)
	{
		uint32_t j;
		for (j = 0; j < ARRAY_SIZE(infos[i].ActivatedDesires); j++)
		{
			if (infos[i].ActivatedDesires[j] != NO_CREATURE_DESIRE)
			{
				mind->desires.SetActivated(infos[i].ActivatedDesires[j], true);
			}
		}
		for (j = 0; j < ARRAY_SIZE(infos[i].DeactivatedDesires); j++)
		{
			if (infos[i].DeactivatedDesires[j] != NO_CREATURE_DESIRE)
			{
				mind->desires.SetActivated(infos[i].DeactivatedDesires[j], false);
			}
		}
	}
	HelpState.field_0xc = 0;
	mind->agenda.Clear();
#ifdef VERSION_BW1WCI
	if (phase >= DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP)
	{
		LeashEnabled[LEASH_TYPE_ROPE] = true;
	}
	if (phase >= DEVELOPMENT_PHASE_LEASH_ATTACH_TO_HOUSE)
	{
		LeashEnabled[LEASH_TYPE_GOOD] = true;
		LeashEnabled[LEASH_TYPE_EVIL] = true;
		LeashEnabled[LEASH_TYPE_ROPE] = true;
	}
#endif // VERSION_BW1WCI
}

bool32_t Creature::HasFinishedDevelopmentStageInitial()
{
	return GetSecondsInDevelopmentPhase() > INITIAL_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStagePunishment()
{
	return GetSecondsInDevelopmentPhase() >
	       CreatureDevelopmentDurationEntry::GetInfo()[GetInfo()->CreatureType].Duration[DEVELOPMENT_PHASE_PUNISHMENT];
}

bool32_t Creature::HasFinishedDevelopmentStageLeashPullAndPickup()
{
	return GetSecondsInDevelopmentPhase() > CreatureDevelopmentDurationEntry::GetInfo()[GetInfo()->CreatureType]
	                                            .Duration[DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP];
}

bool32_t Creature::HasFinishedDevelopmentStageLeashAttachToHouse()
{
	return GetSecondsInDevelopmentPhase() > CreatureDevelopmentDurationEntry::GetInfo()[GetInfo()->CreatureType]
	                                            .Duration[DEVELOPMENT_PHASE_LEASH_ATTACH_TO_HOUSE];
}

bool32_t Creature::HasFinishedDevelopmentStageLeashGoodAndEvil()
{
	return true;
}

bool32_t Creature::HasFinishedDevelopmentStageLearnToEat()
{
	return HasPickedUpFromHand || GetSecondsInDevelopmentPhase() > LEARN_TO_EAT_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStageGuideTeachesSpells()
{
	return GetSecondsInDevelopmentPhase() > GUIDE_TEACHES_SPELLS_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStageGuideExplainsHistory()
{
	return GetSecondsInDevelopmentPhase() > GUIDE_EXPLAINS_HISTORY_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStageFriendsWithGuide()
{
	return GetSecondsInDevelopmentPhase() > FRIENDS_WITH_GUIDE_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStageMeetGuide()
{
	return GetSecondsInDevelopmentPhase() > MEET_GUIDE_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStageLearnToImpressTown()
{
	return GetSecondsInDevelopmentPhase() > LEARN_TO_IMPRESS_TOWN_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStageLearnToFight()
{
	float seconds = GetSecondsInDevelopmentPhase();
	return !IsFighting() && seconds > LEARN_TO_FIGHT_STAGE_SECONDS;
}

bool32_t Creature::HasFinishedDevelopmentStageLearnToHelpTown()
{
	return GetSecondsInDevelopmentPhase() > LEARN_TO_HELP_TOWN_STAGE_SECONDS;
}

bool32_t Creature::FalseFunction()
{
	return false;
}

#ifndef VERSION_BW1W100
void Creature::GiveMaximumSkillAtOneSpell()
{
	CREATURE_ACTION spells[] = {
		CREATURE_CAST_HEAL_SPELL,   CREATURE_CAST_FIREBALL, CREATURE_CAST_EXPLOSION,      CREATURE_CAST_MAGIC_FOOD,
		CREATURE_CAST_MAGIC_FOREST, CREATURE_CAST_SHIELD,   CREATURE_CAST_LIGHTNING_BOLT, CREATURE_CAST_LIGHTNING_STORM,
	};
	CREATURE_ACTION spell = spells[GRand::GameRand(ARRAY_SIZE(spells), FILEPATH, 243)];
	mind->learning.SetSkillAtAction(spell, MAXIMUM_SKILL);
}

void Creature::GiveMaximumSkillAtOnePowerUpSpell()
{
	CREATURE_ACTION spells[] = {
		CREATURE_CAST_FIREBALL_PU1,       CREATURE_CAST_FIREBALL_PU2,   CREATURE_CAST_LIGHTNING_BOLT_PU1,
		CREATURE_CAST_LIGHTNING_BOLT_PU2, CREATURE_CAST_HEAL_SPELL_PU1, CREATURE_CAST_SHIELD_PU1,
	};
	CREATURE_ACTION spell = spells[GRand::GameRand(ARRAY_SIZE(spells), FILEPATH, 261)];
	mind->learning.SetSkillAtAction(spell, MAXIMUM_SKILL);
}
#endif // VERSION_BW1W100
