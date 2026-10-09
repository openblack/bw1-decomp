#ifndef BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

class Base;
class GameThing;
class Object;

class Tiger : public Lion
{
public:
	// Override methods

	// BW1W120 00421470 BW1M119 01181190
	virtual uint32_t CalculeLairPos();
	// BW1W120 0041c360 BW1M119 01178650
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c3b0 BW1M119 011785d0
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c3c0 BW1M119 01178590
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c3d0 BW1M119 01178550
	virtual uint32_t EatAnimation();
	// BW1W120 0041c3e0 BW1M119 01178510
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c3f0 BW1M119 011784d0
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c400 BW1M119 01178490
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c410 BW1M119 01178450
	virtual uint32_t PounceAnimation();
	// BW1W120 0041c420 BW1M119 01178410
	virtual uint32_t HideAnimation();
	// BW1W120 0041c490 BW1M119 01178390
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c3a0 BW1M119 01178610
	virtual uint32_t LandedAnimation();
	// BW1W120 0041c4a0 BW1M119 01178350
	virtual uint32_t ThrownAnimation();
	// BW1W120 00421430 BW1M119 01181150
	virtual char* GetDebugText();
	// BW1W120 00421420 BW1M119 01181120
	virtual uint32_t GetSaveType();
	// BW1W120 0041c430 BW1M119 011783d0
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Tiger() {}
};

#endif /* BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H */
