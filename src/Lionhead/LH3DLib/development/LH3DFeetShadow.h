#ifndef BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H
#define BW1_DECOMP_LH3D_FEET_SHADOW_INCLUDED_H

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

#define LH3D_FEET_SHADOW_TEXTURE_SIZE  32
#define LH3D_FEET_SHADOW_SIDE_SIZE     0.2f
#define LH3D_FEET_SHADOW_LIGHT_SIZE    2.0f
#define LH3D_FEET_SHADOW_SOLID_CORNERS 2
#define LH3D_FEET_SHADOW_BACK_OFFSET   -0.02f
#define LH3D_FEET_SHADOW_TEXTURE_PATH  ".\\Data\\Textures\\human_shadow.raw"

// Forward Declares

struct ExtraBone;
class LH3DObject;
struct LH3DMaterial;
struct LH3DTexture;

#define LH3D_FEET_SHADOW_QUADS              4
#define LH3D_FEET_SHADOW_HUMAN_QUADS        2
#define LH3D_FEET_SHADOW_VERTICES_PER_QUAD  4
#define LH3D_FEET_SHADOW_TRIANGLES_PER_QUAD 2
#define LH3D_FEET_SHADOW_INDICES_PER_QUAD   6
#define LH3D_FEET_SHADOW_VERTICES           (LH3D_FEET_SHADOW_QUADS * LH3D_FEET_SHADOW_VERTICES_PER_QUAD)
#define LH3D_FEET_SHADOW_INDICES            (LH3D_FEET_SHADOW_QUADS * LH3D_FEET_SHADOW_INDICES_PER_QUAD)

class LH3DFeetShadow
{
public:
	enum HUMAN_BONE
	{
		HUMAN_BONE_LEFT_FOOT = 18,
		HUMAN_BONE_RIGHT_FOOT = 21
	};

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
