#ifndef BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For CREATURE_TYPE_LAST, NUM_CREATURE_DESIRE_SOURCES */
#include <re_common.h>           /* For ARRAY_SIZE */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureInitialSourceInfo : public GBaseInfo
{
public:
	float ByCreatureType[CREATURE_TYPE_LAST];

	// Override methods

	// BW1W120 004dd260 BW1M119 01262dc0
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = ARRAY_SIZE(InitialValue);
		return InitialValue;
	}

	// Static data

	// BW1W120 00c89958
	static CreatureInitialSourceInfo InitialValue[NUM_CREATURE_DESIRE_SOURCES];
	// BW1W120 00c87e98
	static CreatureInitialSourceInfo InitialThreshold[NUM_CREATURE_DESIRE_SOURCES];

	// Static methods

	// BW1W120 inlined BW1M119 01262b90
	static CreatureInitialSourceInfo* GetInitialValue() { return InitialValue; }
	// BW1W120 inlined BW1M119 01262ad0
	static CreatureInitialSourceInfo* GetInitialThreshold() { return InitialThreshold; }

	// TODO(#377): The original declared this class in CreatureMentalDesireSource.h.
	INFO_DATA_BLOCK(ByCreatureType, ByCreatureType)
	INFO_ROOT_LOADERS("CreatureMentalDesireSource.h", 24)
};
#ifdef VERSION_BW1WCI
static_assert(sizeof(CreatureInitialSourceInfo) == 0x5c, "Data type is of wrong size");
#else
static_assert(sizeof(CreatureInitialSourceInfo) == 0x54, "Data type is of wrong size");
#endif

#endif /* BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H */
