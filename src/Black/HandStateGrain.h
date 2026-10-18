#ifndef BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>  /* For struct Zoomer3d */
#include <re_common.h>                            /* For bool32_t */

#include "GJBaseUtils.h"          /* For GJLowPassFilterVariableStep */
#include "HandStateHolding.h"     /* For struct HandStateHolding */
#include "KPSplineInterpolator.h" /* For KPSplineInterpolator */

// Forward Declares

class CHand;
class Creature;

enum POUR_TYPE
{
	POUR_TYPE_ONCE = 0x0,
	POUR_TYPE_REPEAT = 0x1,
};

class HandStateGrain : public HandStateHolding
{
public:
	float                                Tilt;                 /* 0x114 */
	float                                Raise;                /* 0x118 */
	float                                PreviousTilt;         /* 0x11c */
	float                                PreviousRaise;        /* 0x120 */
	bool                                 Pouring;              /* 0x124 */
	POUR_TYPE                            PourType;             /* 0x128 */
	float                                PourProgress;         /* 0x12c */
	float                                PourDuration;         /* 0x130 */
	float                                PourTilt;             /* 0x134 */
	float                                PourRaise;            /* 0x138 */
	Creature*                            PourTarget;           /* 0x13c */
	KPSplineInterpolator<float>          PourEnvelope;         /* 0x140 */
	uint32_t                             UnusedClearedOnEnter; /* 0x14c */
	Zoomer3d                             GrainUpZoomer;        /* 0x150 */
	LHPoint                              HandMovement;         /* 0x1e0 */
	LHPoint                              PourTargetPos;        /* 0x1ec */
	bool32_t                             HasPourTargetPos;     /* 0x1f8 */
	GJLowPassFilterVariableStep<LHPoint> HandVelocity;         /* 0x1fc */
	GJLowPassFilterVariableStep<float>   LateralAcceleration;  /* 0x210 */
	GJLowPassFilterVariableStep<float>   TurnRate;             /* 0x21c */

	// Constructors

	// BW1W120 005b2b80 BW1M119 013421b0
	HandStateGrain(CHand* hand);

	// Static methods

	// BW1W120 005b2f70 BW1M119 01341e30
	static void StartTimedPour(bool clamp_hand, float total_time, float height_to_raise, float angle_to_raise,
	                           POUR_TYPE type);
};

static_assert(sizeof(HandStateGrain) == 0x228, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H */
