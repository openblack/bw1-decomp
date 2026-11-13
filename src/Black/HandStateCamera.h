#ifndef BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer, struct Zoomer3d */
#include <re_common.h>                           /* For bool32_t */

#include "HandState.h" /* For struct HandState */

class CHand;
struct LHMatrix;

class HandStateCamera : public HandState
{
public:
	long      AnimationTime;          /* 0x8 */
	bool32_t  BlendUp;                /* 0xc */
	bool32_t  GrabbingLand;           /* 0x10 */
	HAND_ANIM Anim;                   /* 0x14 */
	Zoomer3d  UpZoomer;               /* 0x18 */
	Zoomer    DistanceFromViewZoomer; /* 0xa8 */

	// BW1W120 005b02f0 BW1M119 0133f280
	virtual void Enter();
	// BW1W120 005b03e0 BW1M119 0133e8f0
	virtual void Update(float dt, LHMatrix* buffer);
	// BW1W120 005b02e0 BW1M119 0133e8a0
	virtual bool AllowCameraTricons();

	// BW1W120 005b02b0 BW1M119 0133f360
	HandStateCamera(CHand* hand);
};

static_assert(sizeof(HandStateCamera) == 0xd8, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H */
