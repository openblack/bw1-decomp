#ifndef BW1_DECOMP_LH_SESSION_INCLUDED_H
#define BW1_DECOMP_LH_SESSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL, offsetof, wchar_t */
#include <stdlib.h> /* For free, malloc */
#include <string.h> /* For memcpy, memset */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHConnection.h"
#include "LHDynamicQueue.h"
#include "LHLobby.h"             /* For class LHLobbyChannel, enum LH_PLAYER_EVENT */
#include "LHMPPacketSave.h"      /* For enum LH_PACKET_SOURCE */
#include "LHMPServerStartInfo.h" /* For LH_MAX_GAME_PLAYERS */
#include "LHMultiplayerExport.h"
#include "LHNetUser.h" /* For struct LH_USER_ID, LH_MAX_NAME_LENGTH */
#include "LHPlayer.h"  /* For class LHPlayer */

#ifdef _LH_MULTIPLAYER_LIB_
#include "LHMessageServer.h"
#endif

class LHNetEvent;
class LHTransportInfo;

enum
{
	LH_MAX_TEAMS = 4,
	LH_MAX_TEAM_MEMBERS = 4,
};

class PlayerInfo
{
public:
	unsigned long UserID; /* 0x0 */
	unsigned long ClanID; /* 0x4 */

	// BW1W120 1000dfe0 BW1M119 010ede40 (LHCombined Release)
	PlayerInfo() { memset(this, 0, sizeof(*this)); }
};
static_assert(sizeof(PlayerInfo) == 0x8, "PlayerInfo size is incorrect");

class OOSInfo
{
public:
	void*         Data;   /* 0x0 */
	unsigned long Size;   /* 0x4 */
	LHPlayer*     Player; /* 0x8 */

	// BW1W120 10003130 BW1M119 010edf30 (LHCombined Release)
	OOSInfo() {}
	// BW1W120 10003140 BW1M119 010edeb0 (LHCombined Release)
	~OOSInfo() { free(Data); }

	// BW1W120 inlined BW1M119 inlined
	void Set(void* data, unsigned long size, LHPlayer* player)
	{
		Data = malloc(size);
		memcpy(Data, data, size);
		Size = size;
		Player = player;
	}
};
static_assert(sizeof(OOSInfo) == 0xc, "OOSInfo size is incorrect");

class LH_MULTIPLAYER_API LHSession : public LHConnection
{
public:
	LHLinkedList<LHPlayer*>      Players;                                           /* 0x90 */
	LHPlayer*                    LeftPlayer;                                        /* 0x98 */
	bool32_t                     SuperPacketReceived;                               /* 0x9c */
	LHLobbyChannel*              LobbyChannel;                                      /* 0xa0 */
	LHDynamicQueue<LHNetEvent*>* GameEventQ;                                        /* 0xa4 */
	bool32_t                     OwnsGameEventQ;                                    /* 0xa8 */
	long                         SuperPacketGameTurn;                               /* 0xac */
	long                         SuperPacketNumber;                                 /* 0xb0 */
	bool                         SendChecksums;                                     /* 0xb4 */
	bool                         SendOOSChecksums;                                  /* 0xb5 */
	long                         OOSChecksumCount;                                  /* 0xb8 */
	long                         ChecksumCount;                                     /* 0xbc */
	LHNetEvent*                  LastGameEventRead;                                 /* 0xc0 */
	bool32_t                     GameLoopRunning;                                   /* 0xc4 */
	unsigned long                GameTickInterval;                                  /* 0xc8 */
	bool32_t                     MGJInProgressFlag;                                 /* 0xcc */
	void*                        ChecksumErrorData;                                 /* 0xd0 */
	unsigned long                ChecksumErrorLength;                               /* 0xd4 */
	LHPlayer*                    ChecksumErrorPlayer;                               /* 0xd8 */
	bool32_t                     ChecksumFromFile;                                  /* 0xdc */
	wchar_t                      LastJoinChannelPlayerName[LH_MAX_NAME_LENGTH + 1]; /* 0xe0 */
	LH_PLAYER_EVENT              LastJoinChannelEvent;                              /* 0x144 */
	unsigned long                LastJoinPlayerID;                                  /* 0x148 */
	LHPlayer*                    LocalPlayer;                                       /* 0x14c */
	bool32_t                     SendFullChecksum;                                  /* 0x150 */
	OOSInfo                      OOSData[LH_MAX_GAME_PLAYERS];                      /* 0x154 */
	bool32_t                     GameFileReceived;                                  /* 0x2d4 */
	bool                         Fake;                                              /* 0x2d8 */
	PlayerInfo                   GamePlayerInfo[LH_MAX_TEAMS][LH_MAX_TEAM_MEMBERS]; /* 0x2dc */

