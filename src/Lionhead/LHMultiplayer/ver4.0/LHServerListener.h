#ifndef BW1_DECOMP_LH_SERVER_LISTENER_INCLUDED_H
#define BW1_DECOMP_LH_SERVER_LISTENER_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHTransportInfo.h" /* For LH_TRANSPORT_TYPE */

class LHConnection;
class LHNetEvent;
class LHNetUser;

class LHServerListener
{
public:
	virtual ~LHServerListener();
	virtual void             Shutdown();
	virtual LH_RETURN        StartListening(LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info) = 0;
	virtual int              GetActivitySignals(unsigned long* count, void*** signals) = 0;
	virtual LH_RETURN        DoProcessing(long signal_index) = 0;
	virtual LHTransportInfo* GetConnectionAcceptorInfo() = 0;
	virtual LHTransportInfo* GetBroadcastListenerInfo() = 0;
	virtual void             StopListening() = 0;
	virtual void*            GetAcceptConnectionSignal() = 0;
	virtual void*            GetBroadcastSignal() = 0;
	virtual LH_RETURN        BroadcastEvent(LHNetEvent* event, LHTransportInfo* transport_info) = 0;

	// BW1W120 1001c320 BW1M119 0110b090 (LHCombined Release)
	static LHServerListener* Create(LH_TRANSPORT_TYPE type);
	// BW1W120 1001c290 BW1M119 0110b1b0 (LHCombined Release)
	LH_RETURN BaseStartListening(LHNetUser* user, void* context, LH_RETURN (*add_connection)(LHConnection*, void*),
	                             LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info,
	                             LH_RETURN (*process_event)(LHNetEvent*, LHConnection*, void*));
};

#endif /* BW1_DECOMP_LH_SERVER_LISTENER_INCLUDED_H */
