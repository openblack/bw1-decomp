#ifndef BW1_DECOMP_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */

enum HAND_STATES
{
	HAND_STATE_INVISIBLE = 0x0,
	HAND_STATE_NORMAL = 0x1,
	HAND_STATE_CAMERA = 0x2,
	HAND_STATE_TUG = 0x3,
	HAND_STATE_HOLDING = 0x4,
	HAND_STATE_TOTEM = 0x5,
	HAND_STATE_MULTI_PICK_UP = 0x6,
	HAND_STATE_CREATURE = 0x7,
	HAND_STATE_GRAIN = 0x8,
	HAND_STATE_PLAY_ANIM = 0x9,
	HAND_STATE_CITADEL = 0xa,
	_HAND_STATES_COUNT = 0xb
};

// Forward Declares

class CHand;
struct LHMatrix;

class HandState
{
public:
	CHand* hand; /* 0x4 */

	// Override methods

	virtual void Enter();
	// BW1W120 0046e5e0 BW1M119 011cde50
	virtual void DrawTheHeldObject();
	// BW1W120 005b02d0 BW1M119 011ccd30
	virtual void Exit();
	// BW1W120 0046be80 BW1M119 011af760
	virtual bool AllowCameraTricons();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	HandState(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_INCLUDED_H */
