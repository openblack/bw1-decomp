#ifndef BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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
	uint32_t               field_0x30[0x7];
	float                  DesireDecay;
	float                  InitialValueMin;
	float                  InitialValueMax;
	float                  AlignmentChange;
	uint32_t               field_0x5c[0x7];
	float                  DesireGrowthRate;
	uint32_t               field_0x7c[0x51];

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
	INFO_DATA_BLOCK(Sources, field_0x7c)
	INFO_ROOT_LOADERS("CreatureAction.h", 54)
};
static_assert(sizeof(CreatureInitialDesireInfo) == 0x1c0, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_INITIAL_DESIRE_INFO_INCLUDED_H */
