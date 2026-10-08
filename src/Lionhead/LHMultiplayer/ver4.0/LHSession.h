#ifndef BW1_DECOMP_LH_SESSION_INCLUDED_H
#define BW1_DECOMP_LH_SESSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL, offsetof */
#include <stdlib.h> /* For free */
#include <string.h> /* For memset */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h> /* For enum LH_RETURN */
#include "LHConnection.h"
#include "LHDynamicQueue.h"
#include "LHLobby.h"        /* For class LHLobbyChannel, enum LH_PLAYER_EVENT */
#include "LHMPPacketSave.h" /* For enum LH_PACKET_SOURCE */
#include "LHMultiplayerExport.h"
#include "LHNetUser.h" /* For struct LH_USER_ID */

// Forward Declares

class LHMessageServer;
class LHNetEvent;
class LHPlayer;
class LHTransportInfo;
struct LHTimer;

// One player's slot in the per-team table the game reads (team number, team member number).
// A global class on Mac (__ct__10PlayerInfoFv).
class PlayerInfo
{
public:
	unsigned long UserID; /* 0x0; the LH_USER_ID number (category bits masked off) */
	unsigned long ClanID; /* 0x4 */

	// BW1W120 1000dfe0 BW1M119 010ede40 (LHCombined Release)
	PlayerInfo() { memset(this, 0, sizeof(*this)); }
};
static_assert(sizeof(PlayerInfo) == 0x8, "PlayerInfo size is incorrect");

// One player's out-of-sync checksum report (data copied from the checksum event).
// A global class on Mac (__ct__7OOSInfoFv).
class OOSInfo
{
public:
	void*         Data;   /* 0x0 */
	unsigned long Size;   /* 0x4 */
	LHPlayer*     Player; /* 0x8 */

	// The Windows copies are shared with other identical code (identical-COMDAT folding).
	// BW1W120 10003130 BW1M119 010edf30 (LHCombined Release)
	OOSInfo() {}
	// BW1W120 10003140 BW1M119 010edeb0 (LHCombined Release)
	~OOSInfo() { free(Data); }

