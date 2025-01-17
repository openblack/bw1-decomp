#ifndef BW1_DECOMP_LH_CONNECTION_INCLUDED_H
#define BW1_DECOMP_LH_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_common.h> /* For bool32_t */

#include "LHNetEvent.h" /* For enum LH_NETEVENT_TYPE */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */

// Forward Declares

struct LHNetEvent;
struct LHNetUser;
struct LHTransport;
struct LHTransportInfo;

struct LHConnection
{
  uint32_t field_0x0;
  int field_0x4;
  uint8_t field_0x8[0xc];
  uint32_t field_0x14;
  uint8_t field_0x18[0x6c];
  struct LHTransport* transport;  /* 0x84 */
  int field_0x88;
  int field_0x8c;
};
static_assert(sizeof(struct LHConnection) == 0x90, "Data type is of wrong size");

// Non-virtual methods

// win1.41 100047f0 mac 100df100 LHConnection::RawRead(unsigned long, LH_NETEVENT_TYPE)
struct LHNetEvent* __fastcall RawRead__12LHConnectionFUl16LH_NETEVENT_TYPE(struct LHConnection* this, const void* edx, uint32_t param_1, enum LH_NETEVENT_TYPE type);
// win1.41 100048b0 mac 100ded90 LHConnection::BaseProcessEvent(LHNetEvent *)
enum LH_RETURN __fastcall BaseProcessEvent__12LHConnectionFP10LHNetEvent(struct LHConnection* this, const void* edx, struct LHNetEvent* net_event);
// win1.41 100df100 mac 100047b0 LHConnection::Read(unsigned long, LH_NETEVENT_TYPE)
struct LHNetEvent* __fastcall Read__12LHConnectionFUl16LH_NETEVENT_TYPE(struct LHConnection* this, const void* edx, uint32_t param_1, enum LH_NETEVENT_TYPE type);
// win1.41 10005330 mac 100dd1e0 LHConnection::GetProtocolVersion(void)
uint32_t __fastcall GetProtocolVersion__12LHConnectionFv(struct LHConnection* this);
// win1.41 100051b0 mac 100dd710 LHConnection::ClearTransport(void)
void __fastcall ClearTransport__12LHConnectionFv(struct LHConnection* this);
// win1.41 10004f80 mac 100ddc10 LHConnection::ConnectionOriented(void)
bool32_t __fastcall ConnectionOriented__12LHConnectionFv(struct LHConnection* this);
// win1.41 100046c0 mac 100df730 LHConnection::SetNetUser(LHNetUser *)
void __fastcall SetNetUser__12LHConnectionFP9LHNetUser(struct LHConnection* this, const void* edx, struct LHNetUser* net_user);
// win1.41 10004ee0 mac 100ddc70 LHConnection::RawOpen(LHNetUser *, LHTransportInfo *)
enum LH_RETURN __fastcall RawOpen__12LHConnectionFP9LHNetUserP15LHTransportInfo(struct LHConnection* this, const void* edx, struct LHNetUser* user, struct LHTransportInfo* transport_info);
// win1.41 10004e50 mac 100ddf50 LHConnection::OpenClientConnection(LHNetUser *, LHTransportInfo *)
enum LH_RETURN __fastcall OpenClientConnection__12LHConnectionFP9LHNetUserP15LHTransportInfo(struct LHConnection* this, const void* edx, struct LHNetUser* user, struct LHTransportInfo* transport_info);
// win1.41 10005270 mac 10010210 LHConnection::IsDisconnected(void)
bool __fastcall IsDisconnected__12LHConnectionFv(struct LHConnection* this);
// win1.41 100052d0 mac 100dd3b0 LHConnection::CheckForEvents(void)
bool __fastcall CheckForEvents__12LHConnectionFv(struct LHConnection* this);
// win1.41 10004760 mac 1000f630 LHConnection::GetIncomingEventQSize(void)
uint32_t __fastcall GetIncomingEventQSize__12LHConnectionFv(struct LHConnection* this);
// win1.41 10004870 mac 100095c0 LHConnection::Peek(ulong)
struct LHNetEvent* __fastcall Peek__12LHConnectionFUl(struct LHConnection* this, const void* edx, uint32_t param_1);
// win1.41 10004840 mac 100df070 LHConnection::RawPeek(unsigned long, LH_NETEVENT_TYPE)
struct LHNetEvent* __fastcall RawPeek__12LHConnectionFUl16LH_NETEVENT_TYPE(struct LHConnection* this, const void* edx, uint32_t param_1, enum LH_NETEVENT_TYPE param_2);
// win1.41 10004e80 mac 100dddd0 LHConnection::SendClientProtocol(void)
enum LH_RETURN __fastcall SendClientProtocol__12LHConnectionFv(struct LHConnection* this);
// win1.41 10004d70 mac 100de0c0 LHConnection::Write(LHNetEvent *)
enum LH_RETURN __fastcall Write__12LHConnectionFP10LHNetEvent(struct LHConnection* this, const void* edx, struct LHNetEvent* net_event);
// win1.41 100046e0 mac 100df6d0 LHConnection::GetTransportType(void)
enum LH_TRANSPORT_TYPE __fastcall GetTransportType__12LHConnectionFv(struct LHConnection* this);

#endif /* BW1_DECOMP_LH_CONNECTION_INCLUDED_H */
