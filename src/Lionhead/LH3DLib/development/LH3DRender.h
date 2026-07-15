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

struct LH3DRender
{
	// BW1W120 00eca624 BW1M100 101bcd28
	static bool32_t b_need_init;
	// BW1W120 00ec7fd0 BW1M100 102ca938
	static LHMatrix g_d3d_view2proj;
	// BW1W120 00ec8010 BW1M100 102ca978
	static LHMatrix g_d3d_world2view;
	// BW1W120 00ec81f0 BW1M100 102caa18
	static uint32_t g_texture_stage_state[0x800];
	// BW1W120 00eca1f0 BW1M100 102cca18
	static uint32_t g_render_states[D3DRENDERSTATE_CLIPPLANEENABLE + 1];
	// BW1W120 00ecA614 BW1M100 102cce18
	static bool32_t g_b_need_tilling;
	// BW1W120 00ecA618
	static void* g_set_render_mode_data;
	// BW1W120 00eca620 BW1M100 101bc5d8
	static bool32_t b_open;
	// BW1W120 00ecA638
	static IDirect3DDevice7* Direct3DDevice7;

	// BW1W120 0082f810 BW1M100 1002af30 LH3DRender::DrawTriangle(Vertex3D *, unsigned long, unsigned short *, unsigned long)
	static void DrawTriangle(Vertex3D* vertices, uint32_t param_2, uint16_t* param_3, uint32_t param_4);
	// BW1W120 00412940 BW1M100 10046ae0 LH3DRender::SetRenderState(D3DRENDERSTATETYPE, unsigned long)
	static int SetRenderState(D3DRENDERSTATETYPE type, uint32_t value);
	// BW1W120 inlined BW1M100 inlined LH3DRender::GetRenderState(D3DRENDERSTATETYPE, unsigned long&)
	static int GetRenderState(D3DRENDERSTATETYPE type, uint32_t* value);
	// BW1W120 0082b220 BW1M100 1003c460 LH3DRender::SetD3DMatrix(D3DMATRIX &, LHMatrix &)
	static void SetD3DMatrix(D3DMATRIX* param_1, LHMatrix* param_2);
	// BW1W120 0082b2d0 BW1M100 inlined LH3DRender::SetProjMatrix(D3DMATRIX *, D3DMATRIX *, float, float, float)
	static void SetProjMatrix(D3DMATRIX* param_1, D3DMATRIX* projection, float near_plane, float far_plane, float fov);
	// BW1W120 0082b3c0 BW1M100 100a7b00 LH3DRender::Open(void)
	static bool32_t Open();
	// BW1W120 0082b570 BW1M100 100a7970 LH3DRender::Close(void)
	static bool32_t Close();
	// BW1W120 0082b9c0 BW1M100 1002dbb0 LH3DRender::SetTextureStageState(unsigned long, D3DTEXTURESTAGESTATETYPE, unsigned long)
	static int SetTextureStageState(uint32_t index, D3DTEXTURESTAGESTATETYPE type, uint32_t value);
	// BW1W120 0082cd80 BW1M100 100a4fe0 LH3DRender::OpenD3D(void)
	static bool32_t OpenD3D();
	// BW1W120 0082d3f0 BW1M100 100a4eb0 LH3DRender::CloseD3D(void)
	static bool32_t CloseD3D();
	// BW1W120 0082f0e0 BW1M100 10013290 LH3DRender::StartFrame(void)
	static void StartFrame();
	// BW1W120 0082ff10 BW1M100 10046bbc LH3DRender::SetD3DTillingOn(int)
	static void SetD3DTillingOn(uint32_t index);
	// BW1W120 0082ff50 BW1M100 10046c4c LH3DRender::SetD3DTillingOff(int)
	static void SetD3DTillingOff(uint32_t index);
	// BW1W120 0082fd30 BW1M100 100a1d90 LH3DRender::CreateMaterial(LH3DMaterial::RenderMode, LH3DTexture *)
	static LH3DMaterial* CreateMaterial(LH3DMaterial::RenderMode render_mode, LH3DTexture* texture);
	// BW1W120 0082f2c0 BW1M100 100a27d0 LH3DRender::RegisterFinishFrameCallback(unsigned long, bool, void (__cdecl *)(void *), void *)
	void RegisterFinishFrameCallback(unsigned long param_1, bool param_2, void(__cdecl* param_3)(void* param_1),
	                                 void* param_4);
	// BW1W120 0082f460 BW1M100 1003699c LH3DRender::FinishFrame(void)
	void FinishFrame();
};

// BW1W120 005f4e40 BW1M100 10100190 RenderLoadingFrame(bool)
void __cdecl RenderLoadingFrame(bool param_1);
// BW1W120 0082a500 BW1M100 10017228 DrawAndClip(D3DPRIMITIVETYPE, unsigned long, Vertex3D *, unsigned long, unsigned short *, unsigned long)
void __cdecl DrawAndClip(D3DPRIMITIVETYPE primitive_type, uint32_t fvf, D3DTLVERTEX* vertices, uint32_t vertex_count,
                         uint16_t* indices, uint32_t index_count);
// BW1W120 0082a5b0 BW1M100 1004fe98 DrawAndClip2D(D3DPRIMITIVETYPE, unsigned long, Vertex3D *, unsigned long, unsigned short *, unsigned long)
void __cdecl DrawAndClip2D(D3DPRIMITIVETYPE primitive_type, uint32_t fvf, D3DTLVERTEX* vertices, uint32_t vertex_count,
                           uint16_t* indices, uint32_t index_count);
// BW1W120 006419f0 BW1M100 100d50d0 stop_draw_sprite_to_screen(void)
void __cdecl stop_draw_sprite_to_screen();
// BW1W120 0054c160 BW1M100 inlined RenderLoadingFrame(char *)
void __cdecl RenderLoadingFrame(char* param_1);
// BW1W120 00841c20 BW1M100 10063840 BMan_Display(void)
void __cdecl BMan_Display();
// BW1W120 0054d6f0 BW1M100 100a4900 DrawMouseCross(void)
void __cdecl DrawMouseCross();

#endif /* BW1_DECOMP_LH3D_RENDER_INCLUDED_H */
