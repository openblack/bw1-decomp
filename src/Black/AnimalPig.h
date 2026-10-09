#ifndef BW1_DECOMP_ANIMAL_PIG_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Pig : public Cow
{
public:
	// Override methods

	// BW1W120 0041ccd0 BW1M119 01099ab0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041cda0 BW1M119 011769c0
	virtual uint32_t DyingAnimation();
	// BW1W120 0041cd40 BW1M119 01176b20
	virtual uint32_t DeadAnimation();
	// BW1W120 0041ccf0 BW1M119 010999f0
	virtual uint32_t EatAnimation();
	// BW1W120 0041cd70 BW1M119 01176aa0
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041cd80 BW1M119 01176a60
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041cd60 BW1M119 01176ae0
	virtual uint32_t SleepAnimation();
	// BW1W120 0041ce00 BW1M119 01176980
	virtual uint32_t InHandAnimation();
	// BW1W120 0041cd10 BW1M119 01176b70
	virtual uint32_t LandedAnimation();
	// BW1W120 0041ce10 BW1M119 01176940
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041d9c0 BW1M119 01179f10
	virtual char* GetDebugText();
	// BW1W120 0041d9b0 BW1M119 01179ee0
	virtual uint32_t GetSaveType();
	// BW1W120 0041cd90 BW1M119 010a1f00
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Pig() {}
};

#endif /* BW1_DECOMP_ANIMAL_PIG_INCLUDED_H */
