#ifndef BW1_DECOMP_LH_BANK_SAMPLE_INCLUDED_H
#define BW1_DECOMP_LH_BANK_SAMPLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <windows.h> /* For MAX_PATH, WAVEFORMATEX */
#include <mmsystem.h>

#include <re_common.h> /* For bool32_t */

#include "LH_SamplePlayOptions.h" /* For LH_SAMPLE_PLAY_TYPE */

#define LH_AUDIO_LOW_WORD(value)  ((value) & 0xffff)
#define LH_AUDIO_HIGH_WORD(value) ((value) >> 16)

#define LH_BANK_SAMPLE_MARKERS_LENGTH 0x100

enum LH_SAMPLE_OVERRIDE
{
	LH_SAMPLE_OVERRIDE_PITCH = 0x1,
	LH_SAMPLE_OVERRIDE_PAN = 0x2,
	LH_SAMPLE_OVERRIDE_POS_X = 0x4,
	LH_SAMPLE_OVERRIDE_POS_Y = 0x8,
	LH_SAMPLE_OVERRIDE_POS_Z = 0x10,
	LH_SAMPLE_OVERRIDE_VOLUME = 0x20,
	LH_SAMPLE_OVERRIDE_LOOP_COUNT = 0x40,
	LH_SAMPLE_OVERRIDE_MIN_DISTANCE = 0x80,
	LH_SAMPLE_OVERRIDE_MAX_DISTANCE = 0x100,
	LH_SAMPLE_OVERRIDE_DISTANCE_SCALE = 0x200,
	LH_SAMPLE_OVERRIDE_PLAY_TYPE = 0x400,
};

struct LH_BankSample
{
	char                FileName[MAX_PATH]; /* 0x0 */
	unsigned long       SampleNumber;       /* 0x104 */
	unsigned long       WaveNumber;         /* 0x108 */
	unsigned long       Size;               /* 0x10c */
	unsigned long       Offset;             /* 0x110 */
	uint32_t            field_0x114;
	unsigned long       Group;                                  /* 0x118 */
	void*               Data;                                   /* 0x11c */
	bool32_t            Loaded;                                 /* 0x120 */
	WAVEFORMATEX        Format;                                 /* 0x124 */
	long                LoopStart;                              /* 0x138 */
	long                LoopEnd;                                /* 0x13c */
	char                Markers[LH_BANK_SAMPLE_MARKERS_LENGTH]; /* 0x140 */
	unsigned long       Priority;                               /* 0x240 */
	unsigned long       OverrideFlags;                          /* 0x244 */
	long                LoopCount;                              /* 0x248 */
	unsigned long       Pan;                                    /* 0x24c */
	float               XPos;                                   /* 0x250 */
	float               YPos;                                   /* 0x254 */
	float               ZPos;                                   /* 0x258 */
	unsigned long       Volume;                                 /* 0x25c */
	unsigned long       Pitch;                                  /* 0x260 */
	unsigned long       PitchVariance;                          /* 0x264 */
	float               MinDistance;                            /* 0x268 */
	float               MaxDistance;                            /* 0x26c */
	float               DistanceScale;                          /* 0x270 */
	LH_SAMPLE_PLAY_TYPE PlayType;                               /* 0x274 */
	bool32_t            Enabled;                                /* 0x278 */
	long                AtmosInterval;                          /* 0x27c */
};
static_assert(sizeof(LH_BankSample) == 0x280, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_BANK_SAMPLE_INCLUDED_H */
