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

	// BW1W120 0041f0e0 BW1M100 10171370 Vulture::_dt(void)
	virtual ~Vulture();
	// BW1W120 0041f0c0 BW1M100 10171440 Vulture::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0041f0b0 BW1M100 10171400 Vulture::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0041f0d0 BW1M100 10171480 Vulture::CanBeFrighteningToCreature(Creature *)
	virtual uint32_t CanBeFrighteningToCreature(Creature* param_1);
};

#endif /* BW1_DECOMP_ANIMAL_VULTURE_INCLUDED_H */
