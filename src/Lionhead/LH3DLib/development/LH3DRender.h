#ifndef BW1_DECOMP_LH3D_RENDER_INCLUDED_H
#define BW1_DECOMP_LH3D_RENDER_INCLUDED_H

#include <d3d.h>
#include <d3dtypes.h>
#include <stdint.h>    /* For uint16_t, uint32_t */
#include <re_common.h> /* For bool32_t */

#include "LHMatrix.h"
#include "LH3DMaterial.h" /* For LH3DMaterial */

// Forward Declares

struct LH3DMaterial;
struct LH3DRender;
struct LH3DTexture;
struct LHMatrix;
struct Vertex3D;
struct Vertex3DMT;
class LH3DZSorter;

#define LH3D_RENDER_TEXTURE_STAGE_COUNT 8
#define LH3D_RENDER_FUNC_ENTRIES        2

struct LH3DRender
{
	// Original Mac imported names; storage remains extracted.
	static int          g_started_frame; // 00eca644
	static LH3DZSorter* g_zsorter;       // 00eca648
	static bool32_t     g_mode_cleaning; // 00c3871c
	// Original Mac import g_frame__10LH3DRender.
	// BW1W120 00eca640 BW1M119 012cf838 (LHCombined Release)
	static int g_frame;
	// Original Mac import g_b_do_update_material__10LH3DRender.
	// BW1W120 00c38714 BW1M119 011d0e2c (LHCombined Release)
	static int g_b_do_update_material;
	// BW1W120 00eca64c BW1M119 012cf82c (LHCombined Release)
	static LH3DMaterial* g_current_active_material;
	// Descriptive names for the depth-pass override state. Storage remains extracted.
	static int OverrideMaterial;   // 00eca658
	static int OverrideRenderMode; // 00eca65c
	// BW1W120 00eca624 BW1M119 012cf854 (LHCombined Release)
	static bool32_t b_need_init;
	// BW1W120 00ec7fd0 BW1M119 012cf920 (LHCombined Release)
	static LHMatrix g_d3d_view2proj;
	// BW1W120 00ec8010 BW1M119 012cf960 (LHCombined Release)
	static LHMatrix g_d3d_world2view;
	// BW1W120 00ec81f0 BW1M119 012cfa00 (LHCombined Release)
	static uint32_t g_texture_stage_state[0x800];
	// BW1W120 00eca1f0 BW1M119 012d1a00 (LHCombined Release)
	static uint32_t g_render_states[D3DRENDERSTATE_CLIPPLANEENABLE + 1];
	// BW1W120 00eca614 BW1M119 012d1e00 (LHCombined Release)
	static bool32_t g_b_need_tilling;
	// BW1W120 00eca620 BW1M119 012cf858 (LHCombined Release)
	static bool32_t b_open;
	// BW1W120 00eca638
	static IDirect3DDevice7* Direct3DDevice7;
	// BW1W120 00c386ec BW1M119 011d0e04 (LHCombined Release)
	static void(__fastcall* g_draw_triangle_func)(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
	                                              unsigned long index_count);
	// BW1W120 00eca650 BW1M119 012cf828 (LHCombined Release)
	static LH3DMaterial* g_current_other_material;
	// BW1W120 00ec81c4 BW1M119 012d1e14 (LHCombined Release)
	static bool g_use_multipass;
	// BW1W120 00ec81c8 BW1M119 012d1e18 (LHCombined Release)
	static LH3DMaterial* g_curmat2tex;
	// BW1W120 00ec81cc BW1M119 012d1e1c (LHCombined Release)
	static int g_curmode2tex;
	// BW1W120 00ec81d0 BW1M119 012cf9e0 (LHCombined Release)
	static IDirectDrawSurface7* g_texture_stage_ptr[LH3D_RENDER_TEXTURE_STAGE_COUNT];

