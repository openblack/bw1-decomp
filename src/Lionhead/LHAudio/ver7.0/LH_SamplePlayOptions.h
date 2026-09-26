#ifndef BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

class Base;
struct LH_AudioBank;

#ifdef LH_AUDIO_EXPORTS
#define LH_AUDIO_OPTIONS_API __declspec(dllexport)
#else
#define LH_AUDIO_OPTIONS_API __declspec(dllimport)
#endif

struct LH_SamplePlayOptions
{
	uint32_t      field_0x0;
	LH_AudioBank* Bank;
	uint32_t      field_0x8;
	uint32_t      field_0xc;
	uint8_t       field_0x10[0x10];
	Base*         AttachedObject;
	uint32_t      SampleNumber;
	uint8_t       field_0x28[0x8];
	LHPoint       Pos;
	uint8_t       field_0x3c[0x12c];

	// Constructors

	// BW1W120 10010e90 BW1M119 010399f0 (LHCombined Release)
	LH_AUDIO_OPTIONS_API LH_SamplePlayOptions();

	// Non-virtual methods

	// BW1W120 10011010 BW1M119 0103a500 (LHCombined Release)
	LH_AUDIO_OPTIONS_API ~LH_SamplePlayOptions();
};
static_assert(sizeof(LH_SamplePlayOptions) == 0x168, "Sample options size is incorrect");

#endif /* BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H */
