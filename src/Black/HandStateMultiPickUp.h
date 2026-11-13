#ifndef BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

class CHand;
struct LHMatrix;

class HandStateMultiPickUp : public HandState
{
public:
	// BW1W120 005b5750 BW1M119 013447a0
	virtual void Enter();
	// BW1W120 005b5bd0 BW1M119 01344230
	virtual void DrawTheHeldObject();
	// BW1W120 005b57c0 BW1M119 01344750
	virtual void Exit();
	// BW1W120 005b57d0 BW1M119 013442b0
	virtual void Update(float dt, LHMatrix* buffer);

	// BW1W120 005b5730 BW1M119 01344870
	HandStateMultiPickUp(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_MULTI_PICK_UP_INCLUDED_H */
