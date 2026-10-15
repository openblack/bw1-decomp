#include <limits.h> /* For ULONG_MAX */

#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureDesireSourceEntry.h"
#include "CreatureMentalDesireSource.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureInfo.h"
#include "CreatureInitialDesireInfo.h"
#include "CreatureInitialSourceInfo.h"
#include "CreatureMental.h"
#include "CreatureMentalDesire.h"
#include "CreatureSourceBoundsInfo.h"
#include "GameInfo.h"
#include "Global.h"
#include "HelpText.h"
#include "Rand.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureMentalDesireSource.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalDesireSource.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalDesireSource.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalDesireSource.cpp"
#endif

#define MIN_SOURCE_VALUE                  0.0f
#define MAX_SOURCE_VALUE                  1.0f
#define MIN_THRESHOLD_CHANGE              -1.0f
#define MAX_THRESHOLD_CHANGE              1.0f
#define HELP_TEXT_CREATURE_ATTITUDE_FIRST 1120
#define HELP_TEXT_CREATURE_ATTITUDE_LAST  1129
#define NUM_CREATURE_ATTITUDE_TEXTS       (HELP_TEXT_CREATURE_ATTITUDE_LAST - HELP_TEXT_CREATURE_ATTITUDE_FIRST + 1)
#define SOURCE_CHANGE_FROM_BELIEF         0.5f
#define DESIRE_TO_IMPRESS_DECAY           0.99f

const float MinimumUsefulness = 0.1f;

CreatureDesireSourceTable CreatureDesireSourceTable::Table[NUM_CREATURE_DESIRE_SOURCES];
CreatureInitialSourceInfo CreatureInitialSourceInfo::InitialValue[NUM_CREATURE_DESIRE_SOURCES];
CreatureInitialSourceInfo CreatureInitialSourceInfo::InitialThreshold[NUM_CREATURE_DESIRE_SOURCES];
CreatureSourceBoundsInfo  CreatureSourceBoundsInfo::ThresholdBounds[NUM_CREATURE_DESIRE_SOURCES];

