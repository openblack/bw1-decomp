#ifndef BW1_DECOMP_LH_LOBBY_SERVER_INCLUDED_H
#define BW1_DECOMP_LH_LOBBY_SERVER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL, offsetof */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

#include "LHChannel.h"          /* For class LHChannel */
#include "LHConnectionServer.h" /* For class LHConnectionServer */
#include "LHNetUser.h"          /* For struct LH_USER_ID */
#include "LHTransportInfo.h"    /* For class LHTransportInfo */

// Forward Declares

class LHConnection;
class LHLocalLobbyInfo;
class LHNetEvent;
class LHNetUser;
class LHPlayer;
struct LHMPServerStartInfo;

// A player's answer to a mid-game-join request, and the overall result that
// LHLobbyServerChannel::CheckMGJResponseComplete derives from all of them.
// ProcessMGJResponse stores 2 for a true decoded flag and 1 for false; CheckMGJResponseComplete
// reports 2 once nobody is pending and then sends the MServe connection details.
// TODO: enumerator names fabricated.
enum LH_MGJ_RESPONSE
{
	LH_MGJ_RESPONSE_NONE = 0x0,
	LH_MGJ_RESPONSE_REFUSED = 0x1,
	LH_MGJ_RESPONSE_ACCEPTED = 0x2,
	_LH_MGJ_RESPONSE_COUNT = 0x3
};

// The reason passed with LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST.
// TODO: enumerator names fabricated; 0 follows UpdateLocalLobbyInfoDetails, 1 a removal and
// 2 a newly discovered lobby.
enum LH_LOBBYSERVER_EVENT
{
	LH_LOBBYSERVER_EVENT_UPDATED = 0x0,
	LH_LOBBYSERVER_EVENT_REMOVED = 0x1,
	LH_LOBBYSERVER_EVENT_ADDED = 0x2,
	_LH_LOBBYSERVER_EVENT_COUNT = 0x3
};

// The lobby server's per-player bookkeeping, allocated with LHPlayer::AllocSystemData(0x10)
// in ProcessLobbyClientJoinChannel and reached through LHLobbyServerChannel::GetSysInfo.
// TODO: type and member names fabricated.
struct LHLobbyServerSysInfo
{
	LH_MGJ_RESPONSE MGJResponse;          /* 0x0 */
	LHConnection*   Connection;           /* 0x4 */
	int             GameRunning;          /* 0x8; set for every player by StartGameHouseKeeping */
	int             FileTransferComplete; /* 0xc */
};
static_assert(sizeof(LHLobbyServerSysInfo) == 0x10, "LHLobbyServerSysInfo size is incorrect");

// Not exported. Created by FindOrCreateChannel when a client joins and by Create as the
// DecodeListFromBuffer factory.
class LHLobbyServerChannel : public LHChannel
{
public:
	LHTransportInfo TransportInfo; /* 0x78; MServe address, copied by StartGameHouseKeeping */
	// TODO: names fabricated for the next three members.
	int           MServeStarted;    /* 0xec; encoded as one byte after the LHChannel fields */
	unsigned long MServeID;         /* 0xf0 */
	char          MServeName[0x40]; /* 0xf4; from LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT */
	LH_USER_ID    MGJUser;          /* 0x134; LH_ALL_USERS when no mid-game join is in progress */

	// BW1W120 inlined BW1M119 inlined
	LHLobbyServerChannel() { ClearAllData(); }

	// Original DLL vtable order, 10050674.

	// BW1W120 10011a20 BW1M119 010f0fd0 (LHCombined Release)
	virtual unsigned long GetEncodedLength(unsigned long options, void* context);
	// BW1W120 10011a40 BW1M119 010f0f30 (LHCombined Release)
	virtual unsigned char* EncodeToBuffer(unsigned char* buffer, unsigned long options, void* context);
	// BW1W120 10011a70 BW1M119 010f0eb0 (LHCombined Release)
	virtual unsigned char* DecodeFromBuffer(unsigned char* buffer);
	// BW1W120 10011a90 BW1M119 010f0e50 (LHCombined Release)
	virtual void ClearObject();
	// The destructor is implicit (compiler-generated): the target's copy, pulled in by the scalar
	// deleting destructor, is a bare jmp to ~LHChannel without the vptr store a user-written one has.
	// BW1W120 10011620 BW1M119 010eca00 (LHCombined Release)
	// ~LHLobbyServerChannel();

	// Non-virtual methods

