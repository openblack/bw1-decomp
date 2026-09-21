#ifndef BW1_DECOMP_ANIMAL_COW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_COW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Animal.h" /* For struct Animal */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class Living;

class Cow : public Animal
{
public:
	// Override methods

	// BW1W120 0041d120 BW1M119 01129920
	virtual ~Cow();
	// BW1W120 0041d100 BW1M119 0117ada0
	virtual char* GetDebugText();
	// BW1W120 0041d0f0 BW1M119 0117ad70
	virtual uint32_t GetSaveType();
	// BW1W120 0041d110 BW1M119 01137440
	virtual uint32_t IsCow(Creature* param_1);
	// BW1W120 0041d1b0 BW1M119 010113b0
	virtual bool32_t DecideWhatToDo();
};

#endif /* BW1_DECOMP_ANIMAL_COW_INCLUDED_H */
