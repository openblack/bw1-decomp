#ifndef BW1_DECOMP_MPFE_DATA_INCLUDED_H
#define BW1_DECOMP_MPFE_DATA_INCLUDED_H

#include <stdint.h>
#include <wchar.h> /* For wchar_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>        /* For LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedList */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>   /* For struct LH_USER_ID */

#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h>     /* For struct DBInfo */
#include <Lionhead/LHMultiplayer/ver4.0/LHFileDownload.h> /* For class LHFileDownload */

#include "MPFECreatureDownload.h" /* For class MPFECreatureDownload */
#include "MPFEFileTransfer.h"     /* For class MPFEFileTransfer */
#include "MPFEMapDownload.h"      /* For class MPFEMapDownload */
#include "MPFEThumbDownload.h"    /* For class MPFEThumbDownload */
#include "ServerLandscapeMap.h"   /* For class ServerLandscapeMap */
#include "WinCondition.h"

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <string>
#include <utility> /* For std::pair */
#include <vector>  /* For std::vector */
#endif

#define MPFE_DATA_UNPURE_CLIENT_TIMEOUT 10000
#define MPFE_DATA_DEFAULT_NUM_TEAMS     4
#define MPFE_DATA_SESSION_PORT          2612
#define MPFE_DATA_REFRESH_INTERVAL      250
#define MPFE_DATA_SEND_INTERVAL         400
#define MPFE_DATA_START_GAME_DELAY      300
#define MPFE_DATA_TYKE_STATUS_INTERVAL  200

class ChannelBox;
class LayerCommunication;
class LHSession;
struct LandscapeDetails;
class MPFEClanDetails;
struct MPFEChannelDetails;
struct MPFEPlayerDetails;

enum TeamEnums
{
	TEAM_ANY = -2,
	TEAM_UNASSIGNED = -1,
	TEAM_NONE = 0,
	TEAM_FIRST = 1,
};

struct MPFETeamDetails
{
	wchar_t       Name[0x100];
	unsigned long ClanID;      /* 0x200 */
	unsigned long ClanSetByID; /* 0x204 */
#if defined(VERSION_BW1WCI)
	bool TykeEnabled;
#endif
};

struct MPFEInviteDetails
{
	wchar_t       Name[0x100];
	unsigned long Team; /* 0x200 */
};

class MPFEData
{
public:
	enum
	{
		MAX_TEAMS = 5,
		PLAYER_NAME_SIZE = 0x80
	};

	LHOrderedLinkedList<MPFEPlayerDetails> Teams[MAX_TEAMS];
	MPFETeamDetails                        TeamDetails[MAX_TEAMS]; /* 0x28 */
	float                                  DownloadPercentage;
	float                                  DownloadSpeed;
	MPFEPlayerDetails*                     SelectedPlayer;
	MPFEChannelDetails*                    CurrentChannel;
	LayerCommunication*                    Layer;
	ChannelBox*                            ActiveDialog;
	LHFileDownload                         FileDownload;
	LHLinkedList<MPFEPlayerDetails*>       UnassignedPlayers;
	LHLinkedList<MPFEPlayerDetails*>       PlayersTransferringFiles;
	LHLinkedList<MPFEPlayerDetails*>       field_0xae4;
	LHLinkedList<void*>                    field_0xaec;
	LHLinkedList<TeamEnums*>               TeamJoinRequests;
	LHLinkedList<MPFEInviteDetails*>       Invites;
	LHLinkedList<MPFEPlayerDetails*>       PlayersAwaitingStartReply;
	MPFEFileTransfer                       FileTransfers[MAX_TEAMS];
	ServerLandscapeMap                     ThumbnailMap;
	MPFEMapDownload                        MapDownload; /* 0x1050 */
	MPFEThumbDownload                      ThumbDownload;
	MPFECreatureDownload                   ClanCreatureDownload;
	bool                                   IsOOSGame;
	bool                                   InGameChannel;
	bool                                   IsHost;
	bool                                   HaveTeamList;
	bool                                   TeamsChanged;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	bool SettingsChanged; /* 0x15c9 */
	bool ReadyChanged;
	bool TeamsReadyChanged;
#elif defined(VERSION_BW1WCI)
	bool TykeStatusChanged;
#endif
	bool ClansChanged;
	bool ProfileWaitingForDatabase;
	bool MapChanged;
	bool ProfileRetried;
	bool TransferringFiles;
	bool GameStarting;
	bool StartGameRequested;
	bool ProfileSent;
#if defined(VERSION_BW1WCI)
	bool TykeEnabled;
#endif
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	WinCondition                      Conditions[WC_LAST];
	std::vector<std::pair<int, int> > ConditionChanges;
#endif
	DBInfo        DatabaseQuery;
	bool          DatabaseQueryActive;
	uint32_t      field_0x1724;
	unsigned long TeamListSequence;
	uint64_t      MapChecksum;
	uint32_t      LocalPlayerID;
	wchar_t       LocalPlayerName[PLAYER_NAME_SIZE];
	LHSession*    Session;

