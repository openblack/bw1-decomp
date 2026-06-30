#ifndef BW1_DECOMP_NETWORK_INCLUDED_H
#define BW1_DECOMP_NETWORK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LHSession;

struct GNetwork
{
    uint8_t field_0x0;
    uint8_t field_0x1;
    uint8_t field_0x2;
    uint8_t field_0x3;
    uint8_t field_0x4;
    uint8_t field_0x5;
    uint8_t field_0x6;
    uint8_t field_0x7;
    uint8_t field_0x8;
    uint8_t field_0x9;
    uint8_t field_0xa;
    uint8_t field_0xb;
    uint8_t field_0xc;
    uint8_t field_0xd;
    uint8_t field_0xe;
    uint8_t field_0xf;
    LHSession* session; /* 0x10 */

    // Static methods

    // BW1W120 006345e0 BW1M100 10017240 GNetwork::ResetStateDebug(void)
    static void ResetStateDebug();

    // Non-virtual methods

    // BW1W120 006349f0 BW1M100 1010bff0 GNetwork::ProcessOnePacket(void)
    bool ProcessOnePacket();
    // BW1W120 00635290 BW1M100 100229f0 GNetwork::ProcessOneSuperpacket(void)
    uint32_t ProcessOneSuperpacket();
};

#endif /* BW1_DECOMP_NETWORK_INCLUDED_H */
