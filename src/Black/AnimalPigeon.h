#ifndef BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Pigeon : public Dove
{
public:
	// Override methods

	// BW1W120 0041eda0 BW1M119 0117a7f0
	virtual ~Pigeon();
	// BW1W120 0041ed90 BW1M119 0117a8c0
	virtual char* GetDebugText();
	// BW1W120 0041ed80 BW1M119 0117a880
	virtual uint32_t GetSaveType();
	// BW1W120 0041bf80 BW1M119 01179310
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H */
