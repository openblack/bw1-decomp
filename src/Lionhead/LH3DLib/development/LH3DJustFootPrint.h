#ifndef BW1_DECOMP_LH3D_JUST_FOOT_PRINT_INCLUDED_H
#define BW1_DECOMP_LH3D_JUST_FOOT_PRINT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHCoordF.h" /* For struct LHCoordF */
#include "LHMatrix.h" /* For struct LHMatrix */

// Forward Declares

class LH3DObject;
struct LH3DMesh;

// The opacity of a footprint at full strength, in 256ths.
#define LH3D_JUST_FOOT_PRINT_OPAQUE 0x100

struct LH3DJustFootPrint
{
	LH3DMesh*          Mesh;
	LH3DJustFootPrint* Next;
	LHMatrix           Matrix;
	int                field_0x38;
	LHCoordF           Min;
	LHCoordF           Max;
	int                Opacity;

	// BW1W120 00eb9968 BW1M119 011f249c (LHCombined Release)
	static LH3DJustFootPrint* g_first;

	// Static methods

	// BW1W120 0081e9e0 BW1M119 01076730 (LHCombined Release)
	static LH3DJustFootPrint* Create(LH3DObject* object);
	// BW1W120 0081edb0 BW1M119 01070070 (LHCombined Release)
	static void ReleaseAll();
	// BW1W120 0081f180 BW1M119 010c87a0 (LHCombined Release)
	static void DrawDebugAll();

	// Non-virtual methods

	// BW1W120 0081e980 BW1M119 01091980 (LHCombined Release)
	void SetOpacity(float opacity);
	// BW1W120 0081edd0 BW1M119 010bf660 (LHCombined Release)
	void Release();
	// BW1W120 0081ee10 BW1M119 010c69f0 (LHCombined Release)
	void DrawDebug();
};
static_assert(sizeof(LH3DJustFootPrint) == 0x50, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_JUST_FOOT_PRINT_INCLUDED_H */
