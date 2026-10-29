#ifndef BW1_DECOMP_LH3D_RENDER_INCLUDED_H
#define BW1_DECOMP_LH3D_RENDER_INCLUDED_H

#include <d3d.h>
#include <d3dtypes.h>
#include <stdint.h>    /* For uint16_t, uint32_t */
#include <re_common.h> /* For bool32_t */

#include "LHMatrix.h"
#include "LH3DMaterial.h" /* For LH3DMaterial */

// Forward Declares

struct LH3DColor;
struct LH3DMaterial;
struct LH3DRender;
struct LH3DTexture;
struct LHMatrix;
struct LHRegion;
struct Vertex3D;
struct Vertex3DMT;
class LH3DZSorter;

#define LH3D_RENDER_TEXTURE_STAGE_COUNT       8
#define LH3D_RENDER_TEXTURE_STAGE_STATE_COUNT 256
#define LH3D_RENDER_STATE_COUNT               256
#define LH3D_RENDER_FINISH_FRAME_CALLBACKS    16
// A render state or texture stage state whose value the cache no longer knows.
#define LH3D_RENDER_STATE_UNKNOWN 0xffffffff
// Set in a finish frame callback's priority: call it after the frame instead of before.
#define LH3D_RENDER_FINISH_FRAME_AFTER 0x80000000
// The vertex format of Vertex3DMT.
#define LH3D_FVF_VERTEX3D_MT (D3DFVF_XYZRHW | D3DFVF_DIFFUSE | D3DFVF_SPECULAR | D3DFVF_TEX2)

// The second texture modes of Set2ndTex, each with the state block that draws it.
enum LH3D_2ND_TEX_MODE
{
	LH3D_2ND_TEX_MODE_OFF = 0,
	LH3D_2ND_TEX_MODE_SINGLE = 1,
	LH3D_2ND_TEX_MODE_MODULATE = 4,
	LH3D_2ND_TEX_MODE_MODULATE_2X = 5,
	LH3D_2ND_TEX_MODE_ADDITIVE = 7,
	LH3D_2ND_TEX_MODE_COUNT = 8,
};

// How the device draws a second texture: in one pass with either texture stage set up, or in two passes.
enum LH3D_STATE_BLOCK_STYLE
{
	LH3D_STATE_BLOCK_STYLE_NVIDIA = 0,
	LH3D_STATE_BLOCK_STYLE_VOODOO = 1,
	LH3D_STATE_BLOCK_STYLE_MULTIPASS = 2,
};

// What CleanScreen clears before a frame.
enum LH3D_CLEANING_MODE
{
	LH3D_CLEANING_MODE_NONE = 0,
	LH3D_CLEANING_MODE_SCREEN = 1,
	LH3D_CLEANING_MODE_ZBUFFER = 2,
};

// A device state block that sets up one second texture mode.
struct LH3DStateBlock2Tex
{
	unsigned long Handle;       /* 0x0 */
	bool          UseMultipass; /* 0x4 */
};

struct LH3DRender
{
	typedef void(__fastcall* DrawTriangleFunc)(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
	                                           unsigned long index_count);
	typedef void(__stdcall* FinishFrameCallback)(void* data);

