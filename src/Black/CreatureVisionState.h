#ifndef BW1_DECOMP_CREATURE_VISION_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_VISION_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

struct CreatureInterestingThingToLookAt
{
	uint32_t  field_0x0;
	uint32_t  field_0x4;
	uint32_t  field_0x8;
	MapCoords coords;
	uint32_t  field_0x18;
	uint32_t  field_0x1c;

	// Constructors

	// BW1W120 004d1b90 BW1M119 01247730
	CreatureInterestingThingToLookAt();
};

class CreatureVisionState : public Base
{
public:
	CreatureInterestingThingToLookAt ThingToLookAt; /* 0x8 */
	bool32_t                         SeenObjectToActOn;
	bool32_t                         LookedAtPosOfObjectToActOn;
	bool32_t                         SeenObjectToUse;
	bool32_t                         LookedAtPosOfObjectToUse;
	uint32_t                         field_0x38;
	uint32_t                         field_0x3c;
	uint32_t                         field_0x40;
	uint32_t                         field_0x44;

	// Constructors

	// BW1W120 004d0340 BW1M119 0124a0e0
	CreatureVisionState();
};

#endif /* BW1_DECOMP_CREATURE_VISION_STATE_INCLUDED_H */
