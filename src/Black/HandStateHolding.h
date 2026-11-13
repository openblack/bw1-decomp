#ifndef BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>  /* For struct Zoomer, struct Zoomer3d */
#include <re_common.h>                            /* For bool32_t */

#include "HandState.h" /* For struct HandState */

#define HAND_THROW_TIME_STEP 10

class CHand;
struct LHMatrix;

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

	// BW1W120 005b3af0 BW1M119 01343a00
	virtual void Enter();
	// BW1W120 005b56d0 BW1M119 010964e0
	virtual void DrawTheHeldObject();
	// BW1W120 005b3c70 BW1M119 0106d220
	virtual void Update(float dt, LHMatrix* buffer);
	// BW1W120 005b3a70 BW1M119 0108f270
	virtual bool AllowCameraTricons();

	// BW1W120 005b3ac0 BW1M119 010973b0
	virtual float GetTiltForRender();
	// BW1W120 005b3ad0 BW1M119 010996d0
	virtual float GetRaiseForRender();
	// BW1W120 005b3ae0 BW1M119 01099600
	virtual void OverrideHandPos(LHPoint* pos);

	// BW1W120 005b3aa0 BW1M119 01343b80
	HandStateHolding(CHand* hand);

	// BW1W120 005b3c60 BW1M119 01099220
	bool CanCurrentlyGiveToCreature();
};

static_assert(sizeof(HandStateHolding) == 0x114, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_HOLDING_INCLUDED_H */
