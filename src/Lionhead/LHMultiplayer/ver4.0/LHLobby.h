#ifndef BW1_DECOMP_LH_LOBBY_INCLUDED_H
#define BW1_DECOMP_LH_LOBBY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL, offsetof */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */

#include "LHChannel.h"      /* For class LHChannel */
#include "LHConnection.h"   /* For class LHConnection, enum LH_OPERATING_MODE */
#include "LHMPPacketSave.h" /* For class LHMPPacketSave, enum LH_PACKET_SOURCE */
#include "LHMultiplayerExport.h"
#include "LHNetEvent.h"      /* For class LHNetEvent */
#include "LHNetTypes.h"      /* For class LHLocalLobbyInfo */
#include "LHNetUser.h"       /* For struct LH_USER_ID */
#include "LHTransportInfo.h" /* For class LHTransportInfo */

// Used by the game's multiplayer front end (MPFEConnectionStatus).
enum LOBBY_TYPE
{
	LOBBY_TYPE_INTERNET = 0x0,
	LOBBY_TYPE_LAN = 0x1,
	_LOBBY_TYPE_COUNT = 0x2
};

// How LHLobby::ConnectToChannel joins a channel; sent to the lobby server with the join request.
// TODO: enumerator names fabricated.
enum LH_NET_CHANNEL_MODE
{
	LH_NET_CHANNEL_MODE_0 = 0x0,
	LH_NET_CHANNEL_MODE_1 = 0x1,
};

// Why the last LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST was sent (LHLobby::GetLastJoinChannelInfo).
// For a nonzero event ProcessLobbyPlayerList finds the player in the channel's previous list.
// TODO: enumerator names fabricated. Also defined by LHSession.h, hence the guard.
#ifndef BW1_DECOMP_LH_PLAYER_EVENT_DEFINED
#define BW1_DECOMP_LH_PLAYER_EVENT_DEFINED
enum LH_PLAYER_EVENT
{
	LH_PLAYER_EVENT_JOINED = 0x0,
	LH_PLAYER_EVENT_LEFT = 0x1,
};
#endif

// Answer of the game's mid-game-join callback (LHLobby::MGJCallback).
// TODO: enumerator names fabricated.
enum LH_MGJ_CALLBACK_RETURN
{
	LH_MGJ_CALLBACK_RETURN_REFUSE = 0x0,
	LH_MGJ_CALLBACK_RETURN_ACCEPT = 0x1,
};

// Forward Declares

class LHLobby;
class LHLobbyServer;
class LHLobbyServerChannel;
class LHMessageServer;
class LHP2P;
class LHPlayer;
class LHSession;
struct LHMPServerStartInfo;

// A channel as seen by a lobby client. Its methods live in LHLobby.cpp.
// The whole class is exported: its constructors, operator= and vtable are DLL exports.
class LH_MULTIPLAYER_API LHLobbyChannel : public LHChannel
{
public:
	LHLobby*         Lobby;                 /* 0x78 */
	LHSession*       Session;               /* 0x7c */
	LHMessageServer* InternalMessageServer; /* 0x80; this host's message server for the channel */
	// Set by LH_NETEVENT_TYPE_LOBBY_USER_FILES_TRANSFER_COMPLETE; tested by LHLobby::CheckSessionReady.
	int FileTransferComplete; /* 0x84 */
	// TODO: name fabricated; a byte from LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST.
	int              field_0x88;
	LH_PACKET_SOURCE PacketSource; /* 0x8c */
	LHMPPacketSave   PacketSave;   /* 0x90 */

	// BW1W120 10002950 BW1M119 inlined
	LHLobbyChannel() { ClearAllData(); }
	// BW1W120 100029d0 BW1M119 inlined
	LHLobbyChannel(char* name, LHLobby* lobby)
	{
		ClearAllData();
		SetName(name);
		Lobby = lobby;
	}
	// BW1W120 1000e7c0 BW1M119 010ec520 (LHCombined Release)
	virtual ~LHLobbyChannel();