	// BW1W120 10003090 BW1M119 inlined
	LHSession() { ClearAllData(); }

	// BW1W120 10003150 BW1M119 inlined
	unsigned long GetGameTickInterval() { return GameTickInterval; }
	// BW1W120 10003160 BW1M119 inlined
	LH_RETURN Write(LHNetEvent* net_event) { return LHConnection::Write(net_event); }
	// BW1W120 10003170 BW1M119 inlined
	long GetSuperPacketGameTurn() { return SuperPacketGameTurn; }
	// BW1W120 10003180 BW1M119 inlined
	LHLinkedList<LHPlayer*>* GetPlayerList() { return &Players; }
	// BW1W120 10003190 BW1M119 inlined
	unsigned long GetNumberOfPlayers() { return Players.count; }
	// BW1W120 100031a0 BW1M119 inlined
	LHPlayer* GetNextPlayer(LHPlayer* player) { return Players.FindNext(player); }
	// BW1W120 100031e0 BW1M119 inlined
	void* GetChecksumErrorData() { return ChecksumErrorData; }
	// BW1W120 100031f0 BW1M119 inlined
	unsigned long GetChecksumErrorLength() { return ChecksumErrorLength; }
	// BW1W120 10003200 BW1M119 inlined
	unsigned long GetChecksumFromFileFlag() { return ChecksumFromFile; }
	// BW1W120 10003210 BW1M119 inlined
	LHPlayer* GetChecksumErrorPlayer() { return ChecksumErrorPlayer; }
	// BW1W120 10003220 BW1M119 inlined
	LHLobbyChannel* GetLobbyChannel() { return LobbyChannel; }
	// BW1W120 10003230 BW1M119 inlined
	bool32_t IsThisMe(LHPlayer* player) { return player->GetUserID() == GetUserID(); }
	// BW1W120 10003250 BW1M119 inlined
	bool32_t CheckForSuperPackets() { return CheckForEvent(LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET); }
	// BW1W120 10003260 BW1M119 inlined
	void* GetGameData() { return LobbyChannel->GetGameData(); }
	// BW1W120 10003270 BW1M119 inlined
	unsigned long GetGameDataLength() { return LobbyChannel->GetGameDataLength(); }
	// BW1W120 10003280 BW1M119 inlined
	bool32_t MGJInProgress() { return MGJInProgressFlag != false; }
	// BW1W120 10003290 BW1M119 inlined
	void ClearMGJInProgress() { MGJInProgressFlag = false; }
#ifdef _LH_MULTIPLAYER_LIB_
	// BW1W120 100032a0 BW1M119 inlined
	LHTimer* GetServerClock()
	{
		LHMessageServer* server = LobbyChannel->InternalMessageServer;
		return server != NULL ? &server->Timer : NULL;
	}
#else
	// BW1W120 100032a0 BW1M119 inlined
	LHTimer* GetServerClock();
#endif
	// BW1W120 100032c0 BW1M119 inlined
	static void Destroy(LHSession* session)
	{
		if (session != NULL)
			delete session;
	}
	// BW1W120 100032d0 BW1M119 inlined
	bool IsHost() { return MessageServerRunningHere() != false; }

