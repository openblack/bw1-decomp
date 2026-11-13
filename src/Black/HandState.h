#ifndef BW1_DECOMP_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */

enum HAND_STATES
{
	HAND_STATES_INVISIBLE = 0x0,
	HAND_STATES_NORMAL = 0x1,
	HAND_STATES_CAMERA = 0x2,
	HAND_STATES_TUG = 0x3,
	HAND_STATES_HOLDING = 0x4,
	HAND_STATES_TOTEM = 0x5,
	HAND_STATES_MULTI_PICK_UP = 0x6,
	HAND_STATES_CREATURE = 0x7,
	HAND_STATES_GRAIN = 0x8,
	HAND_STATES_PLAY_ANIM = 0x9,
	HAND_STATES_CITADEL = 0xa,
	_HAND_STATES_COUNT = 0xb
};

enum HAND_ANIM
{
	HAND_ANIM_NONE = -1,
	HAND_ANIM_NORMAL = 0x0,
	HAND_ANIM_LAG_X = 0x1,
	HAND_ANIM_LAG_Y = 0x2,
	HAND_ANIM_HOLD_ABOVE = 0x6,
	HAND_ANIM_HOLD_SIDE = 0x9,
	HAND_ANIM_PICK_UP = 0xc,
	HAND_ANIM_LEASH = 0xf,
	HAND_ANIM_OVER_OBJECT = 0x18,
	HAND_ANIM_STROKE = 0x1b,
	HAND_ANIM_SLAP = 0x21,
	HAND_ANIM_GRAB_LAND = 0x2a,
	HAND_ANIM_ROTATE = 0x2d,
	HAND_ANIM_PITCH = 0x30,
	HAND_ANIM_ZOOM = 0x33,
	HAND_ANIM_HOLD_GRAIN = 0x3c
};

class CHand;
struct LHMatrix;

class HandState
{
public:
	CHand* Hand; /* 0x4 */

	// BW1W120 purecall BW1M119 purecall
	virtual void Enter() = 0;
	// BW1W120 0046e5e0 BW1M119 011cde50
	virtual void DrawTheHeldObject() {}
	// BW1W120 005b02d0 BW1M119 011ccd30
	virtual void Exit() {}
	// BW1W120 purecall BW1M119 purecall
	virtual void Update(float dt, LHMatrix* buffer) = 0;
	// BW1W120 0046be80 BW1M119 011af760
	virtual bool AllowCameraTricons() { return false; }

	// BW1W120 inlined BW1M119 011d10d0
	HandState(CHand* hand) : Hand(hand) {}
};

#endif /* BW1_DECOMP_HAND_STATE_INCLUDED_H */
