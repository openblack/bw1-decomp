#ifndef BW1_DECOMP_LH_NET_EVENT_INCLUDED_H
#define BW1_DECOMP_LH_NET_EVENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHTransportInfo.h" /* For struct LHTransportInfo */

enum LH_NETEVENT_TYPE
{
  LH_NETEVENT_TYPE_SEND_BROADCAST_MESSAGE_TO_INTERNAL_LOBBY_0x1080 = 0x1080,
  LH_NETEVENT_TYPE_SEND_BROADCAST_MESSAGE_TO_INTERNAL_LOBBY_0x1082 = 0x1082,
  LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST = 0x109b,
  LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS = 0x109c,
  LH_NETEVENT_TYPE_BROADCAST_LOBBY_SHUTDOWN = 0x109d,
  LH_NETEVENT_TYPE_0x1b63 = 0x1b63,
  _LH_NETEVENT_TYPE_COUNT = 0x1b64
};

// Forward Declares

struct LHNetEvent;
struct LHPacket;

struct LHNetEvent
{
    LHPacket* packet; /* 0x0 */
    int field_0x4;
    LHTransportInfo transport_info;

    // Non-virtual methods

    // BW1W120 10016a80 BW1M100 10101090 LHNetEvent::RawDecode(LHNetEvent * this, char * param_1, char * param_2)
    LH_RETURN RawDecode(const char* param_1, const char* param_2);
};

#endif /* BW1_DECOMP_LH_NET_EVENT_INCLUDED_H */
