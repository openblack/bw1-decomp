#ifndef BW1_DECOMP_LHDD_ENUM_INCLUDED_H
#define BW1_DECOMP_LHDD_ENUM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LHDDEnum
{
    char display_name[0xf8]; /* 0x0 */
    uint8_t field_0xf8[0x3e0];

    // Non-virtual methods

    // win1.41 007dd010 mac 1014d920 LHDDEnum::~LHDDEnum(void)
    ~LHDDEnum();
};

#endif /* BW1_DECOMP_LHDD_ENUM_INCLUDED_H */
