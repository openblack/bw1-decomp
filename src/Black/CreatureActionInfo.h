#ifndef BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureActionInfo : public GBaseInfo
{
public:
	float                       StrengthGain;
	float                       EnergyCost;
	float                       ExhaustionCost;
	IMPRESSIVE_TYPE             ImpressiveType;
	float                       ImpressiveValue;
	char                        Name[0x20];
	uint8_t                     field_0x44[0x60];
	bool32_t                    NeedsObjectToActOn;
	CREATURE_DESIRES            PlanIndex;
	CREATURE_ACTION_KNOWN_ABOUT KnownAboutCategory;
	CREATURE_ACTION_KNOWN_ABOUT KnownAboutCategory2;
	MAGIC_TYPE                  MagicType;
	bool32_t                    ExcludesCarriedObject;
	uint8_t                     field_0xbc[0x8];
	CREATURE_DESIRES            Desire;
	uint8_t                     field_0xc8[0x8];
	float                       CompletionFactor;
	float                       FullSkillCount;
	bool32_t                    CompletionEnabled;
	uint8_t                     field_0xdc[0x4];
	float                       LearnWindow;
	float                       InitialOpinion;
	uint8_t                     field_0xe8[0x4];
	bool32_t                    WorthFollowing;
	uint8_t                     field_0xf0[0xc];
	float                       HowNiceChange;
	bool32_t                    Learnable;
	bool32_t                    IsRecoveryAction;
#ifdef VERSION_BW1W100
	uint8_t field_0x108[0x4];
#else
	uint8_t field_0x108[0x8];
#endif // VERSION_BW1W100

	// Override methods

	// BW1W120 00491750 BW1M119 01233ab0
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = sizeof(g_CreatureActionInfos) / sizeof(g_CreatureActionInfos[0]);
		return g_CreatureActionInfos;
	}

	// BW1W120 00c6c490
	static CreatureActionInfo g_CreatureActionInfos[NUM_CREATURE_ACTIONS];

	// BW1W120 inlined BW1M119 01233880
	static CreatureActionInfo* GetInfo() { return g_CreatureActionInfos; }

	// TODO(#377): The original declared this class in CreatureAction.h.
	INFO_DATA_BLOCK(StrengthGain, field_0x108)
	INFO_ROOT_LOADERS("CreatureAction.h", 46)
};
#ifdef VERSION_BW1W100
static_assert(sizeof(CreatureActionInfo) == 0x10c, "Data type is of wrong size");
#else
static_assert(sizeof(CreatureActionInfo) == 0x110, "Data type is of wrong size");
#endif // VERSION_BW1W100

#endif /* BW1_DECOMP_CREATURE_ACTION_INFO_INCLUDED_H */
