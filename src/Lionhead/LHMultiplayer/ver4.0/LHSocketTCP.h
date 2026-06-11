#ifndef BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H
#define BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LHSocket.h" /* For struct LHSocket */

// Forward Declares

struct LHPacket;
class LHTransportInfo;

class LHSocketTCP: public LHSocket
{
public:
    uint8_t field_0x2c[0x5013c];

    // Override methods

    // win1.41 100206e0 mac 10114410 LHSocketTCP::Connect(LHTransportInfo *)
    virtual LH_RETURN Connect(LHTransportInfo* transport_info);
    // win1.41 10020900 mac 10114350 LHSocketTCP::Send(void *, long)
    virtual LH_RETURN Send(const void* data, long data_len);
    // win1.41 100210c0 mac 10113550 LHSocketTCP::SendPacket(LHPacket *)
    virtual LH_RETURN SendPacket(const LHPacket* packet);

    // Non-virtual methods

    // win1.41 10020c30 mac 10113b90 LHSocketTCP::DoAttemptReadPacketNonBlocking(void)
    LH_RETURN DoAttemptReadPacketNonBlocking();
    // win1.41 10020e40 mac 10113960 LHSocketTCP::DecompressPacketIfCompressed(void)
    LH_RETURN DecompressPacketIfCompressed();
    // win1.41 10020f80 mac 10113770 LHSocketTCP::ReceiveRaw(void *, long *)
    LH_RETURN ReceiveRaw(void* data, long* data_len);
    // win1.41 10021120 mac 10113390 LHSocketTCP::ReceivePacket(LHPacket **)
    LH_RETURN ReceivePacket(LHPacket** packet);
    // win1.41 10021470 mac 10112f10 LHSocketTCP::ReceiveUDPPacket(LHPacket **, unsigned long, LHTransportInfo *)
    LH_RETURN ReceiveUDPPacket(LHPacket** packet, uint32_t size, LHTransportInfo* transport_info);
};

#endif /* BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H */
