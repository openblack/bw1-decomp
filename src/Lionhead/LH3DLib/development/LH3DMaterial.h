#ifndef BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H
#define BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */

// Forward Declares

struct LH3DTexture;

struct MaterialProperties
{
	bool field_0x0;
	bool field_0x1;
	bool cull;
	bool field_0x3;
	bool field_0x4;
};
static_assert(sizeof(MaterialProperties) == 0x5, "Data type is of wrong size");

struct LH3DMaterial
{
	enum RenderMode
	{
		LH3D_MATERIAL_RENDER_MODE_0x2 = 0x2,
		LH3D_MATERIAL_RENDER_MODE_0x3 = 0x3,
		LH3D_MATERIAL_RENDER_MODE_0x4 = 0x4,
		LH3D_MATERIAL_RENDER_MODE_0x5 = 0x5,
		LH3D_MATERIAL_RENDER_MODE_0x6 = 0x6,
		LH3D_MATERIAL_RENDER_MODE_0x8 = 0x8,
		LH3D_MATERIAL_RENDER_MODE_0x9 = 0x9,
		LH3D_MATERIAL_RENDER_MODE_0xc = 0xc,
		LH3D_MATERIAL_RENDER_MODE_0xd = 0xd,
		LH3D_MATERIAL_RENDER_MODE_0x10 = 0x10,
		_LH3D_MATERIAL_RENDER_MODE_COUNT = 0x11
	};

	RenderMode   render_mode; /* 0x0 */
	uint8_t      field_0x4;
	uint8_t      cull_mode;
	LH3DTexture* texture;
	LH3DColor    color;
};
static_assert(sizeof(LH3DMaterial) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H */
