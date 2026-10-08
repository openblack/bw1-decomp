#ifndef BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LHAudioExport.h" /* For LH_AUDIO_API */

class LH_AudioBank
{
public:
	uint8_t field_0x0[0x13c];

	// Non-virtual methods

	// BW1W120 10002ef0 BW1M119 0111c800 (LHCombined Release)
	LH_AUDIO_API float LHBankGetMusicMaxDistance();
	// BW1W120 10002f30 BW1M119 01000dc0 (LHCombined Release)
	LH_AUDIO_API long LHBankGetMusicGroupId();
};
static_assert(sizeof(LH_AudioBank) == 0x13c, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H */
