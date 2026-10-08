#ifndef BW1_DECOMP_LH_MESSAGE_SERVER_INCLUDED_H
#define BW1_DECOMP_LH_MESSAGE_SERVER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For wchar_t */
#include <stdlib.h> /* For free */

#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>

#include "LHConnectionServer.h"
#include "LHDynamicQueue.h"
#include "LHMPServerStartInfo.h" /* For LH_MAX_GAME_PLAYERS */
#include "LHNetUser.h"           /* For LH_USER_ID, LH_MAX_NAME_LENGTH */

class LHConnection;
class LHNetEvent;
class LHPlayer;

enum
{
	LH_MSERVE_LOCAL_ADDRESS_TIMEOUT = 1000,
	LH_MSERVE_LAST_SUPERPACKET_DATA_TIMEOUT = 60000,
	LH_MSERVE_DATA_PACKET_FLUSH_TIMEOUT = 60000,
	LH_MSERVE_CATCHUP_CHECKSUM_TIMEOUT = 10000,
	LH_MSERVE_WAIT_FOR_PLAYERS_TIMEOUT = 20000,
	LH_MSERVE_AUTH_FAILED_DISCONNECT_DELAY = 5000,
	LH_MSERVE_MAX_CATCHUP_TURNS = 10,
	LH_MSERVE_CHALLENGE_RESPONSE_SIZE = 100,
};

class LHMessageServer : public LHConnectionServer
{
public:
	class LHChecksumInfo
	{
	public:
		unsigned long Checksum; /* 0x0 */
		unsigned long GameTurn; /* 0x4 */
		LHPlayer*     Player;   /* 0x8 */
		void*         Data;     /* 0xc */
		unsigned long DataSize; /* 0x10 */

		// BW1W120 inlined BW1M119 inlined
		LHChecksumInfo()
		{
			Data = NULL;
			DataSize = 0;
			Player = NULL;
			Checksum = 0;
			GameTurn = LH_INVALID_GAME_TURN;
		}
		// BW1W120 inlined BW1M119 010fcc70 (LHCombined Release)
		~LHChecksumInfo()
		{
			if (Data != NULL)
				free(Data);
		}

		// BW1W120 100158e0 BW1M119 010fb500 (LHCombined Release)
		bool32_t operator<(const LHChecksumInfo& other);
	};

	unsigned long                       NumPlayers;                                           /* 0x450 */
	unsigned long                       StartTime;                                            /* 0x454 */
	LHOrderedLinkedList<LHChecksumInfo> Checksums;                                            /* 0x458 */
	LHOrderedLinkedList<LHChecksumInfo> FullChecksums;                                        /* 0x460 */
	LHServerPlayer*                     GameFilePlayer;                                       /* 0x468 */
	unsigned long                       GameFileTurn;                                         /* 0x46c */
	bool32_t                            GameStarted;                                          /* 0x470 */
	unsigned long                       GameTurn;                                             /* 0x474 */
	unsigned long                       NextPlayerID;                                         /* 0x478 */
	char                                Name[LH_MAX_NAME_LENGTH + 1];                         /* 0x47c */
	unsigned long                       NumExpectedPlayers;                                   /* 0x4b0 */
	bool32_t                            ChecksumsEnabled;                                     /* 0x4b4 */
	bool32_t                            FullChecksumsEnabled;                                 /* 0x4b8 */
	LHDynamicQueue<LHNetEvent*>         EventQueue;                                           /* 0x4bc */
	unsigned long                       GameIdleTime;                                         /* 0x4c8 */
	wchar_t                             PlayerNames[LH_MAX_GAME_PLAYERS][LH_MAX_NAME_LENGTH]; /* 0x4cc */
	LH_USER_ID                          PlayerIDs[LH_MAX_GAME_PLAYERS];                       /* 0x10cc */

	// BW1W120 inlined BW1M119 inlined
	LHMessageServer() { ClearAllData(); }
	// BW1W120 1000dad0 BW1M119 010ec360 (LHCombined Release)
	virtual ~LHMessageServer() { Shutdown(); }

