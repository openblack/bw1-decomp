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
	uint32_t                           field_0x8[NUM_CREATURE_DESIRES];
	float                              field_0xa8[NUM_CREATURE_DESIRES];
	float                              field_0x148[NUM_CREATURE_DESIRES];
	float                              IncreaseTime[NUM_CREATURE_DESIRES]; /* 0x1e8 */
	uint32_t                           field_0x288[NUM_CREATURE_DESIRES];
	LHLinkedList<CreatureDesireSource> SourceLists[NUM_CREATURE_DESIRES]; /* 0x328 */
	uint32_t                           field_0x468[NUM_CREATURE_DESIRES];
	uint32_t                           field_0x508[NUM_CREATURE_DESIRES];
	uint32_t                           field_0x5a8[NUM_CREATURE_DESIRES];
	Creature*                          creature; /* 0x648 */
	const CreatureInfo*                creature_info;
	uint32_t                           field_0x650;
	uint32_t                           field_0x654;
	uint32_t                           field_0x658[NUM_CREATURE_DESIRES];
	uint32_t                           field_0x6f8;
	uint32_t                           field_0x6fc;
	uint32_t                           field_0x700;
	uint32_t                           field_0x704;

	// Override methods

	// BW1W120 004dc040 BW1M100 1025ad30 CreatureDesires::~CreatureDesires(void)
	virtual ~CreatureDesires();

	// Constructors

	// BW1W120 004dbff0 BW1M100 1025b030 CreatureDesires::CreatureDesires(Creature *, CreatureInfo const *)
	CreatureDesires(Creature* creature, const CreatureInfo* info);

	// Non-virtual methods

	// BW1W120 004dc100 BW1M100 1025a980 CreatureDesires::Initialise(Creature *, CreatureInfo const *)
	void Initialise(Creature* creature, const CreatureInfo* info);
	// BW1W120 004dc210 BW1M100 1025a860 CreatureDesires::SuppressDesiresAfterDecidingOnActivity(unsigned int)
	void SuppressDesiresAfterDecidingOnActivity(uint32_t param_1);
	// BW1W120 004dc260 BW1M100 1025a780 CreatureDesires::SuppressDesire(unsigned int, float)
	void SuppressDesire(uint32_t param_1, float param_2);
	// BW1W120 004dc2d0 BW1M100 1025a730 CreatureDesires::UnsuppressDesire(unsigned long)
	void UnsuppressDesire(unsigned long desire);
	// BW1W120 004dc2f0 BW1M100 1025a640 CreatureDesires::UnsuppressAllDesires(void)
	void UnsuppressAllDesires();
	// BW1W120 004dc310 BW1M100 inlined CreatureDesires::RandomiseIncreaseTime(unsigned long)
	// fabricated name; jitters IncreaseTime[desire] when the randomise cheat flag is set
	void RandomiseIncreaseTime(unsigned long desire);
	// BW1W120 004dc370 BW1M100 1025a5b0 CreatureDesires::MultiplyDesire(CreatureInfo const *, unsigned long, float)
	void MultiplyDesire(const CreatureInfo* info, unsigned long desire, float multiplier);
	// BW1W120 004dc3d0 BW1M100 1025a520 CreatureDesires::DivideIncreaseTimeTimeBy(unsigned long, float)
	void DivideIncreaseTimeTimeBy(unsigned long desire, float divisor);
	// BW1W120 004dc430 BW1M100 1025a3c0 CreatureDesires::UpdateDesires(Creature *)
	void UpdateDesires(Creature* creature);
	// BW1W120 004dc500 BW1M100 1025a380 CreatureDesires::StorePreviousValues(void)
	void StorePreviousValues();
	// BW1W120 004dc510 BW1M100 1025a250 CreatureDesires::UpdateDesiresAfterPerformingAction(unsigned long, CreatureInfo const *)
	void UpdateDesiresAfterPerformingAction(unsigned long action, const CreatureInfo* info);
	// BW1W120 004dc5b0 BW1M100 1025a180 CreatureDesires::FindDominantDesire(unsigned int)
	void FindDominantDesire(uint32_t param_1);
	// BW1W120 004dc600 BW1M100 1025a070 CreatureDesires::FindDominantDesireWhichIsManifestable(CREATURE_DESIRES)
	uint32_t FindDominantDesireWhichIsManifestable(CREATURE_DESIRES desire);
	// BW1W120 004dc680 BW1M100 10259f80 CreatureDesires::FindDominantDesireWhichCanBeHelped(void)
	uint32_t FindDominantDesireWhichCanBeHelped();
	// BW1W120 004dc760 BW1M100 10259ec0 CreatureDesires::GetRankPositionOfDesire(unsigned long)
	uint32_t GetRankPositionOfDesire(unsigned long desire);
	// BW1W120 004dc7b0 BW1M100 10259de0 CreatureDesires::FindWeakestDesire(void)
	uint32_t FindWeakestDesire();
	// BW1W120 004dc800 BW1M100 10259cf0 CreatureDesires::FindStrongestPhysicalDesire(void)
	uint32_t FindStrongestPhysicalDesire();
	// BW1W120 004dc880 BW1M100 10259c50 CreatureDesires::FindStrongestPhysicalDesireValue(void)
	float FindStrongestPhysicalDesireValue();
	// BW1W120 004dc8a0 BW1M100 10259a70 CreatureDesires::MakeDesireMostDominant(unsigned int, CreatureInfo const *, float)
	void MakeDesireMostDominant(uint32_t param_1, const CreatureInfo* info, float param_3);
	// BW1W120 004dc920 BW1M100 102598e0 CreatureDesires::MakeDesireFullyDominant(unsigned long, CreatureInfo const *)
	void MakeDesireFullyDominant(unsigned long desire, const CreatureInfo* info);
	// BW1W120 004dc970 BW1M100 10259840 CreatureDesires::MakeDesireMax(unsigned long)
	void MakeDesireMax(unsigned long desire);
	// BW1W120 004dc9f0 BW1M100 10259690 CreatureDesires::MakeDesireLeastDominant(unsigned long, CreatureInfo const *, float)
	void MakeDesireLeastDominant(unsigned long desire, const CreatureInfo* info, float param_3);
	// BW1W120 004dca60 BW1M100 102590a0 CreatureDesires::ModifyDesireAfterFeedback(CreatureInfo const *, CREATURE_DESIRES, CREATURE_DESIRE_SOURCE, float)
	void ModifyDesireAfterFeedback(const CreatureInfo* info, CREATURE_DESIRES desire, CREATURE_DESIRE_SOURCE source,
	                               float param_4);
	// BW1W120 004dcd50 BW1M100 10258fd0 CreatureDesires::UpdateAfterActionCompletionToSeeIfUrgeIsSatisfied(CREATURE_DESIRES)
	bool32_t UpdateAfterActionCompletionToSeeIfUrgeIsSatisfied(CREATURE_DESIRES desire);
	// BW1W120 004dcda0 BW1M100 10258f50 CreatureDesires::IsActivated(CREATURE_DESIRES)
	bool32_t IsActivated(CREATURE_DESIRES param_1);
	// BW1W120 004dcdd0 BW1M100 10258ef0 CreatureDesires::SetActivated(CREATURE_DESIRES, int)
	void SetActivated(CREATURE_DESIRES desire, int value);
	// BW1W120 inlined BW1M100 10258b90 CreatureDesires::IsSuppressed(unsigned long)
	bool32_t IsSuppressed(unsigned long desire);
	// BW1W120 inlined BW1M100 10230810 CreatureDesires::GetDesire(unsigned long)
	float GetDesire(unsigned long desire) { return field_0x148[desire]; }
	// BW1W120 004de270 BW1M100 1025d410 CreatureDesires::InitialiseSources(void)
	void InitialiseSources();
	// BW1W120 004de370 BW1M100 1025d2f0 CreatureDesires::GetSource(CREATURE_DESIRE_SOURCE)
	void GetSource(CREATURE_DESIRE_SOURCE param_1);
	// BW1W120 inlined BW1M100 1025d010 CreatureDesires::GetOverallThresholdChange(CREATURE_DESIRES)
	float GetOverallThresholdChange(CREATURE_DESIRES desire);
	// BW1W120 004de410 BW1M100 1025ce80 CreatureDesires::GetTextSummarisingAttitudeToDesire(CREATURE_DESIRES)
	char* GetTextSummarisingAttitudeToDesire(CREATURE_DESIRES desire);
	// BW1W120 004de550 BW1M100 1025cd50 CreatureDesires::GetIncrementFromSources(CREATURE_DESIRES)
	float GetIncrementFromSources(CREATURE_DESIRES desire);
	// BW1W120 004de5d0 BW1M100 1025cc80 CreatureDesires::GetDominantSource(unsigned long)
	uint32_t GetDominantSource(unsigned long desire);
	// BW1W120 004de620 BW1M100 1025cb30 CreatureDesires::UpdateSources(void)
	void UpdateSources();
	// BW1W120 004de6c0 BW1M100 1025ca30 CreatureDesires::SetSource(CREATURE_DESIRE_SOURCE, float)
	void SetSource(CREATURE_DESIRE_SOURCE source, float value);
	// BW1W120 004de730 BW1M100 1025c970 CreatureDesires::ChangeSource(CREATURE_DESIRE_SOURCE, float)
	void ChangeSource(CREATURE_DESIRE_SOURCE param_1, float param_2);
	// BW1W120 004de780 BW1M100 1025c890 CreatureDesires::MakeAllSourcesMaximum(CREATURE_DESIRES)
	void MakeAllSourcesMaximum(CREATURE_DESIRES desire);
	// BW1W120 004de7c0 BW1M100 1025c750 CreatureDesires::ClearSourcesAfterSatisfyingDesire(CREATURE_DESIRES)
	void ClearSourcesAfterSatisfyingDesire(CREATURE_DESIRES desire);
};

