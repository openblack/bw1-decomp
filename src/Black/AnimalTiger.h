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

	// BW1W120 00421440 BW1M119 01181090
	virtual ~Tiger();
	// BW1W120 00421430 BW1M119 01181150
	virtual char* GetDebugText();
	// BW1W120 00421420 BW1M119 01181120
	virtual uint32_t GetSaveType();
	// BW1W120 0041c430 BW1M119 011783d0
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H */
