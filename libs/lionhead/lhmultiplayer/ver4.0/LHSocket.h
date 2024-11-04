#ifndef BW1_DECOMP_LH_SOCKET_INCLUDED_H
#define BW1_DECOMP_LH_SOCKET_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

// Forward Declares

struct LHPacket;
struct LHSocket;
struct LHTransportInfo;

struct LHSocketVftable
{
  enum LH_RETURN (__fastcall* Connect)(struct LHSocket* this, const void* edx, struct LHTransportInfo* transport_info);  /* 0x0 */
  void* (__fastcall* SendDatagram)(struct LHSocket* this);
  void* (__fastcall* SendDatagramPacket)(struct LHSocket* this);
  void* (__fastcall* Disconnect)(struct LHSocket* this);
  enum LH_RETURN (__fastcall* Send)(struct LHSocket* this, const void* edx, const void* data, long data_len);  /* 0x10 */
  void* (__fastcall* Receive)(struct LHSocket* this);
  enum LH_RETURN (__fastcall* SendPacket)(struct LHSocket* this, const void* edx, const struct LHPacket* packet);
  void* (__fastcall* ReceivePacket)(struct LHSocket* this);
  void* (__fastcall* ListenForBroadcastRequests)(struct LHSocket* this);  /* 0x20 */
  void* (__fastcall* ReceiveUDPPacket)(struct LHSocket* this);
};
static_assert(sizeof(struct LHSocketVftable) == 0x28, "Data type is of wrong size");

struct LHSocket
{
  struct LHSocketVftable* vftable;  /* 0x0 */
  uint32_t field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint8_t ip_bin[0x4];  /* 0x10 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  char** name;
  uint32_t send_bytes_total;  /* 0x20 */
  uint32_t send_bytes;
  uint32_t connection_status;
};
static_assert(sizeof(struct LHSocket) == 0x2c, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_SOCKET_INCLUDED_H */
