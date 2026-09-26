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

	// BW1W120 0041fd90 BW1M119 0117ec30
	virtual ~Lion();
	// BW1W120 0041fd80 BW1M119 0117ed90
	virtual char* GetDebugText();
	// BW1W120 0041fd70 BW1M119 0117ed60
	virtual uint32_t GetSaveType();
	// BW1W120 0041fc70 BW1M119 0117a340
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041c1a0 BW1M119 01178af0
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_LION_INCLUDED_H */
