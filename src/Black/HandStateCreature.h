#ifndef BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;

class HandStateCreature : public HandState
{
public:
	uint8_t field_0x8[0x118];

	// Override methods

	// BW1W120 005b13f0 BW1M119 013411c0
	virtual void Enter();

	// Constructors

	// BW1W120 005b13d0 BW1M119 01341490
	HandStateCreature(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H */
