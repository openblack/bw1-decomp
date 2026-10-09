#ifndef BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H
#define BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

class Base;
class GameThing;
class Object;

class Leopard : public Lion
{
public:
	// Override methods

	// BW1W120 0041c220 BW1M119 011789e0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041c260 BW1M119 01178960
	virtual uint32_t DyingAnimation();
	// BW1W120 0041c270 BW1M119 01178920
	virtual uint32_t DeadAnimation();
	// BW1W120 0041c280 BW1M119 011788e0
	virtual uint32_t EatAnimation();
	// BW1W120 0041c290 BW1M119 011788a0
	virtual uint32_t StartToEatAnimation();
	// BW1W120 0041c2a0 BW1M119 01178860
	virtual uint32_t FinishEatingAnimation();
	// BW1W120 0041c2b0 BW1M119 01178820
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c2c0 BW1M119 011787e0
	virtual uint32_t PounceAnimation();
	// BW1W120 0041c2d0 BW1M119 011787a0
	virtual uint32_t HideAnimation();
	// BW1W120 0041c340 BW1M119 01178720
	virtual uint32_t InHandAnimation();
	// BW1W120 0041c250 BW1M119 011789a0
	virtual uint32_t LandedAnimation();
	// BW1W120 0041c350 BW1M119 011786e0
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041fc90 BW1M119 0117a300
	virtual char* GetDebugText();
	// BW1W120 0041fc80 BW1M119 0117a2c0
	virtual uint32_t GetSaveType();
	// BW1W120 0041c2e0 BW1M119 01178760
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Leopard() {}
};

#endif /* BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H */
