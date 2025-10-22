#ifndef BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LH_SamplePlayOptions
{
  uint8_t field_0x0[0x168];
};
static_assert(sizeof(struct LH_SamplePlayOptions) == 0x168, "Data type is of wrong size");

// Constructors

// win1.41 10010e90 mac 100397c0 LH_SamplePlayOptions::LH_SamplePlayOptions(void)
struct LH_SamplePlayOptions* __fastcall __ct__20LH_SamplePlayOptionsFv(struct LH_SamplePlayOptions* this) asm("??0LH_SamplePlayOptions@@QAE@XZ");

// Non-virtual methods

// win1.41 10011010 mac 1003a2c0 LH_SamplePlayOptions::~LH_SamplePlayOptions(void)
void __fastcall __dt__20LH_SamplePlayOptionsFv(struct LH_SamplePlayOptions* this) asm("??_DLH_SamplePlayOptions@@QAEXXZ");

#endif /* BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H */
