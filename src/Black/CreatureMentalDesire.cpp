#include "CreatureMentalDesire.h"

#include "CreatureDevelopment.h" /* For struct CreatureDevelopmentDurationEntry, struct CreatureDevelopmentPhaseEntry */
#include "CreatureInfo.h"        /* For struct CreatureInfo */
#include "CreatureInitialDesireInfo.h" /* For struct CreatureInitialDesireInfo */
#include "Game.h"                      /* For struct GGame */
#include "Rand.h"                      /* For struct GRand */

// CreatureDevelopmentDurationEntry/PhaseEntry are declared in CreatureDevelopment.h, but
// their GetBaseInfo addresses fall in this TU's split range, not CreatureDevelopment.cpp's.
static CreatureDevelopmentDurationEntry g_CreatureDevelopmentDurationEntry[17];        // fabricated name
static CreatureDevelopmentPhaseEntry    g_CreatureDevelopmentPhaseEntry[14];           // fabricated name
static CreatureDesireForType            g_CreatureDesireForType[NUM_CREATURE_DESIRES]; // fabricated name

CreatureDesireDependency CreatureDesireDependency::g_CreatureDesireDependency[NUM_CREATURE_DESIRES]; // fabricated name

// BW1W120 004db560 BW1M100 1025c590 CreatureDevelopmentDurationEntry::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureDevelopmentDurationEntry::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = sizeof(g_CreatureDevelopmentDurationEntry) / sizeof(g_CreatureDevelopmentDurationEntry[0]);
	return g_CreatureDevelopmentDurationEntry;
}

// BW1W120 004db480 BW1M100 1025c4d0 CreatureDevelopmentPhaseEntry::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureDevelopmentPhaseEntry::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = sizeof(g_CreatureDevelopmentPhaseEntry) / sizeof(g_CreatureDevelopmentPhaseEntry[0]);
	return g_CreatureDevelopmentPhaseEntry;
}

// BW1W120 004db3c0 BW1M100 1025c650 CreatureDesireForType::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureDesireForType::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = sizeof(g_CreatureDesireForType) / sizeof(g_CreatureDesireForType[0]);
	return g_CreatureDesireForType;
}

// BW1W120 004db2e0 BW1M100 1025c710 CreatureDesireDependency::GetBaseInfo(unsigned long &)
GBaseInfo* CreatureDesireDependency::GetBaseInfo(uint32_t& num_infos)
{
	num_infos = sizeof(g_CreatureDesireDependency) / sizeof(g_CreatureDesireDependency[0]);
	return g_CreatureDesireDependency;
}

// BW1W120 004dbff0 BW1M100 1025b030 CreatureDesires::CreatureDesires(Creature *, CreatureInfo const *)
CreatureDesires::CreatureDesires(Creature* creature, const CreatureInfo* info)
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
		SourceLists[i] = LHLinkedList<CreatureDesireSource>();
	Initialise(creature, info);
}

// BW1W120 004dc100 BW1M100 1025a980 CreatureDesires::Initialise(Creature *, CreatureInfo const *)
void CreatureDesires::Initialise(Creature* creature, const CreatureInfo* info)
{
	for (int i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		field_0x8[i] = (GGame::g_game->field_0x14 & 0x2000) ? 1 : 0;
		field_0xa8[i] = 0.0f;
		field_0x148[i] = 0;

		float minValue = CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[i].InitialValueMin;
		float maxValue = CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[i].InitialValueMax;
		field_0x288[i] = minValue + GRand::GameFloatRand(maxValue - minValue, __FILE__, __LINE__);

		IncreaseTime[i] = g_CreatureDesireForType[i].ByCreatureType[info->CreatureType];

		field_0x468[i] = CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[i].DesireDecay;
		field_0x508[i] = CreatureInitialDesireInfo::g_CreatureInitialDesireInfos[i].DesireGrowthRate;
		field_0x5a8[i] = 0;
		field_0x658[i] = 0;
	}

	this->creature = creature;
	creature_info = info;
	field_0x650 = 0;
	InitialiseSources();
	field_0x6fc = 0;
	field_0x704 = 0;
	field_0x6f8 = NUM_CREATURE_DESIRES;
}