	// BW1W120 00c386e4 BW1M119 011d0dfc (LHCombined Release)
	static bool32_t g_b_disable_TNL;
	// BW1W120 00c386e8 BW1M119 011d0e00 (LHCombined Release)
	static unsigned long g_save_tile;
	// BW1W120 00c386ec BW1M119 011d0e04 (LHCombined Release)
	static DrawTriangleFunc g_draw_triangle_func;
	// BW1W120 00c386f0 BW1M119 011d0e08 (LHCombined Release)
	static unsigned long g_tnl_ambient;
	// BW1W120 00c386f4 BW1M119 011d0e0c (LHCombined Release)
	static unsigned long g_lastblend[LH3D_RENDER_TEXTURE_STAGE_COUNT];
	// BW1W120 00c38714 BW1M119 011d0e2c (LHCombined Release)
	static bool32_t g_b_do_update_material;
	// BW1W120 00c38718 BW1M119 011d0e30 (LHCombined Release)
	static int g_render_mode;
	// BW1W120 00c3871c BW1M119 011d0e34 (LHCombined Release)
	static LH3D_CLEANING_MODE g_mode_cleaning;
	// BW1W120 00eca670 BW1M119 012cf808 (LHCombined Release)
	static bool32_t g_b_use_wireframe;
	// BW1W120 00eca66c BW1M119 012cf80c (LHCombined Release)
	static bool32_t g_show_debug_info;
	// BW1W120 00eca668 BW1M119 012cf810 (LHCombined Release)
	static bool32_t g_b_swap_texture;
	// BW1W120 00eca664 BW1M119 012cf814 (LHCombined Release)
	static int g_motion_blur_value;
	// BW1W120 00eca65c BW1M119 012cf81c (LHCombined Release)
	static unsigned long g_alpha_ref;
	// BW1W120 00eca658 BW1M119 012cf820 (LHCombined Release)
	static bool32_t g_b_active_g_alpha_ref;
	// BW1W120 00eca650 BW1M119 012cf828 (LHCombined Release)
	static LH3DMaterial* g_current_other_material;
	// BW1W120 00eca64c BW1M119 012cf82c (LHCombined Release)
	static LH3DMaterial* g_current_active_material;
	// BW1W120 00eca648 BW1M119 012cf830 (LHCombined Release)
	static LH3DZSorter* g_zsorter;
	// BW1W120 00eca644 BW1M119 012cf834 (LHCombined Release)
	static bool32_t g_started_frame;
	// BW1W120 00eca640 BW1M119 012cf838 (LHCombined Release)
	static int g_frame;
	// BW1W120 00eca63c BW1M119 012cf83c (LHCombined Release)
	static IDirectDrawSurface7* ZBufferSurface;
	// BW1W120 00eca638 BW1M119 012cf840 (LHCombined Release)
	static IDirect3DDevice7* D3DDevice;
	// BW1W120 00eca634 BW1M119 012cf844 (LHCombined Release)
	static IDirect3D7* D3D;
	// BW1W120 00eca630 BW1M119 012cf848 (LHCombined Release)
	static float g_adv;
	// BW1W120 00eca62c BW1M119 012cf84c (LHCombined Release)
	static float g_adu;
	// BW1W120 00eca628 BW1M119 012cf850 (LHCombined Release)
	static bool32_t g_b_need_anim_uv;
	// BW1W120 00eca624 BW1M119 012cf854 (LHCombined Release)
	static bool32_t b_need_init;
	// BW1W120 00eca620 BW1M119 012cf858 (LHCombined Release)
	static bool32_t b_open;
	// BW1W120 00eca61c BW1M119 012cf85c (LHCombined Release)
	static int g_tex_display_idx;
	// BW1W120 00ec7f10 BW1M119 012cf864 (LHCombined Release)
	static D3DMATERIAL7 g_d3d_mat;
	// BW1W120 00ec7f58 BW1M119 012cf8a8 (LHCombined Release)
	static D3DLIGHT7 g_d3d_light;
	// BW1W120 00ec7fc0 BW1M119 012cf910 (LHCombined Release)
	static float g_poly_rate_smooth;
	// BW1W120 00ec7fc4 BW1M119 012cf914 (LHCombined Release)
	static float g_poly_rate;
	// BW1W120 00ec7fc8 BW1M119 012cf918 (LHCombined Release)
	static int g_num_polys_drawn;
	// BW1W120 00ec7fd0 BW1M119 012cf920 (LHCombined Release)
	static D3DMATRIX g_d3d_view2proj;
	// BW1W120 00ec8010 BW1M119 012cf960 (LHCombined Release)
	static D3DMATRIX g_d3d_world2view;
	// BW1W120 00ec8050 BW1M119 012cf9a0 (LHCombined Release)
	static D3DMATRIX g_d3d_local2world;
	// BW1W120 00ec81d0 BW1M119 012cf9e0 (LHCombined Release)
	static IDirectDrawSurface7* g_texture_stage_ptr[LH3D_RENDER_TEXTURE_STAGE_COUNT];
	// BW1W120 00ec81f0 BW1M119 012cfa00 (LHCombined Release)
	static uint32_t g_texture_stage_state[LH3D_RENDER_TEXTURE_STAGE_COUNT][LH3D_RENDER_TEXTURE_STAGE_STATE_COUNT];
	// BW1W120 00eca1f0 BW1M119 012d1a00 (LHCombined Release)
	static uint32_t g_render_states[LH3D_RENDER_STATE_COUNT];
	// BW1W120 00eca614 BW1M119 012d1e00 (LHCombined Release)
	static bool32_t g_b_need_tilling;
	// BW1W120 00eca610 BW1M119 012d1e04 (LHCombined Release)
	static bool32_t g_b_sorted_object_drawn_this_frame;
	// BW1W120 00eca60c BW1M119 012d1e08 (LHCombined Release)
	static bool32_t g_b_support_TNL;
	// BW1W120 00eca608 BW1M119 012d1e0c (LHCombined Release)
	static bool32_t g_b_support_AGP;
	// BW1W120 00eca604 BW1M119 012d1e10 (LHCombined Release)
	static GUID* lpPrefferedDeviceGUID;
	// BW1W120 00ec81c4 BW1M119 012d1e14 (LHCombined Release)
	static bool g_use_multipass;
	// BW1W120 00ec81c8 BW1M119 012d1e18 (LHCombined Release)
	static LH3DMaterial* g_curmat2tex;
	// BW1W120 00ec81cc BW1M119 012d1e1c (LHCombined Release)
	static int g_curmode2tex;
	// BW1W120 00ec8090 BW1M119 012d1e20 (LHCombined Release)
	static LH3DStateBlock2Tex g_stateblock2tex[LH3D_2ND_TEX_MODE_COUNT];
	// BW1W120 00ec80d0 BW1M119 012d1e60 (LHCombined Release)
	static LH3D_STATE_BLOCK_STYLE g_stateblockstyle[LH3D_2ND_TEX_MODE_COUNT];
	// BW1W120 00eca600 BW1M119 012d1e80 (LHCombined Release)
	static int g_num_finish_frame_cb;
	// BW1W120 00ec80f0 BW1M119 012d1e84 (LHCombined Release)
	static void* g_finish_frame_cb_data[LH3D_RENDER_FINISH_FRAME_CALLBACKS];
	// BW1W120 00ec8130 BW1M119 012d1ec4 (LHCombined Release)
	static unsigned long g_finish_frame_cb_priority[LH3D_RENDER_FINISH_FRAME_CALLBACKS];
	// BW1W120 00ec8170 BW1M119 012d1f04 (LHCombined Release)
	static FinishFrameCallback g_finish_frame_cb[LH3D_RENDER_FINISH_FRAME_CALLBACKS];

