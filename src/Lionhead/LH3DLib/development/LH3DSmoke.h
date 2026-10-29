#ifndef BW1_DECOMP_LH3D_SMOKE_INCLUDED_H
#define BW1_DECOMP_LH3D_SMOKE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

// Forward Declares

struct LH3DMaterial;
struct LH3DSprite;

enum LH3D_SMOKE_STATE
{
	LH3D_SMOKE_STATE_EMITTING = 0,
	LH3D_SMOKE_STATE_FADING = 2,
};

struct LH3DSmoke
{
	LHPoint       pos;    /* 0x0 */
	int           State;  /* 0xc */
	LH3DSprite*   sprite; /* 0x10 */
	uint8_t       field_0x14[0xc];
	int           field_0x20[0xa];
	float         field_0x48[0xa];
	uint8_t       field_0x70[0xa];
	LHPoint       field_0x7c[0xa];
	LH3DMaterial* material; /* 0xf4 */
	LHPoint       offset;
	float         field_0x104;
	uint32_t      field_0x108;
	LH3DColor     color;

	// Static methods

	// BW1W120 007f8b60 BW1M119 010b32f0 (LHCombined Release)
	static LH3DSmoke* Create(const LHPoint* position);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void SetMaterial(LH3DMaterial* new_material) { material = new_material; }

	// BW1W120 007f8d10 BW1M119 010b3290 (LHCombined Release)
	void Release();
	// BW1W120 007f8d30 BW1M119 0100e790 (LHCombined Release)
	void AddDrawing();
	// BW1W120 007f8e00 BW1M119 01019840 (LHCombined Release)
	void Draw();
};

#endif /* BW1_DECOMP_LH3D_SMOKE_INCLUDED_H */
