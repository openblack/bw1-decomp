#ifndef BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer, struct Zoomer3d */

#include "HandState.h" /* For struct HandState */

class CHand;
struct LHMatrix;

class HandStateCitadel : public HandState
{
public:
	long      AnimationTime;          /* 0x8 */
	HAND_ANIM Anim;                   /* 0xc */
	Zoomer3d  UpZoomer;               /* 0x10 */
	Zoomer    DistanceFromViewZoomer; /* 0xa0 */

	// BW1W120 005b0c10 BW1M119 0133fbc0
	virtual void Enter();
	// BW1W120 005b0d00 BW1M119 0133f400
	virtual void Update(float dt, LHMatrix* buffer);

	// BW1W120 005b0bf0 BW1M119 0133fc90
	HandStateCitadel(CHand* hand);
};

static_assert(sizeof(HandStateCitadel) == 0xd0, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H */
