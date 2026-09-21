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

	// BW1W120 0041ee60 BW1M119 0117a6e0
	virtual ~Seagull();
	// BW1W120 0041ee50 BW1M119 0117a7b0
	virtual char* GetDebugText();
	// BW1W120 0041ee40 BW1M119 0117a770
	virtual uint32_t GetSaveType();
	// BW1W120 0041bff0 BW1M119 011790f0
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H */
