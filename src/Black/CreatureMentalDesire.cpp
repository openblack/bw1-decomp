#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureDesireTableEntry.h"
#include "CreatureMentalDesire.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureDevelopment.h"
#include "CreatureInfo.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureMental.h"
#include "CreatureSourceBoundsInfo.h"
#include "Game.h"
#include "GameInfo.h"
#include "Global.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "Player.h"
#include "Rand.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureMentalDesire.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalDesire.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalDesire.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalDesire.cpp"
#endif

#define MAX_LEVEL_FEEDBACK_RANGE        0.2f
#define MAX_DESIRE_LEVEL                2.0f
#define MIN_COMPLETIONS_TO_SATISFY_URGE 1.0f
#define MAX_COMPLETIONS_TO_SATISFY_URGE 8.0f
#define DECAY_RATE_FEEDBACK_SCALE       0.001f
#define COMPLETIONS_FEEDBACK_DIVISOR    3.0f
#define INCREASE_TIME_RANDOM_DIVISOR    5.0f

CreatureDesireDependency         CreatureDesireDependency::g_CreatureDesireDependency[NUM_CREATURE_DESIRES];
CreatureDesireForType            CreatureDesireForType::InitialIncreaseTime[NUM_CREATURE_DESIRES];
CreatureDevelopmentPhaseEntry    CreatureDevelopmentPhaseEntry::Infos[DEVELOPMENT_PHASE_LAST];
CreatureDevelopmentDurationEntry CreatureDevelopmentDurationEntry::Infos[CREATURE_TYPE_LAST];

CreatureDesireTableEntry CreatureDesireTableEntry::Table[NUM_CREATURE_DESIRES] = {
	{NULL, &GameThingWithPos::IsTownBelongingToAnotherPlayer, &GameThingWithPos::CanBeImpressedByCreature, true,
     C_INDIVIDUAL_SUMMON, false, NULL},
	{NULL, &GameThingWithPos::IsActivityObjectWhichCompassionAppliesTo, &GameThingWithPos::CanBeHelpedByCreature, true,
     C_INDIVIDUAL_FEELING_NICE, false, NULL},
	{NULL, &GameThingWithPos::IsActivityObjectWhichAngerAppliesTo, &GameThingWithPos::CanBeAttackedByCreature, true,
     C_INDIVIDUAL_TAUNT, true, NULL},
	{NULL, NULL, &GameThingWithPos::CanBePlayedWithByCreature, true, C_INDIVIDUAL_FEEL_PLAYFUL, true,
     &GameThingWithPos::MultiplyUsefulnessForPlayfulness},
	{NULL, NULL, NULL, true, C_INDIVIDUAL_HUNGRY, true, NULL},
	{NULL, NULL, &GameThingWithPos::CanBeFrighteningToCreature, true, C_INDIVIDUAL_FRIGHTENED, true, NULL},
	{NULL, NULL, &GameThingWithPos::CanBeInspectedByCreature, true, C_INDIVIDUAL_CONFUSED, true,
     &GameThingWithPos::MultiplyUsefulnessIfInteresting},
	{NULL, NULL, &GameThingWithPos::CanBePoodUponByCreature, true, C_INDIVIDUAL_NEED_A_POO, true, NULL},
	{NULL, NULL, &GameThingWithPos::CanBeSleptNextToByCreature, true, C_INDIVIDUAL_TIRED, true, NULL},
	{NULL, NULL, NULL, true, C_INDIVIDUAL_FEEL_PLAYFUL, true, NULL},
	{&Creature::IsReadyToExplore, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, &GameThingWithPos::CanBePickedUpByCreature, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, true, C_INDIVIDUAL_HOT, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, &GameThingWithPos::IsCreature, &GameThingWithPos::CanBeBefriendedByCreature, true, C_INDIVIDUAL_HAPPY, false,
     NULL},
	{&Creature::IsPlayerIgnoringMe, NULL, NULL, true, C_INDIVIDUAL_FRIENDLY_WAVE, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{&Creature::IsCreatureCold, NULL, NULL, true, C_INDIVIDUAL_COLD, true, NULL},
	{&Creature::IsCreatureWarm, NULL, NULL, true, C_INDIVIDUAL_HOT, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{&Creature::HasPlayerBeenNasty, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{&Creature::IsCreatureReadyForRest, NULL, &GameThingWithPos::CanBeSleptNextToByCreature, true, C_INDIVIDUAL_TIRED,
     true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, &GameThingWithPos::IsCreature, NULL, false, C_MOVE_STAND, false, NULL},
	{NULL, NULL, NULL, true, C_INDIVIDUAL_SAD, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, true, C_INDIVIDUAL_FEEL_PLAYFUL, true, NULL},
	{NULL, &GameThingWithPos::IsCreature, &GameThingWithPos::CanBeBefriendedByCreature, false, C_MOVE_STAND, false,
     NULL},
	{NULL, &GameThingWithPos::IsCreature, &GameThingWithPos::CanBeBefriendedByCreature, false, C_MOVE_STAND, false,
     NULL},
	{&Creature::HasNoticedActionWorthMimicking, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, &GameThingWithPos::IsMushroom, false, C_MOVE_STAND, true, NULL},
	{&Creature::IsCreatureNearHome, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, &GameThingWithPos::IsCreature, &GameThingWithPos::CanBeBefriendedByCreature, true, C_INDIVIDUAL_SAD, false,
     NULL},
	{NULL, NULL, NULL, false, C_MOVE_STAND, true, NULL},
	{NULL, NULL, NULL, true, C_INDIVIDUAL_FEEL_PLAYFUL, true, NULL},
};

CreatureDesires::CreatureDesires(Creature* creature, const CreatureInfo* info)
{
	Initialise(creature, info);
}

CreatureDesires::~CreatureDesires()
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		SourceLists[i].DeleteAll();
	}
}

void CreatureDesires::Initialise(Creature* creature, const CreatureInfo* info)
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		Activated[i] = creature->IsInGathering() != false;
		SuppressedTurns[i] = 0;
		Levels[i] = 0.0f;
		float decayRateMin = CreatureInitialDesireInfo::GetInfo()[i].DecayRateMin;
		DecayRates[i] =
			decayRateMin +
			GRand::GameFloatRand(CreatureInitialDesireInfo::GetInfo()[i].DecayRateMax - decayRateMin, FILEPATH, 100);
		IncreaseTime[i] = CreatureDesireForType::GetInitialIncreaseTime()[i].ByCreatureType[info->CreatureType];
		RandomiseIncreaseTime(i);
		MaxLevels[i] = CreatureInitialDesireInfo::GetInfo()[i].MaxLevel;
		NumCompletionsToSatisfyUrge[i] = CreatureInitialDesireInfo::GetInfo()[i].NumCompletionsToSatisfyUrge;
		NumCompletions[i] = 0;
		field_0x658[i] = 0;
	}

	creature_info = info;
	this->creature = creature;
	ForceCompletion = false;
	InitialiseSources();
	CheatDominantDesireTurns = 0;
	DesireToImpressFromVillagersWhoNeedIt = 0.0f;
	CheatDominantDesire = INVALID_CREATURE_DESIRE;
}

