#ifndef BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHAudioExport.h" /* For LH_AUDIO_API */

#define LH_SAMPLE_FILE_NAME_LENGTH 0x104
#define LH_SAMPLE_LOOP_FOREVER     (-1)
#define LH_SAMPLE_FLAG_KEEP_DATA   0x1

class Base;
class LH_AudioBank;
struct atmos_list_entry_info;

enum LH_SAMPLE_PLAY_TYPE
{
	LH_SAMPLE_PLAY_TYPE_STEAL = 0,
	LH_SAMPLE_PLAY_TYPE_OVERLAP = 1,
	LH_SAMPLE_PLAY_TYPE_ONCE = 2,
	LH_SAMPLE_PLAY_TYPE_RESTART = 3,
};

class LH_SamplePlayOptions
{
public:
	atmos_list_entry_info* AtmosInfo;
	LH_AudioBank*          Bank;
	bool32_t               Positional;
	bool32_t               Follow;
	bool32_t               Doppler;
	bool32_t               Polar;
	bool32_t               Stream;
	uint32_t               OverrideFlags;
	Base*                  AttachedObject;
	uint32_t               SampleNumber;
	uint32_t               Volume;
	uint32_t               Pan;
	float                  XPos;
	float                  YPos;
	float                  ZPos;
	float                  XOffset;
	float                  YOffset;
	float                  ZOffset;
	uint32_t               Pitch;
	long                   LoopCount;
	LH_SAMPLE_PLAY_TYPE    PlayType;
	float                  MinDistance;
	float                  MaxDistance;
	float                  DistanceScale;
	char                   FileName[LH_SAMPLE_FILE_NAME_LENGTH];
	unsigned long          Flags;

	// Constructors

	// BW1W120 10010e90 BW1M119 010399f0 (LHCombined Release)
	LH_AUDIO_API LH_SamplePlayOptions();

	// Non-virtual methods

	// BW1W120 10011010 BW1M119 0103a500 (LHCombined Release)
	LH_AUDIO_API ~LH_SamplePlayOptions();
};
static_assert(sizeof(LH_SamplePlayOptions) == 0x168, "Sample options size is incorrect");

#endif /* BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H */
