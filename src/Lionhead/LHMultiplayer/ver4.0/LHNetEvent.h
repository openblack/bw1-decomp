#ifndef BW1_DECOMP_LH_NET_EVENT_INCLUDED_H
#define BW1_DECOMP_LH_NET_EVENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL, offsetof */
#include <string.h> /* For memcpy */

#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHMultiplayerExport.h"
#include "LHNetUser.h"       /* For struct LH_USER_ID */
#include "LHPacket.h"        /* For class LHPacket */
#include "LHTransportInfo.h" /* For class LHTransportInfo */

// Network event ids, carried in LHPacketHeader::NeteventType.
//
// Only the numeric values survive in either binary. The names are reconstructed from the Mac
// handler that processes each id (LHConnection::ProcessServerRequestChallenge handles 2000 ->
// LH_NETEVENT_TYPE_SERVER_REQUEST_CHALLENGE), or, for ids no ProcessEvent switch handles, from
// the function that creates or waits for them. Ranges:
//   1000        transport notification (connection lost)
//   2000-2101   connection layer, server -> client (LHConnection) and server-internal events
//   3000-3005   connection layer, client -> server (LHConnection / LHConnectionServer)
//   4000-4100   lobby server -> lobby client (LHLobby)
//   4224-4253   connectionless broadcasts between lobbies (LHLobby / LHLobbyServer)
//   5001-5100   lobby client -> lobby server (LHLobbyServer)
//   6000-6018   message server (MServe) -> session (LHSession)
//   7000-7015   session -> message server (LHMessageServer)
// The packet formats of the ids that carry data are in LHNetEvent::MessageDescriptors.
enum LH_NETEVENT_TYPE
{
	// Created by the transports when a connection drops; LHConnectionServer::BaseRemoveConnection.
	LH_NETEVENT_TYPE_REMOVE_CONNECTION = 1000,

	LH_NETEVENT_TYPE_SERVER_REQUEST_CHALLENGE = 2000,
	LH_NETEVENT_TYPE_SERVER_CONNECTION_VALIDATED = 2001,
	LH_NETEVENT_TYPE_SERVER_CONNECTION_REFUSED = 2002,
	LH_NETEVENT_TYPE_SERVER_GREETING = 2003,
	// Sent by LHConnection::FeedbackLastErrorAndClose and on a failed LHConnectionServer::BaseAddConnection.
	LH_NETEVENT_TYPE_SERVER_ERROR = 2004,
	LH_NETEVENT_TYPE_SERVER_NEW_IDLE_TIME = 2005,
	// Sent to every player by LHConnectionServer::ConnectionServerShutdown.
	LH_NETEVENT_TYPE_SERVER_SHUTDOWN = 2006,
	LH_NETEVENT_TYPE_INTERNAL_SERVER_START = 2100,
	// Queued by LHConnection::ProcessClientChallengeResponse; LHConnectionServer::BaseAddConnection.
	LH_NETEVENT_TYPE_ADD_CONNECTION = 2101,

	LH_NETEVENT_TYPE_CLIENT_JOIN = 3000,
	LH_NETEVENT_TYPE_CLIENT_CHALLENGE_RESPONSE = 3001,
	LH_NETEVENT_TYPE_CLIENT_REQUEST_PROTOCOL = 3002,
	LH_NETEVENT_TYPE_CLIENT_NEW_IDLE_TIME = 3003,
	LH_NETEVENT_TYPE_CLIENT_SHUTDOWN_SERVER = 3004,
	// TODO: name unknown; format "W", accepted from any address by LHTransportRemote::ProcessRemoteData.
	LH_NETEVENT_TYPE_UNKNOWN_3005 = 3005,

	LH_NETEVENT_TYPE_LOBBY_GREETING = 4000,
	LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO = 4001,
	LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST = 4002,
	// Reply of LHLobbyServer::ProcessLobbyClientRequestChannelUsers.
	LH_NETEVENT_TYPE_LOBBY_CHANNEL_USERS = 4003,
	// Read by LHLobby::GetChatOnChannelInfo.
	LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL = 4004,
	LH_NETEVENT_TYPE_LOBBY_START_MSERVE = 4005,
	// TODO: 4006/4007 are both sent by LHLobbyServer::ProcessLobbyClientMGJRequest; names guessed.
	LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST = 4006,
	LH_NETEVENT_TYPE_LOBBY_MGJ_REQUEST_REFUSED = 4007,
	// Sent by LHLobbyServer::CheckMGJStatus.
	LH_NETEVENT_TYPE_LOBBY_MGJ_STATUS = 4008,
	LH_NETEVENT_TYPE_LOBBY_USER_FILE = 4009,
	LH_NETEVENT_TYPE_LOBBY_USER_FILES_TRANSFER_COMPLETE = 4010,
	LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE = 4011,
	// Sent by LHLobbyServer::VerifyCodeChecksums.
	LH_NETEVENT_TYPE_LOBBY_VERIFY_CODE_CHECKSUMS = 4012,
	LH_NETEVENT_TYPE_LOBBY_EJECTED_FROM_CHANNEL = 4013,
	LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST = 4100,