	// BW1W120 100140e0 BW1M119 010fd9f0 (LHCombined Release)
	virtual void DoUnsolicitedProcessing();
	// BW1W120 10014260 BW1M119 010fd400 (LHCombined Release)
	virtual LH_RETURN AddConnection(LHServerPlayer* player);
	// BW1W120 10013ef0 BW1M119 010fe060 (LHCombined Release)
	virtual LH_RETURN SendGreeting(LHConnection* connection);
	// BW1W120 10015920 BW1M119 010faef0 (LHCombined Release)
	virtual unsigned long GetProtocolVersion();

private:
	// BW1W120 10013f40 BW1M119 010fdb10 (LHCombined Release)
	virtual LH_RETURN ProcessEvent(LHConnection* connection, LHNetEvent* event);

public:
	// BW1W120 10014170 BW1M119 010fd850 (LHCombined Release)
	virtual LH_RETURN RemoveConnection(LHConnection* connection);
	// BW1W120 10013db0 BW1M119 010fe140 (LHCombined Release)
	virtual void Shutdown();

	// BW1W120 10013c80 BW1M119 010fe260 (LHCombined Release)
	LH_RETURN Start(LHMPServerStartInfo* start_info, char* name, unsigned long num_players, unsigned long idle_time);

private:
	// BW1W120 10013bf0 BW1M119 010fe390 (LHCombined Release)
	void ClearAllData();
	// BW1W120 100144a0 BW1M119 010fd0b0 (LHCombined Release)
	bool WeHaveNoBananas(unsigned long& min_turn, unsigned long& max_turn);
	// BW1W120 10014700 BW1M119 010fcef0 (LHCombined Release)
	void IgnoreChecksums(unsigned long min_turn, unsigned long max_turn);
	// BW1W120 10014910 BW1M119 010fce40 (LHCombined Release)
	void InitialiseChecksumLNGT();
	// BW1W120 10014940 BW1M119 010fcd20 (LHCombined Release)
	void ParseCatchupData(LHNetEvent** events, void* data, unsigned long count);
	// BW1W120 10014980 BW1M119 010fca40 (LHCombined Release)
	LH_RETURN CheckReadyToGo();
	// BW1W120 10014b90 BW1M119 010fc8c0 (LHCombined Release)
	void GeneratePlayerLeftEvents(unsigned long count);
	// BW1W120 10014c80 BW1M119 010fc850 (LHCombined Release)
	LH_RETURN ProcessInternalServerStart();
	// BW1W120 10014c90 BW1M119 010fc760 (LHCombined Release)
	LH_RETURN ProcessMServeClientRestartGameLoop(bool32_t notify);
	// BW1W120 10014dd0 BW1M119 010fc650 (LHCombined Release)
	LH_RETURN ProcessMServeClientChallengeResponse(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10014e50 BW1M119 010fc530 (LHCombined Release)
	LH_RETURN ProcessMServeClientGameFileSaved(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10014ed0 BW1M119 010fc450 (LHCombined Release)
	LH_RETURN ProcessMServeClientStopGameLoop();
	// BW1W120 10014fa0 BW1M119 010fc370 (LHCombined Release)
	LH_RETURN ProcessMServeClientTerminateGameLoop();
	// BW1W120 10014ff0 BW1M119 010fbc20 (LHCombined Release)
	LH_RETURN ProcessMServeClientSyncPacket(LHConnection* connection, LHNetEvent* event, bool removed);
	// BW1W120 10015250 BW1M119 010fba50 (LHCombined Release)
	void RemovePlayerChecksums(LH_USER_ID user_id);
	// BW1W120 100152f0 BW1M119 010fb800 (LHCombined Release)
	LH_RETURN ProcessMServeClientChecksumData(LHConnection* connection, LHNetEvent* event);
	// BW1W120 10015450 BW1M119 010fb730 (LHCombined Release)
	LH_RETURN ProcessMServeClientMigrateHost();
	// BW1W120 100154b0 BW1M119 010fb660 (LHCombined Release)
	LH_RETURN ProcessMServeClientLastSuperPacket(LHConnection* connection, LHNetEvent* event);
	// BW1W120 100154f0 BW1M119 010faf70 (LHCombined Release)
	LH_RETURN ProcessMServeClientChecksum(LHConnection* connection, LHNetEvent* event, bool32_t full);

public:
	// BW1W120 10015930 BW1M119 010fae70 (LHCombined Release)
	static unsigned long GetMServeProtocolVersion();
};
static_assert(sizeof(LHMessageServer::LHChecksumInfo) == 0x14, "LHChecksumInfo size is incorrect");
#ifdef VERSION_BW1W120
static_assert(sizeof(LHMessageServer) == 0x114c, "LHMessageServer size is incorrect");
#endif

#endif /* BW1_DECOMP_LH_MESSAGE_SERVER_INCLUDED_H */
