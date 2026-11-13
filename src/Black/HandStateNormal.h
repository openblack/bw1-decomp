#ifndef BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

class CHand;
struct LHMatrix;
struct LHPoint;

// BW1W120 005b5e70 BW1M119 01065620
void ObtainRequiredHandPosition(CHand* hand, float dt, float tilt, float& unused, LHPoint& hand_pos, LHPoint& up,
                                int& anim, bool use_camera_tricons, bool keep_clear_of_land);

class HandStateNormal : public HandState
{
public:
	long AnimationTime; /* 0x8 */
	int  Anim;          /* 0xc */

	// BW1W120 005b5d00 BW1M119 01344a80
	virtual void Enter();
	// BW1W120 005b71a0 BW1M119 0107b890
	virtual void Update(float dt, LHMatrix* buffer);
	// BW1W120 005b5c90 BW1M119 010977d0
	virtual bool AllowCameraTricons();

	// BW1W120 005b5c70 BW1M119 01344b80
	HandStateNormal(CHand* hand);
};

static_assert(sizeof(HandStateNormal) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H */