	// BW1W120 0082b220 BW1M119 0103c670 (LHCombined Release)
	static void SetD3DMatrix(D3DMATRIX& d3d_matrix, LHMatrix& matrix);
	// BW1W120 0082b290 BW1M119 010a6280 (LHCombined Release)
	static void ResetD3DMatrix(D3DMATRIX& matrix);
	// BW1W120 0082b2d0 BW1M119 010a60b0 (LHCombined Release)
	static D3DMATRIX SetD3DProjectionMatrix(D3DMATRIX& matrix, float near_plane, float far_plane, float fov);
	// BW1W120 0082b3c0 BW1M119 010a5cb0 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 0082b570 BW1M119 010a5b30 (LHCombined Release)
	static bool32_t Close();
	// BW1W120 0082b680 BW1M119 010a5930 (LHCombined Release)
	static void SetStatesNVidiaStyle(unsigned long mode);
	// BW1W120 0082b790 BW1M119 010a5390 (LHCombined Release)
	static void SetStatesVoodooStyle(unsigned long mode);
	// BW1W120 0082bbc0 BW1M119 01007f00 (LHCombined Release)
	static void SetStatesMultipassStyle(unsigned long mode);
	// BW1W120 0082bf10 BW1M119 010a4bf0 (LHCombined Release)
	static void Init2TexStuff();
	// BW1W120 0082c3f0 BW1M119 010a4b60 (LHCombined Release)
	static int ApplyStateBlock(int mode);
	// BW1W120 0082c430 BW1M119 0101cb10 (LHCombined Release)
	static void Set2ndTex(int mode, LH3DMaterial* material, bool clear_material);
	// BW1W120 0082c640 BW1M119 010a4790 (LHCombined Release)
	static void Close2TexStuff();
	// BW1W120 0082c680 BW1M119 010a4460 (LHCombined Release)
	static void SetCurD3DMat(bool lit, unsigned long color, unsigned long specular);
	// BW1W120 0082c8f0 BW1M119 010a3900 (LHCombined Release)
	static void ResetAllState();
	// BW1W120 0082cd80 BW1M119 010a30f0 (LHCombined Release)
	static bool32_t OpenD3D();
	// BW1W120 0082d3f0 BW1M119 010a2fa0 (LHCombined Release)
	static bool32_t CloseD3D();
	// BW1W120 0082d470 BW1M119 010a2db0 (LHCombined Release)
	static void __fastcall SetRenderModeSmooth(LH3DMaterial* material, int stage);
	// BW1W120 0082d5c0 BW1M119 01019f40 (LHCombined Release)
	static void __fastcall SetRenderModeSmoothAlpha(LH3DMaterial* material, int stage);
	// BW1W120 0082d6f0 BW1M119 010a2bb0 (LHCombined Release)
	static void __fastcall SetRenderModeSmoothAlphaNZ(LH3DMaterial* material, int stage);
	// BW1W120 0082d820 BW1M119 0102dd80 (LHCombined Release)
	static void __fastcall SetRenderModeTextured(LH3DMaterial* material, int stage);
	// BW1W120 0082d920 BW1M119 0102f790 (LHCombined Release)
	static void __fastcall SetRenderModeTexturedAlpha(LH3DMaterial* material, int stage);
	// BW1W120 0082daa0 BW1M119 010a2440 (LHCombined Release)
	static void __fastcall SetRenderModeTexturedAlphaNZ(LH3DMaterial* material, int stage);
	// BW1W120 0082dc20 BW1M119 0101c5d0 (LHCombined Release)
	static void __fastcall SetRenderModeAlphaTextured(LH3DMaterial* material, int stage);
	// BW1W120 0082dd90 BW1M119 0102ef80 (LHCombined Release)
	static void __fastcall SetRenderModeAlphaTexturedAlpha(LH3DMaterial* material, int stage);
	// BW1W120 0082df10 BW1M119 0102e880 (LHCombined Release)
	static void __fastcall SetRenderModeAlphaTexturedAlphaNZ(LH3DMaterial* material, int stage);
	// BW1W120 0082e080 BW1M119 0102d970 (LHCombined Release)
	static void __fastcall SetRenderModeTexturedChroma(LH3DMaterial* material, int stage);
	// BW1W120 0082e2a0 BW1M119 010a18e0 (LHCombined Release)
	static void __fastcall SetRenderModeChromaJustZ(LH3DMaterial* material, int stage);
	// BW1W120 0082e470 BW1M119 0102d650 (LHCombined Release)
	static void __fastcall SetRenderModeTexturedChromaAlpha(LH3DMaterial* material, int stage);
	// BW1W120 0082e6a0 BW1M119 0101ee00 (LHCombined Release)
	static void __fastcall SetRenderModeTexturedChromaAlphaNZ(LH3DMaterial* material, int stage);
	// BW1W120 0082e830 BW1M119 010a1520 (LHCombined Release)
	static void __fastcall SetRenderModeAlphaTexturedAlphaAdditifChroma(LH3DMaterial* material, int stage);
	// BW1W120 0082e9c0 BW1M119 010a10c0 (LHCombined Release)
	static void __fastcall SetRenderModeAlphaTexturedAlphaAdditifChromaNZ(LH3DMaterial* material, int stage);
	// BW1W120 0082eb50 BW1M119 010a0f00 (LHCombined Release)
	static void __fastcall SetRenderModeAlphaTexturedAlphaAdditif(LH3DMaterial* material, int stage);
	// BW1W120 0082ecd0 BW1M119 0102ed10 (LHCombined Release)
	static void __fastcall SetRenderModeAlphaTexturedAlphaAdditifNZ(LH3DMaterial* material, int stage);
	// BW1W120 0082ee70 BW1M119 010a09b0 (LHCombined Release)
	static void CleanScreen();
	// BW1W120 0082ef50 BW1M119 010a0690 (LHCombined Release)
	static void __fastcall DrawRectangle(LHRegion& region, unsigned long color);
	// BW1W120 0082f0e0 BW1M119 01013360 (LHCombined Release)
	static void StartFrame();
	// BW1W120 0082f280 BW1M119 010a0560 (LHCombined Release)
	static void DrawSortedObjects();
	// BW1W120 0082f2c0 BW1M119 010a0340 (LHCombined Release)
	static void RegisterFinishFrameCallback(unsigned long priority, bool after, FinishFrameCallback callback,
	                                        void* data);
	// BW1W120 0082f3b0 BW1M119 010a0210 (LHCombined Release)
	static void RemoveFinishFrameCallback(FinishFrameCallback callback, void* data);
	// BW1W120 0082f460 BW1M119 0101f090 (LHCombined Release)
	static void FinishFrame();
	// BW1W120 0082f810 BW1M119 0102b030 (LHCombined Release)
	static void __fastcall DrawTriangle(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
	                                    unsigned long index_count);
	// BW1W120 0082f920 BW1M119 01015200 (LHCombined Release)
	static void __fastcall DrawTriangleMT(Vertex3DMT* vertices, unsigned long vertex_count, uint16_t* indices,
	                                      unsigned long index_count);
	// BW1W120 0082faa0 BW1M119 0109fe00 (LHCombined Release)
	static void __fastcall SetBackgroundColor(LH3DColor* color);
	// BW1W120 0082fab0 BW1M119 0109fb70 (LHCombined Release)
	static uint16_t* __fastcall SortTriangle(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
	                                         unsigned long index_count);
	// BW1W120 0082fcd0 BW1M119 0109fa70 (LHCombined Release)
	static void __fastcall SetUseWireFrame(bool32_t use_wireframe);
	// BW1W120 0082fd30 BW1M119 0109f910 (LHCombined Release)
	static LH3DMaterial* CreateMaterial(LH3DMaterial::RenderMode render_mode, LH3DTexture* texture);
	// BW1W120 0082fd70 BW1M119 0109f500 (LHCombined Release)
	static void __fastcall DrawTriangleFastBlending(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
	                                                unsigned long index_count);
	// BW1W120 0082feb0 BW1M119 010108b0 (LHCombined Release)
	static void PushTillingMode(int stage);
	// BW1W120 0082fed0 BW1M119 010107f0 (LHCombined Release)
	static void PopTillingMode(int stage);
	// BW1W120 0082ff10 BW1M119 0102b830 (LHCombined Release)
	static void SetD3DTillingOn(int stage);
	// BW1W120 0082ff50 BW1M119 0102eed0 (LHCombined Release)
	static void SetD3DTillingOff(int stage);
	// BW1W120 0082ff90 BW1M119 null
	static void PushZWriteEnable(unsigned long enable);
	// BW1W120 00830000 BW1M119 null
	static void PopZWriteEnable();
	// BW1W120 00412940 BW1M119 0102b750 (LHCombined Release)
	static int SetRenderState(D3DRENDERSTATETYPE type, unsigned long value);
	// BW1W120 inlined BW1M119 inlined
	static void GetRenderState(D3DRENDERSTATETYPE type, unsigned long& value);
	// BW1W120 0082b9c0 BW1M119 0102dc80 (LHCombined Release)
	static int SetTextureStageState(unsigned long stage, D3DTEXTURESTAGESTATETYPE type, unsigned long value);
	// BW1W120 inlined BW1M119 inlined
	static void GetTextureStageState(unsigned long stage, D3DTEXTURESTAGESTATETYPE type, unsigned long& value);
	// BW1W120 0082c610 BW1M119 0101ceb0 (LHCombined Release)
	static void SetTexture(IDirectDrawSurface7* surface, int stage);
	// Inliner IL size: 214
	// BW1W120 007ace50 BW1M119 inlined
	static void SetMaterial(LH3DMaterial* material, int stage);
	// Inliner IL size: 63
	// BW1W120 inlined BW1M119 inlined
	static void SetAnimUV(float delta_u, float delta_v);
	// Inliner IL size: 18
	// BW1W120 inlined BW1M119 inlined
	static void SetDoUpdateMaterial(bool32_t do_update) { g_b_do_update_material = do_update; }
	// BW1W120 inlined BW1M119 0102df20 (LHCombined Release)
	static IDirect3DDevice7* GetD3DDevice() { return D3DDevice; }
	// BW1W120 inlined BW1M119 0109f320 (LHCombined Release)
	static bool32_t IsInit() { return b_open; }
};

