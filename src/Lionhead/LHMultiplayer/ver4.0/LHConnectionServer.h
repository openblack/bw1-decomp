#ifndef BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H
#define BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H

#include <assert.h>  /* For static_assert */
#include <windows.h> /* For CRITICAL_SECTION, HANDLE */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include <Lionhead/LHLib/ver5.0/LHTimer.h>
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>

#include "LHConnection.h" /* For enum LH_OPERATING_MODE */
#include "LHNetUser.h"    /* For LHNetUser, LH_USER_ID, LH_MAX_NAME_LENGTH */
#include "LHPlayer.h"     /* For LHPlayer */
#include "LHServerListener.h"

class LHConnection;
class LHNetEvent;
class LHServerListener;
class LHTransportInfo;
struct LHMPServerStartInfo;

enum
{
	LH_SERVER_MAX_PLAYERS = 100,
	LH_SERVER_MAX_SIGNALS = LH_SERVER_MAX_PLAYERS + 3,
	LH_SERVER_REFUSE_CONNECTION_DELAY = 500,
	LH_SERVER_OP_COMPLETE_TIMEOUT = 15500,
	LH_SERVER_SHUTDOWN_FLUSH_TIMEOUT = 15000,
	LH_SERVER_MAX_IDLE_TIMES_BEHIND = 20,
};

enum
{
	LH_INVALID_GAME_TURN = 0xffffffff,
};

class LHConnectionServer
{
public:
	class LHServerPlayer : public LHPlayer
	{
	public:
		unsigned long CodeChecksum;         /* 0x200 */
		unsigned long ProtocolVersion;      /* 0x204 */
		char*         CodeChecksumString;   /* 0x208 */
		long          Reserved;             /* 0x20c */
		LHConnection* Connection;           /* 0x210 */
		bool32_t      MServeStartFailed;    /* 0x214 */
		bool32_t      RunsMessageServer;    /* 0x218 */
		bool32_t      SyncPacketReceived;   /* 0x21c */
		unsigned long LastSuperPacketTurn;  /* 0x220 */
		unsigned long NextChecksumTurn;     /* 0x224 */
		unsigned long NextFullChecksumTurn; /* 0x228 */
		unsigned long SyncDataSize;         /* 0x22c */
		void*         SyncData;             /* 0x230 */

		// BW1W120 inlined BW1M119 inlined
		LHServerPlayer() { ClearAllData(); }
		// BW1W120 10005570 BW1M119 010e2850 (LHCombined Release)
		~LHServerPlayer();
		// BW1W120 100055c0 BW1M119 010e27b0 (LHCombined Release)
		void ClearCodeChecksumString();
		// BW1W120 100055f0 BW1M119 010e26d0 (LHCombined Release)
		void SetCodeChecksumString(char* checksum);
		// BW1W120 10005520 BW1M119 010e2920 (LHCombined Release)
		void ClearAllData();
	};

	CRITICAL_SECTION              SharedDataLock;                         /* 0x4 */
	HANDLE                        StartedEvent;                           /* 0x1c */
	HANDLE                        ShutdownEvent;                          /* 0x20 */
	LH_OPERATING_MODE             Mode;                                   /* 0x24 */
	char                          RegisteredName[LH_MAX_NAME_LENGTH + 1]; /* 0x28 */
	char*                         UserName;                               /* 0x5c */
	HANDLE                        Signals[LH_SERVER_MAX_SIGNALS];         /* 0x60 */
	unsigned long                 NumSignals;                             /* 0x1fc */
	bool32_t                      Started;                                /* 0x200 */
	bool32_t                      UnsolicitedProcessing;                  /* 0x204 */
	unsigned long                 IdleTime;                               /* 0x208 */
	unsigned long                 LastUnsolicitedTime;                    /* 0x20c */
	LHTimer                       Timer;                                  /* 0x210 */
	LHConnection*                 ParentConnection;                       /* 0x320 */
	LHServerPlayer*               InternalPlayer;                         /* 0x324 */
	LHServerListener*             Listener;                               /* 0x328 */
	LHNetUser                     NetUser;                                /* 0x32c */
	LHLinkedList<LHServerPlayer*> Players;                                /* 0x448 */

