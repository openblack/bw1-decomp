#include "ColourConstants.h" /* For White */

#include "MPFEAlexDialog.h"

#include <stdio.h>    /* For swprintf */
#include <math.h>     /* For cos, sin, sqrt */
#include <io.h>       /* For _unlink */
#include <string.h>   /* For memset */
#include <windows.h>  /* For GetTempPathA, GetTempFileNameA, LoadImageA, DeleteObject */
#include <mmsystem.h> /* For timeGetTime */
#include <wchar.h>    /* For wcscat, wcscpy, wcslen */

#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_DIALOG_ADDITION_03, HELP_TEXT_DIALOG_ADDITION_140, HELP_TEXT_DIALOG_JOIN, HELP_TEXT_MPFER_KICKEDYOUGAME */

#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>      /* For LHLobby::UserFile */
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h> /* For LHLinkedListIterator */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>            /* For LHSaveData */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>            /* For LHSPrintfW */
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>     /* For LH3DAtmos::mat0, LH3DAtmos::mat1 */
#include <Lionhead/LH3DLib/development/LH3DColor.h>     /* For LH3D_BLEND_COLOR */
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>  /* For LH3DMaterial */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LH3DRender.h>    /* For LH3DRender::CreateMaterial */
#include <Lionhead/LH3DLib/development/LH3DText.h>      /* For CHAR2WCHAR */
#include <Lionhead/LH3DLib/development/LH3DTexture.h>   /* For LH3DTexture */

#include "alexmfc.h"              /* For SetupBox, SetupBigButton */
#include "ChannelBox.h"           /* For ChannelBox */
#include "CreatureMindPath.h"     /* For CREATURE_MIND_PATH */
#include "Game.h"                 /* For GGame::g_game */
#include "GSFunctions.h"          /* For GSFunctions */
#include "LandscapeDetails.h"     /* For LandscapeDetails */
#include "LayerCommunication.h"   /* For LayerCommunication */
#include "MapThumbImage.h"        /* For MapThumbImage */
#include "HelpText.h"             /* For HelpTextData::GetTextL */
#include "JCMisc.h"               /* For LoadBMPSymbol */
#include "MPFEChannelDetails.h"   /* For MPFEChannelDetails */
#include "MPFEClanDetails.h"      /* For MPFEClanDetails */
#include "MPFEChannelSelector.h"  /* For MPFEChannelSelector::Instance */
#include "MPFEConnectionStatus.h" /* For MPFEConnectionStatus::Status */
#include "MPFEData.h"             /* For MPFEData */
#include "MPFEPlayerDetails.h"    /* For MPFEPlayerDetails */
#include "Player.h"               /* For GPlayer::PlayerColours */
#include "TeamControls.h"         /* For TeamControls */
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
#include "WinConditionSettings.h" /* For WinConditionSettings::LargeSteps, WinConditionSettings::SmallSteps */
#endif

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 100 ? 1 : (line) < 600 ? 45 : (line) < 700 ? 43 : 48))
#elif defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 100 ? 1 : (line) < 700 ? 45 : 46))
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 100 ? -2 : (line) < 700 ? 36 : 31))
#endif

unsigned long MPFEData::TeamColors[MAX_TEAMS] = {0x808080, 0xff0000, 0x00ff00, 0x0000ff, 0xffff00};
static bool   FocusChatEdit = false;
ChannelBox*   ChannelBox::Instance = NULL;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
static int           RepeatMode = 0;
SetupControl*        RepeatControl = NULL;
static unsigned long RepeatStartTime = 0;
static unsigned long RepeatLastTime = 0;
static bool          Repeating = false;
static int           RepeatCount = 1;
#endif

// BW1W120 0061b880 BW1M119 inlined
void DrawCircle(uint16_t* image, int x, int y, int radius, uint16_t colour);
// BW1W120 0061bc10 BW1M119 01398190
ServerLandscapeMap::Point* IsThereAPoint(LHLinkedList<ServerLandscapeMap::Point*>* points, int x, int y);

void TeamControls::Init(ChannelBox* box, int index)
{
	Box = box;
	Index = index;
	int id = (index + 1) * 100;
	TitleText = NEW(31) SetupStaticText(id + 1, 0, 0, 1000, 10, L"");
	List = NEW(32) SetupList(id + 2, 0, 0, 1000, 10);
	JoinButton = NEW(33)
		SetupButton(id + 3, 0, 0, 1000, 10, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_JOIN), 0);
	JoinButton->text_size = GetSmallTextSize();
	float size = GetSmallTextSize();
	int   length = wcslen(JoinButton->label);
	JoinButtonWidth = SetupThing::Font->GetStringWidth(JoinButton->label, length, size, 1.0f) + 8.0f;
	JoinButton->OnTop = true;
	List->text_size = GetSmallTextSize();
	List->CentredText = true;
}

uint32_t __stdcall pingdraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max, int clip_min,
                            int clip_max)
{
	if (MPFEConnectionStatus::Status.IsInternetLobby())
	{
		MPFEPlayerDetails* item = (MPFEPlayerDetails*)list->GetItemData(index);
		if (item != NULL)
		{
			for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
			{
				MPFEPlayerDetails* player = NULL;
				for (OrderedNode<MPFEPlayerDetails>* node = MPFEData::Data.Teams[team].head; node != NULL;
				     node = node->next)
				{
					if (node->data == item)
					{
						player = node->data;
						break;
					}
				}
				if (player != NULL)
				{
					int ping = player->Ping;
					if (ping >= 0)
					{
						ping = ping > 0 ? min(ping, 500) : 0;
						int bars = (ping + 99) / 100;
						bars = bars > 1 ? min(bars, 5) : 1;
						int level = 0xff - (ping << 8) / 500;
						level = level > 0 ? min(level, 0x100) : 0;
						unsigned long colour;
						if (level < 0x80)
						{
							colour = LH3D_BLEND_COLOR(0xffa00000, 0xffa0a000, level * 2);
						}
						else
						{
							colour = LH3D_BLEND_COLOR(0xffa0a000, 0xff00a000, (level - 0x80) * 2);
						}
						int size = (clip_max - clip_min) / 2;
						clip_min += size / 2;
						clip_max -= size / 2;
						clip_min = clip_min > y_min ? min(clip_min, y_max) : y_min;
						clip_max = clip_max > y_min ? min(clip_max, y_max) : y_min;
						if (clip_max > clip_min + 2 && LH3DAtmos::mat0 != NULL)
						{
							int x = x_min + 4;
							for (int i = 0; i < bars; i++)
							{
								LH3DColor barColour = colour;
								SetupThing::DrawBox(x, clip_min, x + size, clip_max, 0.75f, 0.25f, 0.875f, 0.375f,
								                    LH3DAtmos::mat1, &barColour, true, -40960, 40960, false, 100.0f);
								x += size;
							}
						}
					}
					break;
				}
			}
		}
	}
	return 1;
}

void TeamControls::InitControls(int x, int y, int width, int height, int column)
{
	Region.start.x = x;
	Region.start.y = y;
	Region.end.x = x + width;
	Region.end.y = y + height;
	TitleText->rect.start.x = x + 2;
	TitleText->rect.end.x = width + TitleText->rect.start.x - 2;
	TitleText->rect.start.y = y;
	TitleText->rect.end.y = TitleText->rect.start.y + 30;
	JoinButton->rect.start.y = y + 4;
	JoinButton->rect.end.y = TitleText->rect.end.y - 4;
	JoinButton->rect.end.x = TitleText->rect.end.x - 4;
	JoinButton->rect.start.x = JoinButton->rect.end.x - JoinButtonWidth;
	List->rect.start.x = x + 4;
	List->rect.end.x = width + List->rect.start.x - 8;
	List->rect.start.y = y + 30;
	List->rect.end.y = List->rect.start.y + height - 34;
	List->DeleteAll();
	wcscpy(TitleText->label, Box->Data->TeamDetails[Index].Name);
#if defined(VERSION_BW1WCI)
	if (Box->Data->TeamDetails[Index].TykeEnabled && Box->Data->TeamDetails[Index].ClanID == 0)
	{
		wcscat(TitleText->label, L" [*]");
	}
#endif
	MPFEPlayerDetails* local = Box->Data->GetLocalPlayer();
	for (OrderedNode<MPFEPlayerDetails>* node = Box->Data->Teams[Index].head; node != NULL; node = node->next)
	{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		wchar_t text[0x80];
		swprintf(text, L"%s%s%s", node->data->Name, node->data->Ready ? L"(R)" : L"",
		         node->data->HasCreature ? L"(C)" : L"");
		List->AddString(text, 0, 0, 0);
#else
		List->AddString(node->data->Name, 0, 0, 0);
#endif
		List->SetListBoxDraw(List->NumItems - 1, pingdraw);
		List->SetItemData(List->NumItems - 1, (uint32_t)node->data);
		if (node->data == local)
		{
			List->SetCol(List->NumItems - 1, 0xffff00);
		}
		if (node->data->IsHost)
		{
			wcscat(List->item_labels[List->NumItems - 1], HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_03));
			List->UpdateHeights();
		}
		if (node->data == Box->Data->SelectedPlayer)
		{
			List->SetSelected(List->NumItems - 1);
		}
	}
	Hide(true);
}

void TeamControls::Hide(bool hidden)
{
	Hidden = hidden;
	TitleText->Hide(hidden);
	List->Hide(hidden);
	JoinButton->Hide(hidden);
}

