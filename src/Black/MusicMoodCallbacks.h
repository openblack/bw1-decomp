#ifndef BW1_DECOMP_MUSIC_MOOD_CALLBACKS_INCLUDED_H
#define BW1_DECOMP_MUSIC_MOOD_CALLBACKS_INCLUDED_H

#include "MusicMoodController.h" /* For struct MusicEmotion, struct MusicMoodPacket */

struct MusicMoodCallbacks
{
	// BW1W120 00d410cc
	static void(__stdcall* SendPacket)(MusicMoodPacket packet);
	// BW1W120 00d410c8
	static void(__stdcall* UpdateEmotion)(MusicEmotion& emotion);
};

#endif /* BW1_DECOMP_MUSIC_MOOD_CALLBACKS_INCLUDED_H */