	// BW1W120 10011060 BW1M119 010f2830 (LHCombined Release)
	int CheckGameFileTransferComplete();
	// BW1W120 10011630 BW1M119 010f1910 (LHCombined Release)
	int MGJInProgress();
	// BW1W120 10011650 BW1M119 010f17d0 (LHCombined Release)
	void StartGameHouseKeeping(LHTransportInfo* transport_info, LHNetUser* user);
	// BW1W120 100116f0 BW1M119 010f16f0 (LHCombined Release)
	void SetMGJInProgress(LH_USER_ID user_id);
	// BW1W120 10011760 BW1M119 010f1610 (LHCombined Release)
	void ClearMGJInProgress();
	// BW1W120 100117c0 BW1M119 010f13e0 (LHCombined Release)
	LH_RETURN ProcessMGJResponse(LHNetEvent* event, char** message);
	// BW1W120 100118a0 BW1M119 010f1140 (LHCombined Release)
	LH_RETURN CheckMGJResponseComplete(LH_MGJ_RESPONSE* response, LH_USER_ID* user_id);
	// BW1W120 100114a0 BW1M119 010f1c80 (LHCombined Release)
	LH_RETURN SendEventCopyToMGJUser(LHNetEvent* event);
	// BW1W120 inlined BW1M119 010f2c00 (LHCombined Release)
	LH_USER_ID GetMGJUSerID() { return MGJUser; }
	// TODO: Mac reads the pointer through LHPlayer::GetSystemData (BW1M119 010f12e0), which
	// LHPlayer.h does not declare yet.
	// BW1W120 inlined BW1M119 010f4900 (LHCombined Release)
	LHLobbyServerSysInfo* GetSysInfo(LHPlayer* player) { return (LHLobbyServerSysInfo*)player->SystemData; }

	// Static methods

	// BW1W120 inlined BW1M119 010f2020 (LHCombined Release)
	static LHLobbyServerChannel* FindChannel(char* name, LHLinkedList<LHLobbyServerChannel*>* list)
	{
		return (LHLobbyServerChannel*)LHChannel::FindChannel(name, (LHLinkedList<LHChannel*>*)list);
	}
	// BW1W120 100114f0 BW1M119 010f19b0 (LHCombined Release)
	static LHLobbyServerChannel* FindOrCreateChannel(char* name, LHLinkedList<LHLobbyServerChannel*>* list,
	                                                 char* password);
	// BW1W120 10011970 BW1M119 010f1050 (LHCombined Release)
	static LHLobbyServerChannel* Create();

private:
	// BW1W120 10011460 BW1M119 010f1d50 (LHCombined Release)
	void ClearAllData();
};
static_assert(offsetof(LHLobbyServerChannel, MServeStarted) == 0xec, "LHLobbyServerChannel layout is incorrect");
static_assert(offsetof(LHLobbyServerChannel, MGJUser) == 0x134, "LHLobbyServerChannel layout is incorrect");
static_assert(sizeof(LHLobbyServerChannel) == 0x138, "LHLobbyServerChannel size is incorrect");

// The lobby (channel/chat) server that LHLobby::StartInternalLobbyServer runs in-process.
// Not exported: LHLobby.cpp constructs it inline and so emits its vtable (10050634), the
// inline AddConnection, the destructor and the scalar deleting destructor.
class LHLobbyServer : public LHConnectionServer
{
public:
	// TODO: name fabricated; cleared by ClearAllData and otherwise unused in this TU.
	unsigned long field_0x450;
	// TODO: name fabricated; LHMPServerStartInfo+0x10, stored by Start.
	unsigned long field_0x454;
	// Sent in the greeting and the LAN broadcast; the computer name when Start got none.
	char                                ServerName[0x40]; /* 0x458 */
	LHLinkedList<LHLocalLobbyInfo*>     LocalLobbyList;   /* 0x498; other lobbies seen on the LAN */
	LHLinkedList<LHLobbyServerChannel*> ChannelList;      /* 0x4a0 */
	bool                                OffLan;           /* 0x4a8; set by TakeServerOffLan */

	// BW1W120 inlined BW1M119 inlined
	LHLobbyServer() { ClearAllData(); }
	// Emitted in LHLobby.cpp.
	// BW1W120 1000d060 BW1M119 010ec790 (LHCombined Release)
	virtual ~LHLobbyServer() { Shutdown(); }

	// BW1W120 10011450 BW1M119 010f1df0 (LHCombined Release)
	virtual void DoUnsolicitedProcessing();
	// Emitted in LHLobby.cpp.
	// BW1W120 1000d030 BW1M119 010f67a0 (LHCombined Release)
	virtual LH_RETURN AddConnection(LHServerPlayer* player) { return LH_OK; }
	// BW1W120 1000f5b0 BW1M119 010f5e80 (LHCombined Release)
	virtual LH_RETURN SendGreeting(LHConnection* connection);
	// BW1W120 10011aa0 BW1M119 010f0dd0 (LHCombined Release)
	virtual unsigned long GetProtocolVersion();

private:
	// BW1W120 1000f600 BW1M119 010f5a90 (LHCombined Release)
	virtual LH_RETURN ProcessEvent(LHConnection* connection, LHNetEvent* event);

public:
	// BW1W120 1000f970 BW1M119 010f56b0 (LHCombined Release)
	virtual LH_RETURN RemoveConnection(LHConnection* connection);
	// BW1W120 1000f370 BW1M119 010f64b0 (LHCombined Release)
	virtual void Shutdown();

