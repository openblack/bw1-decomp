#ifndef BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

class LH3DStaticObject : public LH3DMeshedObject
{
public:
	// Constructors

	// BW1W120 00816540 BW1M100 100763e0 LH3DStaticObject::LH3DStaticObject(void)
	LH3DStaticObject();
};

#endif /* BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H */
