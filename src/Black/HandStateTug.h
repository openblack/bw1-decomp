#ifndef BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */
#include <Lionhead/LH3DLib/development/Zoomer.h>   /* For struct Zoomer, struct Zoomer3d */
#include <re_common.h>                             /* For bool32_t */

#include "HandState.h" /* For struct HandState */

class CHand;

class HandStateTug : public HandState
{
public:
	int      AnimationTime;         /* 0x8 */
	bool32_t WaitingForBlend;       /* 0xc */
	bool32_t HeldObjectMatrixValid; /* 0x10 */
	Zoomer3d UpZoomer;              /* 0x14 */
	LHPoint  GroundNormal;          /* 0xa4 */
	LHPoint  GrabPoint;             /* 0xb0 */
	LHMatrix HeldObjectMatrix;      /* 0xbc */
	LHMatrix TugMatrix;             /* 0xec */
	Zoomer   StretchZoomer;         /* 0x11c */

	// BW1W120 005b7df0 BW1M119 01346a30
	virtual void Enter();
	// BW1W120 005b8e40 BW1M119 013458c0
	virtual void DrawTheHeldObject();
	// BW1W120 005b8070 BW1M119 01345930
	virtual void Update(float dt, LHMatrix* buffer);

	// BW1W120 005b7dd0 BW1M119 01346cd0
	HandStateTug(CHand* hand);

	// BW1W120 005b8e60 BW1M119 01345830
	void UpdateHeldObject();
};

static_assert(sizeof(HandStateTug) == 0x14c, "Data type is of wrong size");

#endif /* BW1_DECOMP_HAND_STATE_TUG_INCLUDED_H */