class CreatureDesireActionEntry : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00491980 BW1M100 1022e3c0 CreatureDesireActionEntry::~CreatureDesireActionEntry(void)
	virtual ~CreatureDesireActionEntry();
	// BW1W120 00491910 BW1M100 1022ed30 CreatureDesireActionEntry::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
};

class CreatureDesireAttributeEntry : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00491b70 BW1M100 1022e150 CreatureDesireAttributeEntry::~CreatureDesireAttributeEntry(void)
	virtual ~CreatureDesireAttributeEntry();
	// BW1W120 00491b10 BW1M100 1022edf0 CreatureDesireAttributeEntry::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
};

class CreatureDesireDependency : public GBaseInfo
{
public:
	uint32_t field_0x10[0x28];

	// Override methods

	// BW1W120 004db350 BW1M100 10259590 CreatureDesireDependency::~CreatureDesireDependency(void)
	virtual ~CreatureDesireDependency() {}
	// BW1W120 004db2e0 BW1M100 1025c710 CreatureDesireDependency::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);

	// Non-virtual methods

	// BW1W120 inlined BW1M100 10195450 CreatureDesireDependency::get_start(void)
	char* get_start() { return (char*)field_0x10; }
	// BW1W120 inlined BW1M100 101954a0 CreatureDesireDependency::get_size(void)
	unsigned long get_size() { return sizeof(field_0x10); }

