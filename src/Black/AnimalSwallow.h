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

	// BW1W120 0041ece0 BW1M119 0117a5d0
	virtual ~Swallow();
	// BW1W120 0041ecd0 BW1M119 0117a6a0
	virtual char* GetDebugText();
	// BW1W120 0041ecc0 BW1M119 0117a660
	virtual uint32_t GetSaveType();
	// BW1W120 0041c070 BW1M119 01178f70
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_SWALLOW_INCLUDED_H */
