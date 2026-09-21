#ifndef BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateInvisible : public HandState
{
public:
	// Override methods

	// BW1W120 0046be90 BW1M119 011d11e0
	virtual void Enter();
	// BW1W120 0046bed0 BW1M119 011d12b0
	virtual void Exit();
	// BW1W120 0046bee0 BW1M119 011d1310
	virtual void Update(float param_1, LHMatrix* param_2);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	HandStateInvisible(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_INVISIBLE_INCLUDED_H */
