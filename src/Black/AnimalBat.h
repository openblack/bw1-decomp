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

	// BW1W120 0041be00 BW1M119 0108ab30
	virtual uint32_t MoveAnimation();
	// BW1W120 0041be10 BW1M119 01179870
	virtual uint32_t DeadAnimation();
	// BW1W120 0041be20 BW1M119 01179840
	virtual uint32_t EatAnimation();
	// BW1W120 0041be30 BW1M119 01179800
	virtual uint32_t SleepAnimation();
	// BW1W120 0041be50 BW1M119 01179780
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041ef10 BW1M119 0117ace0
	virtual char* GetDebugText();
	// BW1W120 0041ef00 BW1M119 0117acb0
	virtual uint32_t GetSaveType();
	// BW1W120 0041ef20 BW1M119 0117ad20
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041be40 BW1M119 011797c0
	virtual uint32_t StandAnimation();

	// BW1W120 0055ea30 BW1M119 inlined
	Bat() {}
};

class SpellBat : public SpellDove
{
public:
	// Override methods

	// BW1W120 0041be60 BW1M119 01179740
	virtual uint32_t MoveAnimation();
	// BW1W120 0041be70 BW1M119 01179700
	virtual uint32_t DeadAnimation();
	// BW1W120 0041be80 BW1M119 011796c0
	virtual uint32_t EatAnimation();
	// BW1W120 0041be90 BW1M119 01179680
	virtual uint32_t SleepAnimation();
	// BW1W120 0041beb0 BW1M119 01179600
	virtual uint32_t ThrownAnimation();
	// BW1W120 0041eff0 BW1M119 0117ab50
	virtual char* GetDebugText();
	// BW1W120 0041efe0 BW1M119 0117ab10
	virtual uint32_t GetSaveType();
	// BW1W120 0041f000 BW1M119 0117ab90
	virtual bool32_t CanBeFrighteningToCreature(Creature* param_1);
	// BW1W120 0041bea0 BW1M119 01179640
	virtual uint32_t StandAnimation();

	// BW1W120 inlined BW1M119 inlined
	SpellBat() { SetToZero(); }
};

#endif /* BW1_DECOMP_ANIMAL_BAT_INCLUDED_H */
