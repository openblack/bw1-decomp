#ifndef BW1_DECOMP_LH3DORIENTSPRITE_INCLUDED_H
#define BW1_DECOMP_LH3DORIENTSPRITE_INCLUDED_H

#include <stdint.h> /* For uint32_t, uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h"  /* For struct LHMatrix */
#include "LHPoint.h"   /* For struct LHPoint, bool32_t */

struct LH3DMaterial;

#define LH3D_ORIENT_SPRITE_FRAME_MASK 0x3F
#define LH3D_ORIENT_SPRITE_USE_MATRIX 0x200

struct LH3DOrientSprite
{
	LHPoint       pos;
	float         Size;
	float         Aspect;
	float         angle;
	float         OffsetX;
	float         OffsetY;
	LH3DColor     colour;
	LH3DColor     specular;
	uint32_t      Flags;
	LH3DMaterial* material;
	uint8_t       FramesPerRow;
	uint8_t       field_0x31;
	uint8_t       field_0x32;
	uint8_t       field_0x33;
	LHMatrix      matrix;

	// Static methods

	// BW1W120 0083c920 BW1M119 010d0530 (LHCombined Release)
	static LH3DOrientSprite* __fastcall Create(long count, bool32_t use_material);

	// Non-virtual methods

	// BW1W120 null BW1M119 inlined
	void SetPosition(const LHPoint& position) { pos = position; }
	// BW1W120 null BW1M119 inlined
	void SetMatrix(const LHMatrix& orientation) { matrix = orientation; }
	// BW1W120 null BW1M119 inlined
	void SetColour(LH3DColor new_colour) { colour = new_colour; }
	// BW1W120 null BW1M119 inlined
	void SetSpecular(LH3DColor new_specular) { specular = new_specular; }
	// BW1W120 null BW1M119 inlined
	void SetFrame(uint32_t frame)
	{
		Flags &= ~LH3D_ORIENT_SPRITE_FRAME_MASK;
		Flags |= frame & LH3D_ORIENT_SPRITE_FRAME_MASK;
	}
	// BW1W120 null BW1M119 inlined
	void SetUseMatrix() { Flags |= LH3D_ORIENT_SPRITE_USE_MATRIX; }
	// BW1W120 0083c990 BW1M119 010cffa0 (LHCombined Release)
	void Draw();
};

#endif /* BW1_DECOMP_LH3DORIENTSPRITE_INCLUDED_H */
