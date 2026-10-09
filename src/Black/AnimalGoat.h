#ifndef BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H
#define BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Goat : public Cow
{
public:
	// Override methods

	// BW1W120 0041c970 BW1M119 011775b0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c9f0 BW1M119 011773c0
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c980 BW1M119 01177570
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c990 BW1M119 01177540
	virtual uint32_t EatAnimation();
	// BW1W120 0041c9b0 BW1M119 011774c0
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c9c0 BW1M119 01177480
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c9a0 BW1M119 01177500
	virtual uint32_t SleepAnimation();
	// BW1W120 0041ca50 BW1M119 01177380
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c9e0 BW1M119 01177400
	virtual uint32_t LandedAnimation();
	// BW1W120 0041ca60 BW1M119 01177340
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041d6d0 BW1M119 0117a180
	virtual char* GetDebugText();
	// BW1W120 0041d6c0 BW1M119 0117a150
	virtual uint32_t GetSaveType();
	// BW1W120 0041c9d0 BW1M119 01177440
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Goat() {}
};

#endif /* BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H */