const float SuppressionSecondsPerDependency = 240.0f;

void CreatureDesires::SuppressDesiresAfterDecidingOnActivity(unsigned long desire)
{
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		float dependency = CreatureDesireDependency::GetInfo()[desire].Dependencies[i];
		if (dependency < 0.0f)
		{
			SuppressDesire(i, (-dependency) * SuppressionSecondsPerDependency);
		}
	}
}

void CreatureDesires::SuppressDesire(unsigned long desire, float seconds)
{
	uint32_t turns = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
	if (turns > SuppressedTurns[desire])
	{
		SuppressedTurns[desire] = turns;
		creature->mind->agenda.PlanState.plans[desire].SetToZero();
	}
}

void CreatureDesires::UnsuppressDesire(unsigned long desire)
{
	SuppressedTurns[desire] = 0;
}

void CreatureDesires::UnsuppressAllDesires()
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		SuppressedTurns[i] = 0;
	}
}

void CreatureDesires::RandomiseIncreaseTime(unsigned long desire)
{
	if (GGlobal::Global.RandomiseCreatureMinds != false)
	{
		float range = IncreaseTime[desire] / INCREASE_TIME_RANDOM_DIVISOR;
		IncreaseTime[desire] += GRand::GameFloatRand(2.0f * range, FILEPATH, 172) - range;
	}
}

void CreatureDesires::MultiplyDesire(const CreatureInfo* info, unsigned long desire, float multiplier)
{
	Levels[desire] = multiplier * Levels[desire];
	CLAMP(Levels[desire], info->MinDesireLevel, MaxLevels[desire]);
}

void CreatureDesires::DivideIncreaseTimeTimeBy(unsigned long desire, float divisor)
{
	IncreaseTime[desire] = IncreaseTime[desire] / divisor;
	CLAMP(IncreaseTime[desire], creature_info->MinDesireIncreaseTime, creature_info->MaxDesireIncreaseTime);
}

