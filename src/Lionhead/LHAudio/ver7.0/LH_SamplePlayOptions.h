#ifndef BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

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
	LH_AudioBank* Bank; /* 0x4 */
	uint32_t      field_0x8;
	uint8_t       field_0xc[0x14];
	Base*         AttachedObject; /* 0x20 */
	unsigned long SampleNumber;   /* 0x24 */
	uint8_t       field_0x28[0x140];

	// Constructors

	// BW1W120 10010e90 BW1M100 100397c0 LH_SamplePlayOptions::LH_SamplePlayOptions(void)
	LH_AUDIO_OPTIONS_API LH_SamplePlayOptions();

	// Non-virtual methods

	// BW1W120 10011010 BW1M100 1003a2c0 LH_SamplePlayOptions::~LH_SamplePlayOptions(void)
	LH_AUDIO_OPTIONS_API ~LH_SamplePlayOptions();
};
static_assert(sizeof(LH_SamplePlayOptions) == 0x168, "Sample options size is incorrect");

#endif /* BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H */
