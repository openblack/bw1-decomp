#ifndef BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class CreatureInitialSourceInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x44];

	// Override methods

	// BW1W120 004dd2c0 BW1M119 01261670
	virtual ~CreatureInitialSourceInfo();
	// BW1W120 004dd260 BW1M119 01262dc0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c89958
	static CreatureInitialSourceInfo InitialValue[NUM_CREATURE_DESIRE_SOURCES];
	// fabricated name
	// BW1W120 00c87e98
	static CreatureInitialSourceInfo InitialThreshold[NUM_CREATURE_DESIRE_SOURCES];

	// Static methods

	// BW1W120 inlined BW1M119 01262b90
	static CreatureInitialSourceInfo* GetInitialValue() { return InitialValue; }
	// BW1W120 inlined BW1M119 01262ad0
	static CreatureInitialSourceInfo* GetInitialThreshold() { return InitialThreshold; }

	// TODO(#377): The original declared this class in CreatureMentalDesireSource.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("CreatureMentalDesireSource.h", 24)
};

#endif /* BW1_DECOMP_CREATURE_INITIAL_SOURCE_INFO_INCLUDED_H */
