#ifndef BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>  /* For struct Zoomer3d */
#include <Lionhead/LHLib/ver5.0/LHFastPointer.h>  /* For LHFastPointer */
#include <re_common.h>                            /* For bool32_t */

#include "GJBaseUtils.h"          /* For GJLowPassFilterVariableStep */
#include "HandStateHolding.h"     /* For struct HandStateHolding */
#include "KPSplineInterpolator.h" /* For KPSplineInterpolator */

class CHand;
class Creature;
struct LHMatrix;

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
	float                                PourRaise;            /* 0x134 */
	float                                PourTilt;             /* 0x138 */
	LHFastPointer<Creature>              Ctr;                  /* 0x13c */
	KPSplineInterpolator<float>          PourEnvelope;         /* 0x140 */
	uint32_t                             UnusedClearedOnEnter; /* 0x14c */
	Zoomer3d                             GrainUpZoomer;        /* 0x150 */
	LHPoint                              HandMovement;         /* 0x1e0 */
	LHPoint                              ClampedHandPos;       /* 0x1ec */
	bool32_t                             ClampHand;            /* 0x1f8 */
	GJLowPassFilterVariableStep<LHPoint> HandVelocity;         /* 0x1fc */
	GJLowPassFilterVariableStep<float>   LateralAcceleration;  /* 0x210 */
	GJLowPassFilterVariableStep<float>   TurnRate;             /* 0x21c */

	// BW1W120 005b3080 BW1M119 01341a90
	virtual void Enter();
	// BW1W120 005b3290 BW1M119 01341a50
	virtual void Exit();
	// BW1W120 005b3310 BW1M119 01341520
	virtual void Update(float dt, LHMatrix* buffer);
	// BW1W120 005b2d50 BW1M119 013420f0
	virtual float GetTiltForRender();
	// BW1W120 005b2d30 BW1M119 01342150
	virtual float GetRaiseForRender();
	// BW1W120 005b32a0 BW1M119 01341930
	virtual void OverrideHandPos(LHPoint* pos);

	// BW1W120 005b2b80 BW1M119 013421b0
	HandStateGrain(CHand* hand);

	// BW1W120 005b2d70 BW1M119 01084140
	static void Process(float dt);
	// BW1W120 005b2f10 BW1M119 01341fb0
	static void EndTimedPour();
	// BW1W120 005b2f70 BW1M119 01341e30
	static void StartTimedPour(bool clamp_hand, float total_time, float height_to_raise, float angle_to_raise,
	                           POUR_TYPE type);
	// BW1W120 005b2fb0 BW1M119 01341d40
	static void StartTimedPour(Creature* creature, float total_time, float height_to_raise, float angle_to_raise,
	                           POUR_TYPE type);

	// BW1W120 005b2da0 BW1M119 0108e430
	void PProcess(float dt);
	// BW1W120 005b2f40 BW1M119 01341f10
	void PEndTimedPour();
	// BW1W120 005b3000 BW1M119 01341cb0
	void PStartTimedPour(bool clamp_hand, float total_time, float height_to_raise, float angle_to_raise,
	                     POUR_TYPE type);
	// BW1W120 005b3070 BW1M119 01341be0
	void PSetCtr(Creature* creature);
};

static_assert(sizeof(HandStateGrain) == 0x228, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_GRAIN_INCLUDED_H */