void CreatureDesires::UpdateDesires(Creature* creature)
{
	UpdateSources();
	TotalLevel = 0.0f;
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false)
		{
			if (SuppressedTurns[i] > 0)
			{
				SuppressedTurns[i]--;
			}
			float increment = GetIncrementFromSources((CREATURE_DESIRES)i);
			if (increment > 0.0f && SuppressedTurns[i] == 0)
			{
				Levels[i] = increment + Levels[i];
			}
			else
			{
				Levels[i] = DecayRates[i] * Levels[i];
			}
			CLAMP(Levels[i], creature->GetInfo()->MinDesireLevel, MaxLevels[i]);
			TotalLevel += Levels[i];
		}
	}
}

void CreatureDesires::StorePreviousValues() {}

void CreatureDesires::UpdateDesiresAfterPerformingAction(unsigned long action, const CreatureInfo* info)
{
	CREATURE_DESIRES desire = CreatureActionInfo::GetInfo()[action].PlanIndex;
	if (IsActivated(desire) != false &&
	    (CreatureActionInfo::GetInfo()[action].CompletionEnabled != false || ForceCompletion != false))
	{
		Levels[desire] = CreatureActionInfo::GetInfo()[action].CompletionFactor * Levels[desire];
		CLAMP(Levels[desire], info->MinDesireLevel, MaxLevels[desire]);
	}
}

CREATURE_DESIRES CreatureDesires::FindDominantDesire(unsigned long desire_to_ignore)
{
	CREATURE_DESIRES dominant = FIRST_CREATURE_DESIRE;
	float            dominantLevel = 0.0f;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && i != desire_to_ignore && Levels[i] > dominantLevel)
		{
			dominant = (CREATURE_DESIRES)i;
			dominantLevel = Levels[i];
		}
	}
	return dominant;
}

CREATURE_DESIRES CreatureDesires::FindDominantDesireWhichIsManifestable(CREATURE_DESIRES desire_to_ignore)
{
	CREATURE_DESIRES dominant = INVALID_CREATURE_DESIRE;
	float            dominantLevel = 0.0f;
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && i != desire_to_ignore && Levels[i] > dominantLevel &&
		    CreatureDesireTableEntry::Table[i].Manifestable != false)
		{
			dominant = (CREATURE_DESIRES)i;
			dominantLevel = Levels[i];
		}
	}
	return dominant;
}

CREATURE_DESIRES CreatureDesires::FindDominantDesireWhichCanBeHelped()
{
	CREATURE_DESIRES dominant = INVALID_CREATURE_DESIRE;
	float            dominantLevel = 0.0f;
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && Levels[i] > dominantLevel &&
		    CreatureInitialDesireInfo::GetInfo()[i].CanBeHelped != false)
		{
			dominant = (CREATURE_DESIRES)i;
			dominantLevel = Levels[i];
		}
	}
	return dominant;
}

CREATURE_DESIRES CreatureDesires::FindDominantEmotionalDesire()
{
	CREATURE_DESIRES dominant = FIRST_CREATURE_DESIRE;
	float            dominantLevel = 0.0f;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && CreatureInitialDesireInfo::GetInfo()[i].Emotional != false &&
		    Levels[i] > dominantLevel)
		{
			dominant = (CREATURE_DESIRES)i;
			dominantLevel = Levels[i];
		}
	}
	return dominant;
}

uint32_t CreatureDesires::GetRankPositionOfDesire(unsigned long desire)
{
	uint32_t rank = 0;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && Levels[i] > Levels[desire])
		{
			rank++;
		}
	}
	return rank;
}

CREATURE_DESIRES CreatureDesires::FindWeakestDesire()
{
	CREATURE_DESIRES weakest = FIRST_CREATURE_DESIRE;
	float            weakestLevel = MAX_DESIRE_LEVEL;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && Levels[i] < weakestLevel)
		{
			weakest = (CREATURE_DESIRES)i;
			weakestLevel = Levels[i];
		}
	}
	return weakest;
}

CREATURE_DESIRES CreatureDesires::FindStrongestPhysicalDesire()
{
	CREATURE_DESIRES strongest = INVALID_CREATURE_DESIRE;
	float            strongestLevel = 0.0f;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && IsSuppressed(i) == false && Levels[i] > strongestLevel &&
		    CreatureInitialDesireInfo::GetInfo()[i].Physical != false)
		{
			strongest = (CREATURE_DESIRES)i;
			strongestLevel = Levels[i];
		}
	}
	return strongest;
}

float CreatureDesires::FindStrongestPhysicalDesireValue()
{
	CREATURE_DESIRES strongest = FindStrongestPhysicalDesire();
	if (strongest != INVALID_CREATURE_DESIRE)
	{
		return Levels[strongest];
	}
	return 0.0f;
}

