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
	// BW1W120 purecall BW1M119 purecall
	virtual void Update(float param_1, LHMatrix* param_2) = 0;
	// BW1W120 0046be80 BW1M119 011af760
	virtual bool AllowCameraTricons();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	HandState(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_INCLUDED_H */
