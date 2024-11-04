#ifndef BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H
#define BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LH_AudioBank
{
  uint8_t field_0x0[0x13c];
};
static_assert(sizeof(struct LH_AudioBank) == 0x13c, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_AUDIO_BANK_INCLUDED_H */
