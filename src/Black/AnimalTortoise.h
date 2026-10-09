#ifndef BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Tortoise : public Cow
{
public:
	// Override methods

	// BW1W120 0041ce20 BW1M119 01176900
	virtual uint32_t MoveAnimation();
	// BW1W120 0041cea0 BW1M119 011766f0
	virtual uint32_t DyingAnimation();
	// BW1W120 0041ce30 BW1M119 011768c0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041ce40 BW1M119 0109fb10
	virtual uint32_t EatAnimation();
	// BW1W120 0041ce60 BW1M119 011767f0
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041ce70 BW1M119 011767b0
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041ce50 BW1M119 01176830
	virtual uint32_t SleepAnimation();
	// BW1W120 0041cf00 BW1M119 011766b0
	virtual uint32_t InHandAnimation();
	// BW1W120 0041ce90 BW1M119 01176730
	virtual uint32_t LandedAnimation();
	// BW1W120 0041cf10 BW1M119 01176670
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041db50 BW1M119 01175f60
	virtual char* GetDebugText();
	// BW1W120 0041db40 BW1M119 01175f20
	virtual uint32_t GetSaveType();
	// BW1W120 0041ce80 BW1M119 01176770
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Tortoise() {}
};

#endif /* BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H */
