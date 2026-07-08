#ifndef BW1_DECOMP_ANIMAL_LION_INCLUDED_H
#define BW1_DECOMP_ANIMAL_LION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Animal.h" /* For struct Animal */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class Object;

class Lion : public Animal
{
public:
	// Override methods

	// BW1W120 0041fd90 BW1M100 10175be0 Lion::_dt(void)
	virtual ~Lion();
	// BW1W120 0041fd80 BW1M100 10175d40 Lion::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0041fd70 BW1M100 10175d10 Lion::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0041fc70 BW1M100 10171320 Lion::CanBeFrighteningToCreature(Creature *)
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041c1a0 BW1M100 1016fc50 Lion::StandAnimation(void)
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_LION_INCLUDED_H */
