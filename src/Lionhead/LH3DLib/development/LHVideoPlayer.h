#ifndef BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H

#include <windows.h>
#include "Bink.h"
#include "LH3DColor.h"

struct LH3DMaterial;

class LHVideoPlayer
{
public:
	int           Width;
	int           Height;
	int           FrameRate;
	int           TotalFrames;
	int           CurrentFrame; // 0x10
	int           IsOpen;
	unsigned char HiColour;
	unsigned char field_0x19[3];
	HBINK         Bink; // 0x1c
	unsigned char field_0x20[0x18];
	LH3DMaterial* BlurMaterial; // 0x38
	unsigned char field_0x3c[4];
	int           BlurWidth;  // 0x40
	int           BlurHeight; // 0x44
	unsigned char field_0x48[0x20];

	// BW1W120 00844d00 BW1M119 010ccb70 (LHCombined Release)
	LHVideoPlayer();
	// BW1W120 00844d30 BW1M119 010ccab0 (LHCombined Release)
	~LHVideoPlayer();

	// Shared by the video lock/unlock routines.
	// BW1W120 00ef74f8
	static CRITICAL_SECTION CriticalSection;
	// BW1W120 00844e30 BW1M119 0100a470 (LHCombined Release)
	static void __stdcall thedraw(void* context);
	// BW1W120 00844e70 BW1M119 010cc480 (LHCombined Release)
	HBINK Init(char* file_name, bool hi_colour, bool make_blur_texture);
	// BW1W120 008450b0 BW1M119 010cc330 (LHCombined Release)
	void UnpackNextFrame();
	// BW1W120 00845420 BW1M119 010cbd40 (LHCombined Release)
	void CopyToTextures();
	// BW1W120 00845740 BW1M119 010cb700 (LHCombined Release)
	void DoDrawToScreen(LH3DColor color, int x, int y, int width, int height, bool z_write, bool alpha);
	// BW1W120 008456c0 BW1M119 010cbc60 (LHCombined Release)
	void DrawToScreen(LH3DColor color, int x, int y, int width, int height, bool z_write, bool alpha);
};

#endif /* BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H */
