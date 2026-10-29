#ifndef BW1_DECOMP_LH_ILIB_INCLUDED_H
#define BW1_DECOMP_LH_ILIB_INCLUDED_H

#include <re_common.h> /* For bool32_t */

class LHIlib
{
public:
	// Static methods

	// BW1W120 0087fc50 BW1M119 010d8930 (LHCombined Release)
	static bool32_t LH3DRenderOpen();
	// BW1W120 0087fc60 BW1M119 010d88e0 (LHCombined Release)
	static bool32_t LH3DRenderClose();
	// BW1W120 0087fc70 BW1M119 010d88a0 (LHCombined Release)
	static bool32_t LH3DRenderIsInit();
	// BW1W120 0087fc80 BW1M119 010d8840 (LHCombined Release)
	static void LH3DRenderCleanScreen();
	// BW1W120 0087fc90 BW1M119 010d8800 (LHCombined Release)
	static void LH3DRenderSetNeedInit(bool32_t need_init);
	// BW1W120 0087fca0 BW1M119 010d87b0 (LHCombined Release)
	static void LH3DRenderSetSwapTexture(bool32_t swap_texture);
	// BW1W120 0087fcb0 BW1M119 010d8760 (LHCombined Release)
	static void LH3DRenderSetShowDebugInfo(bool32_t show_debug_info);
	// BW1W120 0087fcc0 BW1M119 010d8710 (LHCombined Release)
	static void LH3DRenderSetMaxAmountAgpMem(long bytes);
	// BW1W120 0087fcd0 BW1M119 010d86c0 (LHCombined Release)
	static void LH3DRenderSetMaxAmountVramMem(long bytes);
	// BW1W120 0087fce0 BW1M119 010d8660 (LHCombined Release)
	static void LH3DRenderSetUseWireFrame(bool32_t use_wire_frame);
	// BW1W120 0087fcf0 BW1M119 010d8610 (LHCombined Release)
	static void LH3DRenderSetAllocMouseSurface(bool32_t alloc_mouse_surface);
	// BW1W120 0087fd00 BW1M119 010d85d0 (LHCombined Release)
	static void LH3DIslandSetBuildAllMaterial(bool32_t build_all_material);
	// BW1W120 0087fd10 BW1M119 010d8570 (LHCombined Release)
	static void LH3DIslandSetFileToLoad(char* name);
	// BW1W120 0087fd20 BW1M119 010d8510 (LHCombined Release)
	static void LH3DIslandUseLowResTexture(bool32_t use_low_res_texture);
	// BW1W120 0087fd30 BW1M119 010d84d0 (LHCombined Release)
	static void LH3DIslandSetSmallBump(bool32_t small_bump);
	// BW1W120 0087fd40 BW1M119 010d8480 (LHCombined Release)
	static void LH3DIslandSetVanishDistance(float distance);
};

#endif /* BW1_DECOMP_LH_ILIB_INCLUDED_H */