	// Non-virtual methods

	// BW1W120 1000f270 BW1M119 010f6580 (LHCombined Release)
	LH_RETURN Start(LHMPServerStartInfo* start_info, LH_OPERATING_MODE mode, LHConnection* parent_connection);
	// BW1W120 1000f410 BW1M119 010f6440 (LHCombined Release)
	void TakeServerOffLan();
	// BW1W120 1000f420 BW1M119 010f63d0 (LHCombined Release)
	void PutServerOnLan();
	// BW1W120 1000f440 BW1M119 010f62e0 (LHCombined Release)
	void BroadcastShutdown(bool force);
	// BW1W120 1000f4a0 BW1M119 010f61d0 (LHCombined Release)
	LH_RETURN SendEventCopyToAllPlayersOnChannel(LHLobbyServerChannel* channel, LHNetEvent* event);
	// BW1W120 1000f4f0 BW1M119 010f6080 (LHCombined Release)
	LH_RETURN SendEventCopyToAllPlayersOnChannelExceptOne(LHLobbyServerChannel* channel, LHNetEvent* event,
	                                                      LHServerPlayer* except_player);
	// BW1W120 1000f550 BW1M119 010f5f50 (LHCombined Release)
	LH_RETURN SendEventCopyToAllRunningPlayersOnChannel(LHLobbyServerChannel* channel, LHNetEvent* event);
	// BW1W120 1000f9c0 BW1M119 010f5460 (LHCombined Release)
	int RemovePlayerFromChannel(LHServerPlayer* player, LHLobbyServerChannel* channel);
	// BW1W120 1000fb20 BW1M119 010f52d0 (LHCombined Release)
	void CheckMGJStatus(LHLobbyServerChannel* channel, LHNetEvent* event);
	// BW1W120 1000fbf0 BW1M119 010f51c0 (LHCombined Release)
	void SendMGJConnect(LHLobbyServerChannel* channel);
	// BW1W120 1000fec0 BW1M119 010f4d50 (LHCombined Release)
	void SendToInternalConnectedPlayerIfPresent(LHNetEvent* event);
	// BW1W120 1000ff00 BW1M119 010f4c80 (LHCombined Release)
	LHLocalLobbyInfo* FindLocalLobby(char* name);
	// BW1W120 1000fff0 BW1M119 010f4ae0 (LHCombined Release)
	LH_RETURN SendBroadcastMessageToInternalLobby(LHNetEvent* event);
	// BW1W120 10010400 BW1M119 010f42b0 (LHCombined Release)
	LHConnection* GetPlayerConnection(LHServerPlayer* player);
	// BW1W120 10010420 BW1M119 010f3e30 (LHCombined Release)
	LH_RETURN BroadcastAddressInformation(LHTransportInfo* destination, bool force);
	// BW1W120 10010620 BW1M119 010f3c70 (LHCombined Release)
	LH_RETURN PurgeLocalLobbyList();
	// BW1W120 10010700 BW1M119 010f3b90 (LHCombined Release)
	LH_RETURN SendInternalLocalLobbyMessage(LHLocalLobbyInfo* lobby, LH_LOBBYSERVER_EVENT lobby_event);
	// BW1W120 100110d0 BW1M119 010f2730 (LHCombined Release)
	LH_RETURN SendFileTransferComplete(LHLobbyServerChannel* channel);
	// BW1W120 100111d0 BW1M119 010f2270 (LHCombined Release)
	void VerifyCodeChecksums(LHLobbyServerChannel* channel);
	// BW1W120 100112b0 BW1M119 010f21c0 (LHCombined Release)
	LHTransportInfo* GetLocalLobbyTransportInfo(char* name);
	// BW1W120 100112f0 BW1M119 010f20b0 (LHCombined Release)
	LHLocalLobbyInfo* GetNextLocalLobby(LHLocalLobbyInfo* lobby);
	// BW1W120 10011330 BW1M119 010f1e60 (LHCombined Release)
	LH_RETURN StartMServe(char* channel_name, unsigned long mserve_id, LHConnection* connection);
	// BW1W120 inlined BW1M119 010f25e0 (LHCombined Release)
	LHLobbyServerChannel* FindChannel(char* name) { return LHLobbyServerChannel::FindChannel(name, &ChannelList); }
	// BW1W120 inlined BW1M119 010f4240 (LHCombined Release)
	LHLobbyServerChannel* FindDefaultChannel() { return FindChannel((char*)LH_CHANNEL_DEFAULT_NAME); }
	// BW1W120 inlined BW1M119 010f4130 (LHCombined Release)
	LHLinkedList<LHPlayer*>* FindDefaultChannelPlayers()
	{
		if (FindChannel((char*)LH_CHANNEL_DEFAULT_NAME) != NULL)
			return FindChannel((char*)LH_CHANNEL_DEFAULT_NAME)->GetPlayerList();
		return NULL;
	}
	// BW1W120 inlined BW1M119 010f2580 (LHCombined Release)
	LHLinkedList<LHPlayer*>* GetPlayerList(LHLobbyServerChannel* channel) { return &channel->Players; }