// clang-format off
CreatureDesireSourceEntry CreatureDesireSourceEntry::Table[NUM_CREATURE_DESIRE_SOURCES] = {
	{NULL, NULL},
	{&Creature::GetDesireToImpressFromVillagersWhoNeedIt, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{&Creature::GetInnateNicenessSource, &Creature::SetInnateNicenessSource},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{&Creature::GetSadnessSource, NULL},
	{&Creature::GetInnateAggressionSource, &Creature::SetInnateAggressionSource},
	{NULL, NULL},
	{NULL, NULL},
	{&Creature::GetHungerSourceFromEnergy, &Creature::SetEnergyFromHungerSource},
	{NULL, NULL},
	{&Creature::GetSadnessSource, NULL},
	{&Creature::GetTirednessSourceFromNightTime, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{&Creature::GetPooSourceFromAmountOfPoo, &Creature::SetAmountOfPooFromPooSource},
	{&Creature::GetTirednessSourceFromExhaustion, &Creature::SetExhaustionFromTirednessSource},
	{NULL, NULL},
	{&Creature::GetTirednessSourceFromNightTime, NULL},
	{&Creature::GetSadnessSource, NULL},
	{&Creature::GetInnateLethargySource, &Creature::SetInnateLethargySource},
	{&Creature::GetHowInterestingPlayerIsBeing, &Creature::SetHowInterestingPlayerIsBeing},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{&Creature::GetThirstSourceFromDehydration, &Creature::SetDehydrationFromThirstSource},
	{&Creature::GetRestoreHealthSourceFromLife, &Creature::SetLifeFromRestoreHealthSource},
	{NULL, NULL},
	{&Creature::GetInnateFriendlinessSource, &Creature::SetInnateFriendlinessSource},
	{&Creature::GetAttractPlayerSourceFromLoneliness, &Creature::SetLonelinessFromAttractPlayerSource},
	{&Creature::GetAttractPlayerSourceFromLackOfInteraction, &Creature::SetAmountOfInteractionFromAttractPlayerSource},
	{&Creature::GetManifestStateSourceFromUnsatisfiedDesires, NULL},
	{&Creature::GetInnateCommunicativenessSource, &Creature::SetInnateCommunicativenessSource},
	{&Creature::GetWarmerSourceFromPhysicalWarmth, NULL},
	{&Creature::GetColderSourceFromPhysicalWarmth, NULL},
	{&Creature::GetScratchSourceFromPhysicalItchiness, NULL},
	{&Creature::GetRunAwayFromPlayerSource, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{&Creature::GetGoHomeSource, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{NULL, NULL},
	{&Creature::GetUrgeToGetHigh, &Creature::SetUrgeToGetHigh},
	{&Creature::GetHangAroundAtHomeSource, NULL},
	{&Creature::GetSourceForCraziness, NULL},
	{&Creature::GetSourceForMissFriend, NULL},
	{NULL, NULL},
	{NULL, NULL},
};
// clang-format on

CreatureDesireSource::CreatureDesireSource(CREATURE_DESIRE_SOURCE type, Creature* creature)
{
	Type = type;
	uint32_t creatureType = creature->GetInfo()->CreatureType;

	Value = CreatureInitialSourceInfo::GetInitialValue()[type].ByCreatureType[creatureType];
	if (GGlobal::Global.RandomiseCreatureMinds)
	{
		float variation = CreatureDesireSourceTable::GetTable()[type].InitialValueVariation;
		Value += GRand::GameFloatRand(2.0f * variation, FILEPATH, 95) - variation;
		CLAMP(Value, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	}

	Threshold = CreatureInitialSourceInfo::GetInitialThreshold()[type].ByCreatureType[creatureType];
	if (GGlobal::Global.RandomiseCreatureMinds)
	{
		float variation = CreatureDesireSourceTable::GetTable()[type].ThresholdVariation;
		Threshold += GRand::GameFloatRand(2.0f * variation, FILEPATH, 102) - variation;
		CLAMP(Threshold, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	}

	AccumulatedIncrement = 0.0f;
}

void CreatureDesires::InitialiseSources()
{
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		for (;;)
		{
			LHLinkedNode<CreatureDesireSource*>* node = SourceLists[i].head.Get();
			if (node == NULL)
			{
				break;
			}
			CreatureDesireSource* source = node->payload;
			SourceLists[i].Remove(source);
			delete source;
		}

		for (uint32_t j = 0; j < MAX_NUM_SOURCES_FOR_EACH_DESIRE; j++)
		{
			if (CreatureInitialDesireInfo::GetInfo()[i].Sources[j] != INVALID_CREATURE_DESIRE_SOURCE)
			{
				SourceLists[i].AddToEnd(new (FILEPATH, 117) CreatureDesireSource(
					CreatureInitialDesireInfo::GetInfo()[i].Sources[j], creature));
			}
		}
	}
}

CreatureDesireSource* CreatureDesires::GetSource(CREATURE_DESIRE_SOURCE source)
{
	for (LHLinkedNode<CreatureDesireSource*>* node =
	         SourceLists[CreatureDesireSourceTable::GetTable()[source].Desire].head.Get();
	     node != NULL; node = node->next.Get())
	{
		CreatureDesireSource* desireSource = node->payload;
		if (desireSource->Type == source)
		{
			return desireSource;
		}
	}
	return NULL;
}

float CreatureDesires::GetIncrementFromSource(CREATURE_DESIRE_SOURCE source)
{
	CreatureDesireSource* desireSource = GetSource(source);
	return Creature::SigmoidThreshold(desireSource->Threshold, desireSource->Value);
}

float CreatureDesires::GetOverallThresholdChange(CREATURE_DESIRES desire)
{
	float change = 0.0f;
	for (LHLinkedNode<CreatureDesireSource*>* node = SourceLists[desire].head.Get(); node != NULL;
	     node = node->next.Get())
	{
		CreatureDesireSource* source = node->payload;
		float                 threshold = source->Threshold;
		change += threshold - CreatureInitialSourceInfo::GetInitialThreshold()[source->Type]
		                          .ByCreatureType[creature->GetInfo()->CreatureType];
	}
	return change;
}

wchar_t* CreatureDesires::GetTextSummarisingAttitudeToDesire(CREATURE_DESIRES desire)
{
	if (desire == CREATURE_DESIRE_FEAR || desire == CREATURE_DESIRE_TIREDNESS)
	{
		float level = 0.0f;
		if (desire < NUM_CREATURE_DESIRES)
		{
			level = IsSuppressed(desire) ? 0.0f : GetDesire(desire);
			float maxLevel = MaxLevels[desire];
			if (maxLevel > 0.0f)
			{
				level = level / maxLevel;
			}
			else
			{
				level = 0.0f;
			}
		}
		CLAMP(level, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
		uint32_t index = (uint32_t)(level * NUM_CREATURE_ATTITUDE_TEXTS);
		if (index > NUM_CREATURE_ATTITUDE_TEXTS - 1)
		{
			index = NUM_CREATURE_ATTITUDE_TEXTS - 1;
		}
		return HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_CREATURE_ATTITUDE_LAST - index);
	}

	float change = GetOverallThresholdChange(desire);
	CLAMP(change, MIN_THRESHOLD_CHANGE, MAX_THRESHOLD_CHANGE);
	return HelpTextDataBase::HelpTextDatabase.GetHelpText(
		HELP_TEXT_CREATURE_ATTITUDE_FIRST - (int)((change + 1.0f) * -(NUM_CREATURE_ATTITUDE_TEXTS / 2.0f)));
}

float CreatureDesires::GetIncrementFromSources(CREATURE_DESIRES desire)
{
	float increment = 0.0f;
	for (LHLinkedNode<CreatureDesireSource*>* node = SourceLists[desire].head.Get(); node != NULL;
	     node = node->next.Get())
	{
		CreatureDesireSource* source = node->payload;
		float                 sourceIncrement = Creature::SigmoidThreshold(source->Threshold, source->Value);
		source->AccumulatedIncrement += sourceIncrement;
		increment += sourceIncrement;
	}
	return increment / (GGameInfo::Info.NumGameTicksPerSecond() * IncreaseTime[desire]);
}

CREATURE_DESIRE_SOURCE CreatureDesires::GetDominantSource(unsigned long desire)
{
	CREATURE_DESIRE_SOURCE dominant = INVALID_CREATURE_DESIRE_SOURCE;
	if (desire == ULONG_MAX)
	{
		return INVALID_CREATURE_DESIRE_SOURCE;
	}

	float highest = 0.0f;
	for (LHLinkedNode<CreatureDesireSource*>* node = SourceLists[desire].head.Get(); node != NULL;
	     node = node->next.Get())
	{
		CreatureDesireSource* source = node->payload;
		if (source->AccumulatedIncrement > highest)
		{
			dominant = source->Type;
			highest = source->AccumulatedIncrement;
		}
	}
	return dominant;
}

void CreatureDesires::UpdateSources()
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		for (LHLinkedNode<CreatureDesireSource*>* node = SourceLists[i].head.Get(); node != NULL;
		     node = node->next.Get())
		{
			CreatureDesireSource*  source = node->payload;
			CREATURE_DESIRE_SOURCE type = source->Type;
			if (CreatureDesireSourceEntry::Table[type].Get != NULL)
			{
				source->Value = (creature->*CreatureDesireSourceEntry::Table[type].Get)();
			}
			source->Value *= CreatureDesireSourceTable::GetTable()[type].Decay;
		}
	}
	DesireToImpressFromVillagersWhoNeedIt *= DESIRE_TO_IMPRESS_DECAY;
}

void CreatureDesires::SetSource(CREATURE_DESIRE_SOURCE source, float value)
{
	CreatureDesireSource* desireSource = GetSource(source);
	desireSource->Value = value;
	CLAMP(desireSource->Value, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	if (CreatureDesireSourceEntry::Table[source].Set != NULL)
	{
		(creature->*CreatureDesireSourceEntry::Table[source].Set)(value);
	}
}

void CreatureDesires::ChangeSource(CREATURE_DESIRE_SOURCE source, float change)
{
	CreatureDesireSource* desireSource = GetSource(source);
	desireSource->Value += change;
	CLAMP(desireSource->Value, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
}

void CreatureDesires::MakeAllSourcesMaximum(CREATURE_DESIRES desire)
{
	for (LHLinkedNode<CreatureDesireSource*>* node = SourceLists[desire].head.Get(); node != NULL;
	     node = node->next.Get())
	{
		CreatureDesireSource* desireSource = node->payload;
#ifdef VERSION_BW1W100
		if (desireSource->Type != ANGER_FROM_BEING_DAMAGED)
#else
		if (desireSource->Type != ANGER_FROM_BEING_DAMAGED && desireSource->Type != TO_RESTORE_HEALTH_FROM_LIFE)
#endif // VERSION_BW1W100
		{
			SetSource(desireSource->Type, MAX_SOURCE_VALUE);
		}
	}
}

void CreatureDesires::ClearSourcesAfterSatisfyingDesire(CREATURE_DESIRES desire)
{
	if (desire >= FIRST_CREATURE_DESIRE && desire < NUM_CREATURE_DESIRES)
	{
		for (LHLinkedNode<CreatureDesireSource*>* node = SourceLists[desire].head.Get(); node != NULL;
		     node = node->next.Get())
		{
			if (CreatureDesireSourceTable::GetTable()[node->payload->Type].ClearedWhenDesireIsSatisfied)
			{
				node->payload->Value = MIN_SOURCE_VALUE;
			}
		}
	}
}

void CreatureMental::UpdateSourcesFromBelief(CreatureBelief* belief)
{
	static CREATURE_DESIRE_SOURCE sources[] = {
		IMPRESS_FROM_SEEING_OBJECTS_WHICH_DESERVE_IT,
		COMPASSION_FROM_SEEING_OBJECTS_WHICH_DESERVE_IT,
		ANGER_FROM_SEEING_OBJECTS_WHICH_DESERVE_IT,
	};

	for (uint32_t i = 0; i < ARRAY_SIZE(sources); i++)
	{
		CREATURE_DESIRE_SOURCE source = sources[i];
		CREATURE_DESIRES       desire = CreatureDesireSourceTable::GetTable()[source].Desire;
		if (GetActivityObjectUsefulness(belief, desire) > MinimumUsefulness)
		{
			desires.ChangeSource(source, SOURCE_CHANGE_FROM_BELIEF);
		}
	}
}
