#ifndef BW1_DECOMP_LH_MIDI_INFO_INCLUDED_H
#define BW1_DECOMP_LH_MIDI_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include <dsound.h> /* For IDirectSoundBuffer, IDirectSound3DBuffer */

#include "LHAudioPoint.h" /* For LHAudioPoint */

struct IDirectMusicPerformance;
struct IDirectMusicSegment;

#define LH_MIDI_INFO_COUNT    3
#define LH_MIDI_NO_LOOP_POINT (-1)

struct LH_MidiInfo
{
	IDirectMusicSegment*     Segment;
	IDirectMusicPerformance* Performance; /* 0x4 */
	uint32_t                 field_0x8;
	uint32_t                 field_0xc;
	IDirectSoundBuffer*      Buffer;            /* 0x10 */
	IDirectSound3DBuffer*    Buffer3D;          /* 0x14 */
	long                     Volume;            /* 0x18 */
	long                     Tempo;             /* 0x1c */
	unsigned long            BufferMinDistance; /* 0x20 */
	unsigned long            BufferMaxDistance; /* 0x24 */
	unsigned long            MaxDistance;       /* 0x28 */
	long                     LoopStart;         /* 0x2c */
	long                     LoopEnd;           /* 0x30 */
	bool32_t                 Positional;        /* 0x34 */
	LHAudioPoint             Pos;               /* 0x38 */

	// BW1W120 inlined BW1M119 null
	LH_MidiInfo()
	{
		Segment = NULL;
		Performance = NULL;
		LoopStart = LH_MIDI_NO_LOOP_POINT;
		LoopEnd = LH_MIDI_NO_LOOP_POINT;
	}
};
static_assert(sizeof(LH_MidiInfo) == 0x44, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_MIDI_INFO_INCLUDED_H */
