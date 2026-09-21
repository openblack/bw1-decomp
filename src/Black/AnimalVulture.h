#ifndef BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;

class Vulture : public Dove
{
public:
	// Override methods

	// BW1W120 0041f0e0 BW1M119 0117a390
	virtual ~Vulture();
	// BW1W120 0041f0c0 BW1M119 0117a460
	virtual char* GetDebugText();
	// BW1W120 0041f0b0 BW1M119 0117a420
	virtual uint32_t GetSaveType();
	// BW1W120 0041f0d0 BW1M119 0117a4a0
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
};

#endif /* BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H */
