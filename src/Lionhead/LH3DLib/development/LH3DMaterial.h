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

#define LH3D_ENV_MAP_TABLE_SIZE 16

struct LH3DMaterial
{
	// The rows of g_list_render_func_normal and g_list_render_func_global_alpha.
	enum RenderMode
	{
		LH3D_MATERIAL_RENDER_MODE_SMOOTH = 0x0,
		LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA = 0x1,
		LH3D_MATERIAL_RENDER_MODE_TEXTURED = 0x2,
		LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA = 0x3,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED = 0x4,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA = 0x5,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ = 0x6,
		LH3D_MATERIAL_RENDER_MODE_SMOOTH_ALPHA_NZ = 0x7,
		LH3D_MATERIAL_RENDER_MODE_TEXTURED_ALPHA_NZ = 0x8,
		LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA = 0x9,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_CHROMA = 0xa,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_CHROMA_NZ = 0xb,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF = 0xc,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_ADDITIF_NZ = 0xd,
		LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_OPAQUE = 0xe,
		LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA = 0xf,
		LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA_NZ = 0x10,
		LH3D_MATERIAL_RENDER_MODE_TEXTURED_OPAQUE = 0x11,
		LH3D_MATERIAL_RENDER_MODE_CHROMA_JUST_Z = 0x12,
		LH3D_MATERIAL_RENDER_MODE_UNUSED = 0x13,
		LH3D_MATERIAL_RENDER_MODE_COUNT = 0x14
	};

	enum Flag
	{
		FLAG_DOUBLE_SIDED = 0x1,
		FLAG_NEED_TILLING = 0x4,
		FLAG_NO_ANIM_UV = 0x10,
		FLAG_ENV_MAP = 0x20,
	};

	// Sets up the device to draw with a material in a texture stage.
	typedef void(__fastcall* RenderFunc)(LH3DMaterial* material, int stage);

	// A row of g_list_render_func_normal and g_list_render_func_global_alpha.
	struct RenderFuncEntry
	{
		RenderFunc Func;
		bool32_t   Transparent;
	};

	RenderMode   render_mode; /* 0x0 */
	uint8_t      AlphaReference;
	uint8_t      Flags;
	LH3DTexture* texture;
	LH3DColor    color;

	// The render-mode function table LH3DRender dispatches through; points at one of the tables below.
	// BW1W120 00eca618 BW1M119 012cf91c (LHCombined Release)
	static RenderFuncEntry* g_list_render_func;
	// BW1W120 00c38728 BW1M119 011d0e38 (LHCombined Release)
	static RenderFuncEntry g_list_render_func_normal[LH3D_MATERIAL_RENDER_MODE_COUNT];
	// BW1W120 00c387c8 BW1M119 011d0ed8 (LHCombined Release)
	static RenderFuncEntry g_list_render_func_global_alpha[LH3D_MATERIAL_RENDER_MODE_COUNT];
	// BW1W120 00eca660 BW1M119 012cf818 (LHCombined Release)
	static bool32_t g_b_force_double_sided;
	// BW1W120 00eca654 BW1M119 012cf824 (LHCombined Release)
	static int g_count;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LH3DMaterial(RenderMode mode, uint8_t flags, LH3DTexture* tex, unsigned long alpha_reference)
	{
		g_count++;
		Initialization(mode, flags, tex, alpha_reference);
	}

	// Destructor

	// BW1W120 inlined BW1M119 01052420 (LHCombined Release)
	~LH3DMaterial()
	{
		g_count--;
		texture = NULL;
	}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0102b300 (LHCombined Release)
	RenderMode GetMode() { return render_mode; }
	// BW1W120 inlined BW1M119 0102a5e0 (LHCombined Release)
	bool32_t IsDoubleSided() { return Flags & FLAG_DOUBLE_SIDED; }
	// BW1W120 inlined BW1M119 0102b710 (LHCombined Release)
	bool32_t IsNeedTilling() { return Flags & FLAG_NEED_TILLING; }
	// BW1W120 inlined BW1M119 inlined
	int GetEnvMap() { return (Flags / FLAG_ENV_MAP) & (LH3D_ENV_MAP_TABLE_SIZE - 1); }
	// BW1W120 inlined BW1M119 0106b420 (LHCombined Release)
	unsigned long GetTextureId() { return (unsigned long)texture; }
	// BW1W120 inlined BW1M119 010303e0 (LHCombined Release)
	uint8_t GetAlphaReference() { return AlphaReference; }
	// BW1W120 inlined BW1M119 0109f9f0 (LHCombined Release)
	void Initialization(RenderMode mode, uint8_t flags, LH3DTexture* tex, unsigned long alpha_reference)
	{
		Flags = 0;
		render_mode = mode;
		AlphaReference = alpha_reference;
		texture = tex;
		Flags = flags;
	}
	// BW1W120 inlined BW1M119 010a5f70 (LHCombined Release)
	static void SetGlobalAlpha(bool32_t global_alpha)
	{
		g_list_render_func = global_alpha ? g_list_render_func_global_alpha : g_list_render_func_normal;
	}
	// BW1W120 0082ee50 BW1M119 010a0b80 (LHCombined Release)
	static void Close();
	// BW1W120 007acf60 BW1M119 010c6de0 (LHCombined Release)
	LH3DTexture* GetTexture();
	// BW1W120 007acf70 BW1M119 null
	unsigned long ModulateColor(LH3DColor modulate);
};
static_assert(sizeof(LH3DMaterial) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_MATERIAL_INCLUDED_H */
