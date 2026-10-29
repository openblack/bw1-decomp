#ifndef BW1_DECOMP_LH3D_DIVERS_INCLUDED_H
#define BW1_DECOMP_LH3D_DIVERS_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */
#include <stdint.h>    /* For uint16_t, uint8_t */

#include "LH3DColor.h"  /* For struct LH3DColor */
#include "LH3DVertex.h" /* For struct Vertex3D */
#include "LHRegion.h"   /* For struct LHRegion */

// Forward Declares

struct LH3DMaterial;
struct LHPlane;

#define BACKGROUND_BOX_MAX      256
#define BACKGROUND_BOX_VERTICES 4
#define BACKGROUND_BOX_INDICES  6

class LH3DDivers
{
public:
	// Static methods

	// BW1W120 0081e820 BW1M119 010bfb30 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 0081e870 BW1M119 010d8b60 (LHCombined Release)
	static bool32_t Close();
};

// BW1W120 0082aed0 BW1M119 01047360 (LHCombined Release)
void ClearAllStuff();

class BackgroundBox
{
public:
	LH3DColor Color;  /* 0x0 */
	LHRegion  Region; /* 0x4 */

	// BW1W120 00eaa3c8 BW1M119 011ce7b8 (LHCombined Release)
	static BackgroundBox g_list_boxes[BACKGROUND_BOX_MAX];
	// BW1W120 00eb994c BW1M119 011f38bc (LHCombined Release)
	static int g_count;
	// BW1W120 00eb995c BW1M119 011f24ac (LHCombined Release)
	static LH3DMaterial* g_material;
	// BW1W120 00c38150 BW1M119 011ce7bc (LHCombined Release)
	static Vertex3D g_list_vertex[BACKGROUND_BOX_VERTICES];
	// BW1W120 00c381d0 BW1M119 011ce83c (LHCombined Release)
	static uint16_t g_index[BACKGROUND_BOX_INDICES];

	// Static methods

	// BW1W120 0081e360 BW1M119 010d8c80 (LHCombined Release)
	static bool32_t AddBox(LHRegion* region, LH3DColor* color);
	// BW1W120 0081e3c0 BW1M119 0100a0e0 (LHCombined Release)
	static void DrawAll();
	// BW1W120 0081e590 BW1M119 0101b9b0 (LHCombined Release)
	static void Draw(LHRegion* region, LH3DColor* color, bool32_t keep_z);
	// BW1W120 0081e740 BW1M119 010be700 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 0081e7d0 BW1M119 0100a090 (LHCombined Release)
	static void __stdcall drawallcb(void* data);
	// BW1W120 0081e7e0 BW1M119 010b1df0 (LHCombined Release)
	static bool32_t Close();
};
static_assert(sizeof(BackgroundBox) == 0x14, "Data type is of wrong size");

class LH3DWideScreen
{
public:
	// BW1W120 00eb9950 BW1M119 011f24b8 (LHCombined Release)
	static float g_fvalue;

	// Static methods

	// BW1W120 0081e880 BW1M119 010d5f00 (LHCombined Release)
	static void GetBottomRegion(LHRegion* region);
	// BW1W120 0081e8b0 BW1M119 010b1e70 (LHCombined Release)
	static int GetHeight();
	// BW1W120 0081e8e0 BW1M119 010b1f20 (LHCombined Release)
	static void GetPercentage(LHCoord& coord, float* x, float* y);
	// BW1W120 0081e920 BW1M119 010b5d80 (LHCombined Release)
	static void GetScreenPos(float x, float y, LHCoord* coord);
};

// BW1W120 00822560 BW1M119 01095540 (LHCombined Release)
void UpdateClippingPlane(LHPlane* plane);
// BW1W120 008229b0 BW1M119 010bd600 (LHCombined Release)
void __fastcall DrawLightLikeHand(float x, float z, uint8_t* light, long size, float intensity);
// BW1W120 00822f90 BW1M119 01066420 (LHCombined Release)
void __fastcall ClearLightLikeHand(float x, float z, long size);

#endif /* BW1_DECOMP_LH3D_DIVERS_INCLUDED_H */
