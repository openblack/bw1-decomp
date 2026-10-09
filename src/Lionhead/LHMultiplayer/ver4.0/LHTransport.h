#ifndef BW1_DECOMP_LH_TRANSPORT_INCLUDED_H
#define BW1_DECOMP_LH_TRANSPORT_INCLUDED_H

#include <assert.h>  /* For static_assert */
#include <windows.h> /* For CRITICAL_SECTION, HANDLE, EnterCriticalSection, LeaveCriticalSection */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHDynamicQueue.h"
#include "LHNetEvent.h"      /* For enum LH_NETEVENT_TYPE */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */
#include "LHMultiplayerExport.h"

class LHNetEvent;
class LHPacket;
class LHSocket;
class LHSocketTCP;
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
	bool                         CloseFailed;        /* 0x24 */

protected:
	// BW1W120 10003790 BW1M119 inlined
	LHTransport()
	{
		Type = (LH_TRANSPORT_TYPE)0;
		ClearAllData();
	}
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

class LH_MULTIPLAYER_API LHSyncTransport : public LHTransport
{
public:
	// BW1W120 10022c40 BW1M119 011199a0 (LHCombined Release)
	LHSyncTransport();

	// BW1W120 10022cb0 BW1M119 011198d0 (LHCombined Release)
	virtual LHNetEvent* Read(unsigned long timeout);
	// BW1W120 10022ce0 BW1M119 01119850 (LHCombined Release)
	virtual bool32_t CheckForEvents();
	// BW1W120 10022d00 BW1M119 011197b0 (LHCombined Release)
	virtual bool32_t CheckForEvent(LH_NETEVENT_TYPE type);

	// BW1W120 10003910 BW1M119 inlined
	void SetHookFunction(void (*hook)(void*), void* context)
	{
		HookFunction = hook;
		HookContext = context;
	}

private:
	// BW1W120 10022ca0 BW1M119 01119960 (LHCombined Release)
	void ClearAllData();

	void (*HookFunction)(void*); /* 0x28 */
	void* HookContext;           /* 0x2c */
};
static_assert(sizeof(LHSyncTransport) == 0x30, "LHSyncTransport size is incorrect");

class LH_MULTIPLAYER_API LHAsyncTransport : public LHTransport
{
public:
	// BW1W120 10022d80 BW1M119 01119640 (LHCombined Release)
	LHAsyncTransport();
	// BW1W120 10022d30 BW1M119 011196f0 (LHCombined Release)
	virtual ~LHAsyncTransport();

	// BW1W120 10022de0 BW1M119 011195e0 (LHCombined Release)
	void ClearAllData();

protected:
	// BW1W120 10022e00 BW1M119 011194f0 (LHCombined Release)
	virtual LH_RETURN Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
	                       LHTransportInfo* transport_info);
	// BW1W120 10022fa0 BW1M119 011190b0 (LHCombined Release)
	virtual void Close();

public:
	// BW1W120 10022e60 BW1M119 01119420 (LHCombined Release)
	virtual LH_RETURN OpenConnectionToTransport(LHTransport* transport, void (*callback)(void*), void* context);
	// BW1W120 100230b0 BW1M119 01118e50 (LHCombined Release)
	virtual LH_RETURN Flush(unsigned long timeout);
	// BW1W120 10023410 BW1M119 011188f0 (LHCombined Release)
	virtual LHNetEvent* Read(unsigned long timeout);
	// BW1W120 100235e0 BW1M119 01118420 (LHCombined Release)
	virtual void Write(LHNetEvent* net_event);
	// BW1W120 10023620 BW1M119 01118370 (LHCombined Release)
	virtual void AddToIncomingEventQ(LHNetEvent* net_event);
	// BW1W120 10023660 BW1M119 011182b0 (LHCombined Release)
	virtual void AddToFrontOfIncomingEventQ(LHNetEvent* net_event);
	// BW1W120 100236a0 BW1M119 011181e0 (LHCombined Release)
	virtual void AddAtPositionInIncomingEventQ(LHNetEvent* net_event, unsigned long position);
	// BW1W120 10023040 BW1M119 01119020 (LHCombined Release)
	virtual bool32_t CheckForEvents();
	// BW1W120 10023070 BW1M119 01118f50 (LHCombined Release)
	virtual bool32_t CheckForEvent(LH_NETEVENT_TYPE type);
	// BW1W120 10023120 BW1M119 01118be0 (LHCombined Release)
	virtual bool32_t WaitForEvent(LH_NETEVENT_TYPE type, unsigned long timeout);
	// BW1W120 10023530 BW1M119 01118650 (LHCombined Release)
	virtual LHNetEvent* ExtractEvent(LH_NETEVENT_TYPE type, unsigned long timeout);
	// BW1W120 100235a0 BW1M119 011184e0 (LHCombined Release)
	virtual LHNetEvent* RawPeek(LH_NETEVENT_TYPE type, unsigned long timeout);
	// BW1W120 100234c0 BW1M119 011187c0 (LHCombined Release)
	virtual LHNetEvent* Peek(unsigned long timeout);

	// BW1W120 10023360 BW1M119 01118ab0 (LHCombined Release)
	bool32_t WaitForEvent(unsigned long timeout);
	// BW1W120 100233d0 BW1M119 011189f0 (LHCombined Release)
	LHNetEvent* Read();
	// BW1W120 10023490 BW1M119 01118860 (LHCombined Release)
	LHNetEvent* Peek();
	// BW1W120 10023500 BW1M119 01118710 (LHCombined Release)
	LHNetEvent* ExtractEvent(LH_NETEVENT_TYPE type);
	// BW1W120 10023570 BW1M119 011185a0 (LHCombined Release)
	LHNetEvent* RawPeek(LH_NETEVENT_TYPE type);

