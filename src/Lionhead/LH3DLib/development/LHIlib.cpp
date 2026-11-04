#include "LHIlib.h"

#include "LH3DIsland.h" /* For class LH3DIsland */
#include "LH3DRender.h" /* For class LH3DRender */

bool32_t LHIlib::LH3DRenderOpen()
{
	return LH3DRender::Open();
}

bool32_t LHIlib::LH3DRenderClose()
{
	return LH3DRender::Close();
}

bool32_t LHIlib::LH3DRenderIsInit()
{
	return LH3DRender::IsInit();
}

void LHIlib::LH3DRenderCleanScreen()
{
	LH3DRender::CleanScreen();
}

void LHIlib::LH3DRenderSetNeedInit(bool32_t need_init)
{
	LH3DRender::b_need_init = need_init;
}

void LHIlib::LH3DRenderSetSwapTexture(bool32_t swap_texture)
{
	LH3DRender::g_b_swap_texture = swap_texture;
}

void LHIlib::LH3DRenderSetShowDebugInfo(bool32_t show_debug_info)
{
	LH3DRender::g_show_debug_info = show_debug_info;
}

void LHIlib::LH3DRenderSetUseWireFrame(bool32_t use_wire_frame)
{
	LH3DRender::SetUseWireFrame(use_wire_frame);
}

#ifndef VERSION_BW1W100
void LHIlib::LH3DIslandSetBuildAllMaterial(bool32_t build_all_material) {}
#endif

void LHIlib::LH3DIslandSetFileToLoad(char* name)
{
	LH3DIsland::SetFileToLoad(name);
}

void LHIlib::LH3DIslandUseLowResTexture(bool32_t use_low_res_texture)
{
	LH3DIsland::UseLowResTexture(use_low_res_texture);
}

void LHIlib::LH3DIslandSetSmallBump(bool32_t small_bump)
{
	LH3DIsland::g_b_use_small_bump = small_bump;
}

void LHIlib::LH3DIslandSetVanishDistance(float distance)
{
	LH3DIsland::g_distance_vanish = distance;
}