void TeamControls::Callback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	if (Hidden || Box->LocalPlayer == NULL)
	{
		return;
	}
	bool32_t inside = x >= Region.start.x && x < Region.end.x && y >= Region.start.y && y < Region.end.y;
	JoinButton->Hide(!inside || Box->LocalPlayer->Team == Index);
	TeamEnums team = Box->LocalPlayer->Team;
	bool      inTeam = false;
	if (team != TEAM_UNASSIGNED && team != TEAM_NONE)
	{
		inTeam = true;
	}
	bool canInvite = false;
	if (team != TEAM_UNASSIGNED)
	{
		canInvite = team != Index && Box->IsTeamLeader && team != TEAM_NONE;
	}
	bool canKick = false;
	if (team != TEAM_UNASSIGNED)
	{
		canKick = team == Index && Box->IsTeamLeader;
	}
	if (Index == TEAM_NONE)
	{
		canKick = false;
	}
	if (Box->LocalPlayer->IsHost)
	{
		canKick = true;
	}
	if (message == SETUP_MESSAGE_PRE_DRAW)
	{
		MPFEData::TeamColors[1] = GPlayer::PlayerColours[0];
		MPFEData::TeamColors[2] = GPlayer::PlayerColours[1];
		MPFEData::TeamColors[3] = GPlayer::PlayerColours[2];
		MPFEData::TeamColors[4] = GPlayer::PlayerColours[3];
		unsigned long colour = MPFEData::TeamColors[Index];
		List->SelectionColor = LH3D_BLEND_COLOR(colour, 0x00ffffff, 0x80);
		int alpha = SetupThing::DrawAlpha;
		if (Box->SelectedTeam != Index)
		{
			SetupThing::DrawAlpha = alpha / 2;
		}
		List->UseColorBackground = Box->SelectedTeam == Index;
		List->BoxOutlineColor = Box->SelectedTeam == Index ? LH3D_BLEND_COLOR(colour, 0, 0x80) : LH3D_COLOR_WHITE;
		SetupThing::DrawBox(Region.start.x + 1, Region.start.y + 1, Region.end.x - 1, Region.end.y - 1, colour, colour,
		                    colour, colour, 1, 1);
		SetupThing::DrawAlpha = alpha;
	}
	else if (message == SETUP_MESSAGE_POST_DRAW)
	{
		if (Box->Data->TeamDetails[Index].ClanID != 0)
		{
			int alpha = SetupThing::DrawAlpha;
			SetupThing::DrawAlpha = alpha / 4;
			Box->DrawClanSymbol(List->rect.start.x, List->rect.start.y, List->rect.end.x, List->rect.end.y, Index);
			SetupThing::DrawAlpha = alpha;
		}
	}
	if (!inside)
	{
		return;
	}
	if (control == TitleText)
	{
		if (message == SETUP_MESSAGE_CLICK || message == SETUP_MESSAGE_DRAG)
		{
			if (message == SETUP_MESSAGE_CLICK)
			{
				if (Index == Box->SelectedTeam)
				{
					Box->SelectTeam(MPFEData::MAX_TEAMS);
				}
				else
				{
					Box->SelectTeam(Index);
				}
			}
		}
	}
	if (control == List)
	{
		if (message == SETUP_MESSAGE_CLICK || message == SETUP_MESSAGE_DRAG)
		{
			if (List->SelectedIndex >= 0)
			{
				Box->SelectPlayer((MPFEPlayerDetails*)List->GetItemData(List->SelectedIndex));
			}
			else if (Box->Data->SelectedPlayer != NULL)
			{
				if (message == SETUP_MESSAGE_CLICK)
				{
					Box->SelectPlayer(NULL);
				}
			}
			else if (message == SETUP_MESSAGE_CLICK)
			{
				if (Index == Box->SelectedTeam)
				{
					Box->SelectTeam(MPFEData::MAX_TEAMS);
				}
				else
				{
					Box->SelectTeam(Index);
				}
			}
		}
		if (message == SETUP_MESSAGE_MOUSE_DOWN)
		{
			MouseOver = true;
		}
		if (message == SETUP_MESSAGE_MOUSE_UP)
		{
			MouseOver = false;
		}
	}
	if (message == SETUP_MESSAGE_CLICK)
	{
		if (control == JoinButton)
		{
			Box->Data->A2D_JoinTeam((TeamEnums)Index);
		}
		if (control == Box->LeaveTeamButton)
		{
			Box->Data->A2D_JoinTeam(TEAM_NONE);
		}
	}
	if (message != SETUP_MESSAGE_PRE_DRAW)
	{
		return;
	}
	if (MouseOver == true && Box->setup_box->FocusedWidget == List)
	{
		return;
	}
	if (List->SelectedIndex < 0 || x < List->SelectionRect.start.x || y < List->SelectionRect.start.y ||
	    x >= List->SelectionRect.end.x || y >= List->SelectionRect.end.y)
	{
		return;
	}
	bool isLocal = (MPFEPlayerDetails*)List->GetItemData(List->SelectedIndex) == Box->LocalPlayer;
	if (List->SelectionRect.end.y - List->SelectionRect.start.y <= 10)
	{
		return;
	}
	int right = List->SelectionRect.end.x - 4;
	if (!isLocal && canInvite)
	{
		Box->InviteButton->rect.end.x = Box->InviteButtonWidth;
		Box->InviteButton->rect.start.x = right - Box->InviteButton->rect.end.x;
		Box->InviteButton->rect.start.y = List->SelectionRect.start.y + 2;
		Box->InviteButton->rect.end.y = List->SelectionRect.end.y - 2;
		Box->InviteButton->Hide(false);
		right += -4 - Box->InviteButton->rect.end.x;
		Box->InviteButton->rect.end.x += Box->InviteButton->rect.start.x;
	}
	if (!isLocal && canKick)
	{
		Box->KickButton->rect.end.x = Box->KickButtonWidth;
		Box->KickButton->rect.start.x = right - Box->KickButton->rect.end.x;
		Box->KickButton->rect.start.y = List->SelectionRect.start.y + 2;
		Box->KickButton->rect.end.y = List->SelectionRect.end.y - 2;
		Box->KickButton->Hide(false);
		Box->KickButton->rect.end.x += Box->KickButton->rect.start.x;
	}
	if (isLocal && inTeam)
	{
		Box->LeaveTeamButton->rect.end.x -= Box->LeaveTeamButton->rect.start.x;
		Box->LeaveTeamButton->rect.start.x = right - Box->LeaveTeamButton->rect.end.x;
		Box->LeaveTeamButton->rect.start.y = List->SelectionRect.start.y + 2;
		Box->LeaveTeamButton->rect.end.y = List->SelectionRect.end.y - 2;
		Box->LeaveTeamButton->Hide(false);
		Box->LeaveTeamButton->rect.end.x += Box->LeaveTeamButton->rect.start.x;
	}
}

void ChannelBox::SelectTeam(int team)
{
	SelectedTeam = CurrentTab != CHANNEL_BOX_TAB_TEAMS ? MPFEData::MAX_TEAMS : team;
	SelectPlayer(NULL);
}

void ChannelBox::SelectPlayer(MPFEPlayerDetails* player)
{
	Data->SelectedPlayer = player;
	bool32_t found = false;
	for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
	{
		Teams[team].List->SetSelected(-1);
		for (int i = 0; i < Teams[team].List->NumItems; i++)
		{
			if ((MPFEPlayerDetails*)Teams[team].List->GetItemData(i) == player)
			{
				found = true;
				Teams[team].List->SetSelected(i);
			}
		}
	}
	if (!found)
	{
		Data->SelectedPlayer = NULL;
	}
	if (Data->SelectedPlayer != NULL)
	{
		SelectedTeam = MPFEData::MAX_TEAMS;
	}
	UpdateClans();
	UpdatePlayerInfo();
	if (Data->SelectedPlayer != NULL)
	{
		if (CurrentTab == CHANNEL_BOX_TAB_CLANS)
		{
			Data->A2D_RequestForClanDetails(Data->SelectedPlayer->Name);
		}
		if (CurrentTab == CHANNEL_BOX_TAB_PLAYERS)
		{
			Data->A2D_RequestForPlayerDetails(Data->SelectedPlayer->Name);
		}
	}
}

void ChannelBox::SetTab(int tab)
{
	for (int i = 0; i < _CHANNEL_BOX_TAB_COUNT; i++)
	{
		Tabs[i]->selected = i == tab;
	}
	CurrentTab = tab;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	UpdateTeams();
	if (CurrentTab == CHANNEL_BOX_TAB_LANDS)
	{
		for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
		{
			Teams[team].Hide(true);
		}
	}
	UpdateConditions(CurrentTab != CHANNEL_BOX_TAB_LANDS);
	if (tab != CHANNEL_BOX_TAB_TEAMS)
	{
		SelectedTeam = MPFEData::MAX_TEAMS;
	}
	if (tab == CHANNEL_BOX_TAB_LANDS)
	{
		Data->SelectedPlayer = NULL;
	}
	if (tab == CHANNEL_BOX_TAB_TEAMS || ShowChatOnLandTab)
	{
		FocusChatEdit = true;
	}
#else
	if (tab == CHANNEL_BOX_TAB_TEAMS)
	{
		FocusChatEdit = true;
	}
#endif
	ChatEdit->Hide(tab != CHANNEL_BOX_TAB_TEAMS);
	ChatList->Hide(tab != CHANNEL_BOX_TAB_TEAMS);
	ChatTitleText->Hide(tab != CHANNEL_BOX_TAB_TEAMS);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (CurrentTab == CHANNEL_BOX_TAB_LANDS)
	{
		ChatEdit->Hide(!ShowChatOnLandTab);
		ChatList->Hide(!ShowChatOnLandTab);
		ChatTitleText->Hide(!ShowChatOnLandTab);
	}
	TimeLimitIncreaseButton->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	TimeLimitDecreaseButton->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	TimeLimitLabel->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	TimeLimitText->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	ConditionTitleText->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	if (!MPFEData::Data.IsHost)
	{
		TimeLimitIncreaseButton->Hide(true);
		TimeLimitDecreaseButton->Hide(true);
	}
#endif
	ClanPlayerText->Hide(tab != CHANNEL_BOX_TAB_CLANS);
	ClanTeamText->Hide(tab != CHANNEL_BOX_TAB_CLANS);
	ClanList->Hide(tab != CHANNEL_BOX_TAB_CLANS);
	ClanInfoList->Hide(tab != CHANNEL_BOX_TAB_CLANS);
	SetClanButton->Hide(tab != CHANNEL_BOX_TAB_CLANS);
	ClearClanButton->Hide(tab != CHANNEL_BOX_TAB_CLANS);
	PlayerTitleText->Hide(tab != CHANNEL_BOX_TAB_PLAYERS);
	PlayerInfoList->Hide(tab != CHANNEL_BOX_TAB_PLAYERS);
	JoinPlayerTeamButton->Hide(tab != CHANNEL_BOX_TAB_PLAYERS);
	PlayerKickButton->Hide(tab != CHANNEL_BOX_TAB_PLAYERS);
	PlayerInviteButton->Hide(tab != CHANNEL_BOX_TAB_PLAYERS);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (CurrentTab == CHANNEL_BOX_TAB_LANDS)
	{
		LandListTitle->Hide(ShowChatOnLandTab);
		LandTitle->Hide(ShowChatOnLandTab);
		LandInfoTitle->Hide(ShowChatOnLandTab);
		LandList->Hide(ShowChatOnLandTab);
		LandInfoList->Hide(ShowChatOnLandTab);
		SelectLandButton->Hide(ShowChatOnLandTab);
	}
	else
	{
		LandListTitle->Hide(true);
		LandTitle->Hide(true);
		LandInfoTitle->Hide(true);
		LandList->Hide(true);
		LandInfoList->Hide(true);
		SelectLandButton->Hide(true);
	}
#else
	LandListTitle->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	LandTitle->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	LandInfoTitle->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	LandList->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	LandInfoList->Hide(tab != CHANNEL_BOX_TAB_LANDS);
	SelectLandButton->Hide(tab != CHANNEL_BOX_TAB_LANDS);
#endif
	if (tab != CHANNEL_BOX_TAB_TEAMS && SelectedTeam != MPFEData::MAX_TEAMS)
	{
		SelectTeam(MPFEData::MAX_TEAMS);
	}
	bool lan = MPFEConnectionStatus::Status.IsLanLobby();
	for (int label = 0; label < _CHANNEL_BOX_TAB_COUNT; label++)
	{
		wchar_t* text;
		switch (label)
		{
		case CHANNEL_BOX_TAB_TEAMS:
			text = HelpTextData::GetTextL(HELP_TEXT_PAUSE_STATS_126);
			break;
		case CHANNEL_BOX_TAB_LANDS:
			text = HelpTextData::GetTextL(HELP_TEXT_PAUSE_STATS_127);
			break;
		case CHANNEL_BOX_TAB_PLAYERS:
			text = lan ? L"" : HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_110);
			break;
		case CHANNEL_BOX_TAB_CLANS:
			text = lan ? L"" : HelpTextData::GetTextL(HELP_TEXT_PAUSE_STATS_128);
			break;
		}
		wcscpy(Tabs[label]->label, text);
	}
}

void DrawCircle(uint16_t* image, int x, int y, int radius, uint16_t colour)
{
	for (; radius != -1; radius--)
	{
		for (float angle = TWO_PI; angle > 0.0f; angle -= TWO_PI / 90)
		{
			image[((int)((float)cos(angle) * radius + y + 0.5f) << 8) + (int)((float)sin(angle) * radius + x + 0.5f)] =
				colour;
		}
	}
}

void ChannelBox::BuildThumbnail(ServerLandscapeMap* map)
{
	if (map == NULL || !map->ThumbnailLoaded)
	{
		return;
	}
	MapThumbImage* thumbnail = map->Thumbnail;
	char*          data = map->Thumbnail->GetImageData();
	int            size = sqrt(map->Thumbnail->GetImageByteSize() / 3);
	ThumbnailSize = size;
	LHLinkedList<ServerLandscapeMap::Point*>* citadels = &map->CitadelPoints;
	LHLinkedList<ServerLandscapeMap::Point*>* towns = &map->TownPoints;
	uint16_t*                                 image = ThumbnailTexture->GetSRamTex()->Lock256x256(true);
	memset(image, 0, 256 * 256 * sizeof(uint16_t));
	int offset = 0;
	for (int row = 0; row < size; row++)
	{
		for (int column = 0; column < size; column++)
		{
			if (data[offset] == 0 && data[offset + 1] == 0 && data[offset + 2] == 0)
			{
				image[(row << 8) + column] = 0;
			}
			else
			{
				image[(row << 8) + column] =
					0xf000 + ((data[offset] >> 4) << 8) + ((data[offset + 1] >> 4) << 4) + (data[offset + 2] >> 4);
			}
			offset += 3;
		}
	}
	for (int y = 0; y < size; y++)
	{
		for (int x = 0; x < size; x++)
		{
			ServerLandscapeMap::Point* town = IsThereAPoint(towns, x, y);
			if (town != NULL)
			{
				LH3DColor colour = GPlayer::PlayerColours[town->Player == -1 ? 7 : town->Player];
				DrawCircle(image, x, y, 1, 0xf000 | ((colour.r >> 4) << 8) | ((colour.g >> 4) << 4) | (colour.b >> 4));
			}
			ServerLandscapeMap::Point* citadel = IsThereAPoint(citadels, x, y);
			if (citadel != NULL)
			{
				LH3DColor colour = GPlayer::PlayerColours[citadel->Player == -1 ? 7 : citadel->Player];
				DrawCircle(image, x, y, 2, 0xf000 | ((colour.r >> 4) << 8) | ((colour.g >> 4) << 4) | (colour.b >> 4));
			}
		}
	}
	ThumbnailTexture->GetSRamTex()->UnlockLock256x256();
	if (ThumbnailTexture->GetType() == LH3D_TEXTURE_TYPE_NAMED ||
	    ThumbnailTexture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		ThumbnailTexture->ReloadPending = true;
	}
	switch (ThumbnailMapID)
	{
	case 1:
		wcscpy(LandDescription, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DYK_RULES_02));
		break;
	case 2:
		wcscpy(LandDescription, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DYK_RULES_10));
		break;
	case 3:
		wcscpy(LandDescription, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DYK_RULES_11));
		break;
	default:
		wcscpy(LandDescription, CHAR2WCHAR(thumbnail->Description));
		break;
	}
}