	// BW1W120 1001c670 BW1M119 01110080 (LHCombined Release)
	LH_RETURN SendChecksum(unsigned long checksum, unsigned long game_turn, void* data, unsigned long length);
	// BW1W120 1001c860 BW1M119 0110fd60 (LHCombined Release)
	LH_RETURN SendOOSChecksumAndWaitForSync(unsigned long checksum, unsigned long game_turn, void* data,
	                                        unsigned long length);

private:
	// BW1W120 1001cac0 BW1M119 0110fbd0 (LHCombined Release)
	void ClearAllData();

public:
	// BW1W120 1001cc10 BW1M119 0110fb90 (LHCombined Release)
	char* GetChannelName();

private:
	// BW1W120 1001cc20 BW1M119 0110fb10 (LHCombined Release)
	void ClearLastGameEventRead();

public:
	// BW1W120 1001cc50 BW1M119 0103f1d0 (LHCombined Release)
	LH_RETURN Write(void* packet, unsigned long length);
	// BW1W120 1001ccc0 BW1M119 0110f910 (LHCombined Release)
	void SetupGamePlayerInfo();
	// BW1W120 1001cd40 BW1M119 0110f830 (LHCombined Release)
	void SendDataPacketToAllGamePlayers(unsigned long type, void* data, int length);
	// BW1W120 1001cd80 BW1M119 01010f70 (LHCombined Release)
	LH_RETURN GetSuperPacketNextData(void** data, unsigned long* length, LHPlayer** player);

private:
	// BW1W120 1001ce50 BW1M119 0110f6b0 (LHCombined Release)
	void ClearGameEventQ();
	// BW1W120 1001cee0 BW1M119 0110f3f0 (LHCombined Release)
	virtual LH_RETURN ProcessEvent(LHNetEvent* net_event);
	// BW1W120 1001d040 BW1M119 0110f3b0 (LHCombined Release)
	LH_RETURN ProcessServerShutdown();
	// BW1W120 1001d050 BW1M119 0110f2e0 (LHCombined Release)
	LH_RETURN ProcessMServeGreeting(LHNetEvent* net_event);
	// BW1W120 1001d0c0 BW1M119 0110f1e0 (LHCombined Release)
	LH_RETURN ProcessMServeRequestLastSuperpacketData(LHNetEvent* net_event);

public:
	// BW1W120 1001d140 BW1M119 0110f020 (LHCombined Release)
	static void* BuildSuperpacketDatablock(unsigned long first_turn, unsigned long* length);
	// BW1W120 1001d210 BW1M119 0110eca0 (LHCombined Release)
	LH_RETURN ProcessMServeCheckSumFailure(LHNetEvent* net_event);
	// BW1W120 1001d460 BW1M119 01005790 (LHCombined Release)
	LHPlayer* GetPlayerFromNum(unsigned long player_number);

private:
	// BW1W120 1001d490 BW1M119 0110e4f0 (LHCombined Release)
	LH_RETURN ProcessMServePlayerList(LHNetEvent* net_event);

public:
	// BW1W120 1001d860 BW1M119 0110e3b0 (LHCombined Release)
	LHPlayer* GetLobbyPlayer(LHPlayer* player);
	// BW1W120 1001d8a0 BW1M119 0110e2e0 (LHCombined Release)
	virtual ~LHSession();
	// BW1W120 1001d930 BW1M119 0110e150 (LHCombined Release)
	void FakeOpen(LHNetUser* user);
	// BW1W120 1001dab0 BW1M119 0101f490 (LHCombined Release)
	bool32_t IsSinglePlayer();

private:
	// BW1W120 1001dae0 BW1M119 0110df10 (LHCombined Release)
	LH_RETURN ProcessMServeMGJ(LHNetEvent* net_event);

public:
	// BW1W120 1001db80 BW1M119 0110de40 (LHCombined Release)
	void SavesCompleteForMGJ();

private:
	// BW1W120 1001dbe0 BW1M119 0110dd50 (LHCombined Release)
	LH_RETURN ProcessMServeGameFile(LHNetEvent* net_event);
	// BW1W120 1001dc60 BW1M119 0110dc40 (LHCombined Release)
	LH_RETURN ProcessMServeChallengeKey(LHNetEvent* net_event);

public:
	// BW1W120 1001dce0 BW1M119 0110db60 (LHCombined Release)
	LHPlayer* GetPlayer(LH_USER_ID user_id);

private:
	// BW1W120 1001dd10 BW1M119 0110d760 (LHCombined Release)
	LH_RETURN ProcessMServeSuperPacket(LHNetEvent* net_event);
	// BW1W120 1001dfa0 BW1M119 0110d6d0 (LHCombined Release)
	LH_RETURN ProcessServerNewIdleTime(LHNetEvent* net_event);
	// BW1W120 1001dfe0 BW1M119 0110d5d0 (LHCombined Release)
	LH_RETURN ProcessMServeGameLoopStarted(LHNetEvent* net_event);

public:
	// BW1W120 1001e050 BW1M119 0110d4f0 (LHCombined Release)
	bool SyncPoint(char* name, int value);
	// BW1W120 1001e0d0 BW1M119 0110d3e0 (LHCombined Release)
	bool SyncData(unsigned long length, void* data, bool wait);
	// BW1W120 1001e170 BW1M119 0110d300 (LHCombined Release)
	LH_RETURN SyncAllAndStartSession(unsigned long timeout);
	// BW1W120 1001e1f0 BW1M119 0110d210 (LHCombined Release)
	virtual void Close();
	// BW1W120 1001e2b0 BW1M119 0110d170 (LHCombined Release)
	LH_RETURN SetIdlePeriod(unsigned long period);
	// BW1W120 1001e2f0 BW1M119 0110d0f0 (LHCombined Release)
	LH_RETURN StopSession();
	// BW1W120 1001e320 BW1M119 0110d060 (LHCombined Release)
	LH_RETURN StartSession();
	// BW1W120 1001e350 BW1M119 0110cfd0 (LHCombined Release)
	LH_RETURN CloseSession();
	// BW1W120 1001e380 BW1M119 0110cd00 (LHCombined Release)
	LH_RETURN Open(LHNetUser* user, LHLobbyChannel* lobby_channel, LHTransportInfo* transport_info, bool32_t mgj,
	               LHMessageServer* message_server);
	// BW1W120 1001e540 BW1M119 0110ccc0 (LHCombined Release)
	LH_PACKET_SOURCE GetPacketSource();
	// BW1W120 1001e550 BW1M119 0110cc10 (LHCombined Release)
	void SetPacketSource(LH_PACKET_SOURCE source);
	// BW1W120 1001e5a0 BW1M119 0110cbd0 (LHCombined Release)
	LHMPPacketSave* GetMPPacketSave();
	// BW1W120 1001e5b0 BW1M119 0110cb90 (LHCombined Release)
	LHMessageServer* GetMessageServer();
	// BW1W120 1001e5c0 BW1M119 0110cb40 (LHCombined Release)
	bool32_t MessageServerRunningHere();
	// BW1W120 1001e5d0 BW1M119 0110caf0 (LHCombined Release)
	LHLobby* GetLobby();
	// BW1W120 1001e5e0 BW1M119 0110ca50 (LHCombined Release)
	bool32_t NextPacketIsSuperpacket();
	// BW1W120 1001e600 BW1M119 0110c9d0 (LHCombined Release)
	void GetLastJoinChannelInfo(wchar_t** name, LH_PLAYER_EVENT* event, unsigned long* player_id);
	// BW1W120 1001e630 BW1M119 0110c970 (LHCombined Release)
	void GetLastJoinChannelInfo(wchar_t** name, LH_PLAYER_EVENT* event);
	// BW1W120 1001e650 BW1M119 0110c8c0 (LHCombined Release)
	void* GetUserData(LHPlayer* player);
	// BW1W120 1001e680 BW1M119 0110c810 (LHCombined Release)
	unsigned long GetUserDataLen(LHPlayer* player);
	// BW1W120 1001e6b0 BW1M119 0110c760 (LHCombined Release)
	void EmptyEventQ();
	// BW1W120 1001e700 BW1M119 0110c4c0 (LHCombined Release)
	static LHSession* Create(bool host, LHNetUser* user, LHTransportInfo* transport_info, char* channel_name,
	                         unsigned long num_players, unsigned long idle_time, void* game_data,
	                         unsigned long game_data_length, wchar_t player_names[][LH_MAX_NAME_LENGTH],
	                         LH_USER_ID* const player_ids);
	// BW1W120 1001e9b0 BW1M119 0110c380 (LHCombined Release)
	LH_RETURN SetUserData(LH_USER_ID user_id, char* user_file, unsigned long length, void* data);
	// BW1W120 1001ea00 BW1M119 0110c290 (LHCombined Release)
	void MigrateHost();

private:
	// BW1W120 1001ea70 BW1M119 0110bdc0 (LHCombined Release)
	LH_RETURN ProcessMServeHostMigration(LHNetEvent* net_event);

public:
	// BW1W120 1001ec80 BW1M119 0110bc40 (LHCombined Release)
	void WaitForMigrationCompleted();

private:
	// BW1W120 1001ee50 BW1M119 0110baa0 (LHCombined Release)
	LH_RETURN ConnectToNewHost(LHTransportInfo* transport_info);
	// BW1W120 1001eff0 BW1M119 0110b6b0 (LHCombined Release)
	LH_RETURN HostSession(LHDynamicQueue<LHNetEvent*>* player_lists);
	// BW1W120 1001f2c0 BW1M119 0110b4d0 (LHCombined Release)
	LH_RETURN MakeNextPlayerHost(LHTransportInfo* transport_info);
	// BW1W120 1001f3c0 BW1M119 0110b430 (LHCombined Release)
	LHPlayer* GetHost();
};
static_assert(offsetof(LHSession, Players) == 0x90, "LHSession player list offset is incorrect");
static_assert(offsetof(LHSession, LastJoinChannelPlayerName) == 0xe0,
              "LHSession last join player name offset is incorrect");
static_assert(offsetof(LHSession, LocalPlayer) == 0x14c, "LHSession local player offset is incorrect");
static_assert(offsetof(LHSession, OOSData) == 0x154, "LHSession OOS data offset is incorrect");
static_assert(offsetof(LHSession, GamePlayerInfo) == 0x2dc, "LHSession game player info offset is incorrect");
static_assert(sizeof(LHSession) == 0x35c, "LHSession size is incorrect");

#endif /* BW1_DECOMP_LH_SESSION_INCLUDED_H */
