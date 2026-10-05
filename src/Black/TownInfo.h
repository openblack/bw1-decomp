#ifndef BW1_DECOMP_TOWN_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For VILLAGER_JOB_LAST */

#include "ContainerInfo.h" /* For struct GContainerInfo */
#include "InfoLoaders.h"   /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
struct LHColor;

class GTownInfo : public GContainerInfo
{
public:
	uint8_t  field_0x14[0x34];
	uint32_t FemalePercentage;
	uint8_t  field_0x4c[0x8];
	uint32_t JobWeights[VILLAGER_JOB_LAST];
	uint8_t  field_0x74[0x4];
	float    BaseInfluence;
	uint8_t  field_0x7c[0x20];
	float    InteractionDecrease;
	float    InteractionIncrease;
	uint8_t  field_0xa4[0x8];
	float    FirstAttackAggressorBonus;
	uint8_t  field_0xb0[0x8];
	float    InitialBeliefInNeutralPlayer;
	// TODO: Extent unknown (at most 0xe entries); Town::GetBaseInfluence indexes it with GGame::LandNumber.
	float    BaseInfluenceByLand[0xe];
	int      DefaultVillagerCapacity;
	float    ResourceBeliefMultiplier;
	float    ForeignResourceBeliefMultiplier;
	uint32_t ResourceRemovedRecoveryTurns;
	uint32_t field_0x104;
	uint32_t field_0x108;
	float    RepairDesireThreshold;
	uint32_t field_0x110;
	uint8_t  field_0x114[0x10];
	float    DiscipleMinDesire;
	float    DiscipleMaxDesire;
	uint32_t ArtifactBeliefGiftTurns;
	uint8_t  field_0x130[0x10];
	float    field_0x140;
	float    field_0x144;
	float    field_0x148;
	float    field_0x14c;
	uint32_t field_0x150;
	float    field_0x154;
	float    field_0x158;
	float    field_0x15c;
	float    DiscipleAlignmentChange;
	float    field_0x164;
	uint32_t field_0x168;
	float    field_0x16c;
	float    field_0x170;
	float    field_0x174;
	float    field_0x178;
	float    field_0x17c;
	float    field_0x180;
	float    field_0x184;
	float    field_0x188;

	// Static data

	// BW1W120 00da2780
	static GTownInfo Definitions[1];

	// Override methods

	// BW1W120 0073fd80 BW1M119 01553de0
	virtual LHColor GetDebugColor() const;
	// BW1W120 00738f70 BW1M119 0154f5e0
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = sizeof(Definitions) / sizeof(Definitions[0]);
		return GetInfo();
	}

	// Static methods

	// BW1W120 inlined BW1M119 01562350
	static GTownInfo* GetInfo() { return Definitions; }

	// TODO(#377): The original declared this class in Town.h.
	INFO_DATA_BLOCK(field_0x14, field_0x188)
	INFO_DERIVED_LOADERS(GContainerInfo, "Town.h", 110)
};

#endif /* BW1_DECOMP_TOWN_INFO_INCLUDED_H */