ServerLandscapeMap::Point* IsThereAPoint(LHLinkedList<ServerLandscapeMap::Point*>* points, int x, int y)
{
	LHLinkedNode<ServerLandscapeMap::Point*>* node = points->GetStart();
	if (node != NULL)
	{
		do
		{
			if (node->payload->X == x && node->payload->Y == y)
			{
				return node->payload;
			}
			node = node->next.Get();
		} while (node != NULL);
	}
	return NULL;
}

void ChannelBox::ReInit()
{
	SelectedClan = NULL;
	SelectedLandID = 0;
	CurrentTab = CHANNEL_BOX_TAB_TEAMS;
	SelectedTeam = MPFEData::MAX_TEAMS;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	ShowChatOnLandTab = false;
#endif
	if (PlayerInfoList != NULL)
	{
		PlayerInfoList->DrawHighlightBox = false;
	}
	if (ClanInfoList != NULL)
	{
		ClanInfoList->DrawHighlightBox = false;
	}
	if (LandInfoList != NULL)
	{
		LandInfoList->DrawHighlightBox = false;
	}
	ThumbnailMapID = 0;
	wcscpy(ChatEdit->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_140));
}

void ChannelBox::Init(uint32_t background_style, uint32_t tall_background,
                      void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	ThumbnailTexture = NULL;
	ThumbnailMaterial = NULL;
	ClanSymbolTexture = NULL;
	ClanSymbolMaterial = NULL;
	memset(ClanSymbolValid, 0, sizeof(ClanSymbolValid));
	memset(ClanSymbolKeys, 0, sizeof(ClanSymbolKeys));
	SelectedClan = NULL;
	SelectedLandID = 0;
	CurrentTab = CHANNEL_BOX_TAB_TEAMS;
	SelectedTeam = MPFEData::MAX_TEAMS;
	float tabWidth = background_style / 4.0f;
	float tabX = 400 - background_style / 2;
	for (int tab = 0; tab < _CHANNEL_BOX_TAB_COUNT; tab++)
	{
		Tabs[tab] = NEW(571) SetupTabButton(CHANNEL_BOX_CONTROL_ID_TAB_TEAMS + tab, (int)tabX,
		                                    260 - tall_background / 2, (int)(tabX + tabWidth) - (int)tabX, 40, L"",
		                                    tab == CurrentTab, tab == 0, tab == _CHANNEL_BOX_TAB_COUNT - 1);
		tabX += tabWidth;
	}
	setup_box->DefaultTextSize = GetMidTextSize();
	CaptionText = NEW(575) SetupStaticText(CHANNEL_BOX_CONTROL_ID_TEXT, 40, 60, 720, 28, L"", TEXTJUSTIFY_CENTRE);
	PanelHeaderText = NEW(576) SetupStaticText(CHANNEL_BOX_CONTROL_ID_TEXT, 140, 380, 520, 28, L"", TEXTJUSTIFY_CENTRE);
	KickButton = NEW(578) SetupButton(SETUP_CONTROL_ID_NONE, 0, 0, 40, 25,
	                                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_129), 0);
	InviteButton = NEW(579) SetupButton(SETUP_CONTROL_ID_NONE, 0, 0, 40, 25,
	                                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_130), 0);
	InviteButton->text_size = GetSmallTextSize();
	KickButton->text_size = InviteButton->text_size;
	float size = GetSmallTextSize();
	int   length = wcslen(KickButton->label);
	KickButtonWidth = SetupThing::Font->GetStringWidth(KickButton->label, length, size, 1.0f) + 8.0f;
	size = GetSmallTextSize();
	length = wcslen(InviteButton->label);
	InviteButtonWidth = SetupThing::Font->GetStringWidth(InviteButton->label, length, size, 1.0f) + 8.0f;
	LeaveTeamButton = NEW(585) SetupButton(SETUP_CONTROL_ID_NONE, 0, 0, 40, 25, L" ", 0);
	LeaveTeamButton->text_size = GetSmallTextSize();
	LeaveTeamButton->OnTop = true;
	KickButton->Hide(true);
	InviteButton->Hide(true);
	LeaveTeamButton->Hide(true);
	InviteButton->OnTop = true;
	KickButton->OnTop = true;
	for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
	{
		Teams[team].Init(this, team);
	}
	BackButton = NEW(602) SetupBigButton(SETUP_CONTROL_ID_NONE, 20, 530,
	                                     HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TATOOBACK), 40,
	                                     SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	StartButton = NEW(603) SetupBigButton(SETUP_CONTROL_ID_NONE, 740, 530,
	                                      HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_132), 40,
	                                      SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	BackButton->text_size = GetBigTextSize();
	StartButton->text_size = GetBigTextSize();
	ChooseLandButton = NEW(607) SetupBigButton(
		SETUP_CONTROL_ID_NONE, 740, 530, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_96),
		40, SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	ChooseLandButton->text_size = GetBigTextSize();
	ChatEdit = NEW(611) SetupEdit(SETUP_CONTROL_ID_NONE, 140, 545, 520, 30,
	                              HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_140), 1);
	ChatEdit->text_size = GetSmallTextSize();
	ChatList = NEW(613) SetupList(SETUP_CONTROL_ID_NONE, 140, 410, 520, 120);
	ChatList->text_size = GetSmallTextSize();
	ChatList->DrawHighlightBox = false;
	ChatTitleText = NEW(617) SetupStaticText(
		CHANNEL_BOX_CONTROL_ID_TEXT, 40, 380, 720, 28,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_72), TEXTJUSTIFY_CENTRE);
	ClanPlayerText = NEW(620) SetupStaticText(CHANNEL_BOX_CONTROL_ID_TEXT, 100, 380, 300, 28, L"", TEXTJUSTIFY_CENTRE);
	ClanTeamText = NEW(621) SetupStaticText(CHANNEL_BOX_CONTROL_ID_TEXT, 400, 380, 300, 28, L"", TEXTJUSTIFY_CENTRE);
	ClanList = NEW(622) SetupList(SETUP_CONTROL_ID_NONE, 140, 410, 250, 120);
	ClanInfoList = NEW(623) SetupList(SETUP_CONTROL_ID_NONE, 410, 410, 250, 120);
	SetClanButton =
		NEW(624) SetupButton(SETUP_CONTROL_ID_NONE, 250, 540, 300, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_142), 0);
	ClearClanButton =
		NEW(625) SetupButton(SETUP_CONTROL_ID_NONE, 250, 540, 300, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_49), 0);
	ClanInfoList->text_size = GetSmallTextSize();
	ClanInfoList->DrawHighlightBox = false;
	PlayerTitleText = NEW(630) SetupStaticText(CHANNEL_BOX_CONTROL_ID_TEXT, 0, 380, 800, 28, L"", TEXTJUSTIFY_CENTRE);
	PlayerInfoList = NEW(631) SetupList(SETUP_CONTROL_ID_NONE, 140, 410, 520, 120);
	JoinPlayerTeamButton =
		NEW(632) SetupButton(SETUP_CONTROL_ID_NONE, 140, 540, 160, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_78), 0);
	PlayerKickButton =
		NEW(633) SetupButton(SETUP_CONTROL_ID_NONE, 320, 540, 160, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_129), 0);
	PlayerInviteButton =
		NEW(634) SetupButton(SETUP_CONTROL_ID_NONE, 500, 540, 160, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_130), 0);
	PlayerInfoList->text_size = GetSmallTextSize();
	PlayerInfoList->DrawHighlightBox = false;
	LandListTitle = NEW(639)
		SetupStaticText(CHANNEL_BOX_CONTROL_ID_TEXT, 140, 380, 190, 28,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_135), TEXTJUSTIFY_CENTRE);
	LandTitle = NEW(640)
		SetupStaticText(CHANNEL_BOX_CONTROL_ID_TEXT, 0, 380, 800, 28,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_136), TEXTJUSTIFY_CENTRE);
	LandInfoTitle = NEW(641) SetupStaticText(
		CHANNEL_BOX_CONTROL_ID_TEXT, 470, 380, 190, 28,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_80), TEXTJUSTIFY_CENTRE);
	LandList = NEW(642) SetupList(SETUP_CONTROL_ID_NONE, 140, 410, 190, 120);
	LandInfoList = NEW(643) SetupList(SETUP_CONTROL_ID_NONE, 470, 410, 190, 120);
	SelectLandButton =
		NEW(644) SetupButton(SETUP_CONTROL_ID_NONE, 250, 540, 300, 25,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_143), 0);
	LandInfoList->text_size = GetSmallTextSize();
	LandInfoList->DrawHighlightBox = false;
#if defined(VERSION_BW1WCI)
	LockChannelCheckBox = NEW(647)
		SetupCheckBox(CHANNEL_BOX_CONTROL_ID_LOCK_CHANNEL, 55, 400, false, BBSTYLE_CHECK_BOX_OFF,
	                  HelpTextDataPatch::GetTextL(CHANNEL_BOX_PATCH_TEXT_LOCK_CHANNEL), 32, GetMidTextSize() * 0.7f);
	TykeCheckBox =
		NEW(648) SetupCheckBox(CHANNEL_BOX_CONTROL_ID_LOCK_CHANNEL, 705, 400, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataPatch::GetTextL(CHANNEL_BOX_PATCH_TEXT_TYKE), 32, GetMidTextSize() * 0.7f);
#elif defined(VERSION_BW1W110)
	LockChannelCheckBox =
		NEW(647) SetupCheckBox(CHANNEL_BOX_CONTROL_ID_LOCK_CHANNEL, 65, 400, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataPatch::GetTextL(CHANNEL_BOX_PATCH_TEXT_LOCK_CHANNEL), 40);
#elif !defined(VERSION_BW1W100)
	LockChannelCheckBox =
		NEW(647) SetupCheckBox(CHANNEL_BOX_CONTROL_ID_LOCK_CHANNEL, 65, 380, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataPatch::GetTextL(CHANNEL_BOX_PATCH_TEXT_LOCK_CHANNEL), 40);
#endif
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	InitConditionControls();
#endif
}

void ChannelBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void ChannelBox::InitControls()
{
#if defined(VERSION_BW1WCI)
	char tykePath[128];
	strcpy(tykePath, LHSPrintf(CREATURE_MIND_PATH "\\T%s", LHLobby::UserFile));
	HasTyke = LHOSFile::Exists(tykePath) == LH_FILE_RESULT_OK;
#endif
	ThumbnailMapID = 0;
	LocalPlayer = NULL;
	CurrentTab = CHANNEL_BOX_TAB_TEAMS;
	SetTab(CHANNEL_BOX_TAB_TEAMS);
	Requesters.DeleteAll();
	LandInfoList->DeleteAll();
	LandList->DeleteAll();
	ClanInfoList->DeleteAll();
	ClanList->DeleteAll();
	PlayerInfoList->DeleteAll();
	ChatList->DeleteAll();
#if !defined(VERSION_BW1W100)
	if (MPFEConnectionStatus::Status.IsInternetLobby() && MPFEData::Data.IsHost)
	{
		LockChannelCheckBox->Hide(false);
		LockChannelCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
	}
	else
	{
		LockChannelCheckBox->Hide(true);
	}
#endif
	SelectedClan = NULL;
	SelectedLandID = 0;
	CurrentTab = CHANNEL_BOX_TAB_TEAMS;
	SelectedTeam = MPFEData::MAX_TEAMS;
	TextureFormat format;
	format.Type = 0;
	ThumbnailTexture = LH3DTexture::Create(NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_ALPHA,
	                                       LH3D_TEXTURE_ID_NONE, &format);
	ThumbnailMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, ThumbnailTexture);
	ThumbnailMapID = 0;
	if (ClanSymbolTexture != NULL)
	{
		ClanSymbolTexture->Release();
	}
	ClanSymbolTexture = NULL;
	if (ClanSymbolMaterial != NULL)
	{
		ClanSymbolMaterial->Release();
	}
	ClanSymbolMaterial = NULL;
	ClanSymbolTexture = LH3DTexture::Create(NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_ALPHA,
	                                        LH3D_TEXTURE_ID_NONE, &format);
	ClanSymbolMaterial =
		LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA, ClanSymbolTexture);
	memset(ClanSymbolValid, 0, sizeof(ClanSymbolValid));
	memset(ClanSymbolKeys, 0, sizeof(ClanSymbolKeys));
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	InitConditions();
#endif
	UpdateAll();
}