protected:
	// BW1W120 10003a70 BW1M119 inlined
	void LockIncomingQ() { EnterCriticalSection(IncomingQLock); }
	// BW1W120 10003a80 BW1M119 inlined
	void UnLockIncomingQ() { LeaveCriticalSection(IncomingQLock); }
	// BW1W120 10003a90 BW1M119 inlined
	void LockOutgoingQ() { EnterCriticalSection(OutgoingQLock); }
	// BW1W120 10003aa0 BW1M119 inlined
	void UnLockOutgoingQ() { LeaveCriticalSection(OutgoingQLock); }

public:
	// BW1W120 10003ab0 BW1M119 01115ff0 (LHCombined Release)
	virtual void* GetSignalDataToRead() { return DataToReadSignal; }

private:
	// BW1W120 10022eb0 BW1M119 01119310 (LHCombined Release)
	void InitialiseLocks(LHAsyncTransport* transport);
	// BW1W120 10022f20 BW1M119 011191d0 (LHCombined Release)
	LH_RETURN InitialiseSignals(LHAsyncTransport* transport);

protected:
	bool32_t          OwnsSignals;       /* 0x28 */
	bool32_t          OwnsLocks;         /* 0x2c */
	CRITICAL_SECTION* OutgoingQLock;     /* 0x30 */
	CRITICAL_SECTION* IncomingQLock;     /* 0x34 */
	HANDLE            DataWrittenSignal; /* 0x38 */
	HANDLE            DataToReadSignal;  /* 0x3c */
	HANDLE            PeerFlushedSignal; /* 0x40 */
	HANDLE            FlushedSignal;     /* 0x44 */
};
static_assert(sizeof(LHAsyncTransport) == 0x48, "LHAsyncTransport size is incorrect");

class LH_MULTIPLAYER_API LHTransportRemote : public LHAsyncTransport
{
public:
	// BW1W120 10023850 BW1M119 01117d00 (LHCombined Release)
	LHTransportRemote();
	// BW1W120 10023800 BW1M119 01117d90 (LHCombined Release)
	virtual ~LHTransportRemote();

	// BW1W120 10023720 BW1M119 01118090 (LHCombined Release)
	void ClearAllData();

private:
	// BW1W120 10023730 BW1M119 01117f30 (LHCombined Release)
	virtual LH_RETURN Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
	                       LHTransportInfo* transport_info);

public:
	// BW1W120 100237c0 BW1M119 01117ed0 (LHCombined Release)
	LH_RETURN Open();
	// BW1W120 100237d0 BW1M119 01117e40 (LHCombined Release)
	virtual void Close();
	// BW1W120 100236e0 BW1M119 011180e0 (LHCombined Release)
	virtual bool Disconnect();
	// BW1W120 purecall BW1M119 purecall
	virtual bool Flushed() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN GetTransportInfo(LHTransportInfo* transport_info, bool32_t local) = 0;

	// BW1W120 10023880 BW1M119 01117a40 (LHCombined Release)
	void RemoteTransportThread();
	// BW1W120 10023c00 BW1M119 01117310 (LHCombined Release)
	void WriteInternalCloseConnectionEvent();

private:
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN WriteOnePacket(LHPacket* packet, LHTransportInfo* transport_info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN ReadOnePacket(LHPacket** packet, LHTransportInfo* transport_info) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual HANDLE GetRemoteDataAvailableSignal() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void RemoteShutdown() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool ReadyToRead() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual bool ReadyToWrite() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN FlushBuffer() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN PingConnection() = 0;

	// BW1W120 10023980 BW1M119 01117950 (LHCombined Release)
	LH_RETURN ProcessRemoteDataOrWrite();
	// BW1W120 100239c0 BW1M119 01117680 (LHCombined Release)
	LH_RETURN ProcessRemoteData();
	// BW1W120 10023b60 BW1M119 01117530 (LHCombined Release)
	LH_RETURN WriteAllOutgoingQEvents();

	HANDLE ThreadStoppedSignal; /* 0x48 */
	HANDLE ShutdownSignal;      /* 0x4c */
};
static_assert(sizeof(LHTransportRemote) == 0x50, "LHTransportRemote size is incorrect");

class LH_MULTIPLAYER_API LHTransportTCP : public LHTransportRemote
{
public:
	// BW1W120 10023e30 BW1M119 01116d60 (LHCombined Release)
	LHTransportTCP();
	// BW1W120 10023de0 BW1M119 01116de0 (LHCombined Release)
	virtual ~LHTransportTCP();

