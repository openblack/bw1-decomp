#ifndef BW1_DECOMP_LH_NET_EVENT_INCLUDED_H
#define BW1_DECOMP_LH_NET_EVENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHTransportInfo.h" /* For struct LHTransportInfo */

// Forward Declares

struct LHNetEvent;
struct LHPacket;

struct LHNetEvent
{
    LHPacket* packet; /* 0x0 */
    int field_0x4;
    LHTransportInfo transport_info;

    // Non-virtual methods

    // win1.41 10016a80 mac 10101090 LHNetEvent::RawDecode(LHNetEvent * this, char * param_1, char * param_2)
    LH_RETURN RawDecode(const char* param_1, const char* param_2);
};

#endif /* BW1_DECOMP_LH_NET_EVENT_INCLUDED_H */
