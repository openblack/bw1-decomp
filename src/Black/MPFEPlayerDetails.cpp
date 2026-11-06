#include "MPFEPlayerDetails.h"

#include <stdlib.h> /* For atoi */
#include <string.h> /* For strcpy */
#include <wchar.h>  /* For wcscpy, wcslen */
#include <windows.h>
#include <mmsystem.h> /* For timeGetTime */

#include <Lionhead/LH3DLib/development/LH3DText.h>    /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHWin.h>              /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>          /* For LHSPrintf, LHSPrintfW */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h> /* For LHGetInstalledBWVersion */

#include "ColourConstants.h"    /* For White */
#include "LHNetBase.h"          /* For LHNetBase::Instance */
#include "MPFEChannelDetails.h" /* For struct MPFEChannelDetails */
#include "MPFEClanDetails.h"    /* For class MPFEClanDetails */
#include "MPFEData.h"           /* For MPFEData::Data */

#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h> /* For class LHLinkedListIterator */

#if defined(VERSION_BW1W100)
#define MPFE_PLAYER_DETAILS_TITLE_LINE      90
#define MPFE_PLAYER_DETAILS_CLAN_LINE       167
#define MPFE_PLAYER_DETAILS_TITLE_DATA_LINE 329
#elif defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
#define MPFE_PLAYER_DETAILS_TITLE_LINE      91
#define MPFE_PLAYER_DETAILS_CLAN_LINE       168
#define MPFE_PLAYER_DETAILS_TITLE_DATA_LINE 330
#else
#define MPFE_PLAYER_DETAILS_TITLE_LINE      91
#define MPFE_PLAYER_DETAILS_CLAN_LINE       166
#define MPFE_PLAYER_DETAILS_TITLE_DATA_LINE 327
#endif

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#define MPFE_PLAYER_DETAILS_QUERY "PLAYERGETDETAILS2 %u,\"%s\",%u"
#else
#define MPFE_PLAYER_DETAILS_QUERY "PLAYERGETDETAILS %u,\"%s\",%u"
#endif

#if defined(VERSION_BW1W100)
#define MPFE_PLAYER_DETAILS_FILE "C:\\dev\\black\\MPFEPlayerDetails.cpp"
#elif defined(VERSION_BW1W110)
#define MPFE_PLAYER_DETAILS_FILE "C:\\dev\\Black\\MPFEPlayerDetails.cpp"
#elif defined(VERSION_BW1W130)
#define MPFE_PLAYER_DETAILS_FILE "D:\\Work\\Games\\dd\\Black\\MPFEPlayerDetails.cpp"
#elif defined(VERSION_BW1WCI)
#define MPFE_PLAYER_DETAILS_FILE "C:\\dev\\black\\MPFEPlayerDetails.cpp"
#else
#define MPFE_PLAYER_DETAILS_FILE "C:\\dev\\MP\\Black\\MPFEPlayerDetails.cpp"
#endif

MPFEPlayerDetails::MPFEPlayerDetails(wchar_t* name, bool is_host)
{
	wcscpy(Name, name);
	IsHost = is_host;
	IsTeamLeader = false;
	field_0x119 = false;
	PlayerNumber = -1;
	ID = 0;
	TeamNumber = -1;
	Clan = NULL;
	PlayerQuerying = false;
	ClanQuerying = false;
	ClanQueried = false;
	PlayerQueried = false;
#ifndef VERSION_BW1W100
	ReceivedDatabaseID = false;
#endif
	JoinTime = timeGetTime();
	Team = TEAM_UNASSIGNED;
}

MPFEPlayerDetails::~MPFEPlayerDetails()
{
	Titles.DeleteAll();
	Clans.DeleteAll();
	if (ClanQuerying)
	{
		ClanQuery.Reset();
	}
	if (PlayerQuerying)
	{
		PlayerQuery.Reset();
	}
}

void MPFEPlayerDetails::QueryPlayer()
{
	if (!PlayerQueried)
	{
		if (!PlayerQuerying)
		{
			unsigned long version;
			char          country[LH_DATABASE_LANGUAGE_LENGTH];
			if (LHGetInstalledBWVersion(&version, country) == LH_FAIL)
			{
				strcpy(country, MPFE_PLAYER_DETAILS_DEFAULT_COUNTRY);
				version = MPFE_PLAYER_DETAILS_DEFAULT_BW_VERSION;
			}
			unsigned long id = DatabaseID.Number;
			if (db_execute_transaction_async(&PlayerQuery, LHSPrintf(MPFE_PLAYER_DETAILS_QUERY, id, country, version),
			                                 LHNetBase::Instance.User, NULL) == DBSTATUS_ERROR)
			{
				MPFEData::Data.D2A_CouldNotQueryDatabase();
				PlayerQueried = true;
				PlayerQuery.Reset();
			}
			else
			{
				PlayerQuerying = true;
			}
		}
	}
	else if (!PlayerQuerying)
	{
		MPFEData::Data.D2A_RefreshPlayerDetails();
	}
}

