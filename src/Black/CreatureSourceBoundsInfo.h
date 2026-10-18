#ifndef BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_DESIRE_SOURCES */
#include <re_common.h>           /* For ARRAY_SIZE */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureSourceBoundsInfo : public GBaseInfo
{
public:
	float MinThreshold;
	float MaxThreshold;
	float FeedbackScale;

	// Override methods

	// BW1W120 004dd3a0 BW1M119 01262d00
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = ARRAY_SIZE(ThresholdBounds);
		return ThresholdBounds;
	}

	// Static data

	// BW1W120 00c892a8
	static CreatureSourceBoundsInfo ThresholdBounds[NUM_CREATURE_DESIRE_SOURCES];

	// Static methods

	// BW1W120 inlined BW1M119 01262880
	static CreatureSourceBoundsInfo* GetThresholdBounds() { return ThresholdBounds; }

	// TODO(#377): The original declared this class in CreatureMentalDesireSource.h.
	INFO_DATA_BLOCK(MinThreshold, FeedbackScale)
	INFO_ROOT_LOADERS("CreatureMentalDesireSource.h", 33)
};
static_assert(sizeof(CreatureSourceBoundsInfo) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H */
