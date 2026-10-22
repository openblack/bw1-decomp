#ifndef BW1_DECOMP_LH3D_DIVERS_INCLUDED_H
#define BW1_DECOMP_LH3D_DIVERS_INCLUDED_H

#include <re_common.h> /* For bool32_t */
#include <stdint.h>    /* For uint16_t */

#include "LH3DVertex.h" /* For struct Vertex3D */

// Forward Declares

struct LH3DColor;
struct LHRegion;

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

// A screen rectangle filled with one colour.
class BackgroundBox
{
public:
	// BW1W120 00c38150 BW1M119 011ce7bc (LHCombined Release)
	static Vertex3D g_list_vertex[BACKGROUND_BOX_VERTICES];
	// BW1W120 00c381d0 BW1M119 011ce83c (LHCombined Release)
	static uint16_t g_index[BACKGROUND_BOX_INDICES];

	// Static methods

	// BW1W120 0081e590 BW1M119 0101b9b0 (LHCombined Release)
	static void Draw(LHRegion* region, LH3DColor* color, bool32_t keep_z);
};

// The black bars of the wide screen view.
class LH3DWideScreen
{
public:
	// BW1W120 00eb9950 BW1M119 011f24b8 (LHCombined Release)
	static float g_fvalue;

	// Static methods

	// BW1W120 0081e8b0 BW1M119 010b1e70 (LHCombined Release)
	static int GetHeight();
};

#endif /* BW1_DECOMP_LH3D_DIVERS_INCLUDED_H */
