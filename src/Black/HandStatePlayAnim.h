#ifndef BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

class CHand;
struct LHMatrix;

class HandStatePlayAnim : public HandState
{
public:
	uint8_t  field_0x8[0x10];
	uint32_t field_0x18;
	uint32_t field_0x1C;

	// Override methods

	// BW1W120 005b7510 BW1M119 01344df0
	virtual void Enter();
	// BW1W120 005b7520 BW1M119 01344c50
	virtual void Update(float param_1, LHMatrix* param_2);

	// Constructors

	// BW1W120 005b74f0 BW1M119 01344e30
	HandStatePlayAnim(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_PLAY_ANIM_INCLUDED_H */
