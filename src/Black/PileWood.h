#ifndef BW1_DECOMP_PILE_WOOD_INCLUDED_H
#define BW1_DECOMP_PILE_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "PileResource.h" /* For struct PileResource */

// Forward Declares

class Base;
class GameThing;
class Object;

class PileWood : public PileResource
{
public:
	// Override methods

	// BW1W120 0055d6c0 BW1M119 01120920
	virtual ~PileWood();
	// BW1W120 0055d6b0 BW1M119 01126730
	virtual char* GetDebugText();
	// BW1W120 0055d6a0 BW1M119 011266f0
	virtual uint32_t GetSaveType();
	// BW1W120 0051bc40 BW1M119 0103b400
	virtual void Draw();
	// BW1W120 0066ec60 BW1M119 0107a340
	virtual RESOURCE_TYPE GetResourceType();
};

#endif /* BW1_DECOMP_PILE_WOOD_INCLUDED_H */
