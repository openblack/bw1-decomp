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

    // win1.41 100046c0 mac 100df730 LHConnection::SetNetUser(LHNetUser *)
    void SetNetUser(LHNetUser* net_user);
    // win1.41 100046e0 mac 100df6d0 LHConnection::GetTransportType(void)
    LH_TRANSPORT_TYPE GetTransportType();
    // win1.41 10004760 mac 1000f630 LHConnection::GetIncomingEventQSize(void)
    uint32_t GetIncomingEventQSize();
    // win1.41 100047f0 mac 100df100 LHConnection::RawRead(unsigned long, LH_NETEVENT_TYPE)
    LHNetEvent* RawRead(uint32_t param_1, LH_NETEVENT_TYPE type);
    // win1.41 10004840 mac 100df070 LHConnection::RawPeek(unsigned long, LH_NETEVENT_TYPE)
    LHNetEvent* RawPeek(uint32_t param_1, LH_NETEVENT_TYPE param_2);
    // win1.41 10004870 mac 100095c0 LHConnection::Peek(ulong)
    LHNetEvent* Peek(uint32_t param_1);
    // win1.41 100048b0 mac 100ded90 LHConnection::BaseProcessEvent(LHNetEvent *)
    LH_RETURN BaseProcessEvent(LHNetEvent* net_event);
    // win1.41 10004d70 mac 100de0c0 LHConnection::Write(LHNetEvent *)
    LH_RETURN Write(LHNetEvent* net_event);
    // win1.41 10004e50 mac 100ddf50 LHConnection::OpenClientConnection(LHNetUser *, LHTransportInfo *)
    LH_RETURN OpenClientConnection(LHNetUser* user, LHTransportInfo* transport_info);
    // win1.41 10004e80 mac 100dddd0 LHConnection::SendClientProtocol(void)
    LH_RETURN SendClientProtocol();
    // win1.41 10004ee0 mac 100ddc70 LHConnection::RawOpen(LHNetUser *, LHTransportInfo *)
    LH_RETURN RawOpen(LHNetUser* user, LHTransportInfo* transport_info);
    // win1.41 10004f80 mac 100ddc10 LHConnection::ConnectionOriented(void)
    bool32_t ConnectionOriented();
    // win1.41 100051b0 mac 100dd710 LHConnection::ClearTransport(void)
    void ClearTransport();
    // win1.41 10005270 mac 10010210 LHConnection::IsDisconnected(void)
    bool IsDisconnected();
    // win1.41 100052d0 mac 100dd3b0 LHConnection::CheckForEvents(void)
    bool CheckForEvents();
    // win1.41 10005330 mac 100dd1e0 LHConnection::GetProtocolVersion(void)
    uint32_t GetProtocolVersion();
    // win1.41 100df100 mac 100047b0 LHConnection::Read(unsigned long, LH_NETEVENT_TYPE)
    LHNetEvent* Read(uint32_t param_1, LH_NETEVENT_TYPE type);
};

#endif /* BW1_DECOMP_LH_CONNECTION_INCLUDED_H */