	// Static methods

	// BW1W120 10011ab0 BW1M119 010f0d50 (LHCombined Release)
	static unsigned long GetLobbyProtocolVersion();

private:
	// BW1W120 1000f180 BW1M119 010f66c0 (LHCombined Release)
	void ClearAllData();
	// BW1W120 1000f890 BW1M119 010f58b0 (LHCombined Release)
	LH_RETURN ProcessInternalServerStart();
	// BW1W120 1000fc60 BW1M119 010f50a0 (LHCombined Release)
	LH_RETURN ProcessBroadcastLobbyAddressRequest(LHNetEvent* event);
	// BW1W120 1000fd00 BW1M119 010f4e40 (LHCombined Release)
	LH_RETURN ProcessBroadcastLobbyAddress(LHNetEvent* event);
	// BW1W120 1000ff60 BW1M119 010f4b90 (LHCombined Release)
	LH_RETURN ProcessLobbyClientEventBroadcast(LHNetEvent* event);
	// BW1W120 10010020 BW1M119 010f4950 (LHCombined Release)
	LH_RETURN ProcessBroadcastLobbyShutdown(LHNetEvent* event);
	// BW1W120 100100f0 BW1M119 010f4510 (LHCombined Release)
	LH_RETURN ProcessLobbyClientJoinChannel(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010350 BW1M119 010f4350 (LHCombined Release)
	LH_RETURN ProcessLobbyClientBootOtherUsers(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010740 BW1M119 010f39e0 (LHCombined Release)
	LH_RETURN ProcessLobbyClientLeaveChannel(LHConnection* connection, LHNetEvent* event);
	// BW1W120 100107f0 BW1M119 010f3910 (LHCombined Release)
	LH_RETURN ProcessLobbyClientSendCodeChecksum(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010840 BW1M119 010f3660 (LHCombined Release)
	LH_RETURN ProcessLobbyClientChatOnChannel(LHConnection* connection, LHNetEvent* event);
	// BW1W120 100109c0 BW1M119 010f3420 (LHCombined Release)
	LH_RETURN ProcessLobbyClientStartMServeResult(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010b90 BW1M119 010f32f0 (LHCombined Release)
	LH_RETURN ProcessLobbyClientStartGame(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010c30 BW1M119 010f3010 (LHCombined Release)
	LH_RETURN ProcessLobbyClientMGJRequest(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010d90 BW1M119 010f2f50 (LHCombined Release)
	LH_RETURN ProcessLobbyClientMGJComplete(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010dd0 BW1M119 010f2da0 (LHCombined Release)
	LH_RETURN ProcessLobbyClientMGJResponse(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010ec0 BW1M119 010f2c50 (LHCombined Release)
	LH_RETURN ProcessLobbyClientError(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10010f80 BW1M119 010f29a0 (LHCombined Release)
	LH_RETURN ProcessLobbyClientUserFile(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10011130 BW1M119 010f2640 (LHCombined Release)
	LH_RETURN ProcessLobbyClientRequestChannelList(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10011180 BW1M119 010f2460 (LHCombined Release)
	LH_RETURN ProcessLobbyClientRequestChannelUsers(LHConnection* connection, LHNetEvent* event);
};
static_assert(offsetof(LHLobbyServer, field_0x450) == 0x450, "LHLobbyServer layout is incorrect");
static_assert(offsetof(LHLobbyServer, LocalLobbyList) == 0x498, "LHLobbyServer layout is incorrect");
static_assert(offsetof(LHLobbyServer, OffLan) == 0x4a8, "LHLobbyServer layout is incorrect");
static_assert(sizeof(LHLobbyServer) == 0x4ac, "LHLobbyServer size is incorrect");

#endif /* BW1_DECOMP_LH_LOBBY_SERVER_INCLUDED_H */
