#ifndef BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H

#include <windows.h>
#include "Bink.h"
#include "LH3DColor.h"

class LHVideoPlayer
{
public:
	// Observed prefix only; use extracted allocation/teardown, never sizeof this view.
	int           Width;
	int           Height;
	int           FrameRate;
	int           TotalFrames;
	int           CurrentFrame; // 0x10
	int           IsOpen;
	unsigned char HiColour;
	unsigned char field_0x19[3];
	HBINK         Bink; // 0x1c
	// Shared by the video lock/unlock routines.
	// BW1W120 00ef74f8
	static CRITICAL_SECTION CriticalSection;
	// Windows callback uses RET 4.
	// BW1W120 00844e30 BW1M119 0100a470 (LHCombined Release)
	static void __stdcall thedraw(void* context);
	// BW1W120 008456c0 BW1M119 imported
	void DrawToScreen(LH3DColor color, int x, int y, int width, int height, bool z_write, bool alpha);
};

#endif /* BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H */
