#ifndef BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Pigeon : public Dove
{
public:
	// Override methods

	// BW1W120 0041bf30 BW1M119 01179410
	virtual uint32_t MoveAnimation();
	// BW1W120 0041bf50 BW1M119 011793d0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041bf60 BW1M119 01179390
	virtual uint32_t EatAnimation();
	// BW1W120 0041bf70 BW1M119 01179350
	virtual uint32_t SleepAnimation();
	// BW1W120 0041bf90 BW1M119 011792d0
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041ed90 BW1M119 0117a8c0
	virtual char* GetDebugText();
	// BW1W120 0041ed80 BW1M119 0117a880
	virtual uint32_t GetSaveType();
	// BW1W120 0041bf80 BW1M119 01179310
	virtual uint32_t StandAnimation();

	// BW1W120 0055e8f0 BW1M119 inlined
	Pigeon() {}
};

#endif /* BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H */
