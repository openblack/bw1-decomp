#ifndef BW1_DECOMP_LH_MUSIC_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_MUSIC_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LHAudioExport.h" /* For LH_AUDIO_API */

class LH_AudioBank;

#define LH_MUSIC_VOLUME_MAX   127
#define LH_MUSIC_PITCH_NORMAL 100
#define LH_MUSIC_FIRST_CHUNK  1

typedef void (*LH_MUSIC_CALLBACK)(unsigned long param);

class LH_MusicPlayOptions
{
public:
	LH_AudioBank*     Bank;
	long              Volume;
	uint32_t          field_0x8;
	uint32_t          field_0xc;
	uint32_t          field_0x10;
	long              StartChunk;
	bool32_t          StartInSecondHalf;
	bool32_t          Loop;
	bool32_t          FadeIn;
	bool32_t          Positional;
	unsigned long     Pitch;
	float             MinDistance;
	float             MaxDistance;
	float             field_0x34;
	float             X;
	float             Y;
	float             Z;
	LH_MUSIC_CALLBACK FinishedCallback;
	LH_MUSIC_CALLBACK MarkerCallback;
	unsigned long     CallbackParam;

	// Constructors

	// BW1W120 1000d970 BW1M119 0100e970 (LHCombined Release)
	LH_AUDIO_API LH_MusicPlayOptions();

	// Non-virtual methods

	// BW1W120 1000d9d0 BW1M119 0100e900 (LHCombined Release)
	LH_AUDIO_API ~LH_MusicPlayOptions();
};
static_assert(sizeof(LH_MusicPlayOptions) == 0x50, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_MUSIC_PLAY_OPTIONS_INCLUDED_H */
