#ifndef BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <re_common.h>                            /* For bool32_t */

#include "HandState.h" /* For struct HandState */

class CHand;
struct LHMatrix;

class HandStatePlayAnim : public HandState
{
public:
	LHPoint  Pos;           /* 0x8 */
	long     Anim;          /* 0x14 */
	long     AnimationTime; /* 0x18 */
	bool32_t Started;       /* 0x1c */

	// BW1W120 005b7510 BW1M119 01344df0
	virtual void Enter();
	// BW1W120 005b7520 BW1M119 01344c50
	virtual void Update(float dt, LHMatrix* buffer);

	// BW1W120 005b74f0 BW1M119 01344e30
	HandStatePlayAnim(CHand* hand);
};

static_assert(sizeof(HandStatePlayAnim) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H */
