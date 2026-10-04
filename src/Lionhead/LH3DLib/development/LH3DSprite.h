#ifndef BW1_DECOMP_LH3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

struct LH3DMaterial;
struct LHMatrix;

struct LH3DSprite
{
	LHPoint       pos; /* 0x0 */
	float         field_0xc;
	float         field_0x10;
	float         angle;
	float         field_0x18;
	float         field_0x1c;
	LH3DColor     colour;
	float         field_0x24;
	uint32_t      Frame : 6;
	uint32_t      field_0x28_6 : 26;
	LH3DMaterial* material;
	uint8_t       field_0x30;
	uint8_t       field_0x31;
	uint8_t       field_0x32;
	uint8_t       field_0x33;

	// Static methods

	// BW1W120 008404a0 BW1M119 010b4f00 (LHCombined Release)
	static LH3DSprite* __fastcall Create(long count, int param_2);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01577070
	void SetMaterial(LH3DMaterial* new_material) { material = new_material; }
	// BW1W120 inlined BW1M119 inlined
	void SetSize(float size)
	{
		if (size < 0.0001f)
		{
			size = 0.0001f;
		}
		field_0x18 *= size / field_0xc;
		field_0x1c *= size / field_0xc;
		field_0xc = size;
	}
	// BW1W120 008404f0 BW1M119 0100c840 (LHCombined Release)
	void SetToZero();
	// BW1W120 00840520 BW1M119 010b4e50 (LHCombined Release)
	void Release();
	// BW1W120 00840530 BW1M119 0102a970 (LHCombined Release)
	void Draw();
	// BW1W120 00840c70 BW1M119 0101bec0 (LHCombined Release)
	void AddDrawing();
	// BW1W120 00840cc0 BW1M119 010b44d0 (LHCombined Release)
	void DrawSpecial1(LHMatrix* matrix);
};

#endif /* BW1_DECOMP_LH3D_SPRITE_INCLUDED_H */
