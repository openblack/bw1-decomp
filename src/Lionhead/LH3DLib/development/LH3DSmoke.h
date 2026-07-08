#ifndef BW1_DECOMP_LH3D_SMOKE_INCLUDED_H
#define BW1_DECOMP_LH3D_SMOKE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

// Forward Declares

struct LH3DMaterial;
struct LH3DSprite;

struct LH3DSmoke
{
	LHPoint       pos; /* 0x0 */
	uint32_t      field_0xc;
	LH3DSprite*   sprite; /* 0x10 */
	uint8_t       field_0x14[0xc];
	int           field_0x20[0xa];
	float         field_0x48[0xa];
	uint8_t       field_0x70[0xa];
	LHPoint       field_0x7c[0xa];
	LH3DMaterial* material; /* 0xf4 */
	float         field_0xf8;
	float         field_0xfc;
	float         field_0x100;
	float         field_0x104;
	uint32_t      field_0x108;
	LH3DColor     color;

	// Static methods

	// BW1W120 007f8b60 BW1M100 100b4ab0 LH3DSmoke::Create(const LHPoint*)
	static LH3DSmoke* Create(LHPoint* position);

	// Non-virtual methods

	// BW1W120 007f8d10 BW1M100 100b4a50 LH3DSmoke::Release(void)
	void Release();
};

#endif /* BW1_DECOMP_LH3D_SMOKE_INCLUDED_H */