void ChannelBox::UpdateAll()
{
	UpdateCaption();
	UpdateTeams();
	UpdateClans();
	UpdateLands();
	UpdatePlayerInfo();
}

void ChannelBox::UpdateClans()
{
	float scroll = ClanList->ScrollPosition;
#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
	float infoScroll = ClanInfoList->ScrollPosition;
#endif
	memset(ClanSymbolValid, 0, sizeof(ClanSymbolValid));
	ClanList->DeleteAll();
	ClanInfoList->DeleteAll();
	if (LocalPlayer == NULL)
	{
		return;
	}
	if (Data->SelectedPlayer == NULL)
	{
		SelectedClan = NULL;
	}
	MPFEPlayerDetails* player = Data->SelectedPlayer;
	bool               found = false;
	if (player != NULL)
	{
		for (MPFEClanDetails* clan = player->Clans.FindNext(NULL); clan != NULL; clan = player->Clans.FindNext(clan))
		{
			ClanList->AddString(clan->Name, 0, 0, 0);
			ClanList->SetItemData(ClanList->NumItems - 1, (uint32_t)clan);
			if (clan == SelectedClan)
			{
				ClanList->SetSelected(ClanList->NumItems - 1);
				found = true;
			}
		}
	}
	if (!found)
	{
		SelectedClan = NULL;
	}
	ClanInfoList->DeleteAll();
	if (SelectedClan != NULL && SelectedClan->HaveInfo)
	{
		ClanInfoList->AddString(LHSPrintfW(L"%s %s", HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_29),
		                                   CHAR2WCHAR(SelectedClan->LeaderName)),
		                        0, 0, 0);
		ClanInfoList->AddString(
			LHSPrintfW(L"%s %s", HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_31), SelectedClan->Motto), 0, 0, 0);
		ClanInfoList->AddString(LHSPrintfW(L"%s %s", HelpTextData::GetTextL(HELP_TEXT_DIALOG_ADDITION_32),
		                                   CHAR2WCHAR(SelectedClan->WebAddress)),
		                        0, 0, 0);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		ClanInfoList->AddString(LHSPrintfW(L"%s %.02f",
		                                   HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_CREDITS),
		                                   SelectedClan->Rating),
		                        0, 0, 0);
#endif
	}
#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
	ClanInfoList->ScrollPosition = infoScroll;
#endif
	ClanList->ScrollPosition = scroll;
	if (ClanSymbolTexture == NULL)
	{
		return;
	}
	uint16_t* image = ClanSymbolTexture->GetSRamTex()->Lock256x256(false);
	uint8_t*  symbol = NEW(759) uint8_t[64 * 64];
	if (image != NULL)
	{
		for (int team = 0; team <= MPFEData::MAX_TEAMS; team++)
		{
			unsigned long id;
			if (team == MPFEData::MAX_TEAMS)
			{
				id = SelectedClan != NULL ? SelectedClan->ID : 0;
			}
			else
			{
				id = Data->TeamDetails[team].ClanID;
			}
			ClanSymbolValid[team] = false;
			if (id != 0 && id == (unsigned long)ClanSymbolKeys[team])
			{
				ClanSymbolValid[team] = true;
			}
			else if (id != 0)
			{
				MPFEClanDetails* clan = NULL;
				for (int index = 0; index < MPFEData::MAX_TEAMS; index++)
				{
					for (OrderedNode<MPFEPlayerDetails>* node = Data->Teams[index].head; node != NULL;
					     node = node->next)
					{
						if (node->data != NULL)
						{
							for (clan = node->data->Clans.FindNext(NULL); clan != NULL;
							     clan = node->data->Clans.FindNext(clan))
							{
								if (clan->ID == id)
								{
									break;
								}
							}
						}
						if (clan != NULL)
						{
							break;
						}
					}
					if (clan != NULL)
					{
						break;
					}
				}
				if (clan != NULL && clan->Bitmap != NULL)
				{
					char path[0x400];
					GetTempPathA(sizeof(path) - 1, path);
					char file[0x400];
					GetTempFileNameA(path, "boo", 0, file);
					LHSaveData(file, clan->Bitmap, clan->BitmapLength, NULL);
					HBITMAP bitmap = (HBITMAP)LoadImageA(NULL, file, IMAGE_BITMAP, 0, 0, LR_LOADFROMFILE);
					if (bitmap != NULL)
					{
						LoadBMPSymbol(bitmap, symbol);
						for (int row = 0; row < 64; row++)
						{
							for (int column = 0; column < 64; column++)
							{
								uint8_t alpha = symbol[row * 64 + column] >> 4;
								image[((team / 4) * 64 + row) * 256 + (team & 3) * 64 + column] = (alpha << 12) + 0xfff;
							}
							ClanSymbolKeys[team] = (void*)id;
							ClanSymbolValid[team] = true;
						}
						DeleteObject(bitmap);
					}
					_unlink(file);
				}
			}
		}
		ClanSymbolTexture->GetSRamTex()->UnlockLock256x256();
		if (ClanSymbolTexture->GetType() == LH3D_TEXTURE_TYPE_NAMED ||
		    ClanSymbolTexture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
		{
			ClanSymbolTexture->ReloadPending = true;
		}
	}
	delete[] symbol;
}

void ChannelBox::UpdateLands()
{
	if (LocalPlayer == NULL)
	{
		return;
	}
	float scroll = LandList->ScrollPosition;
	LandList->DeleteAll();
	LandInfoList->DeleteAll();
	bool found = false;
	for (LandscapeDetails* land = Data->A2D_GetNextLandscape(NULL); land != NULL;
	     land = Data->A2D_GetNextLandscape(land))
	{
		LandList->AddString(LHSPrintfW(L"%s", GSFunctions::IsEncodedString(land->Name)
		                                          ? GSFunctions::DecodeUnicode(land->Name)
		                                          : CHAR2WCHAR(land->Name)),
		                    0, 0, 0);
		LandList->SetItemData(LandList->NumItems - 1, land->ID);
		if (land->ID == MPFEData::Data.CurrentChannel->MapID)
		{
			wcscat(LandList->item_labels[LandList->NumItems - 1],
			       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_02));
			LandList->UpdateHeights();
			LandList->SetCol(LandList->NumItems - 1, 0xffff00);
		}
		if (!land->MapOnDisk)
		{
			LandList->SetCol(LandList->NumItems - 1, 0xff4040);
		}
		if (land->ID == SelectedLandID)
		{
			LandList->SetSelected(LandList->NumItems - 1);
			found = true;
		}
	}
	if (!found)
	{
		SelectedLandID = 0;
	}
	LandInfoList->DeleteAll();
	if (SelectedLandID != 0)
	{
		LandscapeDetails* details = Data->A2D_GetLandscapeDetailsFromID(SelectedLandID);
		if (details != NULL && details->ThumbnailOnDisk)
		{
			LandInfoList->AddString(LandDescription, 0, 0, 0);
		}
	}
	LandList->ScrollPosition = scroll;
}

void ChannelBox::UpdatePlayerInfo()
{
	if (LocalPlayer == NULL)
	{
		return;
	}
	MPFEPlayerDetails* player = Data->SelectedPlayer;
	if (player == NULL)
	{
		player = LocalPlayer;
	}
	PlayerInfoList->DeleteAll();
	if (player == NULL)
	{
		return;
	}
	for (MPFETitleData* title = player->Titles.FindNext(NULL); title != NULL; title = player->Titles.FindNext(title))
	{
		PlayerInfoList->AddString(LHSPrintfW(L"%s:%s", title->GetTitle(), title->GetData()), 0, 0, 0);
	}
}

void ChannelBox::UpdateCaption()
{
	if (LocalPlayer == NULL)
	{
		return;
	}
	if (MPFEData::Data.IsOOSGame)
	{
		wcscpy(Data->CurrentChannel->MapName, L"Out of sync reload");
	}
	HasMap = Data->CurrentChannel->MapName[0] != L'\0';
#if defined(VERSION_BW1W100)
	swprintf(CaptionText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_10),
	         Data->GetMyPlayerName(), Data->CurrentChannel->Name,
	         HasMap ? Data->CurrentChannel->MapName
	                : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_14),
	         Data->CurrentChannel->NumPlayers);
#else
	wchar_t players[0x400];
	if (MPFEData::Data.CurrentChannel->MaxPlayers == -1)
	{
		swprintf(players, L"%d", Data->CurrentChannel->NumPlayers);
	}
	else
	{
		swprintf(players, L"%d/%d", Data->CurrentChannel->NumPlayers, Data->CurrentChannel->MaxPlayers);
	}
	wchar_t* format =
		NEW(901) wchar_t[wcslen(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_10)) + 1];
	wcscpy(format, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_10));
	for (uint32_t i = 0; i < wcslen(format) - 1; i++)
	{
		if (format[i] == L'%' && format[i + 1] == L'd')
		{
			format[i + 1] = L's';
		}
	}
	wchar_t* map = HasMap ? Data->CurrentChannel->MapName
	                      : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_14);
	swprintf(CaptionText->label, format, Data->GetMyPlayerName(), Data->CurrentChannel->Name, map, players);
#endif
}

void ChannelBox::UpdateTeams()
{
	if (LocalPlayer == NULL)
	{
		return;
	}
	if (HasMap)
	{
		NumTeams = Data->CurrentChannel->NumTeams;
	}
	else
	{
		NumTeams = MPFE_DATA_DEFAULT_NUM_TEAMS;
	}
	int width = 720;
	TeamsRegion.start.x = 40;
	TeamsRegion.start.y = 90;
	TeamsRegion.end.x = 760;
	TeamsRegion.end.y = 360;
	Teams[0].InitControls(590, 90, 170, 270, 0);
	if (Teams[0].List->NumItems != 0)
	{
		width = 550;
		Teams[0].Hide(false);
	}
	else
	{
		Teams[0].Hide(true);
	}
	for (int i = 1; i < MPFEData::MAX_TEAMS; i++)
	{
		Teams[i].InitControls(40, 90, width, 270, 0);
	}
	switch (NumTeams)
	{
	case 1:
		Teams[1].InitControls(40, 90, width, 270, 0);
		break;
	case 2:
		Teams[1].InitControls(40, 90, width / 2, 270, 0);
		Teams[2].InitControls(width / 2 + 40, 90, width / 2, 270, 1);
		break;
	case 3:
		Teams[1].InitControls(40, 90, width / 2, 135, 0);
		Teams[2].InitControls(width / 2 + 40, 90, width / 2, 135, 1);
		Teams[3].InitControls(width / 4 + 40, 225, width / 2, 135, 0);
		break;
	default:
		Teams[1].InitControls(40, 90, width / 2, 135, 0);
		Teams[2].InitControls(width / 2 + 40, 90, width / 2, 135, 1);
		Teams[3].InitControls(40, 225, width / 2, 135, 0);
		Teams[4].InitControls(width / 2 + 40, 225, width / 2, 135, 1);
		break;
	}
	for (int team = 1; team <= MPFEData::MAX_TEAMS - 1; team++)
	{
		Teams[team].Hide(team > NumTeams);
	}
	if (Teams[0].List->NumItems != 0)
	{
		Teams[0].Hide(false);
	}
	else
	{
		Teams[0].Hide(true);
	}
	bool32_t found = false;
	for (int index = 0; index < MPFEData::MAX_TEAMS; index++)
	{
		Teams[index].List->SetSelected(-1);
		for (int item = 0; item < Teams[index].List->NumItems; item++)
		{
			if ((MPFEPlayerDetails*)Teams[index].List->GetItemData(item) == Data->SelectedPlayer)
			{
				found = true;
				Teams[index].List->SetSelected(item);
			}
		}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (CurrentTab == CHANNEL_BOX_TAB_LANDS)
		{
			Teams[index].Hide(true);
		}
#endif
	}
	if (!found)
	{
		Data->SelectedPlayer = NULL;
	}
#if defined(VERSION_BW1WCI)
	TeamEnums localTeam = MPFEData::Data.GetLocalPlayer()->Team;
	if (localTeam != TEAM_UNASSIGNED && localTeam != TEAM_NONE && HasTyke &&
	    MPFEData::Data.TeamDetails[localTeam].ClanID == 0 && MPFEData::Data.GetLocalPlayer()->IsTeamLeader)
	{
		TykeCheckBox->Hide(false);
	}
	else
	{
		TykeCheckBox->Hide(true);
	}
	int check = MPFEData::Data.GetLocalPlayer()->TykeEnabled;
	TykeCheckBox->style = check;
#endif
}

