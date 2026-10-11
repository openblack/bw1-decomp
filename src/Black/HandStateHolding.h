#ifndef BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;

class HandStateHolding : public HandState
{
public:
	uintptr_t AnimationTime; /* 0x8 */
	uint8_t   field_0xC[4];
	uintptr_t field_0x10;
	uint8_t   field_0x14[0x100]; /* Reset by Enter; the part that Update uses starts at 0xd4 */

	// Constructors

	// BW1W120 005b3aa0 BW1M119 01343b80
	HandStateHolding(CHand* hand);
};

static_assert(sizeof(HandStateHolding) == 0x114, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H */
