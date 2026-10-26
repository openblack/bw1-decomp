#ifndef BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#define LH_SAMPLE_FILE_NAME_LENGTH 0x104

class Base;
class LH_AudioBank;

enum LH_SAMPLE_PLAY_TYPE
{
	LH_SAMPLE_PLAY_TYPE_STEAL = 0,
	LH_SAMPLE_PLAY_TYPE_OVERLAP = 1,
	LH_SAMPLE_PLAY_TYPE_ONCE = 2,
	LH_SAMPLE_PLAY_TYPE_RESTART = 3,
};

#ifdef LH_AUDIO_EXPORTS
#define LH_AUDIO_OPTIONS_API __declspec(dllexport)
#else
#define LH_AUDIO_OPTIONS_API __declspec(dllimport)
#endif

class LH_SamplePlayOptions
{
public:
	bool32_t            IgnoreDisabled;
	LH_AudioBank*       Bank;
	bool32_t            Positional;
	bool32_t            Follow;
	bool32_t            Doppler;
	bool32_t            Polar;
	bool32_t            Stream;
	uint32_t            OverrideFlags;
	Base*               AttachedObject;
	uint32_t            SampleNumber;
	uint32_t            Volume;
	uint32_t            Pan;
	LHPoint             Pos;
	LHPoint             Offset;
	uint32_t            Pitch;
	long                LoopCount;
	LH_SAMPLE_PLAY_TYPE PlayType;
	float               MinDistance;
	float               MaxDistance;
	float               DistanceScale;
	char                FileName[LH_SAMPLE_FILE_NAME_LENGTH];
	uint32_t            KeepData;

	// Constructors

	// BW1W120 10010e90 BW1M119 010399f0 (LHCombined Release)
	LH_AUDIO_OPTIONS_API LH_SamplePlayOptions();

	// Non-virtual methods

	// BW1W120 10011010 BW1M119 0103a500 (LHCombined Release)
	LH_AUDIO_OPTIONS_API ~LH_SamplePlayOptions();
};
static_assert(sizeof(LH_SamplePlayOptions) == 0x168, "Sample options size is incorrect");

#endif /* BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H */
