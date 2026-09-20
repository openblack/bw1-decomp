#ifndef BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H
#define BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H

#include <assert.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

class Object;

// Field types are exposed by the Mac serializers at 103038e0/10303640.
class LightningObjectInfo
{
public:
	unsigned long field_0x0;
	Object*       Target;   /* 0x4 */
	LHPoint       Position; /* 0x8 */
	bool          field_0x14;
	bool          field_0x15;
	bool          field_0x16;
	long          field_0x18;
};

static_assert(sizeof(LightningObjectInfo) == 0x1c, "LightningObjectInfo size is incorrect");

#endif /* BW1_DECOMP_LIGHTNING_OBJECT_INFO_INCLUDED_H */
