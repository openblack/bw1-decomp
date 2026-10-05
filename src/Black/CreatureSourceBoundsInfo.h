#ifndef BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureSourceBoundsInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0xc];

	// Override methods

	// BW1W120 004dd400 BW1M119 012629a0
	virtual ~CreatureSourceBoundsInfo();
	// BW1W120 004dd3a0 BW1M119 01262d00
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c892a8
	static CreatureSourceBoundsInfo ThresholdBounds[NUM_CREATURE_DESIRE_SOURCES];

	// Static methods

	// BW1W120 inlined BW1M119 01262880
	static CreatureSourceBoundsInfo* GetThresholdBounds() { return ThresholdBounds; }

	// TODO(#377): The original declared this class in CreatureMentalDesireSource.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("CreatureMentalDesireSource.h", 33)
};

#endif /* BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H */
