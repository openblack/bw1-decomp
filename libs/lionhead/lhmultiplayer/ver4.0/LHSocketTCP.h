#ifndef BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H
#define BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LHSocket.h" /* For struct LHSocket */

// Forward Declares

struct LHPacket;
struct LHTransportInfo;

struct LHSocketTCP
{
  struct LHSocket super;  /* 0x0 */
  uint8_t field_0x2c[0x5013c];
};
static_assert(sizeof(struct LHSocketTCP) == 0x50168, "Data type is of wrong size");

// Non-virtual methods

// win1.41 10020c30 mac 10113b90 LHSocketTCP::DoAttemptReadPacketNonBlocking(void)
enum LH_RETURN __fastcall DoAttemptReadPacketNonBlocking__11LHSocketTCPFv(struct LHSocketTCP* this) asm("?DoAttemptReadPacketNonBlocking@LHSocketTCP@@QAE?AW4LH_RETURN@@XZ");
// win1.41 10020e40 mac 10113960 LHSocketTCP::DecompressPacketIfCompressed(void)
enum LH_RETURN __fastcall DecompressPacketIfCompressed__11LHSocketTCPFv(struct LHSocketTCP* this) asm("?DecompressPacketIfCompressed@LHSocketTCP@@QAE?AW4LH_RETURN@@XZ");
// win1.41 10020f80 mac 10113770 LHSocketTCP::ReceiveRaw(void *, long *)
enum LH_RETURN __fastcall ReceiveRaw__11LHSocketTCPFPvPl(struct LHSocketTCP* this, const void* edx, void* data, long* data_len) asm("?ReceiveRaw@LHSocketTCP@@QAE?AW4LH_RETURN@@PAXPAJ@Z");
// win1.41 10021120 mac 10113390 LHSocketTCP::ReceivePacket(LHPacket **)
enum LH_RETURN __fastcall ReceivePacket__11LHSocketTCPFPP8LHPacket(struct LHSocketTCP* this, const void* edx, struct LHPacket** packet) asm("?ReceivePacket@LHSocketTCP@@QAE?AW4LH_RETURN@@PAPAULHPacket@@@Z");
// win1.41 10021470 mac 10112f10 LHSocketTCP::ReceiveUDPPacket(LHPacket **, unsigned long, LHTransportInfo *)
enum LH_RETURN __fastcall ReceiveUDPPacket__11LHSocketTCPFPP8LHPacketUlP15LHTransportInfo(struct LHSocketTCP* this, const void* edx, struct LHPacket** packet, uint32_t size, struct LHTransportInfo* transport_info) asm("?ReceiveUDPPacket@LHSocketTCP@@QAE?AW4LH_RETURN@@PAPAULHPacket@@KPAULHTransportInfo@@@Z");

// Override methods

// win1.41 100206e0 mac 10114410 LHSocketTCP::Connect(LHTransportInfo *)
enum LH_RETURN __fastcall Connect__11LHSocketTCPFP15LHTransportInfo(struct LHSocket* this, const void* edx, struct LHTransportInfo* transport_info) asm("?Connect@LHSocketTCP@@UAE?AW4LH_RETURN@@PAULHTransportInfo@@@Z");
// win1.41 10020900 mac 10114350 LHSocketTCP::Send(void *, long)
enum LH_RETURN __fastcall Send__11LHSocketTCPFPvl(struct LHSocket* this, const void* edx, const void* data, long data_len) asm("?Send@LHSocketTCP@@UAE?AW4LH_RETURN@@PAXJ@Z");
// win1.41 100210c0 mac 10113550 LHSocketTCP::SendPacket(LHPacket *)
enum LH_RETURN __fastcall SendPacket__11LHSocketTCPFP8LHPacket(struct LHSocket* this, const void* edx, const struct LHPacket* packet) asm("?SendPacket@LHSocketTCP@@UAE?AW4LH_RETURN@@PAULHPacket@@@Z");

#endif /* BW1_DECOMP_LH_SOCKET_TCP_INCLUDED_H */
