#ifndef BW1_DECOMP_LH3D_TOOLS_INCLUDED_H
#define BW1_DECOMP_LH3D_TOOLS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LH3DTexturePackFile
{
	uint8_t       field_0x0[0x38];
	long          Count;
	unsigned long Offsets;
};
static_assert(sizeof(LH3DTexturePackFile) == 0x40, "Data type is of wrong size");

class LH3DTools
{
public:
	// Static methods

	// BW1W120 00821e30 BW1M119 010c7240 (LHCombined Release)
	static void ConvertTgaTo16B(int argc, char** argv);
	// BW1W120 00821e80 BW1M119 010c2fa0 (LHCombined Release)
	static void DeteleTexture(int argc, char** argv);
	// BW1W120 00821f40 BW1M119 010b3fb0 (LHCombined Release)
	static void ExportTGA(int argc, char** argv);
	// BW1W120 00822730 BW1M119 010d8bb0 (LHCombined Release)
	static void ConvertLandscape(int argc, char** argv);
	// BW1W120 008227a0 BW1M119 01160110 (LHCombined Release)
	static void ConvertLoadOnDiscIntoCT(int argc, char** argv);
	// BW1W120 00822910 BW1M119 010bb5e0 (LHCombined Release)
	static void ProcessLED(int argc, char** argv);
	// BW1W120 00824450 BW1M119 010a1bc0 (LHCombined Release)
	static void BuildPaginationFromRawFile(int argc, char** argv);
	// BW1W120 00828ef0 BW1M119 010be7d0 (LHCombined Release)
	static void AnimationViewer();
};

#endif /* BW1_DECOMP_LH3D_TOOLS_INCLUDED_H */