	// BW1W120 10002a70 BW1M119 010eb3a0 (LHCombined Release)
	static LHLobbyChannel* FindChannel(char* name, LHLinkedList<LHLobbyChannel*>* list)
	{
		return (LHLobbyChannel*)LHChannel::FindChannel(name, (LHLinkedList<LHChannel*>*)list);
	}
	// BW1W120 10002a90 BW1M119 inlined
	LHSession* GetSession() { return Session; }
	// BW1W120 10002aa0 BW1M119 inlined
	LH_PACKET_SOURCE GetPacketSource() { return PacketSource; }
	// BW1W120 10002ab0 BW1M119 inlined
	void SetPacketSource(LH_PACKET_SOURCE source) { PacketSource = source; }
	// BW1W120 10002ac0 BW1M119 inlined
	LHLobby* GetLobby() { return Lobby; }

private:
	// BW1W120 10002930 BW1M119 inlined
	LH_USER_ID GetUserID();
	// BW1W120 1000e790 BW1M119 010ec5d0 (LHCombined Release)
	void ClearAllData();

public:
	// BW1W120 1000e810 BW1M119 010ec240 (LHCombined Release)
	void ClearInternalMessageServer();
	// BW1W120 1000e890 BW1M119 010ebd10 (LHCombined Release)
	static LHLobbyChannel* FindOrCreateChannel(char* name, LHLobby* lobby, LHLinkedList<LHLobbyChannel*>* list);
	// BW1W120 1000e980 BW1M119 010ebc40 (LHCombined Release)
	LH_RETURN StartGame(unsigned long param_1, unsigned long length, void* data);
	// BW1W120 1000e9c0 BW1M119 010ebba0 (LHCombined Release)
	void RequestMGJ(int param_1);
	// BW1W120 1000ea00 BW1M119 010ebb40 (LHCombined Release)
	int MGJInProgress();
	// BW1W120 1000ea20 BW1M119 010eba80 (LHCombined Release)
	LH_RETURN SendMGJResponse(int accept, LH_USER_ID user_id, char* reason);
	// BW1W120 1000ea70 BW1M119 010eb990 (LHCombined Release)
	LH_RETURN ChatOnChannel(void* data, unsigned long length, LH_USER_ID user_id, bool param_4);
};
static_assert(offsetof(LHLobbyChannel, PacketSave) == 0x90, "LHLobbyChannel packet save offset is incorrect");
static_assert(sizeof(LHLobbyChannel) == 0xb4, "LHLobbyChannel size is incorrect");

