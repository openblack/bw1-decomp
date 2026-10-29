#ifndef BW1_DECOMP_LH_MIDI_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_MIDI_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "LHAudioExport.h" /* For LH_AUDIO_API */

#define LH_MIDI_VOLUME_MAX           127
#define LH_MIDI_PAN_CENTRE           64
#define LH_MIDI_PAN_MAX              127
#define LH_MIDI_TEMPO_NORMAL         100
#define LH_MIDI_DEFAULT_MIN_DISTANCE 30
#define LH_MIDI_DEFAULT_MAX_DISTANCE 500

class LH_MidiPlayOptions
{
public:
	bool32_t      Positional;
	long          Volume;      /* 0x4 */
	long          Pan;         /* 0x8 */
	long          Tempo;       /* 0xc */
	unsigned long MinDistance; /* 0x10 */
	unsigned long MaxDistance; /* 0x14 */
	float         X;           /* 0x18 */
	float         Y;           /* 0x1c */
	float         Z;           /* 0x20 */

	// BW1W120 10003c80 BW1M119 0111f6a0 (LHCombined Release)
	LH_AUDIO_API LH_MidiPlayOptions();
	// BW1W120 10003cc0 BW1M119 0111f630 (LHCombined Release)
	LH_AUDIO_API ~LH_MidiPlayOptions();
};
static_assert(sizeof(LH_MidiPlayOptions) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_MIDI_PLAY_OPTIONS_INCLUDED_H */
