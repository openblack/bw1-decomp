#ifndef BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

class CHand;
struct LHMatrix;

class HandStateInvisible : public HandState
{
public:
	// BW1W120 0046be90 BW1M119 011d11e0
	virtual void Enter();
	// BW1W120 0046bed0 BW1M119 011d12b0
	virtual void Exit();
	// BW1W120 0046bee0 BW1M119 011d1310
	virtual void Update(float dt, LHMatrix* buffer);

	// BW1W120 inlined BW1M119 inlined
	HandStateInvisible(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H */
