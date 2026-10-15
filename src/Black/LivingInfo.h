#ifndef BW1_DECOMP_LIVING_INFO_INCLUDED_H
#define BW1_DECOMP_LIVING_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */
#include <re_common.h>   /* For bool32_t */

#include "MobileWallHugInfo.h" /* For struct GMobileWallHugInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

class GLivingInfo : public GMobileWallHugInfo
{
public:
	uint32_t field_0x120;
	uint8_t  move_to_state;
	float    life;
	float    Strength;
	float    field_0x130;
	int      field_0x134;
	uint32_t TeenAge;
	uint32_t MiddleAge;
	uint32_t OldAge; /* 0x140 */
	bool32_t IsReacting[NUM_REACTION_FUNCTIONS];
	uint32_t IsShepherdable;
	uint32_t MinFlockingValue;
	uint32_t MaxFlockingValue;

	// TODO(#377): The original declared this class in Living.h.
	INFO_DATA_BLOCK(field_0x120, MaxFlockingValue)
	INFO_DERIVED_LOADERS(GMobileWallHugInfo, "Living.h", 197)
};

#endif /* BW1_DECOMP_LIVING_INFO_INCLUDED_H */