void CreatureDesires::MakeDesireMostDominant(unsigned long desire, const CreatureInfo* info, float multiplier)
{
	Levels[desire] = multiplier * Levels[FindDominantDesire(INVALID_CREATURE_DESIRE)];
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (i != desire)
		{
			Levels[i] = Levels[i] / multiplier;
		}
		CLAMP(Levels[i], info->MinDesireLevel, MaxLevels[i]);
	}
}

void CreatureDesires::MakeDesireFullyDominant(unsigned long desire, const CreatureInfo* info)
{
	if (IsActivated((CREATURE_DESIRES)desire) != false)
	{
		Levels[desire] = MaxLevels[desire];
		for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
		{
			if (i != desire)
			{
				Levels[i] = info->MinDesireLevel;
			}
		}
	}
}

void CreatureDesires::MakeDesireMax(unsigned long desire)
{
	if (IsActivated((CREATURE_DESIRES)desire) != false)
	{
		Levels[desire] = MaxLevels[desire];
		MakeAllSourcesMaximum((CREATURE_DESIRES)desire);
	}
}

void Creature::MakeDesireFullyDominantAndChangeSource(unsigned long desire, const CreatureInfo* info)
{
	mind->desires.MakeDesireFullyDominant(desire, info);
	mind->desires.MakeAllSourcesMaximum((CREATURE_DESIRES)desire);
	mind->desires.SetActivated((CREATURE_DESIRES)desire, true);
}

void CreatureDesires::MakeDesireLeastDominant(unsigned long desire, const CreatureInfo* info, float divisor)
{
	Levels[desire] = Levels[FindWeakestDesire()] / divisor;
	CLAMP(Levels[desire], info->MinDesireLevel, MaxLevels[desire]);
}

void CreatureDesires::ModifyDesireAfterFeedback(const CreatureInfo* info, CREATURE_DESIRES desire,
                                                CREATURE_DESIRE_SOURCE source, float feedback)
{
	if (IsActivated(desire) != false)
	{
		float factor =
			(1.0f / CreatureInitialDesireInfo::GetInfo()[desire].IncreaseTimeFeedbackDivisor - 1.0f) * feedback + 1.0f;
		IncreaseTime[desire] = factor * IncreaseTime[desire];
		CLAMP(IncreaseTime[desire], info->MinDesireIncreaseTime, info->MaxDesireIncreaseTime);

		CreatureDesireSource* desireSource = GetSource(source);
		desireSource->Threshold +=
			-(feedback * CreatureSourceBoundsInfo::GetThresholdBounds()[desireSource->Type].FeedbackScale);
		CLAMP(desireSource->Threshold, CreatureSourceBoundsInfo::GetThresholdBounds()[desireSource->Type].MinThreshold,
		      CreatureSourceBoundsInfo::GetThresholdBounds()[desireSource->Type].MaxThreshold);

		MaxLevels[desire] += feedback * info->MaxDesireLevelFeedbackScale;
		float lowest = max(0.0f, CreatureInitialDesireInfo::GetInfo()[desire].MaxLevel - MAX_LEVEL_FEEDBACK_RANGE);
		float highest =
			min(MAX_DESIRE_LEVEL, CreatureInitialDesireInfo::GetInfo()[desire].MaxLevel + MAX_LEVEL_FEEDBACK_RANGE);
		CLAMP(MaxLevels[desire], lowest, highest);

		if (CreatureInitialDesireInfo::GetInfo()[desire].NumCompletionsChangeWithFeedback != false)
		{
			NumCompletionsToSatisfyUrge[desire] +=
				feedback * (CreatureInitialDesireInfo::GetInfo()[desire].NumCompletionsToSatisfyUrge *
			                (1.0f / COMPLETIONS_FEEDBACK_DIVISOR));
			CLAMP(NumCompletionsToSatisfyUrge[desire], MIN_COMPLETIONS_TO_SATISFY_URGE,
			      MAX_COMPLETIONS_TO_SATISFY_URGE);
		}

		DecayRates[desire] += feedback * DECAY_RATE_FEEDBACK_SCALE;
		CLAMP(DecayRates[desire], CreatureInitialDesireInfo::GetInfo()[desire].DecayRateMin,
		      CreatureInitialDesireInfo::GetInfo()[desire].DecayRateMax);

		for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
		{
			float dependency = CreatureDesireDependency::GetInfo()[desire].Dependencies[i];
			if (dependency > 0.0f)
			{
				IncreaseTime[i] = factor * IncreaseTime[i];
				CLAMP(IncreaseTime[i], info->MinDesireIncreaseTime, info->MaxDesireIncreaseTime);
			}
			else if (dependency < 0.0f)
			{
				IncreaseTime[i] = IncreaseTime[i] / factor;
				CLAMP(IncreaseTime[i], info->MinDesireIncreaseTime, info->MaxDesireIncreaseTime);
			}
		}
	}
}

