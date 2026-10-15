#ifndef BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h>           /* For bool32_t */
#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */
#include <chlasm/Enum.h>         /* For NUM_CREATURE_DESIRES */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureInitialDesireInfo : public GBaseInfo
{
public:
	CREATURE_DESIRE_SOURCE Sources[MAX_NUM_SOURCES_FOR_EACH_DESIRE];
	bool32_t               Social;
	bool32_t               Emotional;
	uint32_t               field_0x38[0x3];
	bool32_t               Physical;
	bool32_t               CanBeHelped;
	float                  MaxLevel;
	float                  DecayRateMin;
	float                  DecayRateMax;
	float                  AlignmentChange;
	float                  AlignmentThreshold;
	uint32_t               field_0x60;
	float                  IncreaseTimeFeedbackDivisor;
	uint32_t               field_0x68[0x4];
	float                  NumCompletionsToSatisfyUrge;
	bool32_t               NumCompletionsChangeWithFeedback;
	char                   Name[0x40];
	uint32_t               field_0xc0[0x40];

	// Override methods

	// BW1W120 00491830 BW1M119 01233b60
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = sizeof(g_CreatureInitialDesireInfos) / sizeof(g_CreatureInitialDesireInfos[0]);
		return g_CreatureInitialDesireInfos;
	}

	// BW1W120 00c67e90
	static CreatureInitialDesireInfo g_CreatureInitialDesireInfos[NUM_CREATURE_DESIRES];

	// BW1W120 inlined BW1M119 01233640
	static CreatureInitialDesireInfo* GetInfo() { return g_CreatureInitialDesireInfos; }

	// TODO(#377): The original declared this class in CreatureAction.h.
	INFO_DATA_BLOCK(Sources, field_0xc0)
	INFO_ROOT_LOADERS("CreatureAction.h", 54)
};
static_assert(sizeof(CreatureInitialDesireInfo) == 0x1c0, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H */
