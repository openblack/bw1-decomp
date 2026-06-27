#ifndef BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H
#define BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LH_SamplePlayOptions
{
    uint8_t field_0x0[0x168];

    // Constructors

    // BW1W120 10010e90 BW1M100 100397c0 LH_SamplePlayOptions::LH_SamplePlayOptions(void)
    LH_SamplePlayOptions();

    // Non-virtual methods

    // BW1W120 10011010 BW1M100 1003a2c0 LH_SamplePlayOptions::~LH_SamplePlayOptions(void)
    ~LH_SamplePlayOptions();
};

#endif /* BW1_DECOMP_LH_SAMPLE_PLAY_OPTIONS_INCLUDED_H */
