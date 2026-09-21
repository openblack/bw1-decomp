#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */
#include <stdint.h>    /* For uint32_t */
#include <string.h>    /* For memcpy */

#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES, NUM_CREATURE_DESIRES */

#include <Lionhead/LHFile/ver3.0/LHFile.h>      /* For struct LHFile */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For struct LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHWin.h>        /* For operator new(size_t, const char*, uint32_t) */

#include "Base.h"                       /* For struct Base */
#include "BaseInfo.h"                   /* For struct GBaseInfo */
#include "CreatureMentalDesireSource.h" /* For struct CreatureDesireSource */

// Forward Declares

class Creature;
class CreatureInfo;

class CreatureDesires : public Base
{
public:
	uint32_t                            field_0x8[NUM_CREATURE_DESIRES];
	float                               field_0xa8[NUM_CREATURE_DESIRES];
	float                               field_0x148[NUM_CREATURE_DESIRES];
	float                               IncreaseTime[NUM_CREATURE_DESIRES]; /* 0x1e8 */
	uint32_t                            field_0x288[NUM_CREATURE_DESIRES];
	LHLinkedList<CreatureDesireSource*> SourceLists[NUM_CREATURE_DESIRES]; /* 0x328 */
	uint32_t                            field_0x468[NUM_CREATURE_DESIRES];
	uint32_t                            field_0x508[NUM_CREATURE_DESIRES];
	uint32_t                            field_0x5a8[NUM_CREATURE_DESIRES];
	Creature*                           creature; /* 0x648 */
	const CreatureInfo*                 creature_info;
	uint32_t                            field_0x650;
	uint32_t                            field_0x654;
	uint32_t                            field_0x658[NUM_CREATURE_DESIRES];
	uint32_t                            field_0x6f8;
	uint32_t                            field_0x6fc;
	uint32_t                            field_0x700;
	uint32_t                            field_0x704;

	// Override methods

	// BW1W120 004dc040 BW1M119 0125f1e0
	virtual ~CreatureDesires();

	// Constructors

	// BW1W120 004dbff0 BW1M119 0125f4e0
	CreatureDesires(Creature* creature, const CreatureInfo* info);

	// Non-virtual methods

	// BW1W120 004dc100 BW1M119 0125ee30
	void Initialise(Creature* creature, const CreatureInfo* info);
	// BW1W120 004dc210 BW1M119 0125ed10
	void SuppressDesiresAfterDecidingOnActivity(uint32_t param_1);
	// BW1W120 004dc260 BW1M119 0125ec30
	void SuppressDesire(uint32_t param_1, float param_2);
	// BW1W120 004dc2d0 BW1M119 0125ebe0
	void UnsuppressDesire(unsigned long desire);
	// BW1W120 004dc2f0 BW1M119 0125eaf0
	void UnsuppressAllDesires();
	// BW1W120 004dc310 BW1M119 inlined
	// fabricated name; jitters IncreaseTime[desire] when the randomise cheat flag is set
	void RandomiseIncreaseTime(unsigned long desire);
	// BW1W120 004dc370 BW1M119 0125ea60
	void MultiplyDesire(const CreatureInfo* info, unsigned long desire, float multiplier);
	// BW1W120 004dc3d0 BW1M119 0125e9d0
	void DivideIncreaseTimeTimeBy(unsigned long desire, float divisor);
	// BW1W120 004dc430 BW1M119 0125e870
	void UpdateDesires(Creature* creature);
	// BW1W120 004dc500 BW1M119 0125e830
	void StorePreviousValues();
	// BW1W120 004dc510 BW1M119 0125e700
	void UpdateDesiresAfterPerformingAction(unsigned long action, const CreatureInfo* info);
	// BW1W120 004dc5b0 BW1M119 0125e630
	void FindDominantDesire(uint32_t param_1);
	// BW1W120 004dc600 BW1M119 0125e520
	uint32_t FindDominantDesireWhichIsManifestable(CREATURE_DESIRES desire);
	// BW1W120 004dc680 BW1M119 0125e430
	uint32_t FindDominantDesireWhichCanBeHelped();
	// BW1W120 004dc760 BW1M119 0125e370
	uint32_t GetRankPositionOfDesire(unsigned long desire);
	// BW1W120 004dc7b0 BW1M119 0125e290
	uint32_t FindWeakestDesire();
	// BW1W120 004dc800 BW1M119 0125e1a0
	uint32_t FindStrongestPhysicalDesire();
	// BW1W120 004dc880 BW1M119 0125e100
	float FindStrongestPhysicalDesireValue();
	// BW1W120 004dc8a0 BW1M119 0125df20
	void MakeDesireMostDominant(uint32_t param_1, const CreatureInfo* info, float param_3);
	// BW1W120 004dc920 BW1M119 0125dd90
	void MakeDesireFullyDominant(unsigned long desire, const CreatureInfo* info);
	// BW1W120 004dc970 BW1M119 0125dcf0
	void MakeDesireMax(unsigned long desire);
	// BW1W120 004dc9f0 BW1M119 0125db40
	void MakeDesireLeastDominant(unsigned long desire, const CreatureInfo* info, float param_3);
	// BW1W120 004dca60 BW1M119 0125d550
	void ModifyDesireAfterFeedback(const CreatureInfo* info, CREATURE_DESIRES desire, CREATURE_DESIRE_SOURCE source,
	                               float param_4);
	// BW1W120 004dcd50 BW1M119 0125d480
	bool32_t UpdateAfterActionCompletionToSeeIfUrgeIsSatisfied(CREATURE_DESIRES desire);
	// BW1W120 004dcda0 BW1M119 0125d400
	bool32_t IsActivated(CREATURE_DESIRES param_1);
	// BW1W120 004dcdd0 BW1M119 0125d3a0
	void SetActivated(CREATURE_DESIRES desire, int value);
	// BW1W120 inlined BW1M119 0125d040
	bool32_t IsSuppressed(unsigned long desire);
	// BW1W120 inlined BW1M119 01235700
	float GetDesire(unsigned long desire) { return field_0x148[desire]; }
	// BW1W120 004de270 BW1M119 012618c0
	void InitialiseSources();
	// BW1W120 004de370 BW1M119 012617a0
	void GetSource(CREATURE_DESIRE_SOURCE param_1);
	// BW1W120 inlined BW1M119 012614c0
	float GetOverallThresholdChange(CREATURE_DESIRES desire);
	// BW1W120 004de410 BW1M119 01261330
	char* GetTextSummarisingAttitudeToDesire(CREATURE_DESIRES desire);
	// BW1W120 004de550 BW1M119 01261200
	float GetIncrementFromSources(CREATURE_DESIRES desire);
	// BW1W120 004de5d0 BW1M119 01261130
	uint32_t GetDominantSource(unsigned long desire);
	// BW1W120 004de620 BW1M119 01260fe0
	void UpdateSources();
	// BW1W120 004de6c0 BW1M119 01260ee0
	void SetSource(CREATURE_DESIRE_SOURCE source, float value);
	// BW1W120 004de730 BW1M119 01260e20
	void ChangeSource(CREATURE_DESIRE_SOURCE param_1, float param_2);
	// BW1W120 004de780 BW1M119 01260d40
	void MakeAllSourcesMaximum(CREATURE_DESIRES desire);
	// BW1W120 004de7c0 BW1M119 01260c00
	void ClearSourcesAfterSatisfyingDesire(CREATURE_DESIRES desire);
};

