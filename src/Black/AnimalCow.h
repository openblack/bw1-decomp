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

	// BW1W120 0041d120 BW1M100 101206f0 Cow::_dt(void)
	virtual ~Cow();
	// BW1W120 0041d100 BW1M100 10171d80 Cow::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0041d0f0 BW1M100 10171d50 Cow::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0041d110 BW1M100 1012e4c0 Cow::IsCow(Creature *)
	virtual uint32_t IsCow(Creature* param_1);
	// BW1W120 0041d1b0 BW1M100 1000e870 Cow::DecideWhatToDo(void)
	virtual bool DecideWhatToDo();
};

#endif /* BW1_DECOMP_ANIMAL_COW_INCLUDED_H */
