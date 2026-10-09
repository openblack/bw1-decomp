#ifndef BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DStaticObject.h" /* For struct LH3DStaticObject */

// Forward Declares

struct LH3DMaterial;
struct LH3DObjectHair;
struct LHMatrix;

class LH3DComplexObject : public LH3DStaticObject
{
public:
	LHMatrix*          Matrix0x80;
	uint32_t*          field_0x84;
	LH3DObjectHair*    hair;
	uint32_t           field_0x8c;
	LH3DMaterial*      FrozMaterial;
	float              FrozAmount;
	uint32_t           FrozParam;
	LH3DMaterial*      FizzMaterial;
	float              FizzAmount;
	uint32_t           field_0xa4;
	uint32_t           field_0xa8;
	uint32_t           field_0xac;
	LH3DComplexObject* next;
	uint32_t           field_0xb4;
	uint32_t           field_0xb8;
	uint32_t           field_0xbc;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LH3DComplexObject();

	// Non-virtual methods

	// BW1W120 0080c020 BW1M119 0107f450 (LHCombined Release)
	void CreateDynamicShadow();
};

#endif /* BW1_DECOMP_LH3D_COMPLEX_OBJECT_INCLUDED_H */
