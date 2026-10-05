#ifndef BW1_DECOMP_CREATURE_ATTITUDE_TO_CREATURE_INCLUDED_H
#define BW1_DECOMP_CREATURE_ATTITUDE_TO_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

class Creature;

class CreatureAttitudeToCreature
{
public:
	Creature* creature;
	float     Attitude;
	uint32_t  field_0x8;
	uint32_t  field_0xc;

	// Constructors

	// BW1W120 004c4c60 BW1M119 inlined
	CreatureAttitudeToCreature(Creature* creature);
};
static_assert(sizeof(CreatureAttitudeToCreature) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ATTITUDE_TO_CREATURE_INCLUDED_H */
