#ifndef BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Sheep : public Cow
{
public:
	// Override methods

	// BW1W120 0041c820 BW1M119 0109f120
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c8f0 BW1M119 01177670
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c890 BW1M119 011777a0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c840 BW1M119 01177850
	virtual uint32_t EatAnimation();
	// BW1W120 0041c8c0 BW1M119 01177720
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c8d0 BW1M119 011776e0
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c8b0 BW1M119 01177760
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c950 BW1M119 01177630
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c860 BW1M119 011777f0
	virtual uint32_t LandedAnimation();
	// BW1W120 0041c960 BW1M119 011775f0
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041d540 BW1M119 0117a1f0
	virtual char* GetDebugText();
	// BW1W120 0041d530 BW1M119 0117a1c0
	virtual uint32_t GetSaveType();
	// BW1W120 0041c8e0 BW1M119 010a1ec0
	virtual uint32_t StandAnimation();

	// BW1W120 0055e6f0 BW1M119 0130e270
	Sheep() {}
};

#endif /* BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H */