	// BW1W120 00d3f038
	static MPFEData Data;
	// BW1W120 00d408a0
	static uint64_t InfoFileChecksum2;
	// BW1W120 00d408a8
	static uint64_t InfoFileChecksum;
	// BW1W120 00d408b0
	static uint64_t CreatureFileChecksum;
	// BW1W120 00d408b8
	static uint64_t OOSChecksum;
	// BW1W120 00bf456c
	static unsigned long TeamColors[MAX_TEAMS];

	// BW1W120 00622510 BW1M119 013a0c50
	MPFEData();
	// BW1W120 00622690 BW1M119 013a0a50
	~MPFEData();
	// BW1W120 006227c0 BW1M119 013a02f0
	void Reset();
	// Inliner IL size: 43
	// BW1W120 inlined BW1M119 inlined
	void StopDownloads()
	{
		MapDownload.Stop();
		ThumbDownload.Stop();
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	// BW1W120 00622a60 BW1M119 null
	void ResetConditions();
#endif
	// BW1W120 00622b30 BW1M119 null
	void Initialise();
	// BW1W120 00622c10 BW1M119 013a0150
	void A2D_LeaveGameChannel();
#ifndef VERSION_BW1W100
	// BW1W120 00622c60 BW1M119 null
	void A2D_LeaveMainRoom();
#endif
#ifndef VERSION_BW1W100
	// BW1W120 00622c70 BW1M119 null
	static LH_USER_ID GetIDFromNick(char* nick);
#endif
#ifndef VERSION_BW1W100
	// BW1W120 00622d00 BW1M119 null
	static char* GetNameFromNick(char* nick);
#endif
	// BW1W120 00622d40 BW1M119 013a00f0
	MPFEPlayerDetails* GetLocalPlayer();
	// BW1W120 inlined BW1M119 inlined
	LayerCommunication* GetLayer() { return Layer; }
	// BW1W120 00622d60 BW1M119 0139ff70
	MPFEPlayerDetails* GetHostPlayer();
	// BW1W120 00624180 BW1M119 0139d9b0
	void FlushTeams();
	// BW1W120 00620a30 BW1M119 01392a60
	void D2A_CouldNotDownloadMap();
	// BW1W120 00623960 BW1M119 0139e6a0
	void D_FoundMapSetDetails(unsigned long id);
	// BW1W120 00625180 BW1M119 0139bef0
	wchar_t* GetMyPlayerName();
#ifndef VERSION_BW1W100
	// BW1W120 00625190 BW1M119 null
	void SetMyPlayerName(wchar_t* name);
#endif
	// BW1W120 00622a00 BW1M119 013a0230
	void ResetClans();
	// BW1W120 00625420 BW1M119 0139b8a0
	void D_SendOutPlayerProfile();
	// BW1W120 00622dc0 BW1M119 0139fe40
	MPFEPlayerDetails* GetPlayerDetailsFromName(wchar_t* name);
	// BW1W120 00622ee0 BW1M119 0139fbf0
	MPFEPlayerDetails* GetPlayerDetailsFromID(LH_USER_ID id);
	// BW1W120 006251e0 BW1M119 0139bbd0
	MPFEPlayerDetails* GetLowestNumberedPlayer();
	// BW1W120 006252b0 BW1M119 0139bdb0
	MPFEPlayerDetails* GetHighestNumberedPlayer();
	// BW1W120 006203d0 BW1M119 01393090
	void D2A_UpdateThumbnail(unsigned long id);
	// BW1W120 006239a0 BW1M119 0139e5c0
	void A2D_RequestForClanDetails(wchar_t* name);
	// BW1W120 006239c0 BW1M119 0139e520
	void A2D_RequestForPlayerDetails(wchar_t* name);
	// BW1W120 00622e60 BW1M119 0139fcd0
	MPFEPlayerDetails* GetPlayerDetailsFromDatabaseID(LH_USER_ID id);
	// BW1W120 00620770 BW1M119 01392db0
	void D2A_YouWereKickedGame(wchar_t* name);
	// BW1W120 006206a0 BW1M119 01392e50
	void D2A_YouWereKicked(wchar_t* name);
	// BW1W120 00620500 BW1M119 01392f00
	void D2A_PlayerDeniedJoin(wchar_t* name);
#if !defined(VERSION_BW1W100)
	// BW1W120 006205d0 BW1M119 null
	void D2A_KickFailed(wchar_t* name);
#endif
#if !defined(VERSION_BW1W100)
	// BW1W120 006208b0 BW1M119 null
	void D2A_UpdateClanSymbol(unsigned long id);
#endif
	// BW1W120 006208c0 BW1M119 01392c60
	void D2A_RefreshTeams();
	// BW1W120 006208d0 BW1M119 01392c00
	void D2A_RefreshMaps();
	// BW1W120 006208e0 BW1M119 01392ba0
	void D2A_RefreshPlayerDetails();
	// BW1W120 006200b0 BW1M119 01393130
	void D2A_IncomingChatString(wchar_t* from, wchar_t* text, bool is_private, bool is_team, bool highlight);
	// BW1W120 006208f0 BW1M119 01392b00
	void D2A_CouldNotQueryDatabase();
#if !defined(VERSION_BW1W100)
	// BW1W120 00620990 BW1M119 null
	void D2A_NotFoundInDatabase();
#endif
	// BW1W120 00620ae0 BW1M119 013929c0
	void D2A_CouldNotDownloadThumb();
	// BW1W120 00620b80 BW1M119 01392910
	void D2A_PersonCouldNotDownload(wchar_t* name);
#if !defined(VERSION_BW1W100)
	// BW1W120 00620c50 BW1M119 null
	void D2A_PersonStillDownloading(wchar_t* name);
#endif
	// BW1W120 00620d20 BW1M119 01392890
	void D2A_DisableStartGameButton();
	// BW1W120 00620d40 BW1M119 01392810
	void D2A_EnableStartGameButton();
#if !defined(VERSION_BW1W100)
	// BW1W120 00620d60 BW1M119 null
	void D2A_WaitingForStartReplies();
#endif
	// BW1W120 00620e00 BW1M119 01392720
	void D2A_TransferringFiles();
	// BW1W120 00620f10 BW1M119 01392680
	void D2A_HostWaitStart();
	// BW1W120 00620fb0 BW1M119 013925e0
	void D2A_ClientWaitStart();
	// BW1W120 00621050 BW1M119 01392160
	void D2A_CouldNotStartBecauseOtherPeopleDownloading();
	// BW1W120 006211a0 BW1M119 013920b0
	void D2A_CouldNotStartBecauseIAmDownloading();
#if !defined(VERSION_BW1W100)
	// BW1W120 00621240 BW1M119 null
	void D2A_CouldNotStartBecauseNoMapSelected();
#endif
	// BW1W120 006212e0 BW1M119 01392010
	void D_CreatureErrorMessage();
	// BW1W120 00621380 BW1M119 01391c40
	void D_CreatureUploadedNextTime();
	// BW1W120 006241f0 BW1M119 0139d6f0
	void D_PlayerJoined(const char* nick, LH_USER_ID id);
	// BW1W120 006244a0 BW1M119 0139cad0
	void D_PlayerLeft(LH_USER_ID id, wchar_t* name);
	// BW1W120 00624b50 BW1M119 0139c660
	void D_IJoinedRoom(const wchar_t* name, bool host, LH_USER_ID id);
	// BW1W120 00624df0 BW1M119 0139c5c0
	void D_FinishedPlayerEnumeration(int count);
	// BW1W120 00624f20 BW1M119 0139bfb0
	void D_EnumeratingPlayersAdd(const char* nick, bool host, LH_USER_ID id);
#ifndef VERSION_BW1W100
	// BW1W120 00624a00 BW1M119 null
	void D_PlayerChangedNick(const char* old_nick, const char* new_nick);
#endif
	// BW1W120 00626020 BW1M119 0139a880
	LandscapeDetails* A2D_GetLandscapeDetailsFromID(unsigned long id);
	// BW1W120 00626080 BW1M119 0139a6b0
	void D_GotThumbnail();
	// BW1W120 006260d0 BW1M119 0139a640
	void D_GotMapfile();
	// BW1W120 00625880 BW1M119 0139ac40
	void D_StartGameSession(char* session_name);
	// BW1W120 00625d30 BW1M119 0139a8f0
	void D_DecodeFilesAndSetupPlayersForSession();
	// BW1W120 00626230 BW1M119 0139a1a0
	uint64_t GetMapChecksum(unsigned long map_id);
	// BW1W120 00626360 BW1M119 01399ee0
	uint64_t GetOOSChecksum();
	// BW1W120 00626420 BW1M119 01399e50
	bool D_GotSelectedMapFile();
	// BW1W120 00622f20 BW1M119 0139f960
	void A2D_SendChat(wchar_t* name, wchar_t* text, bool is_private);
	// BW1W120 00623200 BW1M119 0139f2e0
	void A2D_KickPlayerFromTeam(wchar_t* name);
	// BW1W120 00623310 BW1M119 0139ef90
	void A2D_InvitePlayer(wchar_t* name);
	// BW1W120 00623590 BW1M119 0139e930
	void A2D_SetClan(MPFEClanDetails* clan);
	// BW1W120 00623820 BW1M119 0139e7e0
	void A2D_SetMap(unsigned long map_id);
	// BW1W120 00623910 BW1M119 0139e710
	void D_ReOrganizeTeams(unsigned long num_teams);
	// BW1W120 00623980 BW1M119 0139e640
	void A2D_GetThumbnail(unsigned long map_id);
	// BW1W120 006239e0 BW1M119 0139dc70
	void ProcessDaniel();
	// BW1W120 006240f0 BW1M119 0139db50
	void CheckForUnpureClients();
	// BW1W120 00624160 BW1M119 0139db20
	void ProcessAlex();
	// BW1W120 00624e60 BW1M119 0139c4c0
	void D_ReShuffle(MPFEPlayerDetails* player);
	// BW1W120 00625150 BW1M119 0139bf30
	void D_RecomputeNumPlayers();
	// BW1W120 006255c0 BW1M119 0139b140
	void A2D_StartGame();
	// BW1W120 00626040 BW1M119 0139a750
	LandscapeDetails* A2D_GetNextLandscape(LandscapeDetails* details);
	// BW1W120 00624ed0 BW1M119 0139c410
	void D_ReShuffleTeam(MPFEPlayerDetails* player, TeamEnums team);
	// BW1W120 00625270 BW1M119 0139bd10
	MPFEPlayerDetails* GetHighestNumberedPlayerInTeam(TeamEnums team);
	// BW1W120 00625340 BW1M119 0139bb30
	MPFEPlayerDetails* GetLowestNumberedPlayerInTeam(TeamEnums team);
#ifndef VERSION_BW1W100
	// BW1W120 00625380 BW1M119 null
	bool IsAnyPlayerFlagged();
#endif
#ifndef VERSION_BW1W100
	// BW1W120 006253d0 BW1M119 null
	void A2D_RejectJoinRequest(TeamEnums team, wchar_t* name);
#endif
	// BW1W120 00626490 BW1M119 01399b50
	void D_UpdateBoxClans();
#ifndef VERSION_BW1W100
	// BW1W120 00624170 BW1M119 null
	void D_UpdateBoxCaption();
#endif
	// BW1W120 00624de0 BW1M119 null
	void D_BeginPlayerEnumeration();
	// BW1W120 00626180 BW1M119 null
	void D_GetPlayerInfoFromDatabase(MPFEPlayerDetails* player);
	// BW1W120 006261b0 BW1M119 0139a5a0
	void D_GetPlayerClanInfoFromDatabase(MPFEPlayerDetails* player);
#ifndef VERSION_BW1W100
	// BW1W120 006260f0 BW1M119 null
	void D_StopQueries();
#endif
#ifndef VERSION_BW1W100
	// BW1W120 00626110 BW1M119 null
	void D_StopDatabaseQuery();
#endif
#ifndef VERSION_BW1W100
	// BW1W120 00626140 BW1M119 null
	void D_StopClanQueries();
#endif
	// BW1W120 006261e0 BW1M119 0139a4e0
	void D_RefreshDatabaseQueries();
	// BW1W120 00626450 BW1M119 01399bb0
	void D_RefreshPlayerClans();
	// BW1W120 00622ff0 BW1M119 0139f5f0
	void A2D_JoinTeam(TeamEnums team);
	// BW1W120 00623180 BW1M119 0139f4f0
	void A2D_PlayerReplyToJoinRequest(wchar_t* name, bool accept, TeamEnums team);
	// BW1W120 00623470 BW1M119 0139ec90
	void A2D_PlayerReplyToInvite(wchar_t* name, bool accept, TeamEnums team);
	// BW1W120 00620410 BW1M119 01392fb0
	void D2A_PlayerRequestToJoinTeam(TeamEnums team, wchar_t* name);
	// BW1W120 006207c0 BW1M119 01392ce0
	void D2A_YouHaveBeenInvited(TeamEnums team, wchar_t* name);
};

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static_assert(sizeof(MPFEData) == 0x1840, "MPFEData size is incorrect");
#elif defined(VERSION_BW1WCI)
static_assert(sizeof(MPFEData) == 0x1750, "MPFEData size is incorrect");
#else
static_assert(sizeof(MPFEData) == 0x1740, "MPFEData size is incorrect");
#endif

#endif /* BW1_DECOMP_MPFE_DATA_INCLUDED_H */
