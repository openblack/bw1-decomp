#ifndef BW1_DECOMP_LH_TRANSPORT_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHDynamicQueue.h"
#include "LHNetEvent.h"      /* For enum LH_NETEVENT_TYPE */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */
#include "LHMultiplayerExport.h"

class LHNetEvent;
class LHTransportInfo;

class LH_MULTIPLAYER_API LHTransport
{
protected:
	// BW1W120 10022450 BW1M119 0111b280 (LHCombined Release)
	virtual ~LHTransport();

public:
	// BW1W120 100224a0 BW1M119 0111afd0 (LHCombined Release)
	virtual LH_RETURN Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
	                       LHTransportInfo* transport_info);
	// BW1W120 10022550 BW1M119 0111ae40 (LHCombined Release)
	virtual LH_RETURN OpenConnectionToTransport(LHTransport* transport, void (*callback)(void*), void* context);
	// BW1W120 10022690 BW1M119 0111aaf0 (LHCombined Release)
	virtual void Close();
	// BW1W120 10022770 BW1M119 0111aa60 (LHCombined Release)
	virtual bool Disconnect();
	// BW1W120 10022a60 BW1M119 01119c80 (LHCombined Release)
	virtual bool Flushed();
	// BW1W120 10022a40 BW1M119 01119cc0 (LHCombined Release)
	virtual LH_RETURN Flush(unsigned long timeout);
	// BW1W120 10022830 BW1M119 0111a2d0 (LHCombined Release)
	virtual LHNetEvent* Read(unsigned long timeout);
	// BW1W120 10022790 BW1M119 0111a970 (LHCombined Release)
	virtual void Write(LHNetEvent* net_event);
	// BW1W120 100227b0 BW1M119 0111a880 (LHCombined Release)
	virtual void AddToIncomingEventQ(LHNetEvent* net_event);
	// BW1W120 10022800 BW1M119 0111a5f0 (LHCombined Release)
	virtual void AddToFrontOfIncomingEventQ(LHNetEvent* net_event);
	// BW1W120 100227d0 BW1M119 0111a6f0 (LHCombined Release)
	virtual void AddAtPositionInIncomingEventQ(LHNetEvent* net_event, unsigned long position);
	// BW1W120 10022630 BW1M119 0111adf0 (LHCombined Release)
	virtual bool32_t CheckForEvents();
	// BW1W120 10022460 BW1M119 0100f820 (LHCombined Release)
	virtual bool32_t IsDisconnected();
	// BW1W120 10022640 BW1M119 0111ad00 (LHCombined Release)
	virtual bool32_t CheckForEvent(LH_NETEVENT_TYPE type);
	// BW1W120 10022c00 BW1M119 01119ae0 (LHCombined Release)
	virtual void* GetSignalDataToRead();
	// BW1W120 10022490 BW1M119 0111b130 (LHCombined Release)
	virtual LH_RETURN GetTransportInfo(LHTransportInfo* transport_info, bool32_t local);
	// BW1W120 10022680 BW1M119 0111ac90 (LHCombined Release)
	virtual bool32_t WaitForEvent(LH_NETEVENT_TYPE type, unsigned long timeout);
	// BW1W120 100228e0 BW1M119 0111a0d0 (LHCombined Release)
	virtual LHNetEvent* ExtractEvent(LH_NETEVENT_TYPE type, unsigned long timeout);
	// BW1W120 10022920 BW1M119 0111a010 (LHCombined Release)
	virtual LHNetEvent* RawPeek(LH_NETEVENT_TYPE type, unsigned long timeout);
	// BW1W120 100228b0 BW1M119 010096f0 (LHCombined Release)
	virtual LHNetEvent* Peek(unsigned long timeout);

	LH_TRANSPORT_TYPE            Type;               /* 0x04 */
	bool32_t                     OwnsIncomingEventQ; /* 0x08 */
	bool32_t                     OwnsOutgoingEventQ; /* 0x0c */
	LHNetEvent*                  LastEventRead;      /* 0x10 */
	bool32_t                     Opened;             /* 0x14 */
	bool32_t                     Disconnected;       /* 0x18 */
	LHDynamicQueue<LHNetEvent*>* OutgoingEventQ;     /* 0x1c */
	LHDynamicQueue<LHNetEvent*>* IncomingEventQ;     /* 0x20 */
	uint8_t                      Reserved;           /* 0x24 */

protected:
	// BW1W120 10003790 BW1M119 inlined
	LHTransport() { ClearAllData(); }
	// BW1W120 10022400 BW1M119 0111b390 (LHCombined Release)
	void ClearAllData();

private:
	// BW1W120 10022420 BW1M119 0111b310 (LHCombined Release)
	void ClearLastIncomingEvent();
	// BW1W120 100229f0 BW1M119 01119da0 (LHCombined Release)
	LHNetEvent* PeekAtFirstEventOfType(LH_NETEVENT_TYPE type);
	// BW1W120 10022a20 BW1M119 01119d30 (LHCombined Release)
	LHNetEvent* PeekAtNextEvent();

public:
	// BW1W120 100037b0 BW1M119 inlined
	bool32_t IsOpen() { return Opened; }
	// BW1W120 100037c0 BW1M119 inlined
	LH_TRANSPORT_TYPE GetType() { return Type; }
	// BW1W120 100037d0 BW1M119 inlined
	LHNetEvent* GetLastEventRead() { return LastEventRead; }
	// BW1W120 100037e0 BW1M119 inlined
	LHDynamicQueue<LHNetEvent*>* GetOutgoingEventQ() { return OutgoingEventQ; }
	// BW1W120 100037f0 BW1M119 inlined
	LHDynamicQueue<LHNetEvent*>* GetIncomingEventQ() { return IncomingEventQ; }

	// BW1W120 10022470 BW1M119 0100b970 (LHCombined Release)
	bool32_t IsConnected();
	// BW1W120 10022820 BW1M119 0100f750 (LHCombined Release)
	unsigned long GetIncomingEventQSize();
	// BW1W120 10022890 BW1M119 0111a220 (LHCombined Release)
	void SetLastEventReadToBeIgnored();
	// BW1W120 10022960 BW1M119 01119e80 (LHCombined Release)
	LHNetEvent* GetFirstEventOfType(LH_NETEVENT_TYPE type);

	// BW1W120 10022a70 BW1M119 01119b20 (LHCombined Release)
	static LHTransport* Create(LH_TRANSPORT_TYPE type);
	// BW1W120 10022c10 BW1M119 01119a40 (LHCombined Release)
	static void Destroy(LHTransport* transport);
};
static_assert(sizeof(LHTransport) == 0x28, "LHTransport size is incorrect");

class LHTransportUDP : public LHTransport
{
public:
	LH_RETURN Write(LHNetEvent* net_event, LHTransportInfo* transport_info);
};

struct LHTransportRemote
{
	uint8_t field_0x0;

	// BW1W120 10023880 BW1M119 01117a40 (LHCombined Release)
	void RemoteTransportThread();
};

#endif /* BW1_DECOMP_LH_TRANSPORT_INCLUDED_H */
