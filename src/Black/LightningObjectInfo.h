#ifndef BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H

#include <assert.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

class Object;

// Field types are exposed by the Mac serializers at 103038e0/10303640.
class LightningObjectInfo
{
public:
	unsigned long TargetGameTurn;
	Object*       Target;
	LHPoint       Position;
	bool          Valid;
	bool          InRange;
	bool          Hit;
	long          ForkIndex;
};

static_assert(sizeof(LightningObjectInfo) == 0x1c, "LightningObjectInfo size is incorrect");

#endif /* BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H */
