#include "lionhead/lh3dlib/development/LH3DRender.h"
#include "GatheringText.h"

// win1.41 0082f0e0 mac 10013290 LH3DRender::StartFrame(void)
void LH3DRender::StartFrame()
{
}

// win1.41 0082f2c0 mac 100a27d0 LH3DRender::RegisterFinishFrameCallback(unsigned long, bool, void (__cdecl *)(void *), void *)
void LH3DRender::RegisterFinishFrameCallback(unsigned long param_1, bool param_2, void (__cdecl* param_3)(void*), void* param_4)
{
}

// win1.41 0082f460 mac 1003699c LH3DRender::FinishFrame(void)
void LH3DRender::FinishFrame()
{
}

// win1.41 0082f810 mac 1002af30 LH3DRender::DrawTriangle(Vertex3D *, unsigned long, unsigned short *, unsigned long)
void LH3DRender::DrawTriangle(Vertex3D* vertices, uint32_t param_2, uint16_t* param_3, uint32_t param_4)
{
}

// win1.41 0082fd30 mac 100a1d90 LH3DRender::CreateMaterial(LH3DMaterial::RenderMode, LH3DTexture *)
LH3DMaterial* LH3DRender::CreateMaterial(LH3DMaterial::RenderMode render_mode, LH3DTexture* texture)
{
    return 0;
}

// win1.41 0082ff10 mac 10046bbc LH3DRender::SetD3DTillingOn(int)
void LH3DRender::SetD3DTillingOn(uint32_t index)
{
}

// win1.41 0082ff50 mac 10046c4c LH3DRender::SetD3DTillingOff(int)
void LH3DRender::SetD3DTillingOff(uint32_t index)
{
}

// win1.41 00831130 mac 00033360 GatheringText::GetStringWidth(wchar_t *, int, float)
float GatheringText::GetStringWidth(const char16_t* str, int len, float text_size)
{
    return 0;
}

// win1.41 008315b0 mac 1061ca0c GatheringText::DrawText(wchar_t *, float, float, float, float, float, float, float, float, float, LH3DColor *, int, int, int)
float GatheringText::DrawText(const char16_t* text, float param_2, float param_3, float param_4, float param_5, float param_6, float param_7, float param_8, float param_9, float param_10, const LH3DColor* p_color, int param_12, int param_13, int param_14)
{
    return 0;
}

// win1.41 00832c60 mac 10be2db8 GatheringText::DrawTextRaw(wchar_t *, int, float, float, float, float, LH3DColor *, int, LH3DColor *, float, float)
void GatheringText::DrawTextRaw(const char16_t* text, int param_2, float x, float y, float param_5, float param_6, LH3DColor* param_7, int param_8, LH3DColor* param_9, float param_10, float param_11)
{
}
