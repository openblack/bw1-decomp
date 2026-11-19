#ifndef BW1_DECOMP_AUTO_VOICE_PARAMS_INCLUDED_H
#define BW1_DECOMP_AUTO_VOICE_PARAMS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <string.h> /* For memset */

struct VoiceKey
{
	float Time;      /* 0x0 */
	float Weight[3]; /* 0x4 */

	// Constructors

	// BW1W120 inlined BW1M119 01352ba0
	VoiceKey()
	{
		Time = 0.0f;
		memset(Weight, 0, sizeof(Weight));
	}

	// Static methods

	// BW1W120 005bab10 BW1M119 null
	static VoiceKey Interp(VoiceKey* from, VoiceKey* to, float time, int count);
};
static_assert(sizeof(VoiceKey) == 0x10, "Data type is of wrong size");

#define VOICE_BAND_COUNT                   3
#define AUTO_VOICE_SECONDS_PER_MILLISECOND 0.001f
#define AUTO_VOICE_SPEED_SCALE             0.18f

struct VoiceBand
{
	float LowFrequency;  /* 0x0 */
	float HighFrequency; /* 0x4 */
	float Weight;        /* 0x8 */
};

struct AutoVoiceParams
{
	float     TimeOffset;                   /* 0x0 */
	float     Threshold;                    /* 0x4 */
	float     Gain;                         /* 0x8 */
	float     Speed;                        /* 0xc */
	VoiceBand Bands[VOICE_BAND_COUNT];      /* 0x10 */
	int       WeightSlot[VOICE_BAND_COUNT]; /* 0x34 */
	float     Energy[VOICE_BAND_COUNT];     /* 0x40 */
	float     Total;                        /* 0x4c */

	// Constructors

	// BW1W120 inlined BW1M119 01352c10
	AutoVoiceParams()
	{
		Threshold = 0.05f;
		TimeOffset = 0.0f;
		Gain = 2.5f;
		Speed = 40.0f;
		Bands[0].LowFrequency = 200.0f;
		Bands[0].HighFrequency = 400.0f;
		Bands[0].Weight = 0.85f;
		Bands[1].LowFrequency = 400.0f;
		Bands[1].HighFrequency = 700.0f;
		Bands[1].Weight = 1.1f;
		Bands[2].LowFrequency = 700.0f;
		Bands[2].HighFrequency = 10000.0f;
		Bands[2].Weight = 10.0f;
		WeightSlot[0] = 0;
		WeightSlot[1] = 1;
		WeightSlot[2] = 2;
	}

#ifdef VERSION_BW1WCI
	// BW1WCI inlined BW1MCI119 inlined
	~AutoVoiceParams() {}
#endif

	// Non-virtual methods

	// BW1W120 00428850 BW1M119 011855e0
	void CalcKey(VoiceKey* key, float delta_time, float time, short* samples, int sample_count, float sample_rate,
	             float* buffer, int buffer_size);
};
static_assert(sizeof(AutoVoiceParams) == 0x50, "Data type is of wrong size");

#endif /* BW1_DECOMP_AUTO_VOICE_PARAMS_INCLUDED_H */
