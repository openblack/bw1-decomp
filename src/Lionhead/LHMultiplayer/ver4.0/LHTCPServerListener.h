#ifndef BW1_DECOMP_LH_TCP_SERVER_LISTENER_INCLUDED_H
#define BW1_DECOMP_LH_TCP_SERVER_LISTENER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include "LHServerListener.h"
#include "LHTransportInfo.h"

class LHConnection;
class LHNetEvent;
class LHSocketTCP;

enum
{
	LH_TCP_SERVER_LISTENER_MAX_SIGNALS = 2,
};

class LHTCPServerListener : public LHServerListener
{
public:
	// BW1W120 inlined BW1M119 inlined
	LHTCPServerListener() { ClearAllData(); }
	// BW1W120 1001c450 BW1M119 011155d0 (LHCombined Release)
	virtual ~LHTCPServerListener() { Shutdown(); }

	// BW1W120 100222c0 BW1M119 011158d0 (LHCombined Release)
	virtual void Shutdown();
	// BW1W120 10021fb0 BW1M119 01115c30 (LHCombined Release)
	virtual LH_RETURN StartListening(LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info);
	// BW1W120 10022380 BW1M119 01115720 (LHCombined Release)
	virtual LH_RETURN GetActivitySignals(unsigned long* count, void*** signals);
	// BW1W120 100221c0 BW1M119 01115b40 (LHCombined Release)
	virtual LH_RETURN DoProcessing(long signal_index);
	// BW1W120 1001c420 BW1M119 011156d0 (LHCombined Release)
	virtual LHTransportInfo* GetConnectionAcceptorInfo() { return &ConnectionAcceptorInfo; }
	// BW1W120 1001c410 BW1M119 01115680 (LHCombined Release)
	virtual LHTransportInfo* GetBroadcastListenerInfo() { return &BroadcastListenerInfo; }
	// BW1W120 10021fa0 BW1M119 01115e30 (LHCombined Release)
	virtual void StopListening();
	// BW1W120 10022340 BW1M119 01115860 (LHCombined Release)
	virtual void* GetAcceptConnectionSignal();
	// BW1W120 10022360 BW1M119 011157e0 (LHCombined Release)
	virtual void* GetBroadcastSignal();
	// BW1W120 10022250 BW1M119 011159c0 (LHCombined Release)
	virtual LH_RETURN BroadcastEvent(LHNetEvent* net_event, LHTransportInfo* transport_info);

private:
	// BW1W120 10021f50 BW1M119 01115ea0 (LHCombined Release)
	void ClearAllData();

	LHTransportInfo BroadcastListenerInfo;  /* 0x01c */
	LHTransportInfo ConnectionAcceptorInfo; /* 0x090 */
	LHConnection*   BroadcastConnection;    /* 0x104 */
	LHSocketTCP*    AcceptSocket;           /* 0x108 */
};
static_assert(sizeof(LHTCPServerListener) == 0x10c, "LHTCPServerListener size is incorrect");

#endif /* BW1_DECOMP_LH_TCP_SERVER_LISTENER_INCLUDED_H */
