#ifndef BW1_DECOMP_LH_SERVER_LISTENER_INCLUDED_H
#define BW1_DECOMP_LH_SERVER_LISTENER_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHTransportInfo.h" /* For LH_TRANSPORT_TYPE */

class LHConnection;
class LHNetEvent;
class LHNetUser;
class LHTransport;

enum
{
	LH_SERVER_SIGNAL_NONE = -1,
	LH_SERVER_SIGNAL_ACCEPT_CONNECTION = -2,
	LH_SERVER_SIGNAL_BROADCAST = -3,
};

enum LH_SERVER_LISTENER_STATE
{
	LH_SERVER_LISTENER_STATE_LISTENING = 0,
	LH_SERVER_LISTENER_STATE_SHUT_DOWN = 1,
};

typedef LH_RETURN (*LHServerListenerAddConnectionFunction)(LHConnection* connection, void* context);
typedef LH_RETURN (*LHServerListenerEventFunction)(LHNetEvent* net_event, LHConnection* connection, void* context);

class LHServerListener
{
public:
	// BW1W120 1001c580 BW1M119 0110ade0 (LHCombined Release)
	virtual ~LHServerListener();
	// BW1W120 1001c570 BW1M119 0110ae80 (LHCombined Release)
	virtual void Shutdown();
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN StartListening(LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN GetActivitySignals(unsigned long* count, void*** signals) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN DoProcessing(long signal_index) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LHTransportInfo* GetConnectionAcceptorInfo() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LHTransportInfo* GetBroadcastListenerInfo() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void StopListening() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void* GetAcceptConnectionSignal() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void* GetBroadcastSignal() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN BroadcastEvent(LHNetEvent* net_event, LHTransportInfo* transport_info) = 0;

	// BW1W120 inlined BW1M119 0110b150 (LHCombined Release)
	LHServerListener() { ClearAllData(); }

	// BW1W120 1001c320 BW1M119 0110b090 (LHCombined Release)
	static LHServerListener* Create(LH_TRANSPORT_TYPE type);
	// BW1W120 1001c290 BW1M119 0110b1b0 (LHCombined Release)
	LH_RETURN BaseStartListening(LHNetUser* user, void* context, LHServerListenerAddConnectionFunction add_connection,
	                             LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info,
	                             LHServerListenerEventFunction process_event);

protected:
	// BW1W120 1001c4a0 BW1M119 0110aef0 (LHCombined Release)
	LH_RETURN ProcessNewConnection(LHTransport* transport);
	// BW1W120 1001c270 BW1M119 0110b340 (LHCombined Release)
	void ClearAllData();

	bool32_t                              Open;          /* 0x04 */
	LH_SERVER_LISTENER_STATE              State;         /* 0x08 */
	LHNetUser*                            NetUser;       /* 0x0c */
	void*                                 Context;       /* 0x10 */
	LHServerListenerAddConnectionFunction AddConnection; /* 0x14 */
	LHServerListenerEventFunction         ProcessEvent;  /* 0x18 */
};
static_assert(sizeof(LHServerListener) == 0x1c, "LHServerListener size is incorrect");

#endif /* BW1_DECOMP_LH_SERVER_LISTENER_INCLUDED_H */
