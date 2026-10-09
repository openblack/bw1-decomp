#ifndef BW1_DECOMP_ANIMAL_CROW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_CROW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Crow : public Dove
{
public:
	// Override methods

	// BW1W120 0041bec0 BW1M119 011795a0
	virtual uint32_t MoveAnimation();
	// BW1W120 0041bee0 BW1M119 01179560
	virtual uint32_t DeadAnimation();
	// BW1W120 0041bef0 BW1M119 01179530
	virtual uint32_t EatAnimation();
	// BW1W120 0041bf00 BW1M119 011794f0
	virtual uint32_t SleepAnimation();
	// BW1W120 0041bf20 BW1M119 01179470
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041ec10 BW1M119 0117a9c0
	virtual char* GetDebugText();
	// BW1W120 0041ec00 BW1M119 0117a990
	virtual uint32_t GetSaveType();
	// BW1W120 0041bf10 BW1M119 011794b0
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	Crow() {}
};

#endif /* BW1_DECOMP_ANIMAL_CROW_INCLUDED_H */
