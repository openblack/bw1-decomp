#ifndef BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H

#include <assert.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

#include "GTPointer.h"

class Object;

// Field types are exposed by the Mac serializers at 103038e0/10303640.
class LightningObjectInfo
{
public:
	GTPointer<Object> Target;
	LHPoint           Position;
	bool              Valid;
	bool              InRange;
	bool              Hit;
	long              ForkIndex;

	// BW1W120 00697b90 BW1M119 01422ec0
	LightningObjectInfo()
	{
		Position.SetNull();
		InRange = false;
		Hit = false;
		ForkIndex = 0;
		Valid = true;
	}
	// BW1W120 inlined BW1M119 inlined
	~LightningObjectInfo() {}
};

static_assert(sizeof(LightningObjectInfo) == 0x1c, "LightningObjectInfo size is incorrect");

#endif /* BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H */