	// Created by LHLobby::Chat; LHLobbyServer::SendBroadcastMessageToInternalLobby.
	LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT = 4224,
	// Created by LHLobby::Ping.
	LH_NETEVENT_TYPE_LOBBY_BROADCAST_PING = 4225,
	// TODO: name guessed (LHLobbyServer::SendBroadcastMessageToInternalLobby, like 4224).
	LH_NETEVENT_TYPE_LOBBY_BROADCAST_PING_REPLY = 4226,
	// Created by LHLobby::RequestOnlineStatus.
	LH_NETEVENT_TYPE_LOBBY_BROADCAST_REQUEST_ONLINE_STATUS = 4227,
	LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS_REQUEST = 4251,
	LH_NETEVENT_TYPE_BROADCAST_LOBBY_ADDRESS = 4252,
	LH_NETEVENT_TYPE_BROADCAST_LOBBY_SHUTDOWN = 4253,

	LH_NETEVENT_TYPE_LOBBY_CLIENT_SEND_CODE_CHECKSUM = 5001,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST = 5003,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_JOIN_CHANNEL = 5004,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_LEAVE_CHANNEL = 5005,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_USERS = 5006,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_CHAT_ON_CHANNEL = 5007,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_START_GAME = 5008,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_REQUEST = 5009,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_RESPONSE = 5010,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_USER_FILE = 5011,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_ERROR = 5012,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_MGJ_COMPLETE = 5014,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_START_MSERVE_RESULT = 5015,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_BOOT_OTHER_USERS = 5017,
	LH_NETEVENT_TYPE_LOBBY_CLIENT_EVENT_BROADCAST = 5019,
	// Created by LHLobby::CheckSessionReady and LHLobby::ProcessLobbyConnectToMServe.
	LH_NETEVENT_TYPE_LOBBY_SESSION_READY = 5100,

	LH_NETEVENT_TYPE_MSERVE_GREETING = 6000,
	LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST = 6001,
	LH_NETEVENT_TYPE_MSERVE_GAME_LOOP_STARTED = 6002,
	// Sent by LHMessageServer::ProcessMServeClientRestartGameLoop.
	LH_NETEVENT_TYPE_MSERVE_RESTART_GAME_LOOP = 6003,
	LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET = 6004,
	// Sent by LHMessageServer::ProcessMServeClientStopGameLoop.
	LH_NETEVENT_TYPE_MSERVE_STOP_GAME_LOOP = 6005,
	// TODO: name unknown; only seen in the LHSession::ProcessEvent switch.
	LH_NETEVENT_TYPE_UNKNOWN_6006 = 6006,
	LH_NETEVENT_TYPE_MSERVE_MGJ = 6007,
	LH_NETEVENT_TYPE_MSERVE_GAME_FILE = 6008,
	LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE = 6009,
	// Reply to 7007, waited for by LHSession::SyncAllAndStartSession and LHSession::SyncData.
	LH_NETEVENT_TYPE_MSERVE_SYNC_COMPLETE = 6010,
	LH_NETEVENT_TYPE_MSERVE_CHALLENGE_KEY = 6011,
	// Sent by LHMessageServer::ProcessMServeClientChecksumData.
	LH_NETEVENT_TYPE_MSERVE_CHECKSUM_DATA = 6012,
	LH_NETEVENT_TYPE_MSERVE_HOST_MIGRATION = 6013,
	// TODO: name unknown; only seen in the LHSession::ProcessEvent switch.
	LH_NETEVENT_TYPE_UNKNOWN_6014 = 6014,
	// Sent by LHMessageServer::ProcessMServeClientChecksum, waited for by
	// LHSession::SendOOSChecksumAndWaitForSync.
	LH_NETEVENT_TYPE_MSERVE_CHECKSUM_SYNC = 6015,
	LH_NETEVENT_TYPE_MSERVE_REQUEST_LAST_SUPERPACKET_DATA = 6016,
	// Sent by LHMessageServer::ProcessMServeClientSyncPacket; LHSession::SyncData fails when present.
	LH_NETEVENT_TYPE_MSERVE_SYNC_DATA_FAILED = 6017,
	// Sent by LHSession::Open with the session's local IP, read by LHMessageServer::AddConnection.
	LH_NETEVENT_TYPE_MSERVE_CLIENT_LOCAL_ADDRESS = 6018,

