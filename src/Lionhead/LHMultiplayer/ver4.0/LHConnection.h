#ifndef BW1_DECOMP_LH_CONNECTION_INCLUDED_H
#define BW1_DECOMP_LH_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <re_common.h> /* For bool32_t */

#include "LHNetEvent.h"      /* For enum LH_NETEVENT_TYPE */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */
#include "LHMultiplayerExport.h"

// Forward Declares

class LHNetEvent;
struct LHNetUser;
class LHTransport;
class LHTransportInfo;

class LHConnection
{
private:
	// Original DLL vtable order, 100502cc. The vptr precedes field_0x4.
	virtual LH_MULTIPLAYER_API LH_RETURN ProcessEvent(LHNetEvent* event);

public:
	virtual LH_MULTIPLAYER_API ~LHConnection();
	virtual LH_MULTIPLAYER_API void        Close();
	virtual LH_MULTIPLAYER_API LHNetEvent* Read(unsigned long timeout, LH_NETEVENT_TYPE type);

	int          field_0x4;
	uint8_t      field_0x8[0xc];
	uint32_t     field_0x14;
	uint8_t      field_0x18[0x6c];
	LHTransport* transport; /* 0x84 */
	LHNetUser*   NetUser;   /* 0x88; GetUserID dereferences its first word. */
	int          field_0x8c;

	// Non-virtual methods

	// BW1W120 100046c0 BW1M119 010deab0 (LHCombined Release)
	void SetNetUser(LHNetUser* net_user);
	// BW1W120 100046e0 BW1M119 010dea50 (LHCombined Release)
	LH_TRANSPORT_TYPE GetTransportType();
	// BW1W120 10004760 BW1M119 0100f6d0 (LHCombined Release)
	LH_MULTIPLAYER_API unsigned long GetIncomingEventQSize();
	// BW1W120 100047f0 BW1M119 010de480 (LHCombined Release)
	LHNetEvent* RawRead(uint32_t param_1, LH_NETEVENT_TYPE type);
	// BW1W120 10004840 BW1M119 010de3f0 (LHCombined Release)
	LH_MULTIPLAYER_API LHNetEvent* RawPeek(unsigned long param_1, LH_NETEVENT_TYPE param_2);
	// BW1W120 10004870 BW1M119 01009680 (LHCombined Release)
	LH_MULTIPLAYER_API LHNetEvent* Peek(unsigned long param_1);
	// BW1W120 100048b0 BW1M119 010de110 (LHCombined Release)
	LH_RETURN BaseProcessEvent(LHNetEvent* net_event);
	// BW1W120 10004d70 BW1M119 010dd360 (LHCombined Release)
	LH_RETURN Write(LHNetEvent* net_event);
	// BW1W120 10004e50 BW1M119 010dd1f0 (LHCombined Release)
	LH_RETURN OpenClientConnection(LHNetUser* user, LHTransportInfo* transport_info);
	// BW1W120 10004e80 BW1M119 010dd070 (LHCombined Release)
	LH_RETURN SendClientProtocol();
	// BW1W120 10004ee0 BW1M119 010dcf10 (LHCombined Release)
	LH_RETURN RawOpen(LHNetUser* user, LHTransportInfo* transport_info);
	// BW1W120 10004f80 BW1M119 010dceb0 (LHCombined Release)
	bool32_t ConnectionOriented();
	// BW1W120 100051b0 BW1M119 010dc9b0 (LHCombined Release)
	void ClearTransport();
	// BW1W120 10005270 BW1M119 010102b0 (LHCombined Release)
	LH_MULTIPLAYER_API int IsDisconnected();
	// BW1W120 100052d0 BW1M119 010dc610 (LHCombined Release)
	LH_MULTIPLAYER_API int CheckForEvents();
	// BW1W120 10005330 BW1M119 010dc440 (LHCombined Release)
	uint32_t GetProtocolVersion();
};
static_assert(sizeof(LHConnection) == 0x90, "LHConnection size is incorrect");

#endif /* BW1_DECOMP_LH_CONNECTION_INCLUDED_H */