bool32_t CreatureDesires::UpdateAfterActionCompletionToSeeIfUrgeIsSatisfied(CREATURE_DESIRES desire)
{
	NumCompletions[desire]++;
	if (NumCompletions[desire] >= (uint32_t)NumCompletionsToSatisfyUrge[desire])
	{
		NumCompletions[desire] = 0;
		return true;
	}
	return false;
}

bool32_t CreatureDesires::IsActivated(CREATURE_DESIRES desire)
{
	return Activated[desire] != false || (GGame::g_game->GameFlags & GAME_FLAG_ACTIVATE_CREATURE_DESIRES) != 0;
}

void CreatureDesires::SetActivated(CREATURE_DESIRES desire, bool32_t activated)
{
	Activated[desire] = activated;
}

uint32_t CreatureDesires::GetNumActiveDesires()
{
	uint32_t count = 0;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && IsSuppressed(i) == false)
		{
			count++;
		}
	}
	return count;
}

void CreatureMental::SetCheatDominantDesire(CREATURE_DESIRES desire, float seconds, bool32_t suppress_needs)
{
	desires.CheatDominantDesire = desire;
	desires.CheatDominantDesireTurns = 0;
	desires.CheatDominantDesireSeconds = (uint32_t)seconds;
	desires.SetActivated(desire, true);
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (i == desires.CheatDominantDesire)
		{
			continue;
		}
		switch ((CREATURE_DESIRES)i)
		{
		case CREATURE_DESIRE_TO_IDLE_AROUND_WITH_PLAYER:
		case CREATURE_DESIRE_TO_RESTORE_HEALTH:
		case CREATURE_DESIRE_TO_BE_FRIENDS:
		case CREATURE_DESIRE_TO_MANIFEST_STATE:
		case CREATURE_DESIRE_TO_REST:
		case CREATURE_DESIRE_TO_PLAY_WITH_PLAYER:
		case CREATURE_DESIRE_TO_HANG_AROUND_AT_HOME:
		case CREATURE_DESIRE_TO_LOOK_AROUND:
			if (i != CREATURE_DESIRE_TO_SCRATCH)
			{
				break;
			}
		case CREATURE_DESIRE_HUNGER:
		case CREATURE_DESIRE_TO_POO:
		case CREATURE_DESIRE_TIREDNESS:
		case CREATURE_DESIRE_FOR_WATER:
			if (suppress_needs == false)
			{
				break;
			}
		default:
			desires.SuppressDesire(i, seconds);
			break;
		}
	}
	if (desires.CheatDominantDesire == CREATURE_DESIRE_COMPASSION)
	{
		desires.UnsuppressDesire(CREATURE_DESIRE_TO_BE_FRIENDS);
		creature->MakeDesireFullyDominantAndChangeSource(CREATURE_DESIRE_TO_BE_FRIENDS, creature->GetInfo());
	}
	desires.UnsuppressDesire(desires.CheatDominantDesire);
	creature->MakeDesireFullyDominantAndChangeSource(desires.CheatDominantDesire, creature->GetInfo());
}

void CreatureMental::ClearCheatDominantDesire()
{
	if (creature->GetPlayer() == NULL ||
	    creature->GetPlayer()->GetTempFirstInterfaceStatus()->LeashStatus->LeashType == LEASH_TYPE_ROPE)
	{
		if (desires.CheatDominantDesire != INVALID_CREATURE_DESIRE)
		{
			desires.UnsuppressAllDesires();
		}
		desires.CheatDominantDesire = INVALID_CREATURE_DESIRE;
	}
}

uint32_t CreatureDesires::GetNumUnsuppressedDesires()
{
	uint32_t count = 0;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		if (IsActivated((CREATURE_DESIRES)i) != false && IsSuppressed(i) == false)
		{
			count++;
		}
	}
	return count;
}

float CreatureDesires::GetAlignmentChange()
{
	float change = 0.0f;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		float excess = Levels[i] - CreatureInitialDesireInfo::GetInfo()[i].AlignmentThreshold;
		if (excess > 0.0f)
		{
			change += (excess * creature->GetInfo()->AlignmentChangeScale) *
			          CreatureInitialDesireInfo::GetInfo()[i].AlignmentChange;
		}
	}
	return change;
}
