#ifndef BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

class LH3DStaticMorphableObject : public LH3DStaticObject
{
public:
	uint32_t field_0x80;

	// Constructors

	// BW1W120 inlined BW1M119 0107fe50 (LHCombined Release)
	LH3DStaticMorphableObject();
};

#endif /* BW1_DECOMP_LH3D_STATIC_MORPHABLE_OBJECT_INCLUDED_H */
