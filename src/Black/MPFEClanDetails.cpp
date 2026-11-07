#include "CellSize.h" /* For CellSize */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include "MPFEClanDetails.h"

#include <stdio.h>  /* For swprintf, swscanf */
#include <stdlib.h> /* For atoi, atof */
#include <string.h> /* For strcpy, strlen, wcscat, wcscpy, wcslen */

#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For NEW */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>       /* For LHSPrintf, LHSPrintfW */

#include <chlasm/HelpTextEnums.h>

#include "ChannelBox.h"            /* For ChannelBox::UpdateAll */
#include "FrontEnd.h"              /* For WCHAR2CHAR */
#include "HelpText.h"              /* For HelpTextDataBase::HelpTextDatabase */
#include "LHNetBase.h"             /* For LHNetBase::Instance */
#include "MPFEChangeClanRequest.h" /* For MPFEChangeClanRequest */
#include "MPFEChannelDetails.h"    /* For struct MPFEChannelDetails */
#include "MPFEClanList.h"          /* For MPFEClanList */
#include "MPFEData.h"              /* For MPFEData::Data */
#include "MPFENumberCodec.h"       /* For MPFENumberCodec */
#include "MPFEPlayerDetails.h"     /* For struct MPFEPlayerDetails */
#include "MPFEResetClan.h"         /* For MPFEResetClan */

#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedListIterator */

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#define MPFE_CLAN_DETAILS_QUERY "CLANGETINFO2 NULL,%u"
#else
#define MPFE_CLAN_DETAILS_QUERY "CLANGETINFO NULL,%u"
#endif

#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 200 ? 3 : (line) < 264 ? 14 : 25))
#endif

void MPFEClanDetails::Refresh()
{
	if (!Queried && !Querying)
	{
		Queried = true;
		Querying = true;
		if (db_execute_transaction_async(&Query, LHSPrintf(MPFE_CLAN_DETAILS_QUERY, ID), LHNetBase::Instance.User,
		                                 NULL) == DBSTATUS_ERROR)
		{
			Queried = true;
			Querying = false;
		}
	}
	else if (Querying)
	{
		DBSTATUS status = db_get_status_async(&Query);
		if (status == DBSTATUS_COMPLETE)
		{
			Querying = false;
			unsigned long rows;
			unsigned long columns;
			char**        table;
			db_get_result(&Query, &columns, &rows, &table);
			if (rows > 0)
			{
				if (atoi(table[0]) >= 0)
				{
					strcpy(LeaderName, table[2]);
					if (strlen(table[3]) != 0)
					{
						LHWebDecode(table[3], strlen(table[3]), &Bitmap, &BitmapLength);
					}
					else
					{
						Bitmap = NULL;
						BitmapLength = 0;
					}
					wcscpy(Motto, CHAR2WCHAR(table[5]));
					strcpy(WebAddress, table[6]);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
					Rating = atof(table[7]);
#endif
					HaveInfo = true;
					MPFEData::Data.D2A_RefreshPlayerDetails();
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
					MPFEData::Data.ActiveDialog->UpdateAll();
#endif
				}
				db_free_data(table);
			}
			Query.Reset();
		}
		else if (status == DBSTATUS_ERROR)
		{
			Querying = false;
			Query.Reset();
		}
	}
}

MPFEClanList::MPFEClanList()
{
	LHLinkedList<char*>          clanNames;
	LHLinkedList<unsigned long*> clanIDs;
	LHLinkedList<unsigned long*> teamNumbers;
	unsigned long                numClans = 0;
	for (unsigned long team = 1; team < MPFEData::Data.CurrentChannel->NumTeams + 1; team++)
	{
		if (MPFEData::Data.TeamDetails[team].ClanID != 0)
		{
			unsigned long* clanID = NEW(99) unsigned long(MPFEData::Data.TeamDetails[team].ClanID);
			unsigned long* teamNumber = NEW(100) unsigned long(team);
			clanIDs.AddToEnd(clanID);
			teamNumbers.AddToEnd(teamNumber);
			char* clanName = NEW(103) char[0x28];
			strcpy(clanName, WCHAR2CHAR(MPFEData::Data.TeamDetails[team].Name));
			clanNames.AddToEnd(clanName);
			numClans++;
		}
	}
	Message = NEW(109) wchar_t[numClans * 45 + 10];
	swprintf(Message, L"%c%u:", GetMessageCode(SPECIAL_MESSAGE_TYPE_CLAN_LIST), numClans);
	for (unsigned long i = 0; i < numClans; i++)
	{
		char*           clanName = clanNames.GetAtPosition(i);
		unsigned long*  clanID = clanIDs.GetAtPosition(i);
		unsigned long*  teamNumber = teamNumbers.GetAtPosition(i);
		MPFENumberCodec clanCodec(*clanID);
		MPFENumberCodec teamCodec(*teamNumber);
		wchar_t*        clanText = LHSPrintfW(L"%s", CHAR2WCHAR(clanCodec.GetString()));
		wchar_t*        teamText = LHSPrintfW(L"%s", CHAR2WCHAR(teamCodec.GetString()));
		wchar_t         entry[45];
		swprintf(entry, L"%s:%s:%s:", teamText, clanText, CHAR2WCHAR(clanName));
		wcscat(Message, entry);
	}
	clanIDs.DeleteAll();
	clanNames.DeleteAll();
	teamNumbers.DeleteAll();
}

