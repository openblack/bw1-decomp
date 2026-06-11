#ifndef BW1_DECOMP_LH3D_RENDER_INCLUDED_H
#define BW1_DECOMP_LH3D_RENDER_INCLUDED_H

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wpragma-pack"
#pragma clang diagnostic ignored "-Wmacro-redefined"
#pragma clang diagnostic ignored "-Wmissing-declarations"
#include <d3dtypes.h> /* For D3DMATRIX, D3DTLVERTEX */
#pragma clang diagnostic pop
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "LH3DMaterial.h" /* For enum LH3DMaterial__RenderMode */

// Forward Declares

struct LH3DMaterial;
struct LH3DRender;
struct LH3DTexture;
struct LHMatrix;
struct Vertex3D;

// win1.41 0082f810 mac 1002af30 LH3DRender::DrawTriangle(Vertex3D *, unsigned long, unsigned short *, unsigned long)
void __fastcall DrawTriangle__10LH3DRenderFP8Vertex3DUlPUsUl(struct Vertex3D* vertices, uint32_t param_2, uint16_t* param_3, uint32_t param_4) asm("?DrawTriangle@LH3DRender@@SAXPAUVertex3D@@KPAGK@Z");
// win1.41 00412940 mac 10046ae0 LH3DRender::SetRenderState(D3DRENDERSTATETYPE, unsigned long)
int __cdecl SetRenderState__10LH3DRenderF18D3DRENDERSTATETYPEUl(D3DRENDERSTATETYPE type, uint32_t value);
// win1.41 inlined mac inlined LH3DRender::GetRenderState(D3DRENDERSTATETYPE, unsigned long&)
int __cdecl GetRenderState__10LH3DRenderF18D3DRENDERSTATETYPERUl(D3DRENDERSTATETYPE type, uint32_t* value);
// win1.41 0082b220 mac 1003c460 LH3DRender::SetD3DMatrix(D3DMATRIX &, LHMatrix &)
void __cdecl SetD3DMatrix__10LH3DRenderFRQ29IndirectX10_D3DMATRIXR8LHMatrix(D3DMATRIX* param_1, struct LHMatrix* param_2);
// win1.41 0082b2d0 mac inlined LH3DRender::SetProjMatrix(D3DMATRIX *, D3DMATRIX *, float, float, float)
void __cdecl SetProjMatrix__10LH3DRenderFP9D3DMATRIXP9D3DMATRIXfff(D3DMATRIX* param_1, D3DMATRIX* projection, float near_plane, float far_plane, float fov);
// win1.41 0082b570 mac 100a7970 LH3DRender::Close(void)
int __cdecl Close__10LH3DRenderFv(void) asm("?Close@LH3DRender@@SAHXZ");
// win1.41 0082b9c0 mac 1002dbb0 LH3DRender::SetTextureStageState(unsigned long, D3DTEXTURESTAGESTATETYPE, unsigned long)
int __cdecl SetTextureStageState__10LH3DRenderFUl24D3DTEXTURESTAGESTATETYPEUl(uint32_t index, D3DTEXTURESTAGESTATETYPE type, uint32_t value);
// win1.41 0082f0e0 mac 10013290 LH3DRender::StartFrame(void)
void __cdecl StartFrame__10LH3DRenderFv(void) asm("?StartFrame@LH3DRender@@SAXXZ");
// win1.41 0082ff10 mac 10046bbc LH3DRender::SetD3DTillingOn(int)
void __cdecl SetD3DTillingOn__10LH3DRenderFi(uint32_t index) asm("?SetD3DTillingOn@LH3DRender@@SAXH@Z");
// win1.41 0082ff50 mac 10046c4c LH3DRender::SetD3DTillingOff(int)
void __cdecl SetD3DTillingOff__10LH3DRenderFi(uint32_t index) asm("?SetD3DTillingOff@LH3DRender@@SAXH@Z");
// win1.41 0082fd30 mac 100a1d90 LH3DRender::CreateMaterial(LH3DMaterial::RenderMode, LH3DTexture *)
struct LH3DMaterial* __cdecl CreateMaterial__10LH3DRenderFQ212LH3DMaterial10RenderModeP11LH3DTexture(enum LH3DMaterial__RenderMode render_mode, struct LH3DTexture* texture);
// win1.41 0082f2c0 mac 100a27d0 LH3DRender::RegisterFinishFrameCallback(unsigned long, bool, void (__cdecl *)(void *), void *)
void __cdecl RegisterFinishFrameCallback__10LH3DRenderFUlbPFPv_vPv(struct LH3DRender* this, unsigned long param_1, bool param_2, void (__cdecl* param_3)(void * param_1), void* param_4) asm("?RegisterFinishFrameCallback@LH3DRender@@QAEXK_NP6AXPAX@Z1@Z");
// win1.41 0082f460 mac 1003699c LH3DRender::FinishFrame(void)
void __cdecl FinishFrame__10LH3DRenderFv(struct LH3DRender* this) asm("?FinishFrame@LH3DRender@@QAEXXZ");
// win1.41 005f4e40 mac 10100190 RenderLoadingFrame(bool)
void __cdecl RenderLoadingFrame__Fb(bool param_1);
// win1.41 0082a500 mac 10017228 DrawAndClip(D3DPRIMITIVETYPE, unsigned long, Vertex3D *, unsigned long, unsigned short *, unsigned long)
void __cdecl DrawAndClip__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl(D3DPRIMITIVETYPE primitive_type, uint32_t fvf, D3DTLVERTEX* vertices, uint32_t vertex_count, uint16_t* indices, uint32_t index_count);
// win1.41 0082a5b0 mac 1004fe98 DrawAndClip2D(D3DPRIMITIVETYPE, unsigned long, Vertex3D *, unsigned long, unsigned short *, unsigned long)
void __cdecl DrawAndClip2D__F16D3DPRIMITIVETYPEUlP8Vertex3DUlPUsUl(D3DPRIMITIVETYPE primitive_type, uint32_t fvf, D3DTLVERTEX* vertices, uint32_t vertex_count, uint16_t* indices, uint32_t index_count);
// win1.41 006419f0 mac 100d50d0 stop_draw_sprite_to_screen(void)
void __cdecl stop_draw_sprite_to_screen__Fv(void);
// win1.41 0054c160 mac inlined RenderLoadingFrame(char *)
void __cdecl RenderLoadingFrame__FPc(char* param_1) asm("?RenderLoadingFrame@@YAXPAD@Z");
// win1.41 00841c20 mac 10063840 BMan_Display(void)
void __cdecl BMan_Display__Fv(void) asm("?BMan_Display@@YAXXZ");
// win1.41 0054d6f0 mac 100a4900 DrawMouseCross(void)
void __cdecl DrawMouseCross__Fv(void) asm("?DrawMouseCross@@YAXXZ");

#endif /* BW1_DECOMP_LH3D_RENDER_INCLUDED_H */
