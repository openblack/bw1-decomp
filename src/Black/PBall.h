#ifndef BW1_DECOMP_P_BALL_INCLUDED_H
#define BW1_DECOMP_P_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class Object;

class PBall : public MobileObject
{
public:
	uint8_t field_0x68[0xc];

	// Override methods

	// BW1W120 0063e950 BW1M119 inlined
	virtual ~PBall();
	// BW1W120 0063e990 BW1M119 inlined
	virtual uint32_t Process();
	// BW1W120 0063e980 BW1M119 inlined
	virtual void Draw();
};
static_assert(sizeof(PBall) == 0x74, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_BALL_INCLUDED_H */