void MPFEClanList::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	MPFEData::Data.ResetClans();
	unsigned long numClans;
	swscanf(message, L"%u:", &numClans);
	unsigned long length = wcslen(message);
	for (unsigned long i = 0; i < length; i++)
	{
		if (message[i] == L':')
		{
			message[i] = L'\0';
		}
	}
	message += 2;
	for (unsigned long clan = 0; clan < numClans; clan++)
	{
		wchar_t teamText[4];
		wchar_t clanText[4];
		wchar_t clanName[0x28];
		wcscpy(teamText, message);
		message += wcslen(message) + 1;
		wcscpy(clanText, message);
		message += wcslen(message) + 1;
		wcscpy(clanName, message);
		message += wcslen(message) + 1;
		MPFENumberCodec  teamCodec(WCHAR2CHAR(teamText));
		MPFENumberCodec  clanCodec(WCHAR2CHAR(clanText));
		unsigned long    teamNumber = teamCodec.Number;
		unsigned long    clanID = clanCodec.Number;
		MPFETeamDetails* team = &MPFEData::Data.TeamDetails[teamNumber];
		team->ClanID = clanID;
		if (clanID > 0 && teamNumber != TEAM_UNASSIGNED && teamNumber != TEAM_NONE)
		{
			MPFEPlayerDetails* player = MPFEData::Data.GetHighestNumberedPlayerInTeam((TeamEnums)teamNumber);
			if (player != NULL)
			{
				player->Clan = NULL;
				for (LHLinkedNode<MPFEClanDetails*>* node = player->Clans.GetStart(); node != NULL;
				     node = node->next.Get())
				{
					if (node->payload->ID == clanID)
					{
						player->Clan = node->payload;
						break;
					}
				}
			}
		}
		wcscpy(team->Name, clanName);
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	for (int teamIndex = 0; teamIndex < MPFEData::MAX_TEAMS; teamIndex++)
	{
		for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[teamIndex]); it.MoreToDo(); it++)
		{
			it.Get()->Ready = false;
		}
	}
#endif
	MPFEData::Data.D2A_RefreshTeams();
}

MPFEChangeClanRequest::MPFEChangeClanRequest(unsigned long clan_id, wchar_t* clan_name)
{
	Message = NEW(200) wchar_t[100];
	swprintf(Message, L"%c%u:%s", GetMessageCode(SPECIAL_MESSAGE_TYPE_CHANGE_CLAN_REQUEST), clan_id, clan_name);
}

void MPFEChangeClanRequest::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	wchar_t* name = message;
	if (from->IsTeamLeader && from->Team != TEAM_UNASSIGNED && MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		MPFETeamDetails* team = &MPFEData::Data.TeamDetails[from->Team];
		team->ClanSetByID = from->DatabaseID;
		unsigned long clanID;
		swscanf(message, L"%u:", &clanID);
		if (clanID != 0)
		{
			for (unsigned long other = 1; other < MPFEData::Data.CurrentChannel->NumTeams + 1; other++)
			{
				if (other != from->Team && clanID == MPFEData::Data.TeamDetails[other].ClanID)
				{
					return;
				}
			}
		}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		for (int teamIndex = 0; teamIndex < MPFEData::MAX_TEAMS; teamIndex++)
		{
			for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[teamIndex]); it.MoreToDo();
			     it++)
			{
				it.Get()->Ready = false;
			}
		}
#endif
		team->ClanID = clanID;
		if (clanID != 0)
		{
			for (unsigned long i = 0; i < wcslen(message); i++)
			{
				if (message[i] == L':')
				{
					name = &message[i + 1];
					break;
				}
			}
			wcscpy(team->Name, name);
		}
		else
		{
			swprintf(team->Name, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_63),
			         MPFEData::Data.GetLocalPlayer()->Team);
			MPFEResetClan reset(from->Team);
			reset.Send(NULL);
		}
		MPFEData::Data.D2A_RefreshTeams();
		MPFEData::Data.ClansChanged = true;
	}
}

MPFEResetClan::MPFEResetClan(unsigned long team)
{
	Message = NEW(264) wchar_t[10];
	swprintf(Message, L"%c%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_RESET_CLAN), team);
	MPFETeamDetails* details = &MPFEData::Data.TeamDetails[team];
	details->ClanID = 0;
#ifdef VERSION_BW1WCI
	if (team == TEAM_NONE)
	{
		wcscpy(details->Name, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_137));
	}
	else
#endif
	{
		wchar_t* format = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_64);
		wcscpy(details->Name, LHSPrintfW(format, team));
	}
	MPFEData::Data.D2A_RefreshTeams();
}

void MPFEResetClan::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (!MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		unsigned long team;
		swscanf(message, L"%u", &team);
		MPFETeamDetails* details = &MPFEData::Data.TeamDetails[team];
		details->ClanID = 0;
#ifdef VERSION_BW1WCI
		if (team == TEAM_NONE)
		{
			wcscpy(details->Name, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_137));
		}
		else
#endif
		{
			wchar_t* format = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_64);
			wcscpy(details->Name, LHSPrintfW(format, team));
		}
		MPFEData::Data.D2A_RefreshTeams();
	}
}
