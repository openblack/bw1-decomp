#ifndef BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H
#define BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Zebra : public Cow
{
public:
	// Override methods

	// BW1W120 0041d920 BW1M119 01179f50
	virtual ~Zebra();
	// BW1W120 0041d910 BW1M119 0117a010
	virtual char* GetDebugText();
	// BW1W120 0041d900 BW1M119 01179fe0
	virtual uint32_t GetSaveType();
	// BW1W120 0041cc30 BW1M119 01176da0
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H */
