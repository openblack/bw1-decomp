#ifndef BW1_DECOMP_LH3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_LH3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t, uint8_t */

#include "LHPoint.h" /* For struct LHPoint */

struct LHMatrix;

struct LH3DSprite
{
	LHPoint  pos; /* 0x0 */
	float    field_0xc;
	float    field_0x10;
	float    angle;
	float    field_0x18;
	float    field_0x1c;
	float    field_0x20;
	float    field_0x24;
	uint32_t field_0x28;
	float    field_0x2c;
	uint8_t  field_0x30;
	uint8_t  field_0x31;
	uint8_t  field_0x32;
	uint8_t  field_0x33;

	// Static methods

	// BW1W120 008404a0 BW1M119 010b4f00 (LHCombined Release)
	static LH3DSprite* Create(int param_1, int param_2);

	// Non-virtual methods

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
