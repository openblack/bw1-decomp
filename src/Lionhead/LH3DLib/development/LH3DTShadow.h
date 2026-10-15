#ifndef BW1_DECOMP_LH3D_T_SHADOW_INCLUDED_H
#define BW1_DECOMP_LH3D_T_SHADOW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct Vertex3D;

// The size of the shadow texture, halved for low resolution textures.
#define LH3D_T_SHADOW_SIZE 256
// The width and height of the alpha pattern g_bitmap points at.
#define LH3D_T_SHADOW_BITMAP_SIZE 64

// Renders object shadows into a texture, one scan line at a time.
struct LH3DTShadow
{
	// The extent of a triangle on one line of the shadow texture.
	struct ScanLine
	{
		bool32_t Used; /* 0x0 */
		long     Min;
		long     Max;
		float    MinU; /* 0xc */
		float    MaxU;
		float    MinV;
		float    MaxV; /* 0x18 */
	};

	// BW1W120 00c398ec BW1M119 011d172c (LHCombined Release)
	static int g_pitch;
	// BW1W120 00c398f0 BW1M119 011d1730 (LHCombined Release)
	static float VMAX;
	// BW1W120 00fa92d0 BW1M119 01340568 (LHCombined Release)
	static uint8_t* g_buffer;
	// BW1W120 00fa92d4 BW1M119 01340564 (LHCombined Release)
	static uint8_t* g_bitmap;
	// BW1W120 00fa76d0 BW1M119 0134056c (LHCombined Release)
	static ScanLine g_list_scan_line[LH3D_T_SHADOW_SIZE];

	// BW1W120 0084b410 BW1M119 inlined
	static void __fastcall AddPoint(long y, long x, float u, float v);
	// BW1W120 0084b4b0 BW1M119 0109de80 (LHCombined Release)
	static void __fastcall AddEdge(Vertex3D* a, Vertex3D* b, int unused);
	// BW1W120 00874440 BW1M119 010ca500 (LHCombined Release)
	static void DrawAlpha();
};
static_assert(sizeof(LH3DTShadow::ScanLine) == 0x1c, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_T_SHADOW_INCLUDED_H */