	// BW1W120 inlined BW1M100 101953e0 CreatureDesireDependency::SaveBinary(unsigned char *, unsigned long, LHFile *)
	uint32_t SaveBinary(unsigned char* buffer, unsigned long size, LHFile* file);
	// BW1W120 inlined BW1M100 1025c0e0 CreatureDesireDependency::GetInfo(void)
	static CreatureDesireDependency* GetInfo();

	// BW1W120 inlined BW1M100 inlined CreatureDesireDependency::LoadBinary(LHFile *)
	void LoadBinary(LHFile* file)
	{
		uint8_t* temp = new ("C:\\dev\\MP\\Black\\CreatureMentalDesire.h", 165) uint8_t[get_size()];
		file->GetSegmentData(temp, get_size(), -1);
		memcpy(get_start(), temp, get_size());
		delete[] temp;
		SetInfoID();
	}

	// BW1W120 inlined BW1M100 inlined CreatureDesireDependency::LoadTextAndCache(char **, LHFile *)
	uint32_t LoadTextAndCache(char** cursor, LHFile* file)
	{
		file->WriteSegmentData(*cursor, get_size());
		memcpy(get_start(), *cursor, get_size());
		*cursor += get_size();
		SetInfoID();
		return get_size();
	}

	// BW1W120 0x00c85cd0
	static CreatureDesireDependency g_CreatureDesireDependency[NUM_CREATURE_DESIRES];
};

class CreatureDesireForType : public GBaseInfo
{
public:
	float ByCreatureType[0x11]; /* 0x10 */

	// Override methods

	// BW1W120 004db420 BW1M100 1025ac00 CreatureDesireForType::~CreatureDesireForType(void)
	virtual ~CreatureDesireForType() {}
	// BW1W120 004db3c0 BW1M100 1025c650 CreatureDesireForType::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);

	// Non-virtual methods

	// BW1W120 0042dfa0 BW1M100 inlined CreatureDesireForType::LoadBinary(LHFile *)
	void LoadBinary(LHFile* file)
	{
		float* temp = new float[0x11];
		file->GetSegmentData(temp, sizeof(ByCreatureType), -1);
		for (int i = 0; i < 0x11; i++)
			ByCreatureType[i] = temp[i];
		delete[] temp;
		SetInfoID();
	}

	// BW1W120 0042df60 BW1M100 inlined CreatureDesireForType::LoadTextAndCache(char **, LHFile *)
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

	// BW1W120 004dd1f0 BW1M100 1025c960 CreatureDesireSourceTable::~CreatureDesireSourceTable(void)
	virtual ~CreatureDesireSourceTable();
	// BW1W120 004dd180 BW1M100 1025efa0 CreatureDesireSourceTable::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos);
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_INCLUDED_H */
