#ifndef BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Horse : public Cow
{
public:
	// Override methods

	// BW1W120 0041ca70 BW1M119 011772a0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041cb50 BW1M119 01176fe0
	virtual uint32_t DyingAnimation();
	// BW1W120 0041caf0 BW1M119 01177120
	virtual uint32_t DeadAnimation();
	// BW1W120 0041caa0 BW1M119 01099a50
	virtual uint32_t EatAnimation();
	// BW1W120 0041cb20 BW1M119 011770a0
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041cb30 BW1M119 01177060
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041cb10 BW1M119 011770e0
	virtual uint32_t SleepAnimation();
	// BW1W120 0041cbb0 BW1M119 01176fa0
	virtual uint32_t InHandAnimation();
	// BW1W120 0041cac0 BW1M119 01177170
	virtual uint32_t LandedAnimation();
	// BW1W120 0041cbc0 BW1M119 01176f60
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041d780 BW1M119 0117a080
	virtual char* GetDebugText();
	// BW1W120 0041d770 BW1M119 0117a050
	virtual uint32_t GetSaveType();
	// BW1W120 0041cb40 BW1M119 01177020
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Horse() {}
};

#endif /* BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H */
