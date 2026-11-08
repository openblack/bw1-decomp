#ifndef BW1_DECOMP_LH3D_TOOLS_INCLUDED_H
#define BW1_DECOMP_LH3D_TOOLS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#define LH3D_TOOLS_TEXT_SIZE            0x400
#define LH3D_TOOLS_FILE_SIZE            0x100
#define LH3D_TEXTURE_PACK_SIZE          256
#define LH3D_TEXTURE_PACK_NO_OFFSETS    0xffffffff
#define LH3D_TOOLS_SCREEN_SIZE          50
#define LH3D_TOOLS_SCREEN_DEPTH         16
#define LH3D_TOOLS_EXTENSION_LENGTH     4
#define LH3D_TOOLS_TEXTURE_FLAGS        1
#define LH3D_TOOLS_TEXTURE_ALPHA        0x40
#define LH3D_TOOLS_PAGE_SIZE            256
#define LH3D_TOOLS_TILE_SIZE            32
#define LH3D_TOOLS_PAGE_TILES           (LH3D_TOOLS_PAGE_SIZE / LH3D_TOOLS_TILE_SIZE)
#define LH3D_TOOLS_RAW_EXTENSION_LENGTH 5
#define LH3D_TOOLS_PACK_TEXTURE_PATH    "%s\\PAK%x.tga"
#define LH3D_TOOLS_VIEWER_SIZE          400
#define LH3D_TOOLS_VIEWER_DEPTH         16

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