	LH_NETEVENT_TYPE_MSERVE_CLIENT_RESTART_GAME_LOOP = 7000,
	// Queued by LHMessageServer::ProcessEvent for the next super packet.
	LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_PACKET = 7001,
	// TODO: name unknown; rejected by LHMessageServer::ProcessEvent.
	LH_NETEVENT_TYPE_UNKNOWN_7002 = 7002,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_STOP_GAME_LOOP = 7003,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_TERMINATE_GAME_LOOP = 7004,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM = 7005,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_GAME_FILE_SAVED = 7006,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_SYNC_PACKET = 7007,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_CHALLENGE_RESPONSE = 7008,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_CHECKSUM_DATA = 7009,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_MIGRATE_HOST = 7010,
	// Queued locally by LHSession::ProcessMServeHostMigration once migration has finished.
	LH_NETEVENT_TYPE_MSERVE_HOST_MIGRATION_COMPLETE = 7011,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_FULL_CHECKSUM = 7012,
	LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPER_PACKET = 7013,
	// Reply to 6016, sent by LHSession::ProcessMServeRequestLastSuperpacketData.
	LH_NETEVENT_TYPE_MSERVE_CLIENT_LAST_SUPERPACKET_DATA = 7014,
	// Sent by LHSession::SendDataPacketToAllGamePlayers, read by LHNetEvent::DecodeDataPacket.
	LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET = 7015,
};

// One entry of a {type, format} table; LHNetEvent::MessageDescriptors ends with {0, NULL}.
// Format characters are documented at LHNetEvent::RawCreate.
struct LHNetMessageFormatDescriptor
{
	long  Type;
	char* Format;
};

// Forward Declares

template <class T> class LHDynamicQueue;

// The whole class is exported: its implicit copy constructor and operator= are DLL exports.
class LH_MULTIPLAYER_API LHNetEvent
{
private:
	// BW1W120 10001dc0 BW1M119 inlined
	LHNetEvent() { ClearAllData(); }

public:
	// The implicit copy constructor and operator= (10001ed0, 10001f40) copy this word twice, the
	// way MSVC copies every member of an anonymous union.
	// TODO: the second member's name and type are fabricated.
	union {
		LHPacket*      Packet; /* 0x0 */
		unsigned char* RawPacket;
	};
	unsigned long   TickCount; /* 0x4 */
	LHTransportInfo UDPInfo;   /* 0x8 */

private:
#ifdef LH_MULTIPLAYER_EXPORTS
	// TODO: hidden from game TUs. Each static data member declaration bumps cl6's _$E counter in
	// every consumer, and runblack's _$E numbering (GameStats, GatheringInterface) shows the game
	// was built without seeing LHConnection::RegisteredGame, LHNetEvent::MessageDescriptors or
	// LHNetEvent::UserFileDirectory. How the original headers hid them is unknown.
	// BW1W120 10062350 BW1M119 011d2898 (LHCombined Release)
	static LHNetMessageFormatDescriptor MessageDescriptors[];
#endif

public:
#ifdef LH_MULTIPLAYER_EXPORTS
	// BW1W120 10069460 BW1M119 013577f8 (LHCombined Release)
	static char* UserFileDirectory;
#endif

private:
	// BW1W120 10001d90 BW1M119 0103f100 (LHCombined Release)
	void ClearAllData()
	{
		Packet = NULL;
		TickCount = -1;
		UDPInfo.ClearAllData();
	}

public:
	// BW1W120 10016220 BW1M119 010055d0 (LHCombined Release)
	~LHNetEvent();

	// BW1W120 10001e10 BW1M119 inlined
	LHPacket* GetPacket() { return Packet; }
	// The length word counts the 6 header bytes that follow it (type and user id).
	// BW1W120 10001e20 BW1M119 inlined
	unsigned long GetHeaderSize() { return 6; }
	// BW1W120 10001e30 BW1M119 inlined
	unsigned long GetDataLen() { return Packet->header.length - GetHeaderSize(); }
	// BW1W120 10001e40 BW1M119 010ddb20 (LHCombined Release)
	LH_USER_ID GetUserID()
	{
		LH_USER_ID user_id;
		memcpy(&user_id, Packet->GetDataPtr() + sizeof(unsigned short), sizeof(user_id));
		return user_id;
	}
	// BW1W120 10001e50 BW1M119 010eef60 (LHCombined Release)
	void* GetDataPtr() { return Packet->payload; }
	// BW1W120 10001e60 BW1M119 01117460 (LHCombined Release)
	LH_NETEVENT_TYPE GetType()
	{
		unsigned short type;
		memcpy(&type, Packet->GetDataPtr(), sizeof(type));
		return (LH_NETEVENT_TYPE)type;
	}
	// BW1W120 10001e70 BW1M119 010ed890 (LHCombined Release)
	char* GetChannelName() { return (char*)GetDataPtr() + 1; }
	// BW1W120 10001ea0 BW1M119 inlined
	unsigned long GetTickCount() { return TickCount; }
	// BW1W120 10001eb0 BW1M119 inlined
	void SetTickCount(unsigned long tick_count) { TickCount = tick_count; }
	// BW1W120 10001ec0 BW1M119 inlined
	LHTransportInfo* GetUDPinfo() { return &UDPInfo; }

