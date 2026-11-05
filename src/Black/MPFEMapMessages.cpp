#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include "CellSize.h" /* For CellSize, ahead of PI in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#endif
#include "ColourConstants.h" /* For White */
#include "MPFEMessageObject.h"

#include <stdio.h>  /* For swprintf, swscanf */
#include <string.h> /* For wcscat, wcscpy, wcslen */

#include <Lionhead/LH3DLib/development/LH3DText.h> /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>       /* For LHSPrintfW */

#include "LandscapeDetails.h"      /* For struct LandscapeDetails */
#include "MPFEChangedMapMessage.h" /* For MPFEChangedMapMessage */
#include "MPFEChannelDetails.h"    /* For struct MPFEChannelDetails */
#include "MPFEData.h"              /* For MPFEData::Data */
#include "MPFEMapErrorMessage.h"   /* For MPFEMapErrorMessage */
#include "MPFEPlayerDetails.h"     /* For struct MPFEPlayerDetails */

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <string> /* For std::string */

#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedListIterator */

#include "alexmfc.h"           /* For SetupList::DeleteAll */
#include "ChannelBox.h"        /* For ChannelBox::UpdateAll */
#include "Game.h"              /* For GGame::g_game */
#include "WinConditionSetup.h" /* For SetupWinConditions */
#endif

MPFEChangedMapMessage::MPFEChangedMapMessage(unsigned long map_id, unsigned long num_teams)
{
	uint64_t checksum = 0;
	if (MPFEData::Data.IsOOSGame)
	{
		checksum = MPFEData::OOSChecksum;
	}
	wchar_t* text = LHSPrintfW(L"%c%u:%u:", GetMessageCode(SPECIAL_MESSAGE_TYPE_CHANGED_MAP), map_id, num_teams);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	Message = new (FILEPATH, 19) wchar_t[wcslen(text) + 40];
#else
	Message = new wchar_t[wcslen(text) + 40];
#endif
	wchar_t checksumText[0x80];
	swprintf(checksumText, L"%I64u", checksum);
	wcscpy(Message, text);
	wcscat(Message, checksumText);
}

void MPFEChangedMapMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	unsigned long mapID;
	unsigned long numTeams;
	uint64_t      checksum;
	swscanf(message, L"%u:%u:%I64u", &mapID, &numTeams, &checksum);
	if (mapID > 0)
	{
		LandscapeDetails* details = MPFEData::Data.A2D_GetLandscapeDetailsFromID(mapID);
		if (details != NULL)
		{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
			SetupWinConditions(details->FileName);
			if (MPFEData::Data.IsHost)
			{
				GGame::g_game->MultiplayerTimeLimit = GAME_DEFAULT_MULTIPLAYER_TIME_LIMIT;
				MPFEData::Data.SettingsChanged = true;
			}
			else
			{
				MPFEData::Data.ActiveDialog->ConditionList->DeleteAll();
			}
#endif
			wcscpy(MPFEData::Data.CurrentChannel->MapName, CHAR2WCHAR(details->Name));
		}
	}
	if (checksum != 0)
	{
		MPFEData::OOSChecksum = MPFEData::Data.GetOOSChecksum();
		if (checksum != MPFEData::OOSChecksum)
		{
			MPFEMapErrorMessage error;
			error.Send(MPFEData::Data.GetHostPlayer());
		}
		else
		{
			MPFEData::Data.IsOOSGame = true;
		}
		MPFEData::Data.D2A_RefreshTeams();
	}
	MPFEData::Data.CurrentChannel->MapID = mapID;
	MPFEData::Data.CurrentChannel->NumTeams = numTeams;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	for (uint32_t team = 0; team < MPFEData::MAX_TEAMS; team++)
	{
		for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[team]); it.MoreToDo(); it++)
		{
			it.Get()->Ready = false;
		}
	}
#endif
	MPFEData::Data.D2A_RefreshTeams();
	if (mapID > 0)
	{
		if (MPFEData::Data.MapDownload.IsDownloading())
		{
			if (MPFEData::Data.MapDownload.GetCurrentFileNumber() != mapID)
			{
				MPFEData::Data.MapDownload.Stop();
				MPFEData::Data.MapDownload.GetFileNumber(mapID);
			}
		}
		else
		{
			MPFEData::Data.MapDownload.GetFileNumber(mapID);
		}
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	MPFEData::Data.ActiveDialog->UpdateAll();
#endif
}

MPFEMapErrorMessage::MPFEMapErrorMessage()
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	Message = new (FILEPATH, 96) wchar_t[10];
#else
	Message = new wchar_t[10];
#endif
	swprintf(Message, L"%c", GetMessageCode(SPECIAL_MESSAGE_TYPE_MAP_ERROR));
}

void MPFEMapErrorMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (MPFEData::Data.GetLocalPlayer()->IsHost)
	{
		MPFEData::Data.D2A_PersonCouldNotDownload(from->Name);
	}
}
