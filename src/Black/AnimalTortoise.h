#ifndef BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Tortoise : public Cow
{
public:
	// Override methods

	// BW1W120 0041db60 BW1M119 01129be0
	virtual ~Tortoise();
	// BW1W120 0041db50 BW1M119 01175f60
	virtual char* GetDebugText();
	// BW1W120 0041db40 BW1M119 01175f20
	virtual uint32_t GetSaveType();
	// BW1W120 0041ce80 BW1M119 01176770
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H */
