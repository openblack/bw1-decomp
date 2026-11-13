#include "CellSize.h" /* For CellSize */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "ColourConstants.h" /* For White */
#include "MPFEConditionMessages.h"

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include <stdio.h>  /* For swprintf, swscanf */
#include <string.h> /* For memset, wcscat */

#include <Lionhead/LHLib/ver5.0/LHOrderedLinkedList.h> /* For LHOrderedLinkedListIterator */
#include <Lionhead/LHLib/ver5.0/LHWin.h>               /* For NEW */

#include "alexmfc.h"                   /* For SetupList */
#include "ChannelBox.h"                /* For ChannelBox */
#include "Game.h"                      /* For GGame::g_game */
#include "HelpText.h"                  /* For HelpTextDataBase::MultiplayerTextDatabase */
#include "MPFEAllConditions.h"         /* For MPFEAllConditions */
#include "MPFECondtionUpdateMessage.h" /* For MPFECondtionUpdateMessage */
#include "MPFEData.h"                  /* For MPFEData::Data */
#include "MPFEPlayerDetails.h"         /* For struct MPFEPlayerDetails */
#include "WinCondition.h"              /* For WinCondition */

MPFECondtionUpdateMessage::MPFECondtionUpdateMessage()
{
	int  count = 0;
	bool enabled[WC_LAST];
	int  targets[WC_LAST];
	memset(enabled, 0, sizeof(enabled));
	memset(targets, -1, sizeof(targets));
	for (std::vector<std::pair<int, int> >::iterator it = MPFEData::Data.ConditionChanges.begin();
	     it < MPFEData::Data.ConditionChanges.end(); it++)
	{
		if (it->second == -1)
		{
			targets[it->first] = 0;
			enabled[it->first] = false;
		}
		else
		{
			targets[it->first] = it->second;
			enabled[it->first] = true;
		}
	}
	for (int i = 0; i < WC_LAST; i++)
	{
		if (targets[i] != -1)
		{
			count++;
		}
	}
	Message = NEW(52) wchar_t[(count + 1) * 10];
	swprintf(Message, L"%c:%u", GetMessageCode(SPECIAL_MESSAGE_TYPE_CONDITION_UPDATE),
	         GGame::g_game->MultiplayerTimeLimit);
	for (int type = 0; type < WC_LAST; type++)
	{
		if (targets[type] != -1)
		{
			wchar_t text[0x78];
			swprintf(text, L":%u:%d", type, enabled[type] ? targets[type] : -1);
			wcscat(Message, text);
		}
	}
	MPFEData::Data.ConditionChanges.clear();
}

void MPFECondtionUpdateMessage::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (!MPFEData::Data.IsHost && from->IsHost)
	{
		MPFEData::Data.GetLocalPlayer()->Ready = false;
		swscanf(message, L":%u", &GGame::g_game->MultiplayerTimeLimit);
		swprintf(MPFEData::Data.ActiveDialog->TimeLimitText->label, L"%u", GGame::g_game->MultiplayerTimeLimit);
		message++;
		while (*message != L'\0' && *message != L':')
		{
			message++;
		}
		if (*message == L'\0')
		{
			MPFEData::Data.ActiveDialog->UpdateAll();
			return;
		}
		do
		{
			unsigned long type;
			int           target;
			swscanf(message, L":%u:%d", &type, &target);
			WinCondition* condition = &MPFEData::Data.Conditions[type];
			for (int i = 0; i < MPFEData::Data.ActiveDialog->ConditionList->NumItems; i++)
			{
				if (MPFEData::Data.ActiveDialog->ConditionList->ItemData[i] == (uint32_t)condition)
				{
					MPFEData::Data.ActiveDialog->ConditionList->DeleteString(i);
				}
			}
			if (target != -1)
			{
				MPFEData::Data.ActiveDialog->ConditionEnabled[type] = true;
				condition->SetTarget(target);
				wchar_t text[0x80];
				swprintf(text, L"%s (%d)", HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(type + 1), target);
				MPFEData::Data.ActiveDialog->ConditionList->InsertString(0, text);
				MPFEData::Data.ActiveDialog->ConditionList->ItemData[0] = (uint32_t)condition;
			}
			else
			{
				MPFEData::Data.ActiveDialog->ConditionEnabled[type] = false;
			}
			message++;
			while (*message != L'\0' && *message != L':')
			{
				message++;
			}
			if (*message == L'\0')
			{
				break;
			}
			message++;
			while (*message != L'\0' && *message != L':')
			{
				message++;
			}
		} while (*message != L'\0');
		for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
		{
			for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[team]); it.MoreToDo(); it++)
			{
				it.Get()->Ready = false;
			}
		}
		MPFEData::Data.ActiveDialog->UpdateAll();
	}
}

MPFEAllConditions::MPFEAllConditions(WinCondition* conditions, bool* enabled)
{
	Message = NEW(148) wchar_t[WC_LAST * 6 + 5];
	swprintf(Message, L"%c:%u:", GetMessageCode(SPECIAL_MESSAGE_TYPE_ALL_CONDITIONS),
	         GGame::g_game->MultiplayerTimeLimit);
	for (int type = 0; type < WC_LAST; type++)
	{
		wchar_t text[10];
		swprintf(text, L"%d:", enabled[type] ? conditions[type].Target : -1);
		wcscat(Message, text);
	}
}

void MPFEAllConditions::ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from)
{
	if (!MPFEData::Data.IsHost && from->IsHost)
	{
		swscanf(message, L":%u", &GGame::g_game->MultiplayerTimeLimit);
		swprintf(MPFEData::Data.ActiveDialog->TimeLimitText->label, L"%u", GGame::g_game->MultiplayerTimeLimit);
		message++;
		while (*message != L'\0' && *message != L':')
		{
			message++;
		}
		if (*message == L'\0')
		{
			MPFEData::Data.ActiveDialog->UpdateAll();
			return;
		}
		MPFEData::Data.ActiveDialog->ConditionList->DeleteAll();
		for (int type = 0; type < WC_LAST; type++)
		{
			int target;
			swscanf(message, L":%d", &target);
			MPFEData::Data.ActiveDialog->ConditionEnabled[type] = target != -1;
			if (target != -1)
			{
				MPFEData::Data.Conditions[type].SetTarget(target);
				wchar_t text[0x80];
				swprintf(text, L"%s (%d)", HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(type + 1), target);
				MPFEData::Data.ActiveDialog->ConditionList->InsertString(0, text);
				MPFEData::Data.ActiveDialog->ConditionList->ItemData[0] = (uint32_t)&MPFEData::Data.Conditions[type];
			}
			if (*message == L'\0')
			{
				break;
			}
			message++;
			while (*message != L'\0' && *message != L':')
			{
				message++;
			}
		}
		for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
		{
			for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[team]); it.MoreToDo(); it++)
			{
				it.Get()->Ready = false;
			}
		}
		MPFEData::Data.ActiveDialog->UpdateAll();
	}
}
#endif