void MPFEPlayerDetails::RefreshPlayerQuery()
{
	if (!PlayerQuerying)
	{
		return;
	}

	DBSTATUS status = db_get_status_async(&PlayerQuery);
	if (status == DBSTATUS_COMPLETE)
	{
		PlayerQuerying = false;
		PlayerQueried = true;

		unsigned long columns;
		unsigned long rows;
		char**        table;
		if (db_get_result(&PlayerQuery, &columns, &rows, &table) == LH_OK)
		{
			Titles.DeleteAll();
			for (unsigned long i = 0; i < rows; i++)
			{
				MPFETitleData* title = new (MPFE_PLAYER_DETAILS_FILE, MPFE_PLAYER_DETAILS_TITLE_LINE)
					MPFETitleData(LHSPrintfW(L"%s", CHAR2WCHAR(table[i * columns])),
				                  LHSPrintfW(L"%s", CHAR2WCHAR(table[i * columns + 1])));
				Titles.AddToEnd(title);
			}
			if (rows > 0)
			{
				MPFEData::Data.D2A_RefreshPlayerDetails();
				db_free_data(table);
			}
			PlayerQuery.Reset();
		}
		else
		{
			ResetPlayerQuery();
			PlayerQuerying = false;
			MPFEData::Data.D2A_CouldNotQueryDatabase();
		}
	}
	else if (status == DBSTATUS_ERROR)
	{
		PlayerQuerying = false;
		PlayerQueried = true;
		PlayerQuery.Reset();
		MPFEData::Data.D2A_CouldNotQueryDatabase();
	}
}

void MPFEPlayerDetails::ResetPlayerQuery()
{
	PlayerQuery.Reset();
}

void MPFEPlayerDetails::QueryClans()
{
	if (!ClanQueried)
	{
		unsigned long id = DatabaseID.Number;
		if (db_execute_transaction_async(&ClanQuery, LHSPrintf("GETCLANLIST %u", id), LHNetBase::Instance.User, NULL) ==
		    DBSTATUS_ERROR)
		{
			MPFEData::Data.D2A_CouldNotQueryDatabase();
			ClanQueried = true;
			ClanQuery.Reset();
		}
		else
		{
			ClanQuerying = true;
		}
	}
	else if (!ClanQuerying)
	{
		MPFEData::Data.D_UpdateBoxClans();
	}
}

void MPFEPlayerDetails::StopClanQuery()
{
	ClanQuery.Reset();
	ClanQuerying = false;
}

void MPFEPlayerDetails::RefreshClanQuery()
{
	if (!ClanQuerying)
	{
		return;
	}

	DBSTATUS status = db_get_status_async(&ClanQuery);
	if (status == DBSTATUS_COMPLETE)
	{
		ClanQuerying = false;
		ClanQueried = true;

		unsigned long columns;
		unsigned long rows;
		char**        table;
		if (db_get_result(&ClanQuery, &columns, &rows, &table) == LH_OK)
		{
			Clans.DeleteAll();
			for (unsigned long i = 0; i < rows; i++)
			{
#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
				if (atoi(table[i * columns]) == 0)
				{
					continue;
				}
#endif
				MPFEClanDetails* clan = new (MPFE_PLAYER_DETAILS_FILE, MPFE_PLAYER_DETAILS_CLAN_LINE) MPFEClanDetails;
				clan->ID = atoi(table[i * columns]);
				wcscpy(clan->Name, CHAR2WCHAR(table[i * columns + 1]));
				clan->IsLeader = table[i * columns + 2][0] == '1';
				Clans.Add(clan);
			}
			if (rows > 0)
			{
				MPFEData::Data.D_UpdateBoxClans();
				db_free_data(table);
			}
			ClanQuery.Reset();
		}
		else
		{
			ClanQuery.Reset();
			MPFEData::Data.D2A_CouldNotQueryDatabase();
		}
		MPFEData::Data.D2A_RefreshPlayerDetails();
	}
	else if (status == DBSTATUS_ERROR)
	{
		ClanQuerying = false;
		ClanQueried = true;
	}
}

