#ifndef BW1_DECOMP_ANIMAL_SWALLOW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SWALLOW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Swallow : public Dove
{
public:
	// Override methods

	// BW1W120 0041ece0 BW1M100 101715b0 Swallow::_dt(void)
	virtual ~Swallow();
	// BW1W120 0041ecd0 BW1M100 10171680 Swallow::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0041ecc0 BW1M100 10171640 Swallow::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0041c070 BW1M100 101700d0 Swallow::StandAnimation(void)
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_SWALLOW_INCLUDED_H */
