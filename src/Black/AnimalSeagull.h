#ifndef BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Seagull : public Dove
{
public:
	// Override methods

	// BW1W120 0041ee60 BW1M100 101716c0 Seagull::_dt(void)
	virtual ~Seagull();
	// BW1W120 0041ee50 BW1M100 10171790 Seagull::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0041ee40 BW1M100 10171750 Seagull::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0041bff0 BW1M100 10170260 Seagull::StandAnimation(void)
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H */
