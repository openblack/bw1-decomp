#ifndef BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

// Forward Declares

struct LH3DObjectHair;
struct LHMatrix;

class LH3DComplexObject : public LH3DStaticObject
{
public:
	LHMatrix*          matrix_0x80;
	uint32_t*          field_0x84;
	LH3DObjectHair*    hair;
	uint32_t           field_0x8c;
	uint32_t           field_0x90;
	uint32_t           field_0x94;
	uint32_t           field_0x98;
	uint32_t           field_0x9c;
	uint32_t           field_0xa0;
	uint32_t           field_0xa4;
	uint32_t           field_0xa8;
	uint32_t           field_0xac;
	LH3DComplexObject* next; /* 0xb0 */
	uint32_t           field_0xb4;
	uint32_t           field_0xb8;
	uint32_t           field_0xbc;

	// Constructors

	// BW1W120 inlined BW1M100 inlined LH3DComplexObject::LH3DComplexObject(void)
	LH3DComplexObject();

	// Non-virtual methods

	// BW1W120 0080c020 BW1M100 10081d10 LH3DComplexObject::CreateDynamicShadow
	void CreateDynamicShadow();
};

#endif /* BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H */
