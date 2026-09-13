#ifndef BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H
#define BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H

#include <windows.h>

class LHVideoPlayer
{
public:
	// BW1W120 00ef74f8. Shared by the video lock/unlock routines.
	static CRITICAL_SECTION CriticalSection;
	// BW1W120 00844e30 BW1M100 100149e8. Windows callback uses RET 4.
	static void __stdcall thedraw(void* context);
};

#endif /* BW1_DECOMP_LH_VIDEO_PLAYER_INCLUDED_H */
