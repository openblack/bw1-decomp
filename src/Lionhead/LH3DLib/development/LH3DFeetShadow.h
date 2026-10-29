#ifndef BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H
#define BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

// Forward Declares

struct ExtraBone;
class LH3DObject;
struct LH3DMaterial;
struct LH3DTexture;

#define LH3D_FEET_SHADOW_QUADS    4
#define LH3D_FEET_SHADOW_VERTICES (LH3D_FEET_SHADOW_QUADS * 4)
#define LH3D_FEET_SHADOW_INDICES  (LH3D_FEET_SHADOW_QUADS * 6)

class LH3DFeetShadow
{
public:
	// BW1W120 00eaa2d0 BW1M119 011f2388 (LHCombined Release)
	static LHPoint g_vertex_list[LH3D_FEET_SHADOW_VERTICES];
	// BW1W120 00eaa28c BW1M119 011f2348 (LHCombined Release)
	static LH3DColor g_list_color[LH3D_FEET_SHADOW_VERTICES];
	// BW1W120 00eaa20c BW1M119 011f22c8 (LHCombined Release)
	static float g_list_uv[LH3D_FEET_SHADOW_VERTICES * 2];
	// BW1W120 00eaa1ac BW1M119 011f2268 (LHCombined Release)
	static long g_list_index[LH3D_FEET_SHADOW_INDICES];
	// BW1W120 00eb998c BW1M119 011f244c (LHCombined Release)
	static LH3DMaterial* g_material_shadow_feet;
	// BW1W120 00eb9990 BW1M119 011f2448 (LHCombined Release)
	static LH3DTexture* g_texture_shadow_feet;

	// Static methods

	// BW1W120 0081faa0 BW1M119 0112b850 (LHCombined Release)
	static void Open();
	// BW1W120 0081fe10 BW1M119 01045250 (LHCombined Release)
	static void Close();
	// BW1W120 0081fff0 BW1M119 01023c60 (LHCombined Release)
	static void Draw(LH3DObject* object, LHPoint* normal, ExtraBone* bone);
};

#endif /* BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H */
