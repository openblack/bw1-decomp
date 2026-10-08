#ifndef BW1_DECOMP_LH_CONNECTION_INCLUDED_H
#define BW1_DECOMP_LH_CONNECTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL, offsetof */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHMultiplayerExport.h"
#include "LHNetEvent.h"      /* For enum LH_NETEVENT_TYPE */
#include "LHNetUser.h"       /* For struct LHNetUser, struct LH_USER_ID */
#include "LHTransportInfo.h" /* For enum LH_TRANSPORT_TYPE */

// Forward Declares

class LHConnection;
class LHNetEvent;
class LHTransport;
class LHTransportInfo;

enum LH_OPERATING_MODE
{
	// Names from the "SYNCHRONOUS"/"ASYNCHRONOUS" strings in LHConnectionServer::BaseSendGreeting;
	// ConnectionServerShutdown sets 3.
	LH_OPERATING_MODE_NONE = 0x0,
	LH_OPERATING_MODE_SYNCHRONOUS = 0x1,
	LH_OPERATING_MODE_ASYNCHRONOUS = 0x2,
	LH_OPERATING_MODE_SHUTTING_DOWN = 0x3,
	_LH_OPERATING_MODE_COUNT = 0x4
};

typedef LH_RETURN (*LHConnectionEventFunction)(LHNetEvent* net_event, LHConnection* connection, void* context);

// The whole class is exported: its vtable, implicit copy constructor and operator= are DLL exports.
class LH_MULTIPLAYER_API LHConnection
{
private:
	// Original DLL vtable order, 100502cc: ProcessEvent, deleting destructor, Close, Read.
	// BW1W120 10001fb0 BW1M119 010dbfd0 (LHCombined Release)
	virtual LH_RETURN ProcessEvent(LHNetEvent* net_event) { return LH_ERROR; }

public:
	// BW1W120 10005250 BW1M119 010dc7c0 (LHCombined Release)
	virtual ~LHConnection();
	// BW1W120 10005230 BW1M119 010dc860 (LHCombined Release)
	virtual void Close();
	// BW1W120 100047b0 BW1M119 010de540 (LHCombined Release)
	virtual LHNetEvent* Read(unsigned long timeout, LH_NETEVENT_TYPE type);

	int                       Open;                    /* 0x04 */
	LHConnectionEventFunction EventFunction;           /* 0x08 */
	void*                     EventContext;            /* 0x0c */
	unsigned long             ProtocolVersion;         /* 0x10 */
	int                       Validated;               /* 0x14 */
	LH_USER_ID                ConnectedUserID;         /* 0x18 */
	unsigned short            ConnectedUserName[0x31]; /* 0x1c */
	unsigned long             ChallengeKey;            /* 0x80 */
	LHTransport*              Transport;               /* 0x84 */
	LHNetUser*                NetUser;                 /* 0x88 */
	LH_OPERATING_MODE         Mode;                    /* 0x8c */

protected:
#ifdef LH_MULTIPLAYER_EXPORTS
	// TODO: hidden from game TUs. Each static data member declaration bumps cl6's _$E counter in
	// every consumer, and runblack's _$E numbering (GameStats, GatheringInterface) shows the game
	// was built without seeing LHConnection::RegisteredGame, LHNetEvent::MessageDescriptors or
	// LHNetEvent::UserFileDirectory. How the original headers hid them is unknown.
	// TODO: size inferred from the 0x34-byte .bss slot and the 0x31-char names used elsewhere.
	// BW1W120 10068600 BW1M119 01356634 (LHCombined Release)
	static char RegisteredGame[0x31];
#endif

public:
	// BW1W120 10001fc0 BW1M119 010edf60 (LHCombined Release)
	LHConnection() { ClearAllData(); }
	// BW1W120 10001fe0 BW1M119 null
	LHConnection(LHConnectionEventFunction event_function, void* context)
	{
		ClearAllData();
		SetEventFunction(event_function, context);
	}

