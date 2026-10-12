#ifndef BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>  /* For struct Zoomer, struct Zoomer3d */
#include <re_common.h>                            /* For bool32_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;

class HandStateHolding : public HandState
{
public:
	uintptr_t AnimationTime;          /* 0x8 */
	uint32_t  Unused;                 /* 0xc */
	uint32_t  UnusedClearedOnCreate;  /* 0x10 */
	Zoomer3d  UpZoomer;               /* 0x14 */
	Zoomer    DistanceFromViewZoomer; /* 0xa4 */
	Zoomer    RotationZoomer;         /* 0xd4 */
	bool32_t  InThrow;                /* 0x104 */
	LHPoint   ThrowVelocity;          /* 0x108 */

	// Constructors

	// BW1W120 005b3aa0 BW1M119 01343b80
	HandStateHolding(CHand* hand);
};

static_assert(sizeof(HandStateHolding) == 0x114, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H */