	// BW1W120 10023cb0 BW1M119 01117090 (LHCombined Release)
	virtual LH_RETURN Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
	                       LHTransportInfo* transport_info);
	// BW1W120 10023d60 BW1M119 01117030 (LHCombined Release)
	LH_RETURN Open(LHSocketTCP* socket);
	// BW1W120 10023d70 BW1M119 01116f50 (LHCombined Release)
	virtual void Close();

private:
	// BW1W120 10023c70 BW1M119 01117240 (LHCombined Release)
	void ClearAllData();
	// BW1W120 10023c80 BW1M119 011171b0 (LHCombined Release)
	void ClearSocket();

	// BW1W120 10023ea0 BW1M119 01116b50 (LHCombined Release)
	virtual bool Flushed();
	// BW1W120 10023db0 BW1M119 01116ee0 (LHCombined Release)
	virtual LH_RETURN GetTransportInfo(LHTransportInfo* transport_info, bool32_t local);
	// BW1W120 10023f30 BW1M119 01116a00 (LHCombined Release)
	virtual LH_RETURN WriteOnePacket(LHPacket* packet, LHTransportInfo* transport_info);
	// BW1W120 10023ee0 BW1M119 01116a80 (LHCombined Release)
	virtual LH_RETURN ReadOnePacket(LHPacket** packet, LHTransportInfo* transport_info);
	// BW1W120 10023dd0 BW1M119 01116e80 (LHCombined Release)
	virtual HANDLE GetRemoteDataAvailableSignal();
	// BW1W120 10023c50 BW1M119 01117280 (LHCombined Release)
	virtual void RemoteShutdown();
	// BW1W120 10023e50 BW1M119 01116d00 (LHCombined Release)
	virtual bool ReadyToRead();
	// BW1W120 10023e60 BW1M119 01116ca0 (LHCombined Release)
	virtual bool ReadyToWrite();
	// BW1W120 10023e70 BW1M119 01116c00 (LHCombined Release)
	virtual LH_RETURN FlushBuffer();
	// BW1W120 10023f40 BW1M119 01116920 (LHCombined Release)
	virtual LH_RETURN PingConnection();

	LHSocket* Socket; /* 0x50 */
};
static_assert(sizeof(LHTransportTCP) == 0x54, "LHTransportTCP size is incorrect");

class LH_MULTIPLAYER_API LHTransportUDP : public LHTransportRemote
{
public:
	// BW1W120 100241c0 BW1M119 01116310 (LHCombined Release)
	LHTransportUDP();
	// BW1W120 10024170 BW1M119 01116390 (LHCombined Release)
	virtual ~LHTransportUDP();

	// BW1W120 10024070 BW1M119 01116510 (LHCombined Release)
	virtual LH_RETURN Open(LHDynamicQueue<LHNetEvent*>* incoming, LHDynamicQueue<LHNetEvent*>* outgoing,
	                       LHTransportInfo* transport_info);
	// BW1W120 10024130 BW1M119 01116430 (LHCombined Release)
	virtual void Close();
	// BW1W120 10024010 BW1M119 011166b0 (LHCombined Release)
	LH_RETURN Write(LHNetEvent* net_event, LHTransportInfo* transport_info);

private:
	// BW1W120 10023f90 BW1M119 011168e0 (LHCombined Release)
	void ClearAllData();
	// BW1W120 10023fc0 BW1M119 011167d0 (LHCombined Release)
	void ClearSocket();

	// BW1W120 10024250 BW1M119 01116080 (LHCombined Release)
	virtual bool Flushed();
	// BW1W120 10023ff0 BW1M119 01116760 (LHCombined Release)
	virtual LH_RETURN GetTransportInfo(LHTransportInfo* transport_info, bool32_t local);
	// BW1W120 10024220 BW1M119 01116130 (LHCombined Release)
	virtual LH_RETURN WriteOnePacket(LHPacket* packet, LHTransportInfo* transport_info);
	// BW1W120 10024200 BW1M119 011161b0 (LHCombined Release)
	virtual LH_RETURN ReadOnePacket(LHPacket** packet, LHTransportInfo* transport_info);
	// BW1W120 10024050 BW1M119 01116640 (LHCombined Release)
	virtual HANDLE GetRemoteDataAvailableSignal();
	// BW1W120 10023fa0 BW1M119 01116860 (LHCombined Release)
	virtual void RemoteShutdown();
	// BW1W120 100241e0 BW1M119 011162d0 (LHCombined Release)
	virtual bool ReadyToRead();
	// BW1W120 100241f0 BW1M119 01116280 (LHCombined Release)
	virtual bool ReadyToWrite();
	// BW1W120 10024240 BW1M119 011160d0 (LHCombined Release)
	virtual LH_RETURN FlushBuffer();
	// BW1W120 10024260 BW1M119 01116040 (LHCombined Release)
	virtual LH_RETURN PingConnection();

	LHSocket* Socket; /* 0x50 */
};
static_assert(sizeof(LHTransportUDP) == 0x54, "LHTransportUDP size is incorrect");

#endif /* BW1_DECOMP_LH_TRANSPORT_INCLUDED_H */
