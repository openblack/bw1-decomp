#ifndef BW1_DECOMP_ANIMAL_PIG_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Pig : public Cow
{
public:
	// Override methods

	// BW1W120 0041d9d0 BW1M119 01129a20
	virtual ~Pig();
	// BW1W120 0041d9c0 BW1M119 01179f10
	virtual char* GetDebugText();
	// BW1W120 0041d9b0 BW1M119 01179ee0
	virtual uint32_t GetSaveType();
	// BW1W120 0041cd90 BW1M119 010a1f00
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_PIG_INCLUDED_H */