void __stdcall ChannelBox::LandCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	ChatCallback(message, box, control, x, y);
#endif
	if (LocalPlayer == NULL)
	{
		return;
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (message == SETUP_MESSAGE_MOUSE_DOWN && control != NULL &&
	    (control->id == CHANNEL_BOX_CONTROL_ID_TIME_LIMIT_DECREASE ||
	     control->id == CHANNEL_BOX_CONTROL_ID_TIME_LIMIT_INCREASE || control == ConditionIncreaseButton ||
	     control == ConditionDecreaseButton))
	{
		RepeatStartTime = timeGetTime();
		RepeatLastTime = timeGetTime() - 300;
		RepeatControl = control;
		RepeatMode = control->RightButton ? CHANNEL_BOX_REPEAT_RIGHT_BUTTON : CHANNEL_BOX_REPEAT_LEFT_BUTTON;
	}
	if (RepeatMode != CHANNEL_BOX_REPEAT_NONE)
	{
		float held = (timeGetTime() - RepeatStartTime) / 1000.0f;
		float waited = (timeGetTime() - RepeatLastTime) / 1000.0f;
		if (held > 0.5f && !Repeating)
		{
			Repeating = true;
			RepeatStartTime = timeGetTime();
		}
		if (Repeating && held >= 2.0f)
		{
			RepeatCount++;
			RepeatStartTime = timeGetTime();
		}
		if (waited > 0.2f)
		{
			RepeatLastTime = timeGetTime();
			if (RepeatControl == TimeLimitIncreaseButton || RepeatControl == TimeLimitDecreaseButton)
			{
				int step = 1;
				if (RepeatMode == CHANNEL_BOX_REPEAT_RIGHT_BUTTON)
				{
					step = 60;
				}
				if (control == TimeLimitDecreaseButton)
				{
					step = -step;
				}
				int delta = RepeatCount * step;
				if (GGame::g_game->MultiplayerTimeLimit + delta >= 10 &&
				    GGame::g_game->MultiplayerTimeLimit + delta <= 1440)
				{
					GGame::g_game->MultiplayerTimeLimit += delta;
					MPFEData::Data.SettingsChanged = true;
					swprintf(TimeLimitText->label, L"%u:%02u", GGame::g_game->MultiplayerTimeLimit / 60,
					         GGame::g_game->MultiplayerTimeLimit % 60);
				}
			}
			if (RepeatControl == ConditionIncreaseButton)
			{
				IncreaseCondition(RepeatMode == CHANNEL_BOX_REPEAT_LEFT_BUTTON, RepeatCount);
			}
			if (RepeatControl == ConditionDecreaseButton)
			{
				DecreaseCondition(RepeatMode == CHANNEL_BOX_REPEAT_LEFT_BUTTON, RepeatCount);
			}
		}
	}
#endif
	switch (message)
	{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	case SETUP_MESSAGE_MOUSE_UP:
		RepeatMode = CHANNEL_BOX_REPEAT_NONE;
		RepeatCount = 1;
		Repeating = false;
		break;
#endif
	case SETUP_MESSAGE_CLICK:
		if (control == SelectLandButton)
		{
			Data->A2D_SetMap(SelectedLandID);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
			ShowChatOnLandTab = true;
			FocusChatEdit = true;
			ChatEdit->Hide(!MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			ChatList->Hide(!MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			ChatTitleText->Hide(!MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandListTitle->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandTitle->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandInfoTitle->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandList->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandInfoList->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			SelectLandButton->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
#endif
			UpdateAll();
			return;
		}
	case SETUP_MESSAGE_DRAG:
		if (control == LandList)
		{
			if (LandList->DraggingScrollbar && message == SETUP_MESSAGE_DRAG)
			{
				return;
			}
			SelectedLandID = 0;
			if (LandList->SelectedIndex >= 0)
			{
				SelectedLandID = LandList->GetItemData(LandList->SelectedIndex);
			}
			if (message == SETUP_MESSAGE_CLICK)
			{
				if (SelectedLandID != 0)
				{
					Data->A2D_GetThumbnail(SelectedLandID);
				}
				UpdateLands();
			}
		}
		break;
	case SETUP_MESSAGE_PRE_DRAW:
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (!ShowChatOnLandTab)
#endif
		{
			SelectLandButton->Hide(!((LandList->SelectedIndex >= 0 || LandList->DraggingScrollbar) &&
			                         SelectedLandID != 0 && LocalPlayer->IsHost && !Data->MapDownload.IsDownloading() &&
			                         !Data->ThumbDownload.IsDownloading()));
		}
		if (MPFEData::Data.IsOOSGame)
		{
			SelectLandButton->Hide(true);
		}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		LayoutConditions();
		swprintf(LandChatToggleButton->label, L"%s",
		         !ShowChatOnLandTab ? HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_TOCHAT)
		                            : HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_TOMAP));
		swprintf(ReadyCheckBox->label, L"%s", HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_READY));
		if (SelectedCondition == NULL)
		{
			ConditionValueText->Hide(true);
			ConditionIncreaseButton->Hide(true);
			ConditionDecreaseButton->Hide(true);
			ConditionValueLabel->Hide(true);
		}
		UpdateConditions(MPFEData::Data.CurrentChannel->MapID == 0);
		ConditionTitleText->Hide(MPFEData::Data.CurrentChannel->MapID != 0);
#endif
		break;
	case SETUP_MESSAGE_UPDATE: {
		if (SelectedLandID != 0 && SelectedLandID == ThumbnailMapID)
		{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
			if (!ShowChatOnLandTab)
#endif
			{
				float size = ThumbnailSize / 256.0f;
				SetupThing::DrawBox(340, 410, 460, 530, 0.0f, 0.0f, size, size, ThumbnailMaterial, NULL, true, -40960,
				                    40960, false, 100.0f);
			}
			LandscapeDetails* details = Data->A2D_GetLandscapeDetailsFromID(SelectedLandID);
			if (details != NULL && details->ThumbnailOnDisk)
			{
				if (LandInfoList->NumItems != 1 || wcscmp(LandDescription, LandInfoList->item_labels[0]) != 0)
				{
					LandInfoList->DeleteAll();
					LandInfoList->AddString(LandDescription, 0, 0, 0);
				}
			}
		}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (ShowChatOnLandTab)
		{
			break;
		}
#endif
		float progress = 0.0f;
		if (Data->MapDownload.IsDownloading())
		{
			progress = Data->MapDownload.GetPercentageDownloaded();
		}
		else if (Data->ThumbDownload.IsDownloading())
		{
			progress = Data->ThumbDownload.GetPercentageDownloaded();
		}
		int percent = progress;
		if (progress == -1.0f)
		{
			progress = (GetTickCount() & 0xfff) * 100 / 4096;
			progress = progress > 1.0f ? min(progress, 100.0f) : 1.0f;
		}
		if (progress == 0.0f)
		{
			break;
		}
		int left = SelectLandButton->rect.start.x;
		int top = SelectLandButton->rect.start.y;
		int right = SelectLandButton->rect.end.x;
		int bottom = SelectLandButton->rect.end.y;
		SetupThing::DrawBevBox(left, top, right, bottom, 0, 16, -1, LH3D_COLOR_WHITE);
		float fraction = Data->DownloadPercentage > 0.0f ? min(Data->DownloadPercentage, 1.0f) : 0.0f;
		SetupThing::DrawBox(left + 3, top + 3, left + 3 + (int)((right - left - 6) * fraction), bottom - 3, 0x400000ff,
		                    0xff0000ff, 0xff0000ff, 0x400000ff, 0, 1);
		wchar_t text[0x40];
		if (percent > 0)
		{
			swprintf(text, L"%d%%",
			         (int)((Data->DownloadPercentage > 0.0f ? min(Data->DownloadPercentage, 1.0f) : 0.0f) * 100.0f));
			SetupThing::DrawTextWrap(left, top, right, bottom, top, true, text, GetSmallTextSize(),
			                         &LH3DColor(255, 255, 255, 255), true, false);
		}
		swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_05),
		         Data->DownloadSpeed);
		SetupThing::DrawTextWrap(left, bottom, right, bottom * 2 - top, bottom, true, text, GetSmallTextSize(),
		                         &LH3DColor(255, 255, 255, 255), true, false);
		break;
	}
	}
}

void __stdcall ChannelBox::ChatCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	if (LocalPlayer == NULL)
	{
		return;
	}
	NewChatMessage = false;
	if (message != SETUP_MESSAGE_CHAR || control != ChatEdit)
	{
		return;
	}
	if (x == VK_RETURN)
	{
		bool visible = false;
		for (uint32_t i = 0; i < wcslen(ChatEdit->label); i++)
		{
			if (ChatEdit->label[i] > L' ')
			{
				visible = true;
				break;
			}
		}
		if (visible)
		{
			if (SelectedTeam != MPFEData::MAX_TEAMS)
			{
				for (OrderedNode<MPFEPlayerDetails>* node = Data->Teams[SelectedTeam].head; node != NULL;
				     node = node->next)
				{
					Data->A2D_SendChat(node->data->Name, ChatEdit->label, true);
				}
			}
			else if (Data->SelectedPlayer != NULL)
			{
				Data->A2D_SendChat(Data->SelectedPlayer->Name, ChatEdit->label, false);
			}
			else
			{
				Data->A2D_SendChat(NULL, ChatEdit->label, false);
			}
		}
		ChatEdit->SetText(L"");
		FocusChatEdit = true;
	}
	else if (x == VK_ESCAPE)
	{
		ChatEdit->SetText(L"");
		FocusChatEdit = true;
	}
}

void ChannelBox::DrawClanSymbol(int x_min, int y_min, int x_max, int y_max, int team)
{
	if (!ClanSymbolValid[team])
	{
		return;
	}
	int           centreX = (x_min + x_max) / 2;
	int           centreY = (y_min + y_max) / 2;
	int           half = (min(x_max - x_min, y_max - y_min) - 10) / 2;
	float         u = (team & 3) * 0.25f;
	float         v = (team / 4) * 0.25f;
	unsigned long colour = LH3D_COLOR_WHITE;
	if (team < MPFEData::MAX_TEAMS)
	{
		colour = MPFEData::TeamColors[team];
	}
	if (ClanSymbolMaterial != NULL)
	{
		LH3DColor color = colour;
		SetupThing::DrawBox(centreX - half, centreY - half, centreX + half, centreY + half, u, v, u + 0.25, v + 0.25,
		                    ClanSymbolMaterial, &color, true, -40960, 40960, false, 100.0f);
	}
}

void __stdcall ChannelBox::PlayerCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	if (LocalPlayer == NULL)
	{
		return;
	}
	MPFEPlayerDetails* player = Data->SelectedPlayer;
	if (player == NULL)
	{
		player = LocalPlayer;
	}
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		if (control == PlayerKickButton && Data->SelectedPlayer != NULL)
		{
			Data->A2D_KickPlayerFromTeam(Data->SelectedPlayer->Name);
		}
		if (control == PlayerInviteButton && Data->SelectedPlayer != NULL)
		{
			Data->A2D_InvitePlayer(Data->SelectedPlayer->Name);
		}
		if (control == JoinPlayerTeamButton && Data->SelectedPlayer != NULL)
		{
			Data->A2D_JoinTeam(Data->SelectedPlayer->Team);
		}
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		swprintf(PlayerTitleText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_109),
		         player->Name);
		bool canJoin = player->Team != LocalPlayer->Team;
		bool canInvite = LocalPlayer->Team != player->Team && IsTeamLeader;
		bool canKick = LocalPlayer->Team == player->Team && IsTeamLeader;
		if (player->Team == TEAM_NONE)
		{
			canKick = false;
		}
		if (LocalPlayer->IsHost)
		{
			canKick = true;
		}
		if (player == LocalPlayer)
		{
			canJoin = false;
			canInvite = false;
			canKick = false;
		}
		PlayerKickButton->Hide(!canKick);
		JoinPlayerTeamButton->Hide(!canJoin);
		PlayerInviteButton->Hide(!canInvite);
		break;
	}
	}
}

