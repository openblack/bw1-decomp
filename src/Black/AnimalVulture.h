#ifndef BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;

class Vulture : public Dove
{
public:
	// Override methods

	// BW1W120 0041c0d0 BW1M119 01178df0
	virtual uint32_t StandAnimation();
	// BW1W120 0041c090 BW1M119 01178ef0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c0a0 BW1M119 01178eb0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c0b0 BW1M119 01178e70
	virtual uint32_t EatAnimation();
	// BW1W120 0041c0c0 BW1M119 01178e30
	virtual uint32_t SleepAnimation();
	// BW1W120 0041f0c0 BW1M119 0117a460
	virtual char* GetDebugText();
	// BW1W120 0041f0b0 BW1M119 0117a420
	virtual uint32_t GetSaveType();
	// BW1W120 0041f0d0 BW1M119 0117a4a0
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);

	// BW1W120 0055ead0 BW1M119 inlined
	Vulture() {}
};

#endif /* BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H */
