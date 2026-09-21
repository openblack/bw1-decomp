#ifndef BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateNormal : public HandState
{
public:
	uintptr_t field_0x8;
	uintptr_t field_0xC;

	// Override methods

	// BW1W120 005b5d00 BW1M119 01344a80
	virtual void Enter();
	// BW1W120 005b71a0 BW1M119 0107b890
	virtual void Update(float param_1, LHMatrix* param_2);

	// Constructors

	// BW1W120 005b5c70 BW1M119 01344b80
	HandStateNormal(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_NORMAL_INCLUDED_H */
