#ifndef BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H
#define BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Zebra : public Cow
{
public:
	// Override methods

	// BW1W120 0041cbd0 BW1M119 01176f20
	virtual uint32_t MoveAnimation();
	// BW1W120 0041cc50 BW1M119 01176d20
	virtual uint32_t DyingAnimation();
	// BW1W120 0041cbe0 BW1M119 01176ee0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041cbf0 BW1M119 01176ea0
	virtual uint32_t EatAnimation();
	// BW1W120 0041cc10 BW1M119 01176e20
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041cc20 BW1M119 01176de0
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041cc00 BW1M119 01176e60
	virtual uint32_t SleepAnimation();
	// BW1W120 0041ccb0 BW1M119 01176ce0
	virtual uint32_t InHandAnimation();
	// BW1W120 0041cc40 BW1M119 01176d60
	virtual uint32_t LandedAnimation();
	// BW1W120 0041ccc0 BW1M119 01176ca0
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041d910 BW1M119 0117a010
	virtual char* GetDebugText();
	// BW1W120 0041d900 BW1M119 01179fe0
	virtual uint32_t GetSaveType();
	// BW1W120 0041cc30 BW1M119 01176da0
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Zebra() {}
};

#endif /* BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H */
