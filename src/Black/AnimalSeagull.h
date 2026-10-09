#ifndef BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Seagull : public Dove
{
public:
	// Override methods

	// BW1W120 0041bfa0 BW1M119 01031840
	virtual uint32_t MoveAnimation();
	// BW1W120 0041bfc0 BW1M119 011791b0
	virtual uint32_t DeadAnimation();
	// BW1W120 0041bfd0 BW1M119 01179170
	virtual uint32_t EatAnimation();
	// BW1W120 0041bfe0 BW1M119 01179130
	virtual uint32_t SleepAnimation();
	// BW1W120 0041c000 BW1M119 011790b0
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041ee50 BW1M119 0117a7b0
	virtual char* GetDebugText();
	// BW1W120 0041ee40 BW1M119 0117a770
	virtual uint32_t GetSaveType();
	// BW1W120 0041bff0 BW1M119 011790f0
	virtual uint32_t StandAnimation();

	// BW1W120 0055e990 BW1M119 inlined
	Seagull() {}
};

#endif /* BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H */