void __stdcall ChannelBox::ClanCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	if (LocalPlayer == NULL)
	{
		return;
	}
	MPFEPlayerDetails* player = Data->SelectedPlayer;
	switch (message)
	{
	case SETUP_MESSAGE_CLICK:
		if (control == SetClanButton)
		{
			Data->A2D_SetClan(SelectedClan);
			UpdateAll();
			return;
		}
		if (control == ClearClanButton)
		{
			Data->A2D_SetClan(NULL);
			UpdateAll();
			return;
		}
	case SETUP_MESSAGE_DRAG:
		if (control == ClanList)
		{
			if (ClanList->DraggingScrollbar && message == SETUP_MESSAGE_DRAG)
			{
				return;
			}
			MPFEClanDetails* previous = SelectedClan;
			SelectedClan = NULL;
			if (ClanList->SelectedIndex >= 0)
			{
				SelectedClan = (MPFEClanDetails*)ClanList->GetItemData(ClanList->SelectedIndex);
			}
			if (previous != SelectedClan)
			{
				UpdateClans();
			}
		}
		break;
	case SETUP_MESSAGE_PRE_DRAW:
		ClanTeamText->label[0] = L'\0';
		ClanPlayerText->label[0] = L'\0';
		if (player != NULL)
		{
			unsigned long clanID = Data->TeamDetails[player->Team].ClanID;
			swprintf(ClanPlayerText->label,
			         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_07), player->Name);
			wcscpy(ClanTeamText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_30));
			if (SelectedClan != NULL)
			{
				swprintf(ClanTeamText->label,
				         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_28),
				         SelectedClan->Name);
			}
			SetClanButton->Hide(!((ClanList->SelectedIndex >= 0 || ClanList->DraggingScrollbar) && IsTeamLeader &&
			                      SelectedClan != NULL && SelectedClan->ID != clanID && player == LocalPlayer));
		}
		else
		{
			SetClanButton->Hide(true);
		}
		ClearClanButton->Hide(true);
		if (SetClanButton->hidden && player != NULL && IsTeamLeader && Data->TeamDetails[player->Team].ClanID != 0 &&
		    player == LocalPlayer)
		{
			ClearClanButton->Hide(false);
		}
		break;
	case SETUP_MESSAGE_POST_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 4;
		DrawClanSymbol(ClanInfoList->rect.start.x, ClanInfoList->rect.start.y, ClanInfoList->rect.end.x,
		               ClanInfoList->rect.end.y, MPFEData::MAX_TEAMS);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	}
}

void __stdcall ChannelBox::Callback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	Data->ActiveDialog = this;
	if (message == SETUP_MESSAGE_UPDATE)
	{
		KickButton->Hide(true);
		LeaveTeamButton->Hide(true);
		InviteButton->Hide(true);
	}
	LocalPlayer = Data->GetLocalPlayer();
	if (LocalPlayer != NULL && LocalPlayer->Team != TEAM_UNASSIGNED)
	{
		SetupList* list = Teams[LocalPlayer->Team].List;
		IsTeamLeader = list->NumItems > 0 && LocalPlayer == (MPFEPlayerDetails*)list->GetItemData(0);
	}
	else
	{
		IsTeamLeader = false;
	}
	for (int team = MPFEData::MAX_TEAMS - 1; team >= 0; team--)
	{
		Teams[team].Callback(message, box, control, x, y);
	}
	switch (CurrentTab)
	{
	case CHANNEL_BOX_TAB_CLANS:
		ClanCallback(message, box, control, x, y);
		break;
	case CHANNEL_BOX_TAB_TEAMS:
		ChatCallback(message, box, control, x, y);
		break;
	case CHANNEL_BOX_TAB_PLAYERS:
		PlayerCallback(message, box, control, x, y);
		break;
	case CHANNEL_BOX_TAB_LANDS:
		LandCallback(message, box, control, x, y);
		break;
	}
	bool lan = MPFEConnectionStatus::Status.IsLanLobby();
	switch (message)
	{
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT: {
		MPFERequesterQ* requester = Requesters.GetHead();
		Requesters.Remove(requester);
		if (requester == (MPFERequesterQ*)y)
		{
			switch (requester->Type)
			{
			case MPFEREQUESTER_INVITES_YOU:
				Data->A2D_PlayerReplyToInvite(requester->Name, x == SETUP_MESSAGE_BOX_ID_YES, requester->Team);
				break;
			case MPFEREQUESTER_WANTS_TO_JOIN:
				Data->A2D_PlayerReplyToJoinRequest(requester->Name, x == SETUP_MESSAGE_BOX_ID_YES, requester->Team);
				break;
			}
		}
		delete requester;
		return;
	}
	case SETUP_MESSAGE_UPDATE: {
		Data->ProcessDaniel();
		Data->ProcessAlex();
		if (NewChatMessage)
		{
			Tabs[CHANNEL_BOX_TAB_TEAMS]->color = (GetTickCount() & 0x200) ? LH3D_COLOR_WHITE : 0xff8000;
		}
		else
		{
			Tabs[CHANNEL_BOX_TAB_TEAMS]->color = LH3D_COLOR_WHITE;
		}
		if (Requesters.GetHead() == NULL || setup_box->OnHold)
		{
			break;
		}
		MPFERequesterQ* requester = Requesters.GetHead();
		unsigned long   colour = requester->Colour;
		switch (requester->Type)
		{
		case MPFEREQUESTER_COULD_NOT_QUERY_DATABASE:
			setup_box->MessageBoxA(
				HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_COULDNOTQUERYDATABASE),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_NOT_FOUND_IN_DATABASE:
			setup_box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_NOTFOUNDINDATABASE),
			                       MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_COULD_NOT_DOWNLOAD_MAP:
			setup_box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_COULDNOTDOWNLOADMAP),
			                       MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_COULD_NOT_DOWNLOAD_THUMB:
			setup_box->MessageBoxA(
				HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_COULDNOTDOWNLOADTHUMB),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_WANTS_TO_JOIN:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_WANTSTOJOIN),
			               requester->Name),
				MSGBOXSTYLE_YES_NO, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_PERSON_COULD_NOT_DOWNLOAD:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_08),
			               requester->Name),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_STILL_DOWNLOADING:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_STILLDOWNLOADING),
			               requester->Name),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_DENIED_JOIN:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_DENIEDJOIN), requester->Name),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_KICKED_YOU:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_KICKEDYOU), requester->Name),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_KICKED_YOU_GAME:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_KICKEDYOUGAME),
			               requester->Name),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_KICK_FAILED:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_KICKFAILED), requester->Name),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_INVITES_YOU:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFER_INVITESYOU), requester->Name),
				MSGBOXSTYLE_YES_NO, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_WAITING_FOR_START_REPLIES:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_145)),
				MSGBOXSTYLE_NO_BUTTONS, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_TRANSFERRING_FILES:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_121)),
				MSGBOXSTYLE_NO_BUTTONS, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_HOST_WAIT_START:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_117)),
				MSGBOXSTYLE_NO_BUTTONS, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_CLIENT_WAIT_START:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_144)),
				MSGBOXSTYLE_NO_BUTTONS, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_I_AM_DOWNLOADING:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_132)),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_OTHER_PEOPLE_DOWNLOADING:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_130)),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_NO_MAP_SELECTED:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_151)),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			setup_box->HoldColour = colour;
			break;
		case MPFEREQUESTER_CREATURE_ERROR:
			setup_box->MessageBoxA(LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_LAST_LINES_04)),
			                       MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			break;
		case MPFEREQUESTER_CREATURE_UPLOADED_NEXT_TIME:
			setup_box->MessageBoxA(LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_LAST_LINES_05)),
			                       MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			break;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		case MPFEREQUESTER_CREATURE_CONDITIONS:
			setup_box->MessageBoxA(
				LHSPrintfW(HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_CREATURE_CANT_START)),
				MSGBOXSTYLE_SINGLE_BUTTON, (unsigned long)requester);
			break;
#endif
		default:
			Requesters.Remove(requester);
			delete requester;
			break;
		}
		break;
	}
	case SETUP_MESSAGE_MOUSE_DOWN:
		if (setup_box->HoverWidget == NULL)
		{
			SelectPlayer(NULL);
			SelectTeam(MPFEData::MAX_TEAMS);
		}
		break;
	case SETUP_MESSAGE_DEACTIVATE:
		Requesters.DeleteAll();
		if (ThumbnailMaterial != NULL)
		{
			ThumbnailMaterial->Release();
		}
		ThumbnailMaterial = NULL;
		if (ThumbnailTexture != NULL)
		{
			ThumbnailTexture->Release();
		}
		ThumbnailTexture = NULL;
		if (ClanSymbolMaterial != NULL)
		{
			ClanSymbolMaterial->Release();
		}
		ClanSymbolMaterial = NULL;
		if (ClanSymbolTexture != NULL)
		{
			ClanSymbolTexture->Release();
		}
		ClanSymbolTexture = NULL;
		break;
	case SETUP_MESSAGE_POST_DRAW:
		if (LH3DAtmos::mat0 != NULL && !LeaveTeamButton->hidden)
		{
			int centreX = (LeaveTeamButton->rect.start.x + LeaveTeamButton->rect.end.x) / 2;
			int centreY = (LeaveTeamButton->rect.start.y + LeaveTeamButton->rect.end.y) / 2;
			int half = (LeaveTeamButton->rect.end.y - LeaveTeamButton->rect.start.y) / 2;
			SetupThing::DrawBox(centreX - half, centreY - half, centreX + half, centreY + half, 0.875f, 0.25f, 1.0f,
			                    0.375f, LH3DAtmos::mat0, &LH3DColor(255, 255, 255, 255), true, -40960, 40960, false,
			                    100.0f);
		}
		if (FocusChatEdit)
		{
			if (!ChatEdit->hidden && !ChatEdit->focus)
			{
				box->SetFocusControl(ChatEdit);
			}
			FocusChatEdit = false;
		}
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		unsigned long colour = 0xffffff;
		if (LocalPlayer != NULL)
		{
			colour = MPFEData::TeamColors[LocalPlayer->Team];
		}
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(CaptionText->rect.start.x, CaptionText->rect.start.y, CaptionText->rect.end.x,
		                    CaptionText->rect.end.y, colour, colour, colour, colour, 1, 1);
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		uint32_t players = 0;
		for (uint32_t team = TEAM_FIRST; team < MPFEData::MAX_TEAMS; team++)
		{
			players += MPFEData::Data.Teams[team].GetSize();
		}
#endif
		MPFEPlayerDetails* player = Data->SelectedPlayer;
		if (player == NULL)
		{
			player = LocalPlayer;
		}
		if (player != NULL && LocalPlayer != NULL)
		{
			if (CurrentTab == CHANNEL_BOX_TAB_PLAYERS || CurrentTab == CHANNEL_BOX_TAB_CLANS)
			{
				colour = MPFEData::TeamColors[player->Team];
			}
			SetupThing::DrawBox(PanelHeaderText->rect.start.x, PanelHeaderText->rect.start.y,
			                    PanelHeaderText->rect.end.x, PanelHeaderText->rect.end.y, colour, colour, colour,
			                    colour, 1, 1);
			SetupThing::DrawAlpha = alpha;
			StartButton->Hide(!LocalPlayer->IsHost);
			ChooseLandButton->Hide(true);
#if !defined(VERSION_BW1W120) && !defined(VERSION_BW1W130)
			if (Data->CurrentChannel->NumPlayers <= 1 || Data->CurrentChannel->MapID == 0)
			{
				StartButton->Hide(true);
			}
#endif
			if (CurrentTab == CHANNEL_BOX_TAB_TEAMS && LocalPlayer->IsHost && StartButton->hidden == true)
			{
				ChooseLandButton->Hide(false);
			}
		}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (MPFEData::Data.GetLocalPlayer() != NULL)
		{
			int check = MPFEData::Data.GetLocalPlayer()->Ready == true;
			ReadyCheckBox->style = check;
		}
		StartButton->Hide(true);
		if (MPFEData::Data.ActiveDialog->CurrentTab == CHANNEL_BOX_TAB_LANDS && MPFEData::Data.IsHost &&
		    MPFEData::Data.CurrentChannel->MapID != 0 && players > 1)
		{
			StartButton->Hide(false);
			for (int index = 0; index < MPFEData::MAX_TEAMS; index++)
			{
				for (OrderedNode<MPFEPlayerDetails>* node = MPFEData::Data.Teams[index].head; node != NULL;
				     node = node->next)
				{
					MPFEPlayerDetails* member = node->data;
					if (member->Team >= TEAM_FIRST && member->Team < MPFEData::MAX_TEAMS && !member->IsHost &&
					    !member->Ready)
					{
						StartButton->Hide(true);
					}
				}
			}
		}
		ReadyCheckBox->Hide(false);
		if (MPFEData::Data.CurrentChannel == NULL || MPFEData::Data.GetLocalPlayer()->Team == TEAM_NONE ||
		    MPFEData::Data.CurrentChannel->MapID == 0 || MPFEData::Data.IsHost)
		{
			ReadyCheckBox->Hide(true);
		}