	// BW1W120 inlined BW1M119 010ee7e0 (LHCombined Release)
	LHConnectionServer() { ClearAllData(); }

	// BW1W120 purecall BW1M119 purecall
	virtual void DoUnsolicitedProcessing() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN AddConnection(LHServerPlayer* player) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN SendGreeting(LHConnection* connection) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual unsigned long GetProtocolVersion() = 0;

private:
	// BW1W120 purecall BW1M119 purecall
	virtual LH_RETURN ProcessEvent(LHConnection* connection, LHNetEvent* event) = 0;

public:
	// BW1W120 10006f40 BW1M119 010df490 (LHCombined Release)
	virtual LH_RETURN RemoveConnection(LHConnection* connection);
	// BW1W120 10005de0 BW1M119 010e1610 (LHCombined Release)
	virtual ~LHConnectionServer();
	// BW1W120 purecall BW1M119 purecall
	virtual void Shutdown() = 0;

	// BW1W120 10005710 BW1M119 010e1f00 (LHCombined Release)
	LH_RETURN BaseAddConnection(LHConnection* connection);
	// BW1W120 10005970 BW1M119 010e1af0 (LHCombined Release)
	LH_RETURN Start(LHMPServerStartInfo* start_info, LHTransportInfo* acceptor_info, LHTransportInfo* broadcast_info,
	                LH_USER_ID::CATEGORY category, LH_OPERATING_MODE mode, LHConnection* parent_connection,
	                unsigned long idle_time, unsigned long thread_priority);
	// BW1W120 10005c90 BW1M119 010e1a30 (LHCombined Release)
	LH_RETURN SendStartupEvent();
	// BW1W120 10005ce0 BW1M119 010e1990 (LHCombined Release)
	LH_RETURN FinishStartup();
	// BW1W120 10005d20 BW1M119 010e18c0 (LHCombined Release)
	LH_RETURN WaitUntilOpComplete(HANDLE event);
	// BW1W120 10005d70 BW1M119 010e1840 (LHCombined Release)
	LH_RETURN WaitUntilStarted();
	// BW1W120 10005d90 BW1M119 010e17a0 (LHCombined Release)
	LH_RETURN WaitUntilShutdown();
	// BW1W120 10005dc0 BW1M119 010e1730 (LHCombined Release)
	void LockSharedDataStructures();
	// BW1W120 10005dd0 BW1M119 010e16c0 (LHCombined Release)
	void UnlockSharedDataStructures();
	// BW1W120 10005e70 BW1M119 010e1460 (LHCombined Release)
	bool FlushAllConnections(unsigned long timeout);
	// BW1W120 100060f0 BW1M119 010e10d0 (LHCombined Release)
	void ConnectionServerShutdown(bool notify_players);
	// BW1W120 10006240 BW1M119 010e0fe0 (LHCombined Release)
	long GetPlayerNumberFromSignal(HANDLE signal);
	// BW1W120 100062c0 BW1M119 010e0ce0 (LHCombined Release)
	long WaitForAnyEvent(unsigned long timeout);
	// BW1W120 100063e0 BW1M119 010e0a40 (LHCombined Release)
	void ProcessEventLoop();
	// BW1W120 100064d0 BW1M119 010e0830 (LHCombined Release)
	LH_RETURN BaseProcessEvent(LHConnection* connection, LHNetEvent* event);

private:
	// BW1W120 10006590 BW1M119 010e0740 (LHCombined Release)
	LH_RETURN ProcessClientRequestProtocol(LHConnection* connection, LHNetEvent* event);

public:
	// BW1W120 100065f0 BW1M119 010e0640 (LHCombined Release)
	LH_RETURN DetermineConnectionProtocol(LHConnection* connection, unsigned long protocol);

private:
	// BW1W120 10006650 BW1M119 010e05b0 (LHCombined Release)
	LH_RETURN ProcessClientShutdownServer();
	// BW1W120 10006670 BW1M119 010e04b0 (LHCombined Release)
	LH_RETURN ProcessClientNewIdleTime(LHConnection* connection, LHNetEvent* event);

public:
	// BW1W120 100066f0 BW1M119 010e03c0 (LHCombined Release)
	long IntervalToUnsolicitedProcessing();
	// BW1W120 10006770 BW1M119 010e01f0 (LHCombined Release)
	void BaseDoUnsolicitedProcessing();
	// BW1W120 10006990 BW1M119 010dfff0 (LHCombined Release)
	LH_RETURN ConnectToConnection(LHConnection* connection);
	// BW1W120 10006af0 BW1M119 010dff10 (LHCombined Release)
	LH_RETURN SendEventCopyToAllPlayersOnServer(LHNetEvent* event);
	// BW1W120 10006b30 BW1M119 010dfe20 (LHCombined Release)
	LH_RETURN SendEventToAllPlayersOnServer(LHNetEvent* event);
	// BW1W120 10006b80 BW1M119 010dfcf0 (LHCombined Release)
	LH_RETURN SendEventCopyToAllPlayersOnServerExceptOne(LHNetEvent* event, LHServerPlayer* except_player);
	// BW1W120 10006bd0 BW1M119 010dfa60 (LHCombined Release)
	LHServerPlayer* FindServerPlayer(LH_USER_ID user_id);
	// BW1W120 10006c00 BW1M119 010df960 (LHCombined Release)
	LH_RETURN SendEventCopyToPlayer(LHServerPlayer* player, LHNetEvent* event);
	// BW1W120 10006c50 BW1M119 010df870 (LHCombined Release)
	LH_RETURN SendEventToPlayer(LHServerPlayer* player, LHNetEvent* event);
	// BW1W120 10006cb0 BW1M119 010df7a0 (LHCombined Release)
	LH_RETURN SendToConnection(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10006cf0 BW1M119 010df570 (LHCombined Release)
	LH_RETURN BaseSendGreeting(LHConnection* connection);
	// BW1W120 10006f20 BW1M119 010df4f0 (LHCombined Release)
	void ForceEventProcess();
	// BW1W120 10006f50 BW1M119 010df350 (LHCombined Release)
	void StopListeningForConnections();
	// BW1W120 10006fe0 BW1M119 010df070 (LHCombined Release)
	LH_RETURN BaseRemoveConnection(LHConnection* connection);
	// BW1W120 10007100 BW1M119 010dee20 (LHCombined Release)
	LHServerPlayer* GetConnectedPlayer(LHConnection* connection);
	// BW1W120 inlined BW1M119 010f2b80 (LHCombined Release)
	LH_USER_ID GetConnectedUserID(LHConnection* connection);
	// BW1W120 inlined BW1M119 010f4010 (LHCombined Release)
	LHTransportInfo* GetConnectionAcceptorInfo()
	{
		return Listener != NULL ? Listener->GetConnectionAcceptorInfo() : NULL;
	}
	// BW1W120 inlined BW1M119 010f40a0 (LHCombined Release)
	LHTransportInfo* GetBroadcastListenerInfo()
	{
		return Listener != NULL ? Listener->GetBroadcastListenerInfo() : NULL;
	}
	// BW1W120 inlined BW1M119 010f41d0 (LHCombined Release)
	LH_USER_ID GetUserID() { return NetUser.GetID(); }

protected:
	// BW1W120 10005650 BW1M119 010e2600 (LHCombined Release)
	void ClearAllData();

private:
	// BW1W120 100056c0 BW1M119 010e2580 (LHCombined Release)
	void ClearAllocs();
	// BW1W120 100056e0 BW1M119 010e24d0 (LHCombined Release)
	void ClearListenerServer();
};
static_assert(sizeof(LHConnectionServer::LHServerPlayer) == 0x234, "LHServerPlayer size is incorrect");
#ifdef VERSION_BW1W120
static_assert(sizeof(LHConnectionServer) == 0x450, "LHConnectionServer size is incorrect");
#endif

#endif /* BW1_DECOMP_LH_CONNECTION_SERVER_INCLUDED_H */
