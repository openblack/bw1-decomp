#ifndef BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer, struct Zoomer3d */
#include <re_common.h>                           /* For bool32_t */

#include "HandState.h" /* For struct HandState */

#define HAND_STATE_CREATURE_NUM_STROKE_BONES             9
#define HAND_STATE_CREATURE_MIN_TIME_BEFORE_SLAP         1000
#define HAND_STATE_CREATURE_MIN_TOUCH_TIME_BEFORE_STROKE 1000
#define HAND_STATE_CREATURE_FACIAL_ACTION_TIME           2000
#define HAND_STATE_CREATURE_MAX_BRUISE_SEVERITY          7

class CHand;

enum HAND_STATE_CREATURE_SLAP_HEIGHT
{
	HAND_STATE_CREATURE_SLAP_HEIGHT_LOW = 0,
	HAND_STATE_CREATURE_SLAP_HEIGHT_MIDDLE = 1,
	HAND_STATE_CREATURE_SLAP_HEIGHT_HIGH = 2
};

class HandStateCreature : public HandState
{
public:
	long                            AnimationTime;                                     /* 0x8 */
	Zoomer3d                        UpZoomer;                                          /* 0xc */
	Zoomer                          DistanceFromViewZoomer;                            /* 0x9c */
	int                             ActionTimer;                                       /* 0xcc */
	int                             FacialActionTimer;                                 /* 0xd0 */
	int                             TouchTimer;                                        /* 0xd4 */
	float                           HandValue;                                         /* 0xd8 */
	int                             SlapTimer;                                         /* 0xdc */
	bool32_t                        ActionStarted;                                     /* 0xe0 */
	long                            StrokeBones[HAND_STATE_CREATURE_NUM_STROKE_BONES]; /* 0xe4 */
	int                             LastStrokedBone;                                   /* 0x108 */
	uint32_t                        field_0x10c;
	bool32_t                        Touching;   /* 0x110 */
	HAND_ANIM                       Anim;       /* 0x114 */
	HAND_STATE_CREATURE_SLAP_HEIGHT SlapHeight; /* 0x118 */
	int                             SlapCount;  /* 0x11c */

	// BW1W120 005b13f0 BW1M119 013411c0
	virtual void Enter();
	// BW1W120 005b2a80 BW1M119 0133fd30
	virtual void Exit();
	// BW1W120 005b17b0 BW1M119 0133fd90
	virtual void Update(float dt, LHMatrix* buffer);

	// BW1W120 005b13d0 BW1M119 01341490
	HandStateCreature(CHand* hand);
};

static_assert(sizeof(HandStateCreature) == 0x120, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_CREATURE_INCLUDED_H */