inline int LH3DRender::SetRenderState(D3DRENDERSTATETYPE type, unsigned long value)
{
	if (g_render_states[type] != value)
	{
		HRESULT result = D3DDevice->SetRenderState(type, value);
		g_render_states[type] = result ? LH3D_RENDER_STATE_UNKNOWN : value;
		return result;
	}
	return S_OK;
}

inline void LH3DRender::GetRenderState(D3DRENDERSTATETYPE type, unsigned long& value)
{
	if (g_render_states[type] == LH3D_RENDER_STATE_UNKNOWN)
	{
		g_render_states[type] = D3DDevice->GetRenderState(type, &value) ? LH3D_RENDER_STATE_UNKNOWN : value;
	}
	else
	{
		value = g_render_states[type];
	}
}

inline int LH3DRender::SetTextureStageState(unsigned long stage, D3DTEXTURESTAGESTATETYPE type, unsigned long value)
{
	if (g_texture_stage_state[stage][type] != value)
	{
		HRESULT result = D3DDevice->SetTextureStageState(stage, type, value);
		g_texture_stage_state[stage][type] = result ? LH3D_RENDER_STATE_UNKNOWN : value;
		return result;
	}
	return S_OK;
}

inline void LH3DRender::GetTextureStageState(unsigned long stage, D3DTEXTURESTAGESTATETYPE type, unsigned long& value)
{
	if (g_texture_stage_state[stage][type] == LH3D_RENDER_STATE_UNKNOWN)
	{
		g_texture_stage_state[stage][type] =
			D3DDevice->GetTextureStageState(stage, type, &value) ? LH3D_RENDER_STATE_UNKNOWN : value;
	}
	else
	{
		value = g_texture_stage_state[stage][type];
	}
}