	// BW1W120 10016200 BW1M119 0103f040 (LHCombined Release)
	LH_RETURN SetPacketHeader(LH_NETEVENT_TYPE type, LH_USER_ID user_id);
	// BW1W120 10016a80 BW1M119 01100040 (LHCombined Release)
	LH_RETURN RawDecode(char* format, char* args);
	// BW1W120 100164b0 BW1M119 01100e30 (LHCombined Release)
	LH_RETURN __cdecl VDecode(LH_NETEVENT_TYPE type, ...);
	// BW1W120 10016500 BW1M119 01100d70 (LHCombined Release)
	LH_RETURN __cdecl VDecode(long type, LHNetMessageFormatDescriptor* descriptors, ...);
	// BW1W120 10016f40 BW1M119 010ff750 (LHCombined Release)
	LH_RETURN DecodeMServeSuperPacket(LHDynamicQueue<LHNetEvent*>* queue, long* game_turn);
	// BW1W120 10017060 BW1M119 010ff6b0 (LHCombined Release)
	long GetNetGameTurn();
	// BW1W120 10017080 BW1M119 010ff600 (LHCombined Release)
	unsigned long GetNumberOfPlayerEvents();
	// BW1W120 100170a0 BW1M119 010ff570 (LHCombined Release)
	void SetUDPinfo(LHTransportInfo* transport_info);

	// Static methods

	// BW1W120 10016230 BW1M119 01101500 (LHCombined Release)
	static LHNetEvent* CreateFromPacket(LHPacket* packet);
	// BW1W120 100162d0 BW1M119 011013d0 (LHCombined Release)
	static LHNetEvent* CreateFromEvent(LHNetEvent* net_event);
	// BW1W120 10016370 BW1M119 0103ee80 (LHCombined Release)
	static LHNetEvent* CreateSimple(LH_NETEVENT_TYPE type, LH_USER_ID user_id, unsigned long length, void* data);
#ifdef LH_MULTIPLAYER_EXPORTS
	// The DLL copy reads the including TU's LH_ALL_USERS, which only DLL TUs have.
	// BW1W120 10001e80 BW1M119 null
	static LHNetEvent* CreateSimple(long type, unsigned long length, void* data)
	{
		return CreateSimple((LH_NETEVENT_TYPE)type, LH_ALL_USERS, length, data);
	}
#else
	// BW1W120 10001e80 BW1M119 null
	static LHNetEvent* CreateSimple(long type, unsigned long length, void* data);
#endif
	// BW1W120 10016440 BW1M119 01101020 (LHCombined Release)
	static LHNetEvent* __cdecl VCreate(LH_NETEVENT_TYPE type, LH_USER_ID user_id, ...);
	// BW1W120 10016470 BW1M119 01100f20 (LHCombined Release)
	static LHNetEvent* __cdecl VCreate(long type, LHNetMessageFormatDescriptor* descriptors, ...);
	// BW1W120 10016530 BW1M119 01100560 (LHCombined Release)
	static LHNetEvent* RawCreate(LH_USER_ID user_id, LH_NETEVENT_TYPE type, char* format, char* args);
	// BW1W120 10016cd0 BW1M119 010ffc80 (LHCombined Release)
	static LHNetEvent* CreateMServeSuperPacket(LH_USER_ID user_id, long game_turn, LHDynamicQueue<LHNetEvent*>* queue,
	                                           int param_4);
	// BW1W120 10016ea0 BW1M119 010ffa70 (LHCombined Release)
	static LHNetEvent* CreateEmptyMServeSuperPacket(LH_USER_ID user_id, long game_turn);
	// BW1W120 100170e0 BW1M119 010ff430 (LHCombined Release)
	static LH_RETURN DecodeDataPacket(LHNetEvent* net_event, unsigned long* param_2, void** data, int* data_length);
};
static_assert(offsetof(LHNetEvent, UDPInfo) == 0x8, "LHNetEvent transport info offset is incorrect");
static_assert(sizeof(LHNetEvent) == 0x7c, "LHNetEvent size is incorrect");

#endif /* BW1_DECOMP_LH_NET_EVENT_INCLUDED_H */
