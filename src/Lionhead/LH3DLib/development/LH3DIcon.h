#ifndef BW1_DECOMP_LH3D_ICON_INCLUDED_H
#define BW1_DECOMP_LH3D_ICON_INCLUDED_H

#include <re_common.h> /* For bool32_t */

// An icon drawn with the 3D scene, offset on the screen while it is activated.
class LH3DIcon
{
public:
	// BW1W120 00fa9398 BW1M119 011ffed4 (LHCombined Release)
	static bool32_t g_b_activated;
	// BW1W120 00fa939c BW1M119 011ffed0 (LHCombined Release)
	static float g_offset_x;
	// BW1W120 00fa93a0 BW1M119 011ffecc (LHCombined Release)
	static float g_offset_y;
};

#endif /* BW1_DECOMP_LH3D_ICON_INCLUDED_H */
