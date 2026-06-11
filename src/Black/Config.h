#ifndef BW1_DECOMP_CONFIG_INCLUDED_H
#define BW1_DECOMP_CONFIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <lionhead/lhfile/ver3.0/LHOSFile.h> /* For struct LHOSFile */

struct Config
{
    LHOSFile file; /* 0x0 */
    uint8_t field_0x8[0x104];
    int field_0x10c;

    // Non-virtual methods

    // win1.41 0046b1f0 mac 100bf310 Config::Process(void)
    void Process();
    // win1.41 0046b290 mac 100befa0 Config::ProcessOneGameTurn(void)
    void ProcessOneGameTurn();
};

#endif /* BW1_DECOMP_CONFIG_INCLUDED_H */