	// BW1W120 0082f810 BW1M119 0102b030 (LHCombined Release)
	static void __fastcall DrawTriangle(Vertex3D* vertices, unsigned long vertex_count, uint16_t* indices,
	                                    unsigned long index_count);
	// BW1W120 0082f920 BW1M119 01015200 (LHCombined Release)
	static void __fastcall DrawTriangleMT(Vertex3DMT* vertices, unsigned long vertex_count, uint16_t* indices,
	                                      unsigned long index_count);
	// BW1W120 0082c430 BW1M119 0101cb10 (LHCombined Release)
	static void Set2ndTex(int mode, LH3DMaterial* material, bool clear_material);
	// BW1W120 00412940 BW1M119 01049520
	static int SetRenderState(D3DRENDERSTATETYPE type, unsigned long value);
	// BW1W120 inlined BW1M119 inlined
	static int GetRenderState(D3DRENDERSTATETYPE type, uint32_t& value);
	// BW1W120 0082b220 BW1M119 0103c670 (LHCombined Release)
	static void SetD3DMatrix(D3DMATRIX& param_1, LHMatrix& param_2);
	// BW1W120 0082b2d0 BW1M119 inlined
	static void SetProjMatrix(D3DMATRIX* param_1, D3DMATRIX* projection, float near_plane, float far_plane, float fov);
	// BW1W120 0082b3c0 BW1M119 010a5cb0 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 0082b570 BW1M119 010a5b30 (LHCombined Release)
	static bool32_t Close();
	// BW1W120 0082b9c0 BW1M119 0102dc80 (LHCombined Release)
	static int SetTextureStageState(unsigned long stage, D3DTEXTURESTAGESTATETYPE type, unsigned long value);
	// BW1W120 0082cd80 BW1M119 010a30f0 (LHCombined Release)
	static bool32_t OpenD3D();
	// BW1W120 0082d3f0 BW1M119 010a2fa0 (LHCombined Release)
	static bool32_t CloseD3D();
	// BW1W120 0082f0e0 BW1M119 01013360 (LHCombined Release)
	static void StartFrame();
	// BW1W120 0082ff10 BW1M119 0102b830 (LHCombined Release)
	static void SetD3DTillingOn(int index);
	// BW1W120 0082ff50 BW1M119 0102eed0 (LHCombined Release)
	static void SetD3DTillingOff(int index);
	// BW1W120 0082feb0 BW1M119 010108b0 (LHCombined Release)
	static void PushTillingMode(int index);
	// BW1W120 0082fed0 BW1M119 010107f0 (LHCombined Release)
	static void PopTillingMode(int index);
	// BW1W120 inlined BW1M119 0101ceb0 (LHCombined Release)
	static void SetTexture(IDirectDrawSurface7* surface, int stage);
	// Inliner IL size: 214
	// BW1W120 007ace50 BW1M119 inlined
	static void SetMaterial(LH3DMaterial* material, int stage);
	// BW1W120 0082fd30 BW1M119 0109f910 (LHCombined Release)
	static LH3DMaterial* CreateMaterial(LH3DMaterial::RenderMode render_mode, LH3DTexture* texture);
	// BW1W120 0082f2c0 BW1M119 010a0340 (LHCombined Release)
	static void RegisterFinishFrameCallback(unsigned long param_1, bool                    param_2,
	                                        void(__stdcall* param_3)(void* param_1), void* param_4);
	// BW1W120 0082f3b0 BW1M119 010a0210 (LHCombined Release)
	static void RemoveFinishFrameCallback(void(__stdcall* callback)(void*), void* context);
	// BW1W120 0082f460 BW1M119 0101f090 (LHCombined Release)
	static void FinishFrame();
};

inline int LH3DRender::SetRenderState(D3DRENDERSTATETYPE type, unsigned long value)
{
	HRESULT result = S_OK;

	if (g_render_states[type] != value)
	{
		result = Direct3DDevice7->SetRenderState(type, value);
		g_render_states[type] = result != S_OK ? 0xffffffff : value;
	}
	return result;
}

inline void LH3DRender::SetTexture(IDirectDrawSurface7* surface, int stage)
{
	if (g_texture_stage_ptr[stage] != surface)
	{
		Direct3DDevice7->SetTexture(stage, surface);
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
			((LH3DMaterial::RenderFunc*)
			     LH3DMaterial::g_list_render_func)[material->GetMode() * LH3D_RENDER_FUNC_ENTRIES](material, stage);
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

inline int LH3DRender::GetRenderState(D3DRENDERSTATETYPE type, uint32_t& value)
{
	HRESULT result = S_OK;

	if (g_render_states[type] == 0xffffffff)
	{
		result = Direct3DDevice7->GetRenderState(type, (LPDWORD)&value);
		g_render_states[type] = result != S_OK ? 0xffffffff : value;
	}
	else
	{
		value = g_render_states[type];
	}
	return result;
}

inline int LH3DRender::SetTextureStageState(unsigned long stage, D3DTEXTURESTAGESTATETYPE type, unsigned long value)
{
	HRESULT result = S_OK;

	if (g_texture_stage_state[(stage << 8) + type] != value)
	{
		result = Direct3DDevice7->SetTextureStageState(stage, type, value);
		g_texture_stage_state[(stage << 8) + type] = result != S_OK ? 0xffffffff : value;
	}
	return result;
}

// Original free symbol imported by the Mac executable.
// BW1W120 00c386d0 BW1M119 011d0de8 (LHCombined Release)
extern bool g_enable_callbacks;

// LH Combined Release Shared 001ccfe0.
// Original free global, updated by FrameRate(), not a member of LH3DRender.
// BW1W120 00c386e0 BW1M119 011d0df8 (LHCombined Release)
extern int g_frame_rate_stats;

// BW1W120 005f4e40 BW1M119 01109f80
void __cdecl RenderLoadingFrame(bool param_1);
// BW1W120 0082a500
void __cdecl DrawAndClip(D3DPRIMITIVETYPE primitive_type, uint32_t fvf, D3DTLVERTEX* vertices, uint32_t vertex_count,
                         uint16_t* indices, uint32_t index_count);
// BW1W120 0082a5b0 BW1M119 01030470 (LHCombined Release)
void __cdecl DrawAndClip2D(D3DPRIMITIVETYPE primitive_type, uint32_t fvf, D3DTLVERTEX* vertices, uint32_t vertex_count,
                           uint16_t* indices, uint32_t index_count);
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