inline void LH3DRender::SetTexture(IDirectDrawSurface7* surface, int stage)
{
	if (g_texture_stage_ptr[stage] != surface)
	{
		D3DDevice->SetTexture(stage, surface);
		g_texture_stage_ptr[stage] = surface;
	}
}

inline void LH3DRender::SetMaterial(LH3DMaterial* material, int stage)
{
	if (stage > 0 && material == NULL)
	{
		SetTexture(NULL, stage);
		return;
	}
	if (g_b_do_update_material)
	{
		if (stage == 0)
		{
			g_current_active_material = material;
		}
		else
		{
			g_current_other_material = material;
			if (g_curmode2tex)
			{
				g_curmat2tex = material;
			}
		}
		if (material != NULL && (stage == 0 || (!g_use_multipass && g_curmode2tex)))
		{
			LH3DMaterial::g_list_render_func[material->GetMode()].Func(material, stage);
			if (g_b_need_tilling || material->IsNeedTilling())
			{
				SetD3DTillingOn(stage);
			}
			else
			{
				SetD3DTillingOff(stage);
			}
			if (stage == 0)
			{
				SetRenderState(D3DRENDERSTATE_CULLMODE, material->IsDoubleSided() ? D3DCULL_NONE : D3DCULL_CCW);
			}
		}
	}
}