void MPFEPlayerDetails::FillDetails(TeamEnums team, unsigned long team_number, unsigned long player_number)
{
	if (MPFEData::Data.UnassignedPlayers.IsThisInList(this))
	{
		MPFEData::Data.UnassignedPlayers.Remove(this);
	}
	else
	{
		MPFEData::Data.Teams[Team].Remove(this);
	}
	Team = team;
	TeamNumber = team_number;
	PlayerNumber = player_number;
	MPFEData::Data.Teams[team].Insert(this);
	IsTeamLeader = team_number == MPFE_TEAM_LEADER_NUMBER;
	if (Team == TEAM_NONE)
	{
		IsTeamLeader = false;
	}
	IsHost = player_number == MPFE_HOST_PLAYER_NUMBER;
}

void MPFEPlayerDetails::AssignToTeam(TeamEnums team)
{
	if (Team == team || team == TEAM_UNASSIGNED)
	{
		return;
	}
	if (team != TEAM_NONE && MPFEData::Data.Teams[team].GetSize() >= MPFE_MAX_PLAYERS_PER_TEAM)
	{
		return;
	}

	if (Team != TEAM_UNASSIGNED)
	{
		MPFEData::Data.Teams[Team].Remove(this);
		MPFEData::Data.D_ReShuffleTeam(this, Team);
	}
	else if (MPFEData::Data.UnassignedPlayers.IsThisInList(this))
	{
		MPFEData::Data.UnassignedPlayers.Remove(this);
	}

	MPFEPlayerDetails* highest = MPFEData::Data.GetHighestNumberedPlayerInTeam(team);
	if (highest != NULL)
	{
		TeamNumber = highest->TeamNumber + 1;
		IsTeamLeader = false;
	}
	else
	{
		TeamNumber = MPFE_TEAM_LEADER_NUMBER;
		if (team != TEAM_NONE)
		{
			IsTeamLeader = true;
		}
		else
		{
			IsTeamLeader = false;
		}
	}
	Team = team;
	MPFEData::Data.Teams[team].Insert(this);

	if (this == MPFEData::Data.GetLocalPlayer())
	{
		MPFEData::Data.Invites.DeleteAll();
	}

	unsigned long* request = NULL;
	for (LHLinkedListIterator<unsigned long*> it = MPFEData::Data.TeamJoinRequests.GetStart(); it; it++)
	{
		if (*it.Get() == team)
		{
			request = it.Get();
			break;
		}
	}
	if (request != NULL)
	{
		MPFEData::Data.TeamJoinRequests.Remove(request);
		delete request;
	}
}

inline bool operator<(MPFEPlayerDetails& a, MPFEPlayerDetails& b)
{
	if (a.Team != b.Team && a.Team != TEAM_UNASSIGNED)
	{
		return a.PlayerNumber < b.PlayerNumber;
	}
	return a.TeamNumber < b.TeamNumber;
}

void MPFEPlayerDetails::AssignToBestFitTeam()
{
	TeamEnums team = TEAM_UNASSIGNED;
	for (unsigned long i = 1; i <= MPFEData::Data.CurrentChannel->NumTeams; i++)
	{
		if (MPFEData::Data.Teams[i].GetSize() == 0)
		{
			team = (TeamEnums)i;
			break;
		}
	}
	if (team == TEAM_UNASSIGNED)
	{
		team = TEAM_NONE;
	}
	AssignToTeam(team);
	MPFEData::Data.D2A_RefreshTeams();
}

wchar_t* MPFEPlayerDetails::GetName()
{
	return Name;
}

MPFETitleData::MPFETitleData(wchar_t* title, wchar_t* data)
{
	Title = new (MPFE_PLAYER_DETAILS_FILE, MPFE_PLAYER_DETAILS_TITLE_DATA_LINE) wchar_t[wcslen(title) + 1];
	Data = new (MPFE_PLAYER_DETAILS_FILE, MPFE_PLAYER_DETAILS_TITLE_DATA_LINE + 1) wchar_t[wcslen(data) + 1];
	wcscpy(Title, title);
	wcscpy(Data, data);
}

MPFETitleData::~MPFETitleData()
{
	delete Title;
	delete Data;
}

wchar_t* MPFETitleData::GetData()
{
	return Data;
}

wchar_t* MPFETitleData::GetTitle()
{
	return Title;
}
