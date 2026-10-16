#ifndef BW1_DECOMP_CREATURE_ATTITUDE_TO_CREATURE_INCLUDED_H
#define BW1_DECOMP_CREATURE_ATTITUDE_TO_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */

#define CREATURE_HOW_IMPRESSIVE_DECAY                0.999999f
#define CREATURE_HOW_MUCH_ATTENTION_PAID_TO_ME_DECAY 0.9999f

// Forward Declares

class Creature;

class CreatureAttitudeToCreature
{
public:
	Creature* creature;
	float     HowNice;
	float     HowImpressive;
	float     HowMuchAttentionPaidToMe;

	// Constructors

	// BW1W120 004c4c60 BW1M119 inlined
	CreatureAttitudeToCreature(Creature* creature);
};
static_assert(sizeof(CreatureAttitudeToCreature) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ATTITUDE_TO_CREATURE_INCLUDED_H */
