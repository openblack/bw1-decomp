#ifndef BW1_DECOMP_FLOWERS_INCLUDED_H
#define BW1_DECOMP_FLOWERS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Feature.h" /* For struct Feature */

// Forward Declares

class Base;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;

class Flowers : public Feature
{
public:
	// Override methods

	// BW1W120 005279b0 BW1M119 010d4570
	virtual ~Flowers();
	// BW1W120 005279a0 BW1M119 010d4670
	virtual char* GetDebugText();
	// BW1W120 00527990 BW1M119 010d4630
	virtual uint32_t GetSaveType();
	// BW1W120 00527a30 BW1M119 010d4850
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 00527980 BW1M119 010d4600
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 00527a80 BW1M119 010d46b0
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
};

#endif /* BW1_DECOMP_FLOWERS_INCLUDED_H */
