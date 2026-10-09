#ifndef BW1_DECOMP_ANIMAL_LION_INCLUDED_H
#define BW1_DECOMP_ANIMAL_LION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Animal.h" /* For struct Animal */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class Object;

class Lion : public Animal
{
public:
	// Override methods

	// BW1W120 0041fe70 BW1M119 0117e8e0
	virtual bool32_t DecideWhatToDo();
	// BW1W120 004203c0 BW1M119 0117f4e0
	virtual uint8_t FleeFromPredatorPriority(Reaction* param_1, Reaction* param_2);
	// BW1W120 0041fe40 BW1M119 0117ea70
	virtual bool32_t Eat();
	// BW1W120 0041ff40 BW1M119 0117e770
	virtual uint32_t ReactToAnimalFoodNeeds();
	// BW1W120 00420010 BW1M119 0117e6f0
	virtual uint32_t CalculeLairPos();
	// BW1W120 0041c0e0 BW1M119 01178d60
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c120 BW1M119 01178ce0
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c130 BW1M119 01178ca0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c140 BW1M119 01178c70
	virtual uint32_t EatAnimation();
	// BW1W120 0041c150 BW1M119 01178c30
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c160 BW1M119 01178bf0
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c170 BW1M119 01178bb0
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c180 BW1M119 01178b70
	virtual uint32_t PounceAnimation();
	// BW1W120 0041c190 BW1M119 01178b30
	virtual uint32_t HideAnimation();
	// BW1W120 0041c200 BW1M119 01178ab0
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c110 BW1M119 01178d20
	virtual uint32_t LandedAnimation();
	// BW1W120 0041c210 BW1M119 01178a70
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041fdc0 BW1M119 0117ec30
	virtual ~Lion();
	// BW1W120 0041fd80 BW1M119 0117ed90
	virtual char* GetDebugText();
	// BW1W120 0041fd70 BW1M119 0117ed60
	virtual uint32_t GetSaveType();
	// BW1W120 0041fc70 BW1M119 0117a340
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041c1a0 BW1M119 01178af0
	virtual uint32_t StandAnimation();

	// BW1W120 0055e4d0 BW1M119 0130e2e0
	Lion() {}
};

#endif /* BW1_DECOMP_ANIMAL_LION_INCLUDED_H */