	// TODO: name fabricated; inlined on both platforms (Mac copies the arguments the same way).
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

// The client side of a multiplayer game: the connection to the message server (LHMessageServer)
// that relays every player's game packets as one super packet per game turn.
// The whole class is exported: its vtable, copy constructor and operator= are DLL exports.
// Original DLL vtable order, 10050324: ProcessEvent, deleting destructor, Close, Read.
class LH_MULTIPLAYER_API LHSession : public LHConnection
{
public:
	LHLinkedList<LHPlayer*>      Players;                   /* 0x90 */
	LHPlayer*                    LeftPlayer;                /* 0x98; TODO: name fabricated */
	int                          SuperPacketReceived;       /* 0x9c; TODO: name fabricated */
	LHLobbyChannel*              LobbyChannel;              /* 0xa0 */
	LHDynamicQueue<LHNetEvent*>* GameEventQ;                /* 0xa4 */
	int                          OwnsGameEventQ;            /* 0xa8; TODO: name fabricated */
	long                         SuperPacketGameTurn;       /* 0xac */
	long                         SuperPacketNumber;         /* 0xb0; TODO: name fabricated */
	bool                         SendChecksums;             /* 0xb4; TODO: name fabricated */
	bool                         SendOOSChecksums;          /* 0xb5; TODO: name fabricated */
	long                         OOSChecksumCount;          /* 0xb8; TODO: name fabricated */
	long                         ChecksumCount;             /* 0xbc; TODO: name fabricated */
	LHNetEvent*                  LastGameEventRead;         /* 0xc0 */
	int                          GameLoopRunning;           /* 0xc4; TODO: name fabricated */
	unsigned long                GameTickInterval;          /* 0xc8 */
	int                          MGJInProgressFlag;         /* 0xcc; TODO: name fabricated */
	void*                        ChecksumErrorData;         /* 0xd0 */
	unsigned long                ChecksumErrorLength;       /* 0xd4 */
	LHPlayer*                    ChecksumErrorPlayer;       /* 0xd8 */
	unsigned long                ChecksumFromFileFlag;      /* 0xdc */
	unsigned short               LastJoinChannelName[0x31]; /* 0xe0 */
	LH_PLAYER_EVENT              LastJoinChannelEvent;      /* 0x144 */
	unsigned long                LastJoinPlayerID;          /* 0x148 */
	LHPlayer*                    LocalPlayer;               /* 0x14c */
	int                          SendChecksumData;          /* 0x150; TODO: name fabricated */
	OOSInfo                      OOSData[32];               /* 0x154; indexed by player ID */
	int                          GameFileReceived;          /* 0x2d4; TODO: name fabricated */
	bool                         Fake;                      /* 0x2d8; TODO: name fabricated */
	PlayerInfo                   GamePlayerInfo[4][4];      /* 0x2dc; [team][team member] */

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
	unsigned long GetChecksumFromFileFlag() { return ChecksumFromFileFlag; }
	// BW1W120 10003210 BW1M119 inlined
	LHPlayer* GetChecksumErrorPlayer() { return ChecksumErrorPlayer; }
	// BW1W120 10003220 BW1M119 inlined
	LHLobbyChannel* GetLobbyChannel() { return LobbyChannel; }
	// BW1W120 10003230 BW1M119 inlined
	int IsThisMe(LHPlayer* player);
	// BW1W120 10003250 BW1M119 inlined
	int CheckForSuperPackets() { return CheckForEvent(LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET); }
	// The game calls these two through the DLL.
	// BW1W120 10003260 BW1M119 inlined
	void* GetGameData();
	// BW1W120 10003270 BW1M119 inlined
	unsigned long GetGameDataLength();
	// BW1W120 10003280 BW1M119 inlined
	int MGJInProgress() { return MGJInProgressFlag != 0; }
	// BW1W120 10003290 BW1M119 inlined
	void ClearMGJInProgress() { MGJInProgressFlag = 0; }
	// TODO: inline in the original (emitted with the other inlines in LHChannel.cpp's range). The body,
	// `server = LobbyChannel->InternalMessageServer; return server ? &server->Timer : NULL`, needs
	// LHMessageServer complete; including LHMessageServer.h here would pull <windows.h> into every
	// TU that includes LHSession.h, so it is only declared for now.
	// BW1W120 100032a0 BW1M119 inlined
	LHTimer* GetServerClock();
	// BW1W120 100032c0 BW1M119 inlined
	static void Destroy(LHSession* session)
	{
		if (session != NULL)
			delete session;
	}
	// BW1W120 100032d0 BW1M119 inlined
	bool IsHost() { return MessageServerRunningHere() != 0; }

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
	// IAT 008a9484.
	// BW1W120 1001cc50 BW1M119 0103f1d0 (LHCombined Release)
	LH_RETURN Write(void* packet, unsigned long length);
	// BW1W120 1001ccc0 BW1M119 0110f910 (LHCombined Release)
	void SetupGamePlayerInfo();
	// BW1W120 1001cd40 BW1M119 0110f830 (LHCombined Release)
	void SendDataPacketToAllGamePlayers(unsigned long param_1, void* data, int length);
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
	int IsSinglePlayer();

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
	bool SyncData(unsigned long length, void* data, bool param_3);
	// BW1W120 1001e170 BW1M119 0110d300 (LHCombined Release)
	LH_RETURN SyncAllAndStartSession(unsigned long timeout);
	// BW1W120 1001e1f0 BW1M119 0110d210 (LHCombined Release)
	virtual void Close();
	// IAT 008a945c.
	// BW1W120 1001e2b0 BW1M119 0110d170 (LHCombined Release)
	LH_RETURN SetIdlePeriod(unsigned long period);
	// BW1W120 1001e2f0 BW1M119 0110d0f0 (LHCombined Release)
	LH_RETURN StopSession();
	// BW1W120 1001e320 BW1M119 0110d060 (LHCombined Release)
	LH_RETURN StartSession();
	// BW1W120 1001e350 BW1M119 0110cfd0 (LHCombined Release)
	LH_RETURN CloseSession();
	// BW1W120 1001e380 BW1M119 0110cd00 (LHCombined Release)
	LH_RETURN Open(LHNetUser* user, LHLobbyChannel* lobby_channel, LHTransportInfo* transport_info, int mgj,
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
	int MessageServerRunningHere();
	// BW1W120 1001e5d0 BW1M119 0110caf0 (LHCombined Release)
	LHLobby* GetLobby();
	// BW1W120 1001e5e0 BW1M119 0110ca50 (LHCombined Release)
	int NextPacketIsSuperpacket();
	// BW1W120 1001e600 BW1M119 0110c9d0 (LHCombined Release)
	void GetLastJoinChannelInfo(unsigned short** name, LH_PLAYER_EVENT* event, unsigned long* player_id);
	// BW1W120 1001e630 BW1M119 0110c970 (LHCombined Release)
	void GetLastJoinChannelInfo(unsigned short** name, LH_PLAYER_EVENT* event);
	// BW1W120 1001e650 BW1M119 0110c8c0 (LHCombined Release)
	void* GetUserData(LHPlayer* player);
	// BW1W120 1001e680 BW1M119 0110c810 (LHCombined Release)
	unsigned long GetUserDataLen(LHPlayer* player);
	// IAT 008a9460.
	// BW1W120 1001e6b0 BW1M119 0110c760 (LHCombined Release)
	void EmptyEventQ();
	// BW1W120 1001e700 BW1M119 0110c4c0 (LHCombined Release)
	static LHSession* Create(bool host, LHNetUser* user, LHTransportInfo* transport_info, char* channel_name,
	                         unsigned long param_5, unsigned long idle_time, void* game_data,
	                         unsigned long game_data_length, unsigned short player_names[][0x30],
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
static_assert(offsetof(LHSession, LastJoinChannelName) == 0xe0, "LHSession last join name offset is incorrect");
static_assert(offsetof(LHSession, LocalPlayer) == 0x14c, "LHSession local player offset is incorrect");
static_assert(offsetof(LHSession, OOSData) == 0x154, "LHSession OOS data offset is incorrect");
static_assert(offsetof(LHSession, GamePlayerInfo) == 0x2dc, "LHSession game player info offset is incorrect");
static_assert(sizeof(LHSession) == 0x35c, "LHSession size is incorrect");

#ifdef LH_MULTIPLAYER_EXPORTS
#include "LHPlayer.h" /* For class LHPlayer */

inline int LHSession::IsThisMe(LHPlayer* player)
{
	return player->GetUserID() == GetUserID();
}

// The game imports these two instead of inlining them, so its TUs only see the declarations.
inline void* LHSession::GetGameData()
{
	return LobbyChannel->GetGameData();
}

inline unsigned long LHSession::GetGameDataLength()
{
	return LobbyChannel->GetGameDataLength();
}
#endif

#endif /* BW1_DECOMP_LH_SESSION_INCLUDED_H */