// A lobby client connection. LHLobby also owns the process-wide lobby state: the internal (LAN)
// lobby server, the list of lobbies seen on the LAN and the players on them.
// The whole class is exported: its constructors, operator= and vtable are DLL exports.
class LH_MULTIPLAYER_API LHLobby : public LHConnection
{
public:
	unsigned long                       ServerProtocolVersion;           /* 0x90; from the lobby greeting */
	LHLinkedList<LHLobbyChannel*>       Channels;                        /* 0x94 */
	LHLobby*                            GlobalLobby;                     /* 0x9c */
	unsigned short                      LastJoinChannelPlayerName[0x31]; /* 0xa0 */
	LH_PLAYER_EVENT                     LastJoinEvent;                   /* 0x104 */
	LH_USER_ID                          LastJoinUserID;                  /* 0x108 */
	LHLinkedList<LHLobbyServerChannel*> ServerChannels; /* 0x10c; LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO */

#ifdef LH_MULTIPLAYER_EXPORTS
	// TODO: hidden from game TUs like LHConnection::RegisteredGame: each static data member
	// declaration shifts the game's _$E numbering. The game does import GameRunning, UserData,
	// UserDataLen, MGJCallback, SendFullChecksum, GameFile, UserFile, ConnectedLobbyName and
	// InternalLobbyServerConnection, so its view of this class must have declared them somehow.
	// BW1W120 10068b48 BW1M119 013566c0 (LHCombined Release)
	static bool GameRunning;
	// BW1W120 10068b4c BW1M119 013566c4 (LHCombined Release)
	static void* UserData;
	// BW1W120 10068b50 BW1M119 013566c8 (LHCombined Release)
	static unsigned long UserDataLen;
	// BW1W120 10068b54 BW1M119 013566cc (LHCombined Release)
	static void* MGJCallbackParam;
	// BW1W120 10068b58 BW1M119 013566d0 (LHCombined Release)
	static LH_MGJ_CALLBACK_RETURN (*MGJCallback)(void* param);
	// BW1W120 10068b5c BW1M119 013566d4 (LHCombined Release)
	static LH_OPERATING_MODE MessageServerMode;
	// BW1W120 10068b60 BW1M119 013566d8 (LHCombined Release)
	static int SendFullChecksum;
	// BW1W120 10068b64 BW1M119 013566dc (LHCombined Release)
	static int RunMessageServerOnThisHost;
	// BW1W120 10068b68 BW1M119 013566e0 (LHCombined Release)
	static char GameFile[0x104];
	// BW1W120 10068c70 BW1M119 01356ae4 (LHCombined Release)
	static char UserFile[0x104];
	// BW1W120 10068d98 BW1M119 01356ee8 (LHCombined Release)
	static char ConnectedLobbyName[0x41];

private:
	// BW1W120 10068d78 BW1M119 01356f2c (LHCombined Release)
	static LHLinkedList<LHPlayer*> LANPlayerList;

public:
	// BW1W120 10068de0 BW1M119 01356f40 (LHCombined Release)
	static LHTransportInfo MSAcceptorInfo;

private:
	// BW1W120 10068e58 BW1M119 01356fb4 (LHCombined Release)
	static LHLinkedList<LHLocalLobbyInfo*> LocalLobbyList;
	// BW1W120 10068d94 BW1M119 01356fc8 (LHCombined Release)
	static LHLobby* InternalLobbyServerConnection;
	// BW1W120 10068d84 BW1M119 01356fcc (LHCombined Release)
	static LHLobbyServer* InternalLobbyServer;
	// BW1W120 10068d88 BW1M119 01356fd0 (LHCombined Release)
	static int InternalLobbyServerRunning;

public:
	// BW1W120 10068d8c BW1M119 01356fd4 (LHCombined Release)
	static unsigned long OpenLobbyCount;
#endif

private:
	// Original DLL vtable order, 10050314: ProcessEvent, deleting destructor, Close, LHConnection::Read.
	// BW1W120 1000d0b0 BW1M119 010ef4a0 (LHCombined Release)
	virtual LH_RETURN ProcessEvent(LHNetEvent* net_event);

public:
	// BW1W120 1000e520 BW1M119 010eccb0 (LHCombined Release)
	virtual ~LHLobby();
	// BW1W120 1000e580 BW1M119 010ec830 (LHCombined Release)
	virtual void Close();

	// BW1W120 1000c8e0 BW1M119 010f0390 (LHCombined Release)
	LHLobby();

