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

    // win1.41 1001c190 mac inlined LHSerial::SendPacket(LHPacket*)
    LH_RETURN SendPacket(LHPacket* packet);
    // win1.41 1001c1b0 mac inlined LHSerial::RecievePacket(LHPacket **)
    LH_RETURN RecievePacket(LHPacket** packet);
};

#endif /* BW1_DECOMP_LH_SERIAL_INCLUDED_H */
