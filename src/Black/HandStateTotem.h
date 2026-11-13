#ifndef BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

class CHand;
struct LHMatrix;

class HandStateTotem : public HandState
{
public:
	long    AnimationTime; /* 0x8 */
	uint8_t field_0xc[0x9c];
	float   Height; /* 0xa8 */

	// BW1W120 005b7690 BW1M119 01345630
	virtual void Enter();
	// BW1W120 005b7790 BW1M119 013455f0
	virtual void Exit();
	// BW1W120 005b77a0 BW1M119 01345000
	virtual void Update(float dt, LHMatrix* buffer);

	// BW1W120 005b7670 BW1M119 013457a0
	HandStateTotem(CHand* hand);
};

#endif /* BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H */
