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

	// BW1W120 004d1b90 BW1M100 10242e40 CreatureInterestingThingToLookAt::CreatureInterestingThingToLookAt(void)
	CreatureInterestingThingToLookAt();
};

class CreatureVisionState : public Base
{
public:
	CreatureInterestingThingToLookAt ThingToLookAt; /* 0x8 */
	uint32_t                         field_0x28;
	uint32_t                         field_0x2c;
	uint32_t                         field_0x30;
	uint32_t                         field_0x34;
	uint32_t                         field_0x38;
	uint32_t                         field_0x3c;
	uint32_t                         field_0x40;
	uint32_t                         field_0x44;

	// Override methods

	// BW1W120 004d0370 BW1M100 10245880 CreatureVisionState::_dt(void)
	virtual ~CreatureVisionState();
};

#endif /* BW1_DECOMP_CREATURE_VISION_STATE_INCLUDED_H */
