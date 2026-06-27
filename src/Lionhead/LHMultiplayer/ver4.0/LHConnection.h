#ifndef BW1_DECOMP_LH_CONNECTION_INCLUDED_H
#define BW1_DECOMP_LH_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHNetEvent.h" /* For enum LH_NETEVENT_TYPE */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */

// Forward Declares

struct LHNetEvent;
struct LHNetUser;
class LHTransport;
class LHTransportInfo;

class LHConnection
{
public:
    int field_0x4;
    uint8_t field_0x8[0xc];
    uint32_t field_0x14;
    uint8_t field_0x18[0x6c];
    LHTransport* transport; /* 0x84 */
    int field_0x88;
    int field_0x8c;

    // Non-virtual methods

    // BW1W120 100046c0 BW1M100 100df730 LHConnection::SetNetUser(LHNetUser *)
    void SetNetUser(LHNetUser* net_user);
    // BW1W120 100046e0 BW1M100 100df6d0 LHConnection::GetTransportType(void)
    LH_TRANSPORT_TYPE GetTransportType();
    // BW1W120 10004760 BW1M100 1000f630 LHConnection::GetIncomingEventQSize(void)
    uint32_t GetIncomingEventQSize();
    // BW1W120 100047f0 BW1M100 100df100 LHConnection::RawRead(unsigned long, LH_NETEVENT_TYPE)
    LHNetEvent* RawRead(uint32_t param_1, LH_NETEVENT_TYPE type);
    // BW1W120 10004840 BW1M100 100df070 LHConnection::RawPeek(unsigned long, LH_NETEVENT_TYPE)
    LHNetEvent* RawPeek(uint32_t param_1, LH_NETEVENT_TYPE param_2);
    // BW1W120 10004870 BW1M100 100095c0 LHConnection::Peek(ulong)
    LHNetEvent* Peek(uint32_t param_1);
    // BW1W120 100048b0 BW1M100 100ded90 LHConnection::BaseProcessEvent(LHNetEvent *)
    LH_RETURN BaseProcessEvent(LHNetEvent* net_event);
    // BW1W120 10004d70 BW1M100 100de0c0 LHConnection::Write(LHNetEvent *)
    LH_RETURN Write(LHNetEvent* net_event);
    // BW1W120 10004e50 BW1M100 100ddf50 LHConnection::OpenClientConnection(LHNetUser *, LHTransportInfo *)
    LH_RETURN OpenClientConnection(LHNetUser* user, LHTransportInfo* transport_info);
    // BW1W120 10004e80 BW1M100 100dddd0 LHConnection::SendClientProtocol(void)
    LH_RETURN SendClientProtocol();
    // BW1W120 10004ee0 BW1M100 100ddc70 LHConnection::RawOpen(LHNetUser *, LHTransportInfo *)
    LH_RETURN RawOpen(LHNetUser* user, LHTransportInfo* transport_info);
    // BW1W120 10004f80 BW1M100 100ddc10 LHConnection::ConnectionOriented(void)
    bool32_t ConnectionOriented();
    // BW1W120 100051b0 BW1M100 100dd710 LHConnection::ClearTransport(void)
    void ClearTransport();
    // BW1W120 10005270 BW1M100 10010210 LHConnection::IsDisconnected(void)
    bool IsDisconnected();
    // BW1W120 100052d0 BW1M100 100dd3b0 LHConnection::CheckForEvents(void)
    bool CheckForEvents();
    // BW1W120 10005330 BW1M100 100dd1e0 LHConnection::GetProtocolVersion(void)
    uint32_t GetProtocolVersion();
    // BW1W120 100df100 BW1M100 100047b0 LHConnection::Read(unsigned long, LH_NETEVENT_TYPE)
    LHNetEvent* Read(uint32_t param_1, LH_NETEVENT_TYPE type);
};

#endif /* BW1_DECOMP_LH_CONNECTION_INCLUDED_H */