#endif
		break;
	}
	case SETUP_MESSAGE_ACTIVATE:
		InitControls();
		FocusChatEdit = true;
		break;
	case SETUP_MESSAGE_CLICK:
#if !defined(VERSION_BW1W100)
		if (control == MPFEData::Data.ActiveDialog->LockChannelCheckBox)
		{
			MPFEData::Data.Layer->LockChannel(LockChannelCheckBox->style == BBSTYLE_CHECK_BOX_ON);
			return;
		}
#endif
#if defined(VERSION_BW1WCI)
		if (control == MPFEData::Data.ActiveDialog->TykeCheckBox)
		{
			MPFEData::Data.TykeStatusChanged = true;
			MPFEData::Data.TykeEnabled = MPFEData::Data.ActiveDialog->TykeCheckBox->style == BBSTYLE_CHECK_BOX_ON;
			return;
		}
#endif
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		if (control == MPFEData::Data.ActiveDialog->LandChatToggleButton)
		{
			MPFEData::Data.ActiveDialog->ShowChatOnLandTab = !MPFEData::Data.ActiveDialog->ShowChatOnLandTab;
			if (ShowChatOnLandTab)
			{
				FocusChatEdit = true;
			}
			ChatEdit->Hide(!MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			ChatList->Hide(!MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			ChatTitleText->Hide(!MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandListTitle->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandTitle->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandInfoTitle->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandList->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			LandInfoList->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			SelectLandButton->Hide(MPFEData::Data.ActiveDialog->ShowChatOnLandTab);
			return;
		}
		if (control == MPFEData::Data.ActiveDialog->ReadyCheckBox)
		{
			MPFEData::Data.GetLocalPlayer()->Ready = !MPFEData::Data.GetLocalPlayer()->Ready;
			MPFEData::Data.ReadyChanged = true;
		}
#endif
		if (control != NULL)
		{
			switch (control->id)
			{
			case CHANNEL_BOX_CONTROL_ID_TAB_TEAMS:
			case CHANNEL_BOX_CONTROL_ID_TAB_LANDS:
				SetTab(control->id - CHANNEL_BOX_CONTROL_ID_TAB_TEAMS);
				break;
			case CHANNEL_BOX_CONTROL_ID_TAB_CLANS:
			case CHANNEL_BOX_CONTROL_ID_TAB_PLAYERS:
				if (!lan)
				{
					SetTab(control->id - CHANNEL_BOX_CONTROL_ID_TAB_TEAMS);
				}
				break;
			}
		}
		if (control == ChatEdit &&
		    wcscmp(ChatEdit->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_140)) == 0)
		{
			ChatEdit->SetText(L"");
		}
		if (control == KickButton && Data->SelectedPlayer != NULL)
		{
			Data->A2D_KickPlayerFromTeam(Data->SelectedPlayer->Name);
		}
		if (control == InviteButton && Data->SelectedPlayer != NULL)
		{
			Data->A2D_InvitePlayer(Data->SelectedPlayer->Name);
		}
		if (control == BackButton)
		{
			if (CurrentTab != CHANNEL_BOX_TAB_TEAMS)
			{
				SetTab(CHANNEL_BOX_TAB_TEAMS);
			}
			else
			{
				Data->A2D_LeaveGameChannel();
			}
		}
		if (control == ChooseLandButton)
		{
			SetTab(CHANNEL_BOX_TAB_LANDS);
		}
		if (control == StartButton)
		{
			Data->A2D_StartGame();
		}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
		int id = control->id;
		if (id >= CHANNEL_BOX_CONTROL_ID_CONDITION_FIRST && id <= CHANNEL_BOX_CONTROL_ID_CONDITION_LAST)
		{
			int type = ConditionList->GetItemData(id - CHANNEL_BOX_CONTROL_ID_CONDITION_FIRST);
			SelectedCondition = &Data->Conditions[type];
			ConditionList->SelectedIndex = control->id - CHANNEL_BOX_CONTROL_ID_CONDITION_FIRST;
			ConditionEnabled[type] = ConditionCheckBoxes[control->id - CHANNEL_BOX_CONTROL_ID_CONDITION_FIRST]->style !=
			                         BBSTYLE_CHECK_BOX_OFF;
			SelectCondition();
			std::pair<int, int> change;
			change.first = type;
			int target = ConditionEnabled[type] ? SelectedCondition->Target : -1;
			change.second = target;
			MPFEData::Data.ConditionChanges.push_back(change);
			MPFEData::Data.SettingsChanged = true;
			for (int index = 0; index < MPFEData::MAX_TEAMS; index++)
			{
				for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[index]); it.MoreToDo();
				     it++)
				{
					it.Get()->Ready = false;
				}
			}
		}
		if (control->id == CHANNEL_BOX_CONTROL_ID_CONDITION_LIST)
		{
			SelectCondition();
		}
#endif
		break;
	}
}

void MPFEData::D2A_IncomingChatString(wchar_t* from, wchar_t* text, bool is_private, bool is_team, bool highlight)
{
	int                blue = 0xff;
	int                green = 0xff;
	int                red = 0xff;
	MPFEPlayerDetails* player = from != NULL ? GetPlayerDetailsFromName(from) : NULL;
	if (player == GetLocalPlayer())
	{
		ActiveDialog->ChatList->AddString(LHSPrintfW(L"%s> %s", from, text), 0xc8, 0xc8, 0xc8);
	}
	else if (!highlight)
	{
		if (player != NULL && player->Team == TEAM_UNASSIGNED)
		{
			return;
		}
		if (player != NULL && is_team)
		{
			unsigned long colour = LH3D_BLEND_COLOR(TeamColors[player->Team], LH3D_COLOR_WHITE, 0x80);
			red = (colour >> 16) & 0xff;
			green = (colour >> 8) & 0xff;
			blue = colour & 0xff;
		}
		else
		{
			if (is_private)
			{
				red = 0xff;
				green = 0xc8;
				blue = 0xc8;
			}
			if (is_team)
			{
				red = 0xc8;
				green = 0xff;
				blue = 0xc8;
			}
		}
		if (player != NULL)
		{
			ActiveDialog->ChatList->AddString(LHSPrintfW(L"%s: %s", from, text), red, green, blue);
		}
		else
		{
			ActiveDialog->ChatList->AddString(text, red, green, blue);
		}
	}
	else
	{
		ActiveDialog->ChatList->AddString(LHSPrintfW(L"<%s>:%s", from, text), 0xff, 0xff, 0xff);
	}
	ActiveDialog->ChatList->AutoScroll(true);
	ActiveDialog->NewChatMessage = true;
}

void MPFEData::D2A_UpdateThumbnail(unsigned long id)
{
	ActiveDialog->ThumbnailMapID = id;
	ActiveDialog->BuildThumbnail(&Data.ThumbnailMap);
	if (id == ActiveDialog->SelectedLandID)
	{
		ActiveDialog->UpdateLands();
	}
}

void MPFEData::D2A_PlayerRequestToJoinTeam(TeamEnums team, wchar_t* name)
{
	unsigned long      colour = LH3D_COLOR_WHITE;
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
	if (player != NULL)
	{
		colour = TeamColors[player->Team];
	}
	AddRequester(ActiveDialog, MPFEREQUESTER_WANTS_TO_JOIN, name, team, colour);
}

void MPFEData::D2A_PlayerDeniedJoin(wchar_t* name)
{
	AddRequester(ActiveDialog, MPFEREQUESTER_DENIED_JOIN, name, TEAM_ANY, LH3D_COLOR_WHITE);
}

#if !defined(VERSION_BW1W100)
void MPFEData::D2A_KickFailed(wchar_t* name)
{
	AddRequester(ActiveDialog, MPFEREQUESTER_KICK_FAILED, name, TEAM_ANY, LH3D_COLOR_WHITE);
}
#endif

void MPFEData::D2A_YouWereKicked(wchar_t* name)
{
	AddRequester(ActiveDialog, MPFEREQUESTER_KICKED_YOU, name, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D2A_YouWereKickedGame(wchar_t* name)
{
	MPFEChannelSelector::Instance.setup_box->MessageBoxA(
		LHSPrintfW(HelpTextData::GetTextL(HELP_TEXT_MPFER_KICKEDYOUGAME), name), MSGBOXSTYLE_SINGLE_BUTTON, 0);
}

void MPFEData::D2A_YouHaveBeenInvited(TeamEnums team, wchar_t* name)
{
	unsigned long      colour = LH3D_COLOR_WHITE;
	MPFEPlayerDetails* player = GetPlayerDetailsFromName(name);
	if (player != NULL)
	{
		colour = TeamColors[player->Team];
	}
	AddRequester(ActiveDialog, MPFEREQUESTER_INVITES_YOU, name, team, colour);
}

#if !defined(VERSION_BW1W100)
void MPFEData::D2A_UpdateClanSymbol(unsigned long id)
{
	ActiveDialog->UpdateAll();
}
#endif

void MPFEData::D2A_RefreshTeams()
{
#if defined(VERSION_BW1WCI)
	for (int team = TEAM_FIRST; team < MAX_TEAMS; team++)
	{
		MPFEPlayerDetails* player = Data.GetLowestNumberedPlayerInTeam((TeamEnums)team);
		if (player != NULL)
		{
			ActiveDialog->Data->TeamDetails[team].TykeEnabled = player->TykeEnabled;
		}
		else
		{
			ActiveDialog->Data->TeamDetails[team].TykeEnabled = false;
		}
	}
	ActiveDialog->Data->TeamDetails[TEAM_NONE].TykeEnabled = false;
#endif
	ActiveDialog->UpdateAll();
}

void MPFEData::D2A_RefreshMaps()
{
	ActiveDialog->UpdateLands();
}

void MPFEData::D2A_RefreshPlayerDetails()
{
	ActiveDialog->UpdatePlayerInfo();
}

void MPFEData::D2A_CouldNotQueryDatabase()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_COULD_NOT_QUERY_DATABASE, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

#if !defined(VERSION_BW1W100)
void MPFEData::D2A_NotFoundInDatabase()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_NOT_FOUND_IN_DATABASE, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}
#endif

void MPFEData::D2A_CouldNotDownloadMap()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_COULD_NOT_DOWNLOAD_MAP, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D2A_CouldNotDownloadThumb()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_COULD_NOT_DOWNLOAD_THUMB, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D2A_PersonCouldNotDownload(wchar_t* name)
{
	AddRequester(ActiveDialog, MPFEREQUESTER_PERSON_COULD_NOT_DOWNLOAD, name, TEAM_ANY, LH3D_COLOR_WHITE);
}

#if !defined(VERSION_BW1W100)
void MPFEData::D2A_PersonStillDownloading(wchar_t* name)
{
	AddRequester(ActiveDialog, MPFEREQUESTER_STILL_DOWNLOADING, name, TEAM_ANY, LH3D_COLOR_WHITE);
}
#endif

void MPFEData::D2A_DisableStartGameButton()
{
	ActiveDialog->StartButton->Hide(true);
}

void MPFEData::D2A_EnableStartGameButton()
{
	ActiveDialog->StartButton->Hide(false);
}

#if !defined(VERSION_BW1W100)
void MPFEData::D2A_WaitingForStartReplies()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_WAITING_FOR_START_REPLIES, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}
#endif

