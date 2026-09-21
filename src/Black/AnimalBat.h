#ifndef BW1_DECOMP_ANIMAL_BAT_INCLUDED_H
#define BW1_DECOMP_ANIMAL_BAT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove, struct SpellDove */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class Object;

class Bat : public Dove
{
public:
	// Override methods

	// BW1W120 0041ef30 BW1M119 0117ac20
	virtual ~Bat();
	// BW1W120 0041ef10 BW1M119 0117ace0
	virtual char* GetDebugText();
	// BW1W120 0041ef00 BW1M119 0117acb0
	virtual uint32_t GetSaveType();
	// BW1W120 0041ef20 BW1M119 0117ad20
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041be40 BW1M119 011797c0
	virtual uint32_t StandAnimation();
};

class SpellBat : public SpellDove
{
public:
	// Override methods

	// BW1W120 0041f010 BW1M119 0117aa00
	virtual ~SpellBat();
	// BW1W120 0041eff0 BW1M119 0117ab50
	virtual char* GetDebugText();
	// BW1W120 0041efe0 BW1M119 0117ab10
	virtual uint32_t GetSaveType();
	// BW1W120 0041f000 BW1M119 0117ab90
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041bea0 BW1M119 01179640
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_BAT_INCLUDED_H */