class CreatureDesireActionEntry : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00491980 BW1M119 012332d0
	virtual ~CreatureDesireActionEntry();
	// BW1W120 00491910 BW1M119 01233c20
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
};

class CreatureDesireAttributeEntry : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00491b70 BW1M119 01233060
	virtual ~CreatureDesireAttributeEntry();
	// BW1W120 00491b10 BW1M119 01233ce0
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
};

class CreatureDesireDependency : public GBaseInfo
{
public:
	uint32_t field_0x10[0x28];

	// Override methods

	// BW1W120 004db350 BW1M119 0125da10
	virtual ~CreatureDesireDependency() {}
	// BW1W120 004db2e0 BW1M119 01260880
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0119e940
	char* get_start() { return (char*)field_0x10; }
	// BW1W120 inlined BW1M119 0119e990
	unsigned long get_size() { return sizeof(field_0x10); }

	// BW1W120 inlined BW1M119 0119e8d0
	uint32_t SaveBinary(unsigned char* buffer, unsigned long size, LHFile* file);
	// BW1W120 inlined BW1M119 01260590
	static CreatureDesireDependency* GetInfo();

	// BW1W120 inlined BW1M119 inlined
	void LoadBinary(LHFile* file)
	{
		uint8_t* temp = new ("C:\\dev\\MP\\Black\\CreatureMentalDesire.h", 165) uint8_t[get_size()];
		file->GetSegmentData(temp, get_size(), -1);
		memcpy(get_start(), temp, get_size());
		delete[] temp;
		SetInfoID();
	}

	// BW1W120 inlined BW1M119 inlined
	uint32_t LoadTextAndCache(char** cursor, LHFile* file)
	{
		file->WriteSegmentData(*cursor, get_size());
		memcpy(get_start(), *cursor, get_size());
		*cursor += get_size();
		SetInfoID();
		return get_size();
	}

	// BW1W120 00c85cd0
	static CreatureDesireDependency g_CreatureDesireDependency[NUM_CREATURE_DESIRES];
};

class CreatureDesireForType : public GBaseInfo
{
public:
	float ByCreatureType[0x11]; /* 0x10 */

	// Override methods

	// BW1W120 004db420 BW1M119 0125f0c0
	virtual ~CreatureDesireForType() {}
	// BW1W120 004db3c0 BW1M119 012607c0
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);

	// Non-virtual methods

	// BW1W120 0042dfa0 BW1M119 inlined
	void LoadBinary(LHFile* file)
	{
		float* temp = new float[0x11];
		file->GetSegmentData(temp, sizeof(ByCreatureType), -1);
		for (int i = 0; i < 0x11; i++)
			ByCreatureType[i] = temp[i];
		delete[] temp;
		SetInfoID();
	}

	// BW1W120 0042df60 BW1M119 inlined
	uint32_t LoadTextAndCache(char** cursor, LHFile* file)
	{
		file->WriteSegmentData(*cursor, sizeof(ByCreatureType));
		for (int i = 0; i < 0x11; i++)
			ByCreatureType[i] = ((float*)*cursor)[i];
		*cursor += sizeof(ByCreatureType);
		SetInfoID();
		return sizeof(ByCreatureType);
	}
};

class CreatureDesireSourceTable : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 004dd1f0 BW1M119 01260ad0
	virtual ~CreatureDesireSourceTable();
	// BW1W120 004dd180 BW1M119 01262e80
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H */
