#ifndef BW1_DECOMP_ANIMAL_COW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_COW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Animal.h" /* For struct Animal */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class Living;

class Cow : public Animal
{
public:
	// Override methods

	// BW1W120 0041c7e0 BW1M119 010a1db0
	virtual uint32_t StandAnimation();
	// BW1W120 0041d280 BW1M119 0106f520
	virtual bool32_t Wander();
	// BW1W120 0041d4a0 BW1M119 0117b370
	virtual bool32_t StartToEat();
	// BW1W120 0041d0e0 BW1M119 01137400
	virtual uint32_t IsOkToBeShepherd();
	// BW1W120 0041d310 BW1M119 0106ad70
	virtual uint32_t ReactToAnimalNeeds();
	// BW1W120 0041d440 BW1M119 0106b4d0
	virtual uint32_t LookForFoodPos();
	// BW1W120 0041c720 BW1M119 0109f190
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c7f0 BW1M119 01177970
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c790 BW1M119 01177ab0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c740 BW1M119 0109b700
	virtual uint32_t EatAnimation();
	// BW1W120 0041c7c0 BW1M119 01177a30
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c7d0 BW1M119 011779f0
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c7b0 BW1M119 01177a70
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c800 BW1M119 01177930
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c760 BW1M119 01177b00
	virtual uint32_t LandedAnimation();
	// BW1W120 0041c810 BW1M119 011778f0
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041d100 BW1M119 0117ada0
	virtual char* GetDebugText();
	// BW1W120 0041d0f0 BW1M119 0117ad70
	virtual uint32_t GetSaveType();
	// BW1W120 0041d110 BW1M119 01137440
	virtual bool32_t IsCow(Creature* param_1);
	// BW1W120 0041d1b0 BW1M119 010113b0
	virtual bool32_t DecideWhatToDo();

	// BW1W120 0055e630 BW1M119 0130e070
	Cow() {}
};

#endif /* BW1_DECOMP_ANIMAL_COW_INCLUDED_H */
