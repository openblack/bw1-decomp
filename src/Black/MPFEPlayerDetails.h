#ifndef BW1_DECOMP_MPFE_PLAYER_DETAILS_INCLUDED_H
#define BW1_DECOMP_MPFE_PLAYER_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <wchar.h>  /* For wchar_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>       /* For class LHLinkedList */
#include <Lionhead/LHMultiplayer/ver4.0/LHDatabase.h> /* For struct DBInfo */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>  /* For struct LH_USER_ID */

#include "MPFEData.h" /* For enum TeamEnums */

#define MPFE_PLAYER_DETAILS_DEFAULT_COUNTRY    "en"
#define MPFE_PLAYER_DETAILS_DEFAULT_BW_VERSION 102
#define MPFE_MAX_PLAYERS_PER_TEAM              4

class MPFEClanDetails;

class MPFETitleData
{
public:
	wchar_t* Data;  /* 0x0 */
	wchar_t* Title; /* 0x4 */

	// BW1W120 006326a0 BW1M119 inlined
	MPFETitleData(wchar_t* title, wchar_t* data);
	// BW1W120 00632710 BW1M119 013b0850
	~MPFETitleData();
	// BW1W120 00632730 BW1M119 013b0810
	wchar_t* GetData();
	// BW1W120 00632740 BW1M119 013b07d0
	wchar_t* GetTitle();
};

static_assert(sizeof(MPFETitleData) == 0x8, "MPFETitleData size is incorrect");

struct MPFEPlayerDetails
{
	wchar_t       Name[0x80];
	bool          IsHost;       /* 0x100 */
	int           PlayerNumber; /* 0x104 */
	unsigned long ID;           /* 0x108 */
	unsigned long JoinTime;     /* 0x10c */
	TeamEnums     Team;         /* 0x110 */
	unsigned long TeamNumber;   /* 0x114 */
	bool          IsTeamLeader; /* 0x118 */
	bool          field_0x119;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	bool HasCreature; /* 0x11a */
#endif
	int Ping; /* 0x11c */
#if defined(VERSION_BW1W100)
	LH_USER_ID DatabaseID; /* 0x120 */
#elif defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
	bool       ReceivedDatabaseID; /* 0x120 */
	LH_USER_ID DatabaseID;         /* 0x124 */
#else
	bool       ReceivedDatabaseID; /* 0x120 */
	bool       Ready;
	uint8_t    field_0x122[0x6];
	LH_USER_ID DatabaseID; /* 0x128 */
#endif
	LHLinkedList<MPFEClanDetails*> Clans;
	MPFEClanDetails*               Clan;
	bool                           ClanQuerying;
	bool                           ClanQueried;
	DBInfo                         ClanQuery;
	bool                           PlayerQuerying;
	bool                           PlayerQueried;
	DBInfo                         PlayerQuery;
	LHLinkedList<MPFETitleData*>   Titles;

	// BW1W120 006317c0 BW1M119 013b2150
	MPFEPlayerDetails(wchar_t* name, bool is_host);
	// BW1W120 00631940 BW1M119 013b1fe0
	~MPFEPlayerDetails();
	// BW1W120 00631a80 BW1M119 013b1e90
	void QueryPlayer();
	// BW1W120 00631b80 BW1M119 013b1950
	void RefreshPlayerQuery();
	// BW1W120 00631da0 BW1M119 inlined
	void ResetPlayerQuery();
	// BW1W120 00631db0 BW1M119 013b1850
	void QueryClans();
	// BW1W120 00631e50 BW1M119 inlined
	void StopClanQuery();
	// BW1W120 00631e70 BW1M119 013b1200
	void RefreshClanQuery();
	// BW1W120 006321a0 BW1M119 013b0f50
	void FillDetails(TeamEnums team, unsigned long team_number, unsigned long player_number);
	// BW1W120 00632350 BW1M119 013b09f0
	void AssignToTeam(TeamEnums team);
	// BW1W120 00632620 BW1M119 013b0930
	void AssignToBestFitTeam();
	// BW1W120 00632670 BW1M119 013b08f0
	wchar_t* GetName();
};

#if defined(VERSION_BW1W100)
static_assert(sizeof(MPFEPlayerDetails) == 0x1d8, "MPFEPlayerDetails size is incorrect");
#elif defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
static_assert(sizeof(MPFEPlayerDetails) == 0x1dc, "MPFEPlayerDetails size is incorrect");
#else
static_assert(sizeof(MPFEPlayerDetails) == 0x1e0, "MPFEPlayerDetails size is incorrect");
#endif

// BW1W120 006325d0 BW1M119 013b0e30
bool operator<(MPFEPlayerDetails& a, MPFEPlayerDetails& b);

#endif /* BW1_DECOMP_MPFE_PLAYER_DETAILS_INCLUDED_H */
