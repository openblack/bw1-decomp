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

    // BW1W120 100206e0 BW1M100 10114410 LHSocketTCP::Connect(LHTransportInfo *)
    virtual LH_RETURN Connect(LHTransportInfo* transport_info);
    // BW1W120 10020900 BW1M100 10114350 LHSocketTCP::Send(void *, long)
    virtual LH_RETURN Send(const void* data, long data_len);
    // BW1W120 100210c0 BW1M100 10113550 LHSocketTCP::SendPacket(LHPacket *)
    virtual LH_RETURN SendPacket(const LHPacket* packet);

    // Non-virtual methods

    // BW1W120 10020c30 BW1M100 10113b90 LHSocketTCP::DoAttemptReadPacketNonBlocking(void)
    LH_RETURN DoAttemptReadPacketNonBlocking();
    // BW1W120 10020e40 BW1M100 10113960 LHSocketTCP::DecompressPacketIfCompressed(void)
    LH_RETURN DecompressPacketIfCompressed();
    // BW1W120 10020f80 BW1M100 10113770 LHSocketTCP::ReceiveRaw(void *, long *)
    LH_RETURN ReceiveRaw(void* data, long* data_len);
    // BW1W120 10021120 BW1M100 10113390 LHSocketTCP::ReceivePacket(LHPacket **)
    LH_RETURN ReceivePacket(LHPacket** packet);
    // BW1W120 10021470 BW1M100 10112f10 LHSocketTCP::ReceiveUDPPacket(LHPacket **, unsigned long, LHTransportInfo *)
    LH_RETURN ReceiveUDPPacket(LHPacket** packet, uint32_t size, LHTransportInfo* transport_info);
};

#endif /* BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H */