inline void LH3DRender::SetAnimUV(float delta_u, float delta_v)
{
	if (delta_u == 0.0f && delta_v == 0.0f)
	{
		g_adv = 0.0f;
		g_adu = 0.0f;
		g_b_need_anim_uv = false;
	}
	else
	{
		g_adu = delta_u;
		g_adv = delta_v;
		g_b_need_anim_uv = true;
	}
}

// Original free global, updated by FrameRate(), not a member of LH3DRender.
// Original free symbol imported by the Mac executable.
// BW1W120 00c386d0 BW1M119 011d0de8 (LHCombined Release)
extern bool g_enable_callbacks;
// BW1W120 00c386e0 BW1M119 011d0df8 (LHCombined Release)
extern int g_frame_rate_stats;
// BW1W120 00eca5f0 BW1M119 012d1f58 (LHCombined Release)
extern bool32_t g_b_any_kyro;

// BW1W120 005f4e40 BW1M119 01109f80
void __cdecl RenderLoadingFrame(bool param_1);
// BW1W120 0082a500 BW1M119 0100b580 (LHCombined Release)
void __cdecl DrawAndClip(D3DPRIMITIVETYPE primitive_type, unsigned long fvf, Vertex3D* vertices,
                         unsigned long vertex_count, uint16_t* indices, unsigned long index_count);
// BW1W120 0082a5b0 BW1M119 01030470 (LHCombined Release)
void __cdecl DrawAndClip2D(D3DPRIMITIVETYPE primitive_type, unsigned long fvf, Vertex3D* vertices,
                           unsigned long vertex_count, uint16_t* indices, unsigned long index_count);
// BW1W120 0082a830 BW1M119 0100ec80 (LHCombined Release)
void __cdecl DrawAndClip(D3DPRIMITIVETYPE primitive_type, unsigned long fvf, Vertex3DMT* vertices,
                         unsigned long vertex_count, uint16_t* indices, unsigned long index_count);
// BW1W120 006419f0 BW1M119 01370680
void __cdecl stop_draw_sprite_to_screen();
// BW1W120 0054c160 BW1M119 inlined
void __cdecl RenderLoadingFrame(char* param_1);
// BW1W120 00841c20 BW1M119 010622b0 (LHCombined Release)
void __cdecl BMan_Display();
// BW1W120 008415a0 BW1M119 0103ca40 (LHCombined Release)
void __cdecl BMan_Zero();
// BW1W120 0054d6f0 BW1M119 013e8dd0
void __cdecl DrawMouseCross();

#endif /* BW1_DECOMP_LH3D_RENDER_INCLUDED_H */