	// Inline members, emitted in LHChannel.cpp.

private:
	// BW1W120 10002cb0 BW1M119 inlined
	LHLobbyChannel* FindOrCreateChannel(char* name, LHLobby* lobby)
	{
		return LHLobbyChannel::FindOrCreateChannel(name, lobby, &Channels);
	}

public:
	// BW1W120 10002cd0 BW1M119 inlined
	LHLobbyChannel* FindDefaultChannel()
	{
		return LHLobbyChannel::FindChannel((char*)LH_CHANNEL_DEFAULT_NAME, &Channels);
	}
	// BW1W120 10002cf0 BW1M119 010ed830 (LHCombined Release)
	LHLobbyChannel* FindChannel(char* name) { return LHLobbyChannel::FindChannel(name, &Channels); }
#ifdef LH_MULTIPLAYER_EXPORTS
	// BW1W120 10002d10 BW1M119 inlined
	static LHLocalLobbyInfo* FindLocalLobby(LHTransportInfo* transport_info)
	{
		return LHNetFindLocalLobby(&LocalLobbyList, transport_info);
	}
	// BW1W120 10002d30 BW1M119 inlined
	static LHLocalLobbyInfo* FindLocalLobbyFromIP(char* ip) { return LHNetFindLocalLobby(&LocalLobbyList, ip); }
	// BW1W120 10002d50 BW1M119 inlined
	LHTransportInfo* GetMSAcceptorInfo() { return &MSAcceptorInfo; }
	// BW1W120 10002d60 BW1M119 inlined
	char* GetConnectedLobbyName() { return ConnectedLobbyName; }
#endif
	// BW1W120 10002d70 BW1M119 inlined
	LHLobbyChannel* GetChannel(LHNetEvent* net_event) { return FindChannel(net_event->GetChannelName()); }
	// BW1W120 10002d90 BW1M119 inlined
	void GetLastJoinChannelInfo(unsigned short** name, LH_PLAYER_EVENT* event)
	{
		*name = LastJoinChannelPlayerName;
		*event = LastJoinEvent;
	}
	// BW1W120 10002db0 BW1M119 inlined
	LH_USER_ID GetLastJoinUserID() { return LastJoinUserID; }
#ifdef LH_MULTIPLAYER_EXPORTS
	// BW1W120 10002dc0 BW1M119 inlined
	int IsInternalLobbyConnection() { return this == InternalLobbyServerConnection; }
#endif
	// BW1W120 10002dd0 BW1M119 inlined
	int IsGlobalLobbyConnection() { return GetConnectedUserID().IsGlobal(); }
	// BW1W120 10002df0 BW1M119 inlined
	unsigned long GetNumberOfChannels() { return Channels.count; }
#ifdef LH_MULTIPLAYER_EXPORTS
	// BW1W120 10002e00 BW1M119 inlined
	static LHLobby* GetInternalLobbyServerConnection() { return InternalLobbyServerConnection; }
#endif

private:
	// BW1W120 1000c740 BW1M119 010f0aa0 (LHCombined Release)
	void ClearAllData();

public:
	// BW1W120 1000c780 BW1M119 010f0a50 (LHCombined Release)
	static void InitLibrary();
	// BW1W120 1000c790 BW1M119 010f0a00 (LHCombined Release)
	static void CloseLibrary();
	// BW1W120 1000c7a0 BW1M119 010f0920 (LHCombined Release)
	static void RequestOnlineStatus(unsigned long count, long* user_ids, LHTransportInfo* transport_info);
	// BW1W120 1000c7f0 BW1M119 010f0830 (LHCombined Release)
	static void Chat(LH_USER_ID user_id, LHTransportInfo* transport_info, void* data, unsigned long length);
	// BW1W120 1000c840 BW1M119 010f0780 (LHCombined Release)
	static void Ping(LHTransportInfo* transport_info);
	// BW1W120 1000c880 BW1M119 010f0690 (LHCombined Release)
	static void BroadcastEvent(LHNetEvent* net_event, LHTransportInfo* transport_info);
	// BW1W120 1000c960 BW1M119 010f0340 (LHCombined Release)
	LHLobby* GetGlobalLobby();
	// BW1W120 1000c970 BW1M119 010f0250 (LHCombined Release)
	LH_RETURN ConnectToChannel(char* name, char* password, LH_NET_CHANNEL_MODE mode);
	// BW1W120 1000c9e0 BW1M119 010f01a0 (LHCombined Release)
	LH_RETURN BootOtherUsersOffChannel(char* channel_name);
	// BW1W120 1000ca20 BW1M119 010f00c0 (LHCombined Release)
	LH_RETURN OpenLANLobby(LHNetUser* user, char* lobby_name);
	// BW1W120 1000ca60 BW1M119 010effa0 (LHCombined Release)
	LH_RETURN OpenRemoteLobby(LHNetUser* user, LHTransportInfo* transport_info);
	// BW1W120 1000caf0 BW1M119 010eff60 (LHCombined Release)
	static const char* GetUserFile();
	// BW1W120 1000cb00 BW1M119 010efc50 (LHCombined Release)
	LH_RETURN OpenLocalLobby(LHMPServerStartInfo* info);
	// BW1W120 1000cd50 BW1M119 010efbe0 (LHCombined Release)
	static void TakeServerOffLan();
	// BW1W120 1000cd70 BW1M119 010efb50 (LHCombined Release)
	static void StopLobbyServerListeningForConnections();
	// BW1W120 1000cd90 BW1M119 010efae0 (LHCombined Release)
	static void PutServerOnLan();
	// BW1W120 1000cdb0 BW1M119 010ef9b0 (LHCombined Release)
	static char* SetRegisteredName(const char* name);

private:
	// BW1W120 1000ce30 BW1M119 010ef6b0 (LHCombined Release)
	LH_RETURN StartInternalLobbyServer(LHMPServerStartInfo* info);

public:
	// BW1W120 1000d1e0 BW1M119 010ef340 (LHCombined Release)
	static void WriteChatFile(char* text, char* name, char* file_name);

private:
	// BW1W120 1000d2a0 BW1M119 010ef1a0 (LHCombined Release)
	LH_RETURN ProcessLobbyGreeting(LHNetEvent* net_event);
	// BW1W120 1000d370 BW1M119 010ef020 (LHCombined Release)
	LH_RETURN ProcessLobbyEjectedFromChannel(LHNetEvent* net_event);
	// BW1W120 1000d410 BW1M119 010eefa0 (LHCombined Release)
	LH_RETURN ProcessLobbyChannelListInfo(LHNetEvent* net_event);
	// BW1W120 1000d440 BW1M119 010eedb0 (LHCombined Release)
	LH_RETURN ProcessLobbyPlayerList(LHNetEvent* net_event);
	// BW1W120 1000d5b0 BW1M119 010eec80 (LHCombined Release)
	LH_RETURN ProcessLobbyStartMServe(LHNetEvent* net_event);
	// BW1W120 1000d670 BW1M119 010eea90 (LHCombined Release)
	LH_RETURN StartInternalMessageServer(LHLobbyChannel* channel, unsigned long param_2, LH_OPERATING_MODE mode,
	                                     unsigned long game_turn, unsigned short player_names[][0x30],
	                                     LH_USER_ID player_ids[]);

public:
	// BW1W120 1000d750 BW1M119 010ee1a0 (LHCombined Release)
	static LHMessageServer* StartInternalMessageServer(LHNetUser* user, char* name, unsigned long param_3,
	                                                   unsigned long param_4, LH_OPERATING_MODE mode,
	                                                   unsigned long game_turn, unsigned short player_names[][0x30],
	                                                   LH_USER_ID player_ids[]);

private:
	// BW1W120 1000dbd0 BW1M119 010ee0c0 (LHCombined Release)
	LH_RETURN ProcessLobbyUserFile(LHNetEvent* net_event);
	// BW1W120 1000dc50 BW1M119 010edfe0 (LHCombined Release)
	LH_RETURN SendStartMServeResult(char* channel_name, int success, LHTransportInfo* transport_info,
	                                LH_OPERATING_MODE mode);
	// BW1W120 1000dca0 BW1M119 010eda60 (LHCombined Release)
	LH_RETURN ProcessLobbyConnectToMServe(LHNetEvent* net_event);
	// BW1W120 1000dff0 BW1M119 010ed9e0 (LHCombined Release)
	LH_RETURN ProcessConnectionClosed();
	// BW1W120 1000e010 BW1M119 010ed780 (LHCombined Release)
	LH_RETURN ProcessLobbyUserFilesTransferComplete(LHNetEvent* net_event);

public:
	// BW1W120 1000e050 BW1M119 010ed640 (LHCombined Release)
	LH_RETURN CheckSessionReady(LHLobbyChannel* channel);

private:
	// BW1W120 1000e100 BW1M119 010ecdb0 (LHCombined Release)
	LH_RETURN ProcessInternalLobbyNewLocalLobbyList(LHNetEvent* net_event);

public:
	// BW1W120 1000e510 BW1M119 010ecd60 (LHCombined Release)
	LH_RETURN ConnectToPlayer(LHPlayer* player, LHP2P* p2p);
	// BW1W120 1000e690 BW1M119 010ec650 (LHCombined Release)
	static void ClearInternalLobbyServer();
	// BW1W120 1000eac0 BW1M119 010eb750 (LHCombined Release)
	LH_RETURN LeaveChannel(LHLobbyChannel* channel);
	// BW1W120 1000eb60 BW1M119 010eb6c0 (LHCombined Release)
	LHTransportInfo* GetBroadcastListenerInfo();
	// BW1W120 1000eb80 BW1M119 010eb630 (LHCombined Release)
	LHTransportInfo* GetConnectionAcceptorInfo();
	// BW1W120 1000eba0 BW1M119 010eb5d0 (LHCombined Release)
	char* GetInternalLobbyName();
	// BW1W120 1000ebc0 BW1M119 010eb4c0 (LHCombined Release)
	static LHLocalLobbyInfo* GetNextLocalLobby(LHLocalLobbyInfo* lobby);
	// BW1W120 1000ec00 BW1M119 010eb420 (LHCombined Release)
	static LHLocalLobbyInfo* FindLocalLobby(char* name);
	// BW1W120 1000ec70 BW1M119 010eb250 (LHCombined Release)
	LH_RETURN GetChatOnChannelInfo(LHNetEvent* net_event, LHLobbyChannel** channel, LHPlayer** player, void** data,
	                               int* is_private);
	// BW1W120 1000ed20 BW1M119 010eb100 (LHCombined Release)
	LH_RETURN GetChatDataLength(LHNetEvent* net_event, unsigned long* length);
	// BW1W120 1000eda0 BW1M119 010eb0a0 (LHCombined Release)
	static LHLinkedList<LHPlayer*>* GetLANPlayers(LHLocalLobbyInfo* lobby);
	// BW1W120 1000edc0 BW1M119 010eb020 (LHCombined Release)
	static unsigned long GetNumberOfPlayersOnDefaultChannel(LHLocalLobbyInfo* lobby);
	// BW1W120 1000ede0 BW1M119 010eadb0 (LHCombined Release)
	static void ShutdownInternalLobbyServer();
	// BW1W120 1000efa0 BW1M119 010ead30 (LHCombined Release)
	static LH_USER_ID::CATEGORY GetInternalLobbyType();
	// BW1W120 1000efc0 BW1M119 010eac70 (LHCombined Release)
	LH_RETURN SendUserFileToServer(char* file_name);
	// BW1W120 1000f000 BW1M119 010eabc0 (LHCombined Release)
	void FeedbackLastError(char* text);
	// BW1W120 1000f040 BW1M119 010ea930 (LHCombined Release)
	static LHTransportInfo* FindPlayerBroadcastInfo(LH_USER_ID user_id);
};
static_assert(offsetof(LHLobby, Channels) == 0x94, "LHLobby channel list offset is incorrect");
static_assert(offsetof(LHLobby, LastJoinEvent) == 0x104, "LHLobby join event offset is incorrect");
static_assert(sizeof(LHLobby) == 0x114, "LHLobby size is incorrect");

// Inline members of LHLobbyChannel that need the complete LHLobby.

// BW1W120 10002930 BW1M119 inlined
inline LH_USER_ID LHLobbyChannel::GetUserID()
{
	return Lobby->GetUserID();
}

#endif /* BW1_DECOMP_LH_LOBBY_INCLUDED_H */
