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

struct AutoVoiceParams
{
	float field_0x0;
	float field_0x4;
	float field_0x8;
	float field_0xc;
	float field_0x10;
	float field_0x14;
	float field_0x18;
	float field_0x1c;
	float field_0x20;
	float field_0x24;
	float field_0x28;
	float field_0x2c;
	float field_0x30;
	int   field_0x34;
	int   field_0x38;
	int   field_0x3c;

	// Constructors

	// BW1W120 inlined BW1M119 01352c10
	AutoVoiceParams()
	{
		field_0x4 = 0.05f;
		field_0x0 = 0.0f;
		field_0x8 = 2.5f;
		field_0xc = 40.0f;
		field_0x10 = 200.0f;
		field_0x14 = 400.0f;
		field_0x18 = 0.85f;
		field_0x1c = 400.0f;
		field_0x20 = 700.0f;
		field_0x24 = 1.1f;
		field_0x28 = 700.0f;
		field_0x2c = 10000.0f;
		field_0x30 = 10.0f;
		field_0x34 = 0;
		field_0x38 = 1;
		field_0x3c = 2;
	}

	// Non-virtual methods

	// BW1W120 00428850 BW1M119 011855e0
	void CalcKey(VoiceKey* key, float time, float param_3, short* samples, int sample_count, float sample_rate,
	             float* buffer, int buffer_size);
};
static_assert(sizeof(AutoVoiceParams) == 0x40, "Data type is of wrong size");

#endif /* BW1_DECOMP_AUTO_VOICE_PARAMS_INCLUDED_H */
