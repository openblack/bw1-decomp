#ifndef BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H
#define BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

class Base;
class GameThing;
class Object;

class Leopard : public Lion
{
public:
	// Override methods

	// BW1W120 0041fca0 BW1M119 0117a230
	virtual ~Leopard();
	// BW1W120 0041fc90 BW1M119 0117a300
	virtual char* GetDebugText();
	// BW1W120 0041fc80 BW1M119 0117a2c0
	virtual uint32_t GetSaveType();
	// BW1W120 0041c2e0 BW1M119 01178760
	virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H */
