#ifndef BW1_DECOMP_LH_SERIAL_INCLUDED_H
#define BW1_DECOMP_LH_SERIAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LHPacket;

struct LHSerial
{
    uint32_t field_0x0;
    uint32_t field_0x4;
    LHPacket* packet;

    // Non-virtual methods

    // BW1W120 1001c190 BW1M100 inlined LHSerial::SendPacket(LHPacket*)
    LH_RETURN SendPacket(LHPacket* packet);
    // BW1W120 1001c1b0 BW1M100 inlined LHSerial::RecievePacket(LHPacket **)
    LH_RETURN RecievePacket(LHPacket** packet);
};

#endif /* BW1_DECOMP_LH_SERIAL_INCLUDED_H */
