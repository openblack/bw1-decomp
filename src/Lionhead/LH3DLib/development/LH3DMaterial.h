#ifndef BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H
#define BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint8_t */

#include "LH3DColor.h" /* For struct LH3DColor */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DTexture;

struct MaterialProperties
{
	bool Additive;
	bool AlphaBlend;
	bool cull;
	bool ApplyToMesh;
	bool Transparent;
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

	enum Flag
	{
		FLAG_DOUBLE_SIDED = 0x1,
		FLAG_NEED_TILLING = 0x4,
	};

	// Sets up the device to draw with a material in a texture stage.
	typedef void(__fastcall* RenderFunc)(LH3DMaterial* material, int stage);

	RenderMode   render_mode; /* 0x0 */
	uint8_t      AlphaReference;
	uint8_t      Flags;
	LH3DTexture* texture;
	LH3DColor    color;

	// The render-mode function table LH3DRender dispatches through; points at one of the tables below.
	// BW1W120 00eca618 BW1M119 012cf91c (LHCombined Release)
	static void* g_list_render_func;
	// BW1W120 00c38728 BW1M119 011d0e38 (LHCombined Release)
	static void* g_list_render_func_normal[40];
	// BW1W120 00c387c8 BW1M119 011d0ed8 (LHCombined Release)
	static void* g_list_render_func_global_alpha[40];

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0102b300 (LHCombined Release)
	RenderMode GetMode() { return render_mode; }
	// BW1W120 inlined BW1M119 0102a5e0 (LHCombined Release)
	bool32_t IsDoubleSided() { return Flags & FLAG_DOUBLE_SIDED; }
	// BW1W120 inlined BW1M119 0102b710 (LHCombined Release)
	bool32_t IsNeedTilling() { return Flags & FLAG_NEED_TILLING; }
	// BW1W120 inlined BW1M119 0106b420 (LHCombined Release)
	unsigned long GetTextureId() { return (unsigned long)texture; }
	// BW1W120 007acf60 BW1M119 010c6de0 (LHCombined Release)
	LH3DTexture* GetTexture();
	// BW1W120 007acf70 BW1M119 null
	unsigned long ModulateColor(LH3DColor modulate);
};
static_assert(sizeof(LH3DMaterial) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H */