void MPFEData::D2A_TransferringFiles()
{
	ActiveDialog->Requesters.DeleteAll();
	ActiveDialog->setup_box->SetOffHold();
	AddRequester(ActiveDialog, MPFEREQUESTER_TRANSFERRING_FILES, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D2A_HostWaitStart()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_HOST_WAIT_START, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D2A_ClientWaitStart()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_CLIENT_WAIT_START, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D2A_CouldNotStartBecauseOtherPeopleDownloading()
{
	if (Data.ActiveDialog->Requesters.GetHead() != NULL &&
	    Data.ActiveDialog->Requesters.GetHead()->Type == MPFEREQUESTER_HOST_WAIT_START)
	{
		ChannelBox* box = Data.ActiveDialog;
		bool        first = true;
		for (LHLinkedListIterator<MPFERequesterQ*> it(box->Requesters); it.MoreToDo(); it++)
		{
			if (it.Get()->Type == MPFEREQUESTER_HOST_WAIT_START)
			{
				if (first)
				{
					box->setup_box->SetOffHold();
				}
				box->Requesters.Remove(it.Get());
				break;
			}
			first = false;
		}
		Data.ActiveDialog->setup_box->SetOffHold();
	}
	AddRequester(ActiveDialog, MPFEREQUESTER_OTHER_PEOPLE_DOWNLOADING, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D2A_CouldNotStartBecauseIAmDownloading()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_I_AM_DOWNLOADING, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

#if !defined(VERSION_BW1W100)
void MPFEData::D2A_CouldNotStartBecauseNoMapSelected()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_NO_MAP_SELECTED, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}
#endif

void MPFEData::D_CreatureErrorMessage()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_CREATURE_ERROR, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

void MPFEData::D_CreatureUploadedNextTime()
{
	AddRequester(ActiveDialog, MPFEREQUESTER_CREATURE_UPLOADED_NEXT_TIME, NULL, TEAM_ANY, LH3D_COLOR_WHITE);
}

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
void ChannelBox::InitConditionControls()
{
	ConditionDecreaseButton = NEW(1979) SetupBigButton(CHANNEL_BOX_CONTROL_ID_CONDITION_DECREASE, 218, 340, L"", 32,
	                                                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	ConditionIncreaseButton = NEW(1980) SetupBigButton(CHANNEL_BOX_CONTROL_ID_CONDITION_INCREASE, 350, 340, L"", 32,
	                                                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_RIGHT_ARROW);
	ConditionValueText =
		NEW(1981) SetupStaticText(CHANNEL_BOX_CONTROL_ID_CONDITION_VALUE, 260, 320, 80, 60, L"", TEXTJUSTIFY_CENTRE);
	ConditionValueLabel = NEW(1982)
		SetupStaticText(CHANNEL_BOX_CONTROL_ID_CONDITION_VALUE_LABEL, 98, 340, 120, 30,
	                    HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_CONDITION_VALUE), TEXTJUSTIFY_LEFT);
	ConditionValueText->text_size = 40;
	TimeLimitLabel =
		NEW(1984) SetupStaticText(CHANNEL_BOX_CONTROL_ID_TIME_LIMIT_LABEL, 400, 340, 160, 30,
	                              HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_TIMELIMIT), TEXTJUSTIFY_LEFT);
	TimeLimitDecreaseButton = NEW(1985) SetupBigButton(CHANNEL_BOX_CONTROL_ID_TIME_LIMIT_DECREASE, 568, 340, L"", 32,
	                                                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	TimeLimitIncreaseButton = NEW(1986) SetupBigButton(CHANNEL_BOX_CONTROL_ID_TIME_LIMIT_INCREASE, 690, 340, L"", 32,
	                                                   SETUP_TEXT_POSITION_RIGHT, BBSTYLE_RIGHT_ARROW);
	TimeLimitText =
		NEW(1987) SetupStaticText(CHANNEL_BOX_CONTROL_ID_TIME_LIMIT_TEXT, 600, 320, 80, 60, L"30", TEXTJUSTIFY_CENTRE);
	TimeLimitText->text_size = 40;
	LandChatToggleButton = NEW(1992) SetupButton(CHANNEL_BOX_CONTROL_ID_LAND_CHAT_TOGGLE, 675, 440, 100, 32,
	                                             HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_TOCHAT), 1);
	ReadyCheckBox = NEW(1993) SetupCheckBox(CHANNEL_BOX_CONTROL_ID_READY, 65, 460, false, BBSTYLE_CHECK_BOX_OFF,
	                                        HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_READY), 40);
	for (int i = 0; i < WC_LAST; i++)
	{
		ConditionCheckBoxes[i] = NEW(1996)
			SetupCheckBox(CHANNEL_BOX_CONTROL_ID_CONDITION_FIRST + i, 645, 0, false, BBSTYLE_CHECK_BOX_OFF, L"", 20);
		ConditionCheckBoxes[i]->Hide(true);
		ConditionCheckBoxes[i]->OnTop = true;
	}
	ConditionList = NEW(2000) SetupList(CHANNEL_BOX_CONTROL_ID_CONDITION_LIST, 100, 120, 600, 200);
	ConditionTitleText = NEW(2001)
		SetupStaticText(CHANNEL_BOX_CONTROL_ID_CONDITION_TITLE, 100, 200, 600, 60,
	                    HelpTextDataMultiplayer::GetTextL(HELP_TEXT_MULTIPLAYER_SELECT_CONDITION), TEXTJUSTIFY_CENTRE);
}

void ChannelBox::InitConditions()
{
	SelectedCondition = NULL;
	ConditionList->Hide(false);
	ConditionList->SelectedIndex = -1;
	ConditionIncreaseButton->Hide(true);
	ConditionDecreaseButton->Hide(true);
	LandChatToggleButton->Hide(true);
	UpdateConditions(true);
	ConditionList->DeleteAll();
	int y = 120;
	for (uint32_t type = 0; type < WC_LAST; type++)
	{
		if (MPFEData::Data.IsHost)
		{
			ConditionList->AddString(HelpTextDataMultiplayer::GetTextL(type + 1), 0, 0, 0);
			ConditionList->SetItemData(type, type);
			ConditionCheckBoxes[type]->rect.start.y = y + 4;
			y += ConditionList->ItemHeights[type];
			ConditionCheckBoxes[type]->rect.end.y = y - 4;
			ConditionCheckBoxes[type]->style = MPFEData::Data.ActiveDialog->ConditionEnabled[type] == true;
		}
		if (!MPFEData::Data.IsHost)
		{
			ConditionCheckBoxes[type]->Hide(true);
		}
	}
	ReadyCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
}

void ChannelBox::IncreaseCondition(bool large, int count)
{
	if (SelectedCondition == NULL)
	{
		return;
	}
	SelectedCondition->AdjustTarget((large ? WinConditionSettings::LargeSteps[SelectedCondition->Type]
	                                       : WinConditionSettings::SmallSteps[SelectedCondition->Type]) *
	                                count);
	swprintf(ConditionValueText->label, L"%u", SelectedCondition->Target);
	std::pair<int, int> change;
	change.first = SelectedCondition->Type;
	change.second = SelectedCondition->Target;
	MPFEData::Data.ConditionChanges.push_back(change);
	MPFEData::Data.SettingsChanged = true;
	for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
	{
		for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[team]); it.MoreToDo(); it++)
		{
			it.Get()->Ready = false;
		}
	}
}

void ChannelBox::DecreaseCondition(bool large, int count)
{
	if (SelectedCondition == NULL)
	{
		return;
	}
	SelectedCondition->AdjustTarget(-(large ? WinConditionSettings::LargeSteps[SelectedCondition->Type]
	                                        : WinConditionSettings::SmallSteps[SelectedCondition->Type]) *
	                                count);
	swprintf(ConditionValueText->label, L"%u", SelectedCondition->Target);
	std::pair<int, int> change;
	change.first = SelectedCondition->Type;
	change.second = SelectedCondition->Target;
	MPFEData::Data.ConditionChanges.push_back(change);
	MPFEData::Data.SettingsChanged = true;
	for (int team = 0; team < MPFEData::MAX_TEAMS; team++)
	{
		for (LHOrderedLinkedListIterator<MPFEPlayerDetails> it(MPFEData::Data.Teams[team]); it.MoreToDo(); it++)
		{
			it.Get()->Ready = false;
		}
	}
}

void ChannelBox::SelectCondition()
{
	int index = ConditionList->SelectedIndex;
	if (!MPFEData::Data.IsHost)
	{
		return;
	}
	ConditionIncreaseButton->Hide(true);
	ConditionDecreaseButton->Hide(true);
	ConditionValueText->Hide(true);
	ConditionValueLabel->Hide(true);
	SelectedCondition = index == -1 ? NULL : &Data->Conditions[ConditionList->GetItemData(index)];
	if (SelectedCondition != NULL)
	{
		if (ConditionEnabled[ConditionList->GetItemData(index)])
		{
			ConditionIncreaseButton->Hide(false);
			ConditionDecreaseButton->Hide(false);
			ConditionValueText->Hide(false);
			ConditionValueLabel->Hide(false);
		}
		swprintf(ConditionValueText->label, L"%u", SelectedCondition->Target);
	}
	else
	{
		ConditionValueText->Hide(true);
		ConditionIncreaseButton->Hide(true);
		ConditionDecreaseButton->Hide(true);
		ConditionValueLabel->Hide(false);
	}
}

void ChannelBox::fn_00621D90() {}

void ChannelBox::fn_00621DA0() {}

void ChannelBox::UpdateConditions(bool hide)
{
	swprintf(TimeLimitText->label, L"%u:%02u", GGame::g_game->MultiplayerTimeLimit / 60,
	         GGame::g_game->MultiplayerTimeLimit % 60);
	if (hide)
	{
		ConditionList->Hide(true);
		ConditionIncreaseButton->Hide(true);
		ConditionDecreaseButton->Hide(true);
		ConditionValueText->Hide(true);
		ConditionValueLabel->Hide(true);
		TimeLimitLabel->Hide(true);
		TimeLimitIncreaseButton->Hide(true);
		TimeLimitDecreaseButton->Hide(true);
		TimeLimitText->Hide(true);
		for (int i = 0; i < WC_LAST; i++)
		{
			ConditionCheckBoxes[i]->Hide(true);
		}
		LandChatToggleButton->Hide(true);
	}
	else
	{
		ConditionList->Hide(false);
		if (SelectedCondition != NULL && ConditionEnabled[ConditionList->GetItemData(ConditionList->SelectedIndex)])
		{
			ConditionIncreaseButton->Hide(!Data->IsHost);
			ConditionDecreaseButton->Hide(!Data->IsHost);
			ConditionValueText->Hide(!Data->IsHost);
			ConditionValueLabel->Hide(!Data->IsHost);
		}
		else
		{
			ConditionIncreaseButton->Hide(true);
			ConditionDecreaseButton->Hide(true);
			ConditionValueText->Hide(true);
			ConditionValueLabel->Hide(true);
		}
		TimeLimitLabel->Hide(false);
		TimeLimitIncreaseButton->Hide(!MPFEData::Data.IsHost);
		TimeLimitDecreaseButton->Hide(!MPFEData::Data.IsHost);
		TimeLimitText->Hide(false);
		for (int i = 0; i < WC_LAST; i++)
		{
			ConditionCheckBoxes[i]->Hide(false);
			LayoutConditions();
		}
		LandChatToggleButton->Hide(false);
	}
	if (!MPFEData::Data.IsHost)
	{
		for (int i = 0; i < WC_LAST; i++)
		{
			ConditionCheckBoxes[i]->Hide(true);
		}
		LandChatToggleButton->Hide(hide);
	}
}

void ChannelBox::LayoutConditions()
{
	if (!MPFEData::Data.IsHost)
	{
		return;
	}
	int y = 0;
	for (int i = 0; i < WC_LAST; i++)
	{
		ConditionCheckBoxes[i]->rect.start.y = y - ConditionList->ScrollPosition + 120;
		ConditionCheckBoxes[i]->rect.start.y += 4;
		ConditionCheckBoxes[i]->rect.end.y = ConditionCheckBoxes[i]->rect.start.y + 20;
		bool visible = ConditionCheckBoxes[i]->rect.start.y > ConditionList->rect.start.y &&
		               ConditionCheckBoxes[i]->rect.end.y < ConditionList->rect.end.y;
		ConditionCheckBoxes[i]->Hide(!visible);
		y += ConditionList->ItemHeights[i];
	}
}
#endif