	// BW1W120 10002010 BW1M119 inlined
	int IsOpen() { return Open; }
	// BW1W120 10002020 BW1M119 0110c200 (LHCombined Release)
	LHNetUser* GetNetUser() { return NetUser; }
	// BW1W120 10002030 BW1M119 010dd9a0 (LHCombined Release)
	LH_USER_ID GetUserID() { return GetNetUser()->id; }
	// The original method is GetUserName; <windows.h> renamed it to GetUserNameA.
	// BW1W120 10002050 BW1M119 inlined
	unsigned short* GetUserNameA() { return NetUser->Name; }
	// BW1W120 10002060 BW1M119 inlined
	LH_OPERATING_MODE GetMode() { return Mode; }
	// BW1W120 10002070 BW1M119 010f48b0 (LHCombined Release)
	LH_USER_ID GetConnectedUserID() { return ConnectedUserID; }
	// BW1W120 10002080 BW1M119 inlined
	unsigned short* GetConnectedUserName() { return ConnectedUserName; }
#ifdef LH_MULTIPLAYER_EXPORTS
	// BW1W120 10002090 BW1M119 inlined
	char* GetRegisteredName() { return RegisteredGame; }
#endif
	// BW1W120 100020a0 BW1M119 inlined
	int IsValid() { return Validated; }
	// BW1W120 100020b0 BW1M119 inlined
	int IsConnected() { return !IsDisconnected(); }

protected:
	// BW1W120 10004670 BW1M119 010dec40 (LHCombined Release)
	void ClearAllData();

public:
	// BW1W120 100046c0 BW1M119 010deab0 (LHCombined Release)
	void SetNetUser(LHNetUser* net_user);
	// BW1W120 100046e0 BW1M119 010dea50 (LHCombined Release)
	LH_TRANSPORT_TYPE GetTransportType();
	// BW1W120 10004700 BW1M119 010de9d0 (LHCombined Release)
	void AddToIncomingEventQ(LHNetEvent* net_event);
	// BW1W120 10004720 BW1M119 010de950 (LHCombined Release)
	void AddToFrontOfIncomingEventQ(LHNetEvent* net_event);
	// BW1W120 10004740 BW1M119 010de8d0 (LHCombined Release)
	void AddAtPositionInIncomingEventQ(LHNetEvent* net_event, unsigned long position);
	// BW1W120 10004760 BW1M119 0100f6d0 (LHCombined Release)
	unsigned long GetIncomingEventQSize();
	// BW1W120 10004780 BW1M119 010de650 (LHCombined Release)
	bool Flushed();
	// BW1W120 100047a0 BW1M119 010de5e0 (LHCombined Release)
	void* GetSignalDataToRead();
	// BW1W120 100047f0 BW1M119 010de480 (LHCombined Release)
	LHNetEvent* RawRead(unsigned long timeout, LH_NETEVENT_TYPE type);
	// BW1W120 10004840 BW1M119 010de3f0 (LHCombined Release)
	LHNetEvent* RawPeek(unsigned long timeout, LH_NETEVENT_TYPE type);
	// BW1W120 10004870 BW1M119 01009680 (LHCombined Release)
	LHNetEvent* Peek(unsigned long timeout);
	// BW1W120 10004890 BW1M119 010de2f0 (LHCombined Release)
	void Disconnect();

private:
	// BW1W120 100048b0 BW1M119 010de110 (LHCombined Release)
	LH_RETURN BaseProcessEvent(LHNetEvent* net_event);
	// BW1W120 10004940 BW1M119 010de0a0 (LHCombined Release)
	LH_RETURN SetConnectedUserName(unsigned short* name);
	// BW1W120 10004960 BW1M119 010ddf30 (LHCombined Release)
	LH_RETURN ProcessClientJoin(LHNetEvent* net_event);

public:
	// BW1W120 10004a20 BW1M119 010dde80 (LHCombined Release)
	static LH_RETURN DetermineConnectionProtocol(LHConnection* connection, unsigned long client_version,
	                                             unsigned long* protocol_version, unsigned long server_version);

private:
	// BW1W120 10004a60 BW1M119 010dddb0 (LHCombined Release)
	void WriteLastError(LH_NETEVENT_TYPE type);
	// BW1W120 10004ab0 BW1M119 010ddcd0 (LHCombined Release)
	void FeedbackLastErrorAndClose();
	// BW1W120 10004b00 BW1M119 010dda00 (LHCombined Release)
	LH_RETURN ProcessServerRequestChallenge(LHNetEvent* net_event);
	// BW1W120 10004b90 BW1M119 010dd810 (LHCombined Release)
	LH_RETURN ProcessClientChallengeResponse(LHNetEvent* net_event);
	// BW1W120 10004c50 BW1M119 010dd750 (LHCombined Release)
	LH_RETURN ProcessServerConnectionValidated(LHNetEvent* net_event);
	// BW1W120 10004ca0 BW1M119 010dd6a0 (LHCombined Release)
	LH_RETURN ProcessServerConnectionRefused(LHNetEvent* net_event);
	// BW1W120 10004ce0 BW1M119 010dd5f0 (LHCombined Release)
	LH_RETURN ProcessServerGreeting(LHNetEvent* net_event);
	// BW1W120 10004d20 BW1M119 010dd460 (LHCombined Release)
	LH_RETURN WaitForConnectionValidation();

public:
	// BW1W120 10004d70 BW1M119 010dd360 (LHCombined Release)
	LH_RETURN Write(LHNetEvent* net_event);
	// BW1W120 10004e00 BW1M119 010dd2a0 (LHCombined Release)
	LH_RETURN Write(LHNetEvent* net_event, LHTransportInfo* transport_info);
	// BW1W120 10004e50 BW1M119 010dd1f0 (LHCombined Release)
	LH_RETURN OpenClientConnection(LHNetUser* user, LHTransportInfo* transport_info);

private:
	// BW1W120 10004e80 BW1M119 010dd070 (LHCombined Release)
	LH_RETURN SendClientProtocol();

public:
	// BW1W120 10004ee0 BW1M119 010dcf10 (LHCombined Release)
	LH_RETURN RawOpen(LHNetUser* user, LHTransportInfo* transport_info);
	// BW1W120 10004f80 BW1M119 010dceb0 (LHCombined Release)
	int ConnectionOriented();
	// BW1W120 10004fa0 BW1M119 010dcdb0 (LHCombined Release)
	LH_RETURN OpenServerConnectionToExternalTransport(LHNetUser* user, LHTransport* transport);
	// BW1W120 10005000 BW1M119 010dcac0 (LHCombined Release)
	LH_RETURN OpenServerConnectionToOtherConnection(LHNetUser* user, LHConnection* connection, void (*callback)(void*),
	                                                void* context);
	// BW1W120 10005190 BW1M119 010dca30 (LHCombined Release)
	void SetEventFunction(LHConnectionEventFunction event_function, void* context);

private:
	// BW1W120 100051b0 BW1M119 010dc9b0 (LHCombined Release)
	void ClearTransport();

public:
	// BW1W120 100051e0 BW1M119 010dc8f0 (LHCombined Release)
	LH_RETURN Flush(unsigned long timeout);
	// BW1W120 10005270 BW1M119 010102b0 (LHCombined Release)
	int IsDisconnected();
	// BW1W120 10005290 BW1M119 010dc690 (LHCombined Release)
	int IsInternal();
	// BW1W120 100052d0 BW1M119 010dc610 (LHCombined Release)
	int CheckForEvents();
	// BW1W120 100052f0 BW1M119 010dc580 (LHCombined Release)
	int CheckForEvent(LH_NETEVENT_TYPE type);

protected:
	// BW1W120 10005310 BW1M119 010dc530 (LHCombined Release)
	LHNetEvent* GetLastEventRead();
	// BW1W120 10005320 BW1M119 010dc4c0 (LHCombined Release)
	void SetLastEventReadToBeIgnored();

private:
	// BW1W120 10005330 BW1M119 010dc440 (LHCombined Release)
	unsigned long GetProtocolVersion();

public:
	// BW1W120 10005360 BW1M119 010dc270 (LHCombined Release)
	static LHNetEvent* __cdecl BlockingMultipleRead(LHConnection** connection, ...);
	// BW1W120 100053a0 BW1M119 010dc0a0 (LHCombined Release)
	static LHNetEvent* BlockingMultipleRead(unsigned long* index, LHConnection** connections, unsigned long count);
	// BW1W120 10005490 BW1M119 010dc020 (LHCombined Release)
	LH_RETURN GetTransportInfo(LHTransportInfo* transport_info, int local);
};
static_assert(offsetof(LHConnection, ChallengeKey) == 0x80, "LHConnection challenge key offset is incorrect");
static_assert(offsetof(LHConnection, NetUser) == 0x88, "LHConnection user offset is incorrect");
static_assert(sizeof(LHConnection) == 0x90, "LHConnection size is incorrect");

#endif /* BW1_DECOMP_LH_CONNECTION_INCLUDED_H */
