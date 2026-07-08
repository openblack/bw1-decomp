#ifndef BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStateTotem : public HandState
{
public:
	uint8_t field_0x8[0xa4];

	// Override methods

	// BW1W120 005b7690 BW1M100 1033d350 HandStateTotem::Enter(void)
	virtual void Enter();
	// BW1W120 005b7790 BW1M100 1033d310 HandStateTotem::Exit(void)
	virtual void Exit();
	// BW1W120 005b77a0 BW1M100 1033cd20 HandStateTotem::Update(float, LHMatrix *)
	virtual void Update(float param_1, LHMatrix* param_2);

	// Constructors

	// BW1W120 005b7670 BW1M100 1033d4c0 HandStateTotem::HandStateTotem(CHand*)
	HandStateTotem(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H */
