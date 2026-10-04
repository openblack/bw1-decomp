#include "ColourConstants.h"
#include "GameTimeConstants.h"
#include "GatheringBox.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

#include <Lionhead/LH3DLib/development/LH3DAtmos.h>
#include <Lionhead/LH3DLib/development/LH3DText.h>
#include <Lionhead/LHLib/ver5.0/LHKey.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHTransport.h>
#include <zlib/zlib.h>

#include <chlasm/HelpTextEnums.h>

#include "Abode.h"
#include "Bubble.h"
#include "Camera.h"
#include "CameraHelp.h"
#include "CameraModeFollow.h"
#include "CameraModeNew3.h"
#include "ControlMap.h"
#include "Creature.h"
#include "ExtraFeatures.h"
#include "FrontEnd.h"
#include "Game.h"
#include "Global.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "LHNetBase.h"
#include "MPFEData.h"
#include "MusicMood.h"
#include "Player.h"
#include "SetupStaticTextNoHit.h"
#include "SoundGuidance.h"
#include "SpecialVillager.h"
#include "Town.h"
#include "alexmfc.h"

GBCategory*               CurrentPlayers;
GBCategory*               OtherPlayers;
GBCategory*               Friends;
LHLinkedList<GBCategory*> PeopleList;
char16_t                  TimeText[256];
char16_t*                 AddFriendText;
char16_t*                 RemoveFriendText;
char16_t*                 CurrentPlayersText;
char16_t*                 OtherPlayersText;
char16_t*                 FriendsText;
LHTimer                   OnlineTimer;
LH_USER_ID                FriendIDs[25];
unsigned int              MP3PlayerEnabled = 0;
unsigned int              MusicMoodController::CreatureMusicMoodEnabled = 0;
GatheringBox*             GatheringBox::Instance = NULL;

uint32_t __stdcall CatDraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max, int clip_min,
                           int clip_max)
{
	int         size = SetupThing::unadjustsize(20);
	GBCategory* category = (GBCategory*)list->GetItemData(index);
	SetupThing::DrawBigButton(x_max - size - 2, clip_min, true, false, size,
	                          category->MessagesEnabled ? BBSTYLE_SPEECH : BBSTYLE_NO_SPEECH, false, y_min + 2,
	                          y_max - 2);
	return 1;
}

uint32_t __stdcall PlayerDraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max, int clip_min,
                              int clip_max)
{
	int       size = SetupThing::unadjustsize(20);
	GBPlayer* player = (GBPlayer*)list->GetItemData(index);
	clip_min = clip_min > y_min ? (clip_min < y_max ? clip_min : y_max) : y_min;
	clip_max = clip_max > y_min ? (clip_max < y_max ? clip_max : y_max) : y_min;
	if (clip_max - 4 > clip_min && player->Online && LH3DAtmos::AtmosMaterial != NULL)
	{
		LH3DColor colour(0xff, 0xff, 0xff, 0xff);
		SetupThing::DrawBox(x_max - size - 2, clip_min, x_max - 2, clip_max, 0.875f, 0.375f, 1.0f, 0.5f,
		                    LH3DAtmos::AtmosMaterial, &colour, 1, -40960, 40960, false, 100.0f);
	}
	return 1;
}

unsigned long GatheringBox::GetMusicID()
{
	if (Music.GetPlayState() != 1)
		return 0;
	char name[1024];
	Music.GetSongName(name, 1023);
	name[1023] = 0;
	unsigned long id = 0;
	unsigned char multiplier = 1;
	for (unsigned int i = 0; i < strlen(name); i++)
		id = ((id << 3) | (id >> 29)) ^ ((multiplier++ | 0x10) * name[i]);
	return id | 1;
}

bool32_t GatheringBox::MusicMoodActive()
{
	if (GGame::g_game->IsMultiplayerGame())
		return false;
	if (MusicLibrary == NULL)
		return false;
	if (!MusicMoodController::CreatureMusicMoodEnabled)
		return false;
	return Music.IsPlayerRunning() != 0;
}

void GatheringBox::HideMP3Controls(int hide)
{
	int playListHidden = PlayList->hidden;
	for (int id = 66601; id < 66620; id++)
	{
		SetupControl* control = setup_box->FindControl(id);
		if (control != NULL)
			control->Hide(hide);
	}
	if (!hide)
		PlayList->Hide(playListHidden);
}

void GatheringBox::UpdatePlayList()
{
	if (MusicLibrary == NULL || !Music.IsPlayerRunning())
		return;
	LastMusicUpdate = GetTickCount();
	if (MusicLibrary == NULL || !(Music.Capabilities & MUSIC_PLAYER_CAPABILITY_PLAYLIST))
		return;
	Music.NumTracks = Music.GetNumTracks();
	PlayList->DeleteAll();
	for (int i = 0; i < Music.NumTracks; i++)
	{
		char path[1024];
		char drive[1024];
		char dir[1024];
		char fname[1024];
		char ext[256];
		Music.GetTrackFileName(i, path, 1024);
		_splitpath(path, drive, dir, fname, ext);
		strcat(fname, ext);
		PlayList->AddString(CHAR2WCHAR(fname), 0, 0, 0);
	}
	PlayList->SetSelected(Music.GetCurrentTrack());
}

char16_t* GatheringBox::GetTimeText(int milliseconds)
{
	int seconds = milliseconds / 1000;
	if (seconds < 0)
		seconds = 0;
	swprintf(TimeText, L"%d:%02d", seconds / 60, seconds % 60);
	return TimeText;
}

void GatheringBox::UpdateMP3()
{
	if (MusicLibrary == NULL)
		return;
	if (!Music.IsPlayerRunning())
	{
		HideMP3Controls(true);
		return;
	}
	LastMusicUpdate = GetTickCount();
	if (MusicLibrary == NULL)
		return;
	Music.TrackPosition = 0;
	Music.TrackLength = 0;
	wcscpy(PositionSlider->label, L"");
	PositionSlider->Style = 0x40000000;
	if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_POSITION)
	{
		Music.TrackPosition = Music.GetPosition();
		wcscat(PositionSlider->label, GetTimeText(Music.TrackPosition));
	}
	if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_LENGTH)
	{
		Music.TrackLength = Music.GetLength();
		if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_POSITION)
			wcscat(PositionSlider->label, L" / ");
		wcscat(PositionSlider->label, GetTimeText(Music.TrackLength));
	}
	if ((Music.Capabilities & MUSIC_PLAYER_CAPABILITY_PLAYLIST) && (!PlayList->focus || !SetupThing::MouseCaptured))
	{
		PlayList->SetSelected(Music.GetCurrentTrack());
		if (Music.GetNumTracks() != Music.NumTracks)
			UpdatePlayList();
	}
	VolumeSlider->SetValue((float)Music.Volume, 0.0f, 255.0f);
	PositionSlider->SetValue((float)Music.TrackPosition, 0.0f, (float)Music.TrackLength);
	char songName[1024];
	memset(songName, 0, sizeof(songName));
	Music.GetSongName(songName, 1024);
	wcscpy(SongName->label, CHAR2WCHAR(songName));
	MusicEmotion* emotion = MusicMoodController::GetCurrentMusicEmotion();
	if (emotion != NULL)
	{
		LH3DColor from = SetupThing::DefaultColor;
		LH3DColor to(0xffff0000);
		if (emotion->Mood >= 0.0f)
			to = LH3DColor(0xff00ff00);
		int amount = abs((int)(emotion->Mood * -255.0f));
		amount = amount > 0 ? (amount < 255 ? amount : 255) : 0;
		MusicButton->color = BlendColor(amount, &from, &to);
	}
	else
	{
		MusicButton->color = SetupThing::DefaultColor;
	}
}

void GatheringBox::Init(uint32_t background_style, uint32_t tall_background,
                        void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	Open = false;
	NumIncoming = 0;
	ShowInterface = true;
	FriendsText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_96);
	OtherPlayersText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_98);
	CurrentPlayersText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_DETAIL_06);
	RemoveFriendText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_72);
	AddFriendText = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_71);
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	QuickChatOpen = false;
	int width = LHSys::TheSystem.screen.width;
	int height = LHSys::TheSystem.screen.height;
	int buttonSize = SetupThing::unadjustsize(20);
	int bigButtonSize = SetupThing::unadjustsize(48);
	setup_box->BackgroundStyle = SETUP_BACKGROUND_NONE;

	SendButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 223) SetupBigButton(
		1, SetupThing::unadjustx(width - 20), SetupThing::unadjusty(0), L"", buttonSize, 0, BBSTYLE_NO_SPEECH);
	QuickChatButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 224) SetupBigButton(
		2, SetupThing::unadjustx(width / 2), SetupThing::unadjusty(0), L"", buttonSize, 0, BBSTYLE_EXCLAIM_ARROW);
	IncomingText = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 226)
		SetupStaticTextNoHit(1000, SetupThing::unadjustx(48), SetupThing::unadjusty(height - 34),
	                         SetupThing::unadjustsize(width - 53), SetupThing::unadjustsize(20), L"");
	IncomingText->text_size = 18;
	IncomingButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 228) SetupBigButton(
		11, SetupThing::unadjustx(0), SetupThing::unadjusty(height - 48), L"", bigButtonSize, 0, BBSTYLE_SPEECH);
	OpenButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 229) SetupBigButton(
		12, SetupThing::unadjustx(width - 20), SetupThing::unadjusty(0), L"", buttonSize, 0, BBSTYLE_SPEECH);
	FriendButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 231)
		SetupButton(6, SetupThing::unadjustx(width - 130), SetupThing::unadjusty(0), SetupThing::unadjustsize(130),
	                SetupThing::unadjustsize(20), L"", 0);
	ChatEdit = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 234)
		SetupEdit(4, SetupThing::unadjustx(width / 2 + 20), SetupThing::unadjusty(0),
	              SetupThing::unadjustsize(width / 2 - 40), SetupThing::unadjustsize(20), L"", 1);
	ChatEdit->text_size = SetupThing::unadjustsize(18);
	FriendButton->text_size = ChatEdit->text_size;
	PlayerList = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 238)
		SetupList(5, SetupThing::unadjustx(width - 130), SetupThing::unadjusty(20), SetupThing::unadjustsize(130),
	              SetupThing::unadjustsize(100));
	PlayerList->text_size = ChatEdit->text_size;
	PlayerList->ScrollbackWidth = buttonSize - 2;
	PlayerList->DrawHighlightBox = false;
	PeopleList = &::PeopleList;
	int listWidth = 520;
	if (LHSys::TheSystem.screen.width - 50 <= 520)
		listWidth = LHSys::TheSystem.screen.width - 50;
	QuickChatList = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 245)
		SetupList(5, SetupThing::unadjustx(width - listWidth), SetupThing::unadjusty(20),
	              SetupThing::unadjustsize(listWidth), SetupThing::unadjustsize(LHSys::TheSystem.screen.height / 2));
	QuickChatList->text_size = ChatEdit->text_size;
	QuickChatList->ScrollbackWidth = buttonSize - 2;
	QuickChatList->UseColorBackground = false;
	for (int i = 0; i < 31; i++)
	{
		QuickChatList->AddString(HelpTextData::GetTextL(HELP_TEXT_YOU_ARE_GOOD_01 + i), 0, 0, 0);
	}
	QuickChatList->Hide(true);
	setup_box->DefaultTextSize = GetSmallTextSize();

	MusicButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 258)
		SetupMP3Button(66600, SetupThing::unadjustx(width - 20), SetupThing::unadjusty(0), SetupThing::unadjustsize(20),
	                   SetupThing::unadjustsize(20), L"", 1, 10);
	MusicButton->ShowButton = 0;
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 261)
		SetupMP3Button(66601, SetupThing::unadjustx(width - 160), SetupThing::unadjusty(20),
	                   SetupThing::unadjustsize(40), SetupThing::unadjustsize(20), L"", 1, 0);
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 262)
		SetupMP3Button(66602, SetupThing::unadjustx(width - 120), SetupThing::unadjusty(20),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 1);
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 263)
		SetupMP3Button(66603, SetupThing::unadjustx(width - 100), SetupThing::unadjusty(20),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 2);
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 264)
		SetupMP3Button(66604, SetupThing::unadjustx(width - 80), SetupThing::unadjusty(20),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 4);
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 265)
		SetupMP3Button(66605, SetupThing::unadjustx(width - 60), SetupThing::unadjusty(20),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 7);
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 266)
		SetupMP3Button(66606, SetupThing::unadjustx(width - 40), SetupThing::unadjusty(20),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 5);
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 267)
		SetupMP3Button(66607, SetupThing::unadjustx(width - 20), SetupThing::unadjusty(20),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 6);
	ShuffleButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 269)
		SetupMP3Button(66608, SetupThing::unadjustx(width - 40), SetupThing::unadjusty(40),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 8);
	RepeatButton = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 270)
		SetupMP3Button(66609, SetupThing::unadjustx(width - 20), SetupThing::unadjusty(40),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 9);
	new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 271)
		SetupMP3Button(66610, SetupThing::unadjustx(width - 20), SetupThing::unadjusty(60),
	                   SetupThing::unadjustsize(20), SetupThing::unadjustsize(20), L"", 1, 3);
	VolumeSlider = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 274)
		SetupSlider(66611, SetupThing::unadjustx(width - 160), SetupThing::unadjusty(40), SetupThing::unadjustsize(120),
	                SetupThing::unadjustsize(20), 0.0f, L"Volume");
	PositionSlider = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 275)
		SetupSlider(66612, SetupThing::unadjustx(width - 160), SetupThing::unadjusty(60), SetupThing::unadjustsize(140),
	                SetupThing::unadjustsize(20), 0.0f, L"");
	SongName = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 277) SetupStaticTextNoHit(
		66613, SetupThing::unadjustx(width - 400), SetupThing::unadjusty(0), SetupThing::unadjustsize(358),
		SetupThing::unadjustsize(20), L"song name", TEXTJUSTIFY_RIGHT);
	PlayList = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 279)
		SetupList(66614, SetupThing::unadjustx(width - 160), SetupThing::unadjusty(80), SetupThing::unadjustsize(160),
	              SetupThing::unadjustsize(320));
	PlayList->Hide(true);

	MP3PlayerEnabled = BWCheckFeatureIsEnabled("BWMP3Player");
	if (MP3PlayerEnabled)
	{
		char searchPath[256];
		sprintf(searchPath, "%s/*.dll", "./BWAudioDLL");
		memset(&Music, 0, sizeof(Music));
		WIN32_FIND_DATA findData;
		HANDLE          find = FindFirstFile(searchPath, &findData);
		char            bestName[256] = "";
		if (find != INVALID_HANDLE_VALUE)
		{
			do
			{
				if (MusicLibrary == NULL || _stricmp(findData.cFileName, bestName) > 0)
				{
					char libraryPath[256];
					sprintf(libraryPath, "%s/%s", "./BWAudioDLL", findData.cFileName);
					HMODULE library = LoadLibrary(libraryPath);
					if (library != NULL)
					{
						FARPROC* functions = (FARPROC*)&Music;
						int      i;
						for (i = 0; i < 22; i++)
						{
							functions[i] = GetProcAddress(library, (LPCSTR)(i + 1));
							if (functions[i] == NULL)
								break;
						}
						if (i == 22 && Music.Initialise())
						{
							if (MusicLibrary != NULL)
								FreeLibrary(MusicLibrary);
							MusicLibrary = library;
							strcpy(bestName, findData.cFileName);
						}
						else
						{
							FreeLibrary(library);
						}
					}
				}
			} while (FindNextFile(find, &findData));
			FindClose(find);
			if (MusicLibrary != NULL)
			{
				if (Music.IsPlayerRunning())
				{
					Music.Capabilities = Music.GetCapabilities();
					Music.Volume = 255;
					UpdatePlayList();
					if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_VOLUME)
						Music.SetVolume(Music.Volume);
					if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_SHUFFLE)
						Music.SetShuffle(Music.Shuffle);
					if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_REPEAT)
						Music.SetRepeat(Music.Repeat);
					UpdateMP3();
				}
				else
				{
					Music.Capabilities = 0;
				}
			}
		}
	}
	HideMP3Controls(true);
}

void GatheringBox::ClearSelection(bool rebuild)
{
	for (GBCategory* category = PeopleList->FindNext(NULL); category != NULL; category = PeopleList->FindNext(category))
	{
		for (GBPlayer* player = category->Players.FindNext(NULL); player != NULL;
		     player = category->Players.FindNext(player))
			player->Selected = false;
	}
	LastSelected = -1;
	if (rebuild)
		RebuildList();
	UpdateFriendButton();
}

void GatheringBox::Select(int first, int last)
{
	if (last < 0)
		return;
	if (first < 0)
		first = last;
	GBPlayer* player = (GBPlayer*)PlayerList->GetItemData(last);
	bool      selected = !player->Selected;
	if (first > last)
	{
		int temp = first;
		first = last;
		last = temp;
	}
	for (int i = first; i <= last; i++)
	{
		if (PlayerList->GetListBoxDraw(i) == PlayerDraw)
			((GBPlayer*)PlayerList->GetItemData(i))->Selected = selected;
	}
}

void GatheringBox::RebuildList()
{
	float scroll = (float)PlayerList->ScrollPosition;
	PlayerList->DeleteAll();
	PlayerList->SelectedIndex = -1;
	if (PeopleList == NULL)
		return;
	char16_t text[128];
	for (GBCategory* category = PeopleList->FindNext(NULL); category != NULL; category = PeopleList->FindNext(category))
	{
		if (category->Expanded)
			wcscpy(text, category->Name);
		else
			UNICODE_sprintf(text, L"%s...", category->Name);
		PlayerList->AddString(text, (unsigned char)(category->Colour >> 16), (unsigned char)(category->Colour >> 8),
		                      (unsigned char)category->Colour);
		PlayerList->SetItemData(PlayerList->NumItems - 1, (uint32_t)category);
		PlayerList->SetListBoxDraw(PlayerList->NumItems - 1, CatDraw);
		if (category->Expanded)
		{
			for (GBPlayer* player = category->Players.FindNext(NULL); player != NULL;
			     player = category->Players.FindNext(player))
			{
				UNICODE_sprintf(text, L"  %s", player->Name);
				PlayerList->AddString(text, (unsigned char)(player->Colour >> 16), (unsigned char)(player->Colour >> 8),
				                      (unsigned char)player->Colour);
				PlayerList->SetCol(PlayerList->NumItems - 1, player->Colour | (player->Selected ? 0xff000000 : 0));
				PlayerList->SetItemData(PlayerList->NumItems - 1, (uint32_t)player);
				PlayerList->SetListBoxDraw(PlayerList->NumItems - 1, PlayerDraw);
			}
		}
	}
	unsigned short screenHeight = LHSys::TheSystem.screen.height;
	int            maxHeight = SetupThing::unadjustsize(screenHeight / 2);
	PlayerList->rect.end.y = PlayerList->rect.start.y + maxHeight;
	PlayerList->UpdateHeights();
	int height = PlayerList->ScrollDistance + 8;
	PlayerList->rect.end.y = PlayerList->rect.start.y + (height > 10 ? (height < maxHeight ? height : maxHeight) : 10);
	PlayerList->UpdateHeights();
	if (scroll > (float)PlayerList->MaxScrollPosition)
		scroll = (float)PlayerList->MaxScrollPosition;
	PlayerList->ScrollPosition = (int)scroll;
	FriendButton->rect.end.y -= FriendButton->rect.start.y;
	FriendButton->rect.start.y = PlayerList->rect.end.y;
	FriendButton->rect.end.y += FriendButton->rect.start.y;
	UpdateFriendButton();
}

void GatheringBox::UpdateFriendButton()
{
	bool found = false;
	bool isFriend = false;
	bool usable = false;
	for (GBCategory* category = PeopleList->FindNext(NULL); category != NULL; category = PeopleList->FindNext(category))
	{
		for (GBPlayer* player = category->Players.FindNext(NULL); player != NULL;
		     player = category->Players.FindNext(player))
		{
			if (player->Selected)
			{
				if (found)
				{
					if (isFriend != player->IsFriend)
						usable = false;
				}
				else
				{
					isFriend = player->IsFriend;
					found = true;
					usable = true;
				}
			}
		}
	}
	FriendButtonUsable = usable;
	wcscpy(FriendButton->label, isFriend ? RemoveFriendText : AddFriendText);
}

void GatheringBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void GatheringBox::InitControls()
{
	RebuildList();
	ChatEdit->SetText(L"");
	setup_box->SetFocusControl(ChatEdit);
}

void GatheringBox::UpdateShow()
{
	int flashStyle = 0;
	int style = 0;
	UpdateIncomingText();
	if (NumIncoming != 0)
	{
		switch (GetTopIncomingType())
		{
		case INCOMINGTEXTTYPE_NONE:
			break;
		case INCOMINGTEXTTYPE_MAIL:
			style = BBSTYLE_ENVELOPE;
			flashStyle = BBSTYLE_ENVELOPE_ARROW;
			break;
		case INCOMINGTEXTTYPE_WEATHER:
			style = GetTopIncoming()->Weather + BBSTYLE_WEATHER_SUNNY;
			flashStyle = style;
			break;
		default:
			flashStyle = BBSTYLE_SPEECH_ARROW;
			style = BBSTYLE_SPEECH;
			break;
		}
	}
	if (((GetTickCount() / 100) & 3) == 0)
		flashStyle = style;
	QuickChatList->Hide(!QuickChatOpen);
	ChatEdit->Hide(!Open);
	PlayerList->Hide(!Open || PlayerList->NumItems <= 0 || QuickChatOpen);
	SendButton->Hide(!Open);
	QuickChatButton->Hide(!Open);
	ChatEdit->Hide(!Open);
	FriendButton->Hide(!Open || !FriendButtonUsable || QuickChatOpen);
	IncomingButton->Hide(NumIncoming == 0 || flashStyle == 0 ||
	                     (GGame::g_game->help_system != NULL && GGame::g_game->help_system->WideScreen != 0));
	IncomingText->Hide(NumIncoming == 0 ||
	                   (GGame::g_game->help_system != NULL && GGame::g_game->help_system->WideScreen != 0));
	OpenButton->Hide(!ShowInterface || Open);
	MusicButton->Hide(!MP3PlayerEnabled || Open || MusicLibrary == NULL);
	MusicButton->rect.start.x = SetupThing::unadjustx(LHSys::TheSystem.screen.width - 40);
	MusicButton->rect.end.x = MusicButton->rect.start.x + SetupThing::unadjustsize(20);
	if (MusicButton->hidden && !SongName->hidden)
		HideMP3Controls(true);
	IncomingButton->style = (BBSTYLE)flashStyle;
	SendButton->style = ChatEdit->label[0] != 0 ? BBSTYLE_RIGHT_ARROW : BBSTYLE_NO_SPEECH;
	if (!IncomingButton->hidden && GetTopIncoming() != NULL && GetTickCount() - GetTopIncoming()->Time > 10000)
	{
		if (NumIncoming > 0)
		{
			NumIncoming--;
			IncomingBubbleInfo* info = GetTopIncoming();
			if (info != NULL)
			{
				IncomingList.Remove(info);
				delete info;
				if (GetTopIncoming() != NULL)
					GetTopIncoming()->Time = GetTickCount();
			}
		}
		UpdateIncomingText();
	}
}

void GatheringBox::MP3Callback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	switch (message)
	{
	case SETUP_MESSAGE_UPDATE:
		if ((int)GetTickCount() > LastMusicUpdate + 1000)
			UpdateMP3();
		break;
	case SETUP_MESSAGE_CLICK:
		if (MusicLibrary == NULL || control == NULL || control->id < 66600 || control->id > 66666 ||
		    !Music.IsPlayerRunning())
			break;
		switch (control->id)
		{
		case 66600:
			HideMP3Controls(!SongName->hidden);
			break;
		case 66601:
			Music.Play();
			break;
		case 66602:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_PAUSE)
				Music.Pause();
			break;
		case 66603:
			Music.Stop();
			break;
		case 66604:
			Music.PreviousTrack();
			break;
		case 66605:
			Music.NextTrack();
			break;
		case 66606:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_REWIND)
				Music.Rewind();
			break;
		case 66607:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_FAST_FORWARD)
				Music.FastForward();
			break;
		case 66608:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_SHUFFLE)
			{
				Music.Shuffle = !Music.Shuffle;
				Music.SetShuffle(Music.Shuffle);
			}
			ShuffleButton->Style = Music.Shuffle;
			break;
		case 66609:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_REPEAT)
			{
				Music.Repeat = !Music.Repeat;
				Music.SetRepeat(Music.Repeat);
			}
			RepeatButton->Style = Music.Repeat;
			break;
		case 66610:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_PLAYLIST)
			{
				PlayList->Hide(!PlayList->hidden);
				if (!PlayList->hidden)
					PlayList->AutoScroll(false);
			}
			break;
		case 66614:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_PLAYLIST)
			{
				int selected = PlayList->SelectedIndex;
				if (selected >= 0 && selected != Music.GetCurrentTrack())
				{
					Music.SetCurrentTrack(selected);
					Music.Play();
				}
			}
			break;
		}
		UpdateMP3();
		break;
	case SETUP_MESSAGE_DRAG:
		if (MusicLibrary == NULL || control == NULL || control->id < 66600 || control->id > 66666 ||
		    !Music.IsPlayerRunning())
			break;
		switch (control->id)
		{
		case 66611:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_VOLUME)
			{
				Music.Volume = (int)VolumeSlider->GetValue(0.0f, 255.0f);
				Music.SetVolume(Music.Volume);
			}
			break;
		case 66612:
			if (Music.Capabilities & MUSIC_PLAYER_CAPABILITY_SEEK)
			{
				Music.TrackPosition = (int)PositionSlider->GetValue(0.0f, (float)Music.TrackLength);
				Music.SetPosition(Music.TrackPosition);
			}
			break;
		}
		break;
	}
}

void __stdcall GatheringBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	int           size = SetupThing::unadjustsize(20);
	GatheringBox* gatheringBox = Instance;
	if (MP3PlayerEnabled)
		gatheringBox->MP3Callback(message, box, control, x, y);
	switch (message)
	{
	case SETUP_MESSAGE_DRAG:
		if (control == gatheringBox->QuickChatList)
		{
			gatheringBox->QuickChatList->DraggingScrollbar = false;
			int selected = gatheringBox->QuickChatList->GetSelected();
			gatheringBox->ChatEdit->SetText(selected >= 0 ? gatheringBox->QuickChatList->item_labels[selected] : L"");
			if (y > gatheringBox->QuickChatList->rect.end.y)
				gatheringBox->QuickChatList->ScrollPosition += 4;
			if (y < gatheringBox->QuickChatList->rect.start.y)
				gatheringBox->QuickChatList->ScrollPosition -= 4;
			if (gatheringBox->QuickChatList->ScrollPosition > gatheringBox->QuickChatList->MaxScrollPosition)
				gatheringBox->QuickChatList->ScrollPosition = gatheringBox->QuickChatList->MaxScrollPosition;
			if (gatheringBox->QuickChatList->ScrollPosition < 0)
				gatheringBox->QuickChatList->ScrollPosition = 0;
		}
		break;
	case SETUP_MESSAGE_MOUSE_UP:
		if (gatheringBox->CloseAfterSend && gatheringBox->QuickChatOpen)
			gatheringBox->Open = false;
		gatheringBox->QuickChatOpen = false;
		gatheringBox->QuickChatList->Hide(true);
		break;
	case SETUP_MESSAGE_MOUSE_DOWN:
		if (control == gatheringBox->OpenButton && gatheringBox->OpenButton->style != BBSTYLE_SPEECH)
		{
			gatheringBox->OpenDialog(true);
			gatheringBox->UpdateShow();
			control = gatheringBox->QuickChatButton;
		}
		if (control == gatheringBox->QuickChatButton && box != NULL)
		{
			gatheringBox->QuickChatOpen = true;
			gatheringBox->QuickChatList->Hide(false);
			gatheringBox->PlayerList->Hide(true);
			box->SetFocusControl(gatheringBox->QuickChatList);
			gatheringBox->QuickChatList->MouseDown(x, y, true);
		}
		break;
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
			return;
		gatheringBox->CloseAfterSend = false;
		if (control == gatheringBox->QuickChatList)
		{
			int selected = gatheringBox->QuickChatList->GetSelected();
			if (selected >= 0)
				gatheringBox->SendMessageA(false, selected);
			return;
		}
		if (control == gatheringBox->SendButton)
			gatheringBox->SendMessageA(false, -1);
		if (control == gatheringBox->OpenButton)
			gatheringBox->OpenDialog(false);
		if (control == gatheringBox->IncomingButton && gatheringBox->NumIncoming > 0)
		{
			bool     follow = false;
			GCamera* camera = GGame::g_game->GetCamera();
			if (camera != NULL)
			{
				CameraMode* mode = camera->ModeCurrentIndex < 0 ? NULL : camera->modes[camera->ModeCurrentIndex];
				if (dynamic_cast<CameraModeNew3*>(mode) != NULL)
					follow = true;
				if ((CameraHelp::EnabledFeatures & CAMERA_FEATURE_MOVE) != CAMERA_FEATURE_MOVE)
					follow = false;
			}
			if (control->RightButton)
				follow = false;
			if (GGame::g_game->control_map != NULL &&
			    (!GGame::g_game->control_map->NormalInterface || !GGame::g_game->control_map->CameraControlEnabled))
				follow = false;
			switch (gatheringBox->GetTopIncomingType())
			{
			case INCOMINGTEXTTYPE_NONE:
				break;
			default:
				if (GGame::g_game->Initialised && GGame::g_game->GetCamera() != NULL &&
				    GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->creature.Get() != NULL && follow)
					new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 699) CameraModeFollow(
						GGame::g_game->GetCamera(), GGame::g_game->MyPlayer()->creature.Get(), 1.0f, 0, 0);
				break;
			case INCOMINGTEXTTYPE_MAIL:
				if (GGame::g_game->Initialised && GGame::g_game->GetCamera() != NULL &&
				    GGame::g_game->MyPlayer() != NULL)
				{
					Villager* villager = NULL;
					Villager* found = NULL;
					bool      homeless = false;
					for (Town* town = GGame::g_game->MyPlayer()->towns.head; town != NULL; town = town->next)
					{
						for (Abode* abode = town->AbodeList.head; abode != NULL; abode = abode->next)
						{
							for (villager = abode->villagers.head; villager != NULL; villager = villager->next)
							{
								if (!(villager->Flags & 4))
								{
									SpecialVillager* special = dynamic_cast<SpecialVillager*>(villager);
									if (special != NULL)
									{
										found = villager;
										if (_stricmp(special->GetSpecialInfo()->name,
										             WCHAR2CHAR(gatheringBox->GetTopIncoming()->Name)) == 0)
											break;
									}
								}
							}
							if (villager != NULL)
								break;
						}
						if (villager != NULL)
							break;
						for (villager = town->HomelessList.head; villager != NULL; villager = villager->next)
						{
							if (!(villager->Flags & 4))
							{
								SpecialVillager* special = dynamic_cast<SpecialVillager*>(villager);
								if (special != NULL && special->CanShowName())
								{
									found = villager;
									if (_stricmp(special->GetSpecialInfo()->name,
									             WCHAR2CHAR(gatheringBox->GetTopIncoming()->Name)) == 0)
									{
										homeless = true;
										break;
									}
								}
							}
						}
					}
					if (villager == NULL)
						villager = found;
					if (villager != NULL)
					{
						if (follow)
							new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 749)
								CameraModeFollow(GGame::g_game->GetCamera(), villager, 1.0f, 0, 0);
						SpecialVillager* special = dynamic_cast<SpecialVillager*>(villager);
						if (special != NULL)
						{
							if (homeless)
								special->MakeHimSpeak(LHSPrintfW(
									HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_TEMPLE_SCROLLS_03),
									gatheringBox->GetTopIncoming()->Name, gatheringBox->GetTopIncoming()->Message));
							else
								special->MakeHimSpeak(LHSPrintfW(
									HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_49),
									gatheringBox->GetTopIncoming()->Name, gatheringBox->GetTopIncoming()->Message));
						}
					}
				}
				break;
			}
			if (gatheringBox->NumIncoming > 0)
			{
				gatheringBox->NumIncoming--;
				IncomingBubbleInfo* info = gatheringBox->GetTopIncoming();
				if (info != NULL)
				{
					gatheringBox->IncomingList.Remove(info);
					delete info;
					if (gatheringBox->GetTopIncoming() != NULL)
						gatheringBox->GetTopIncoming()->Time = GetTickCount();
				}
			}
			gatheringBox->UpdateIncomingText();
		}
		if (control == gatheringBox->FriendButton)
			MakeFriends();
		if (control->id == 5)
		{
			int selected = gatheringBox->PlayerList->GetSelected();
			if (selected >= 0)
			{
				if (gatheringBox->PlayerList->GetListBoxDraw(selected) == CatDraw)
				{
					gatheringBox->ClearSelection(false);
					GBCategory* category = (GBCategory*)gatheringBox->PlayerList->GetItemData(selected);
					if (category == NULL)
						goto done;
					int right = control->rect.end.x - 2;
					int left = control->rect.end.x - size - 2;
					if (((SetupList*)control)->ShowScrollbar)
					{
						left -= ((SetupList*)control)->ScrollbackWidth + 2;
						right -= ((SetupList*)control)->ScrollbackWidth + 2;
					}
					if (x <= left || x >= right)
					{
						category->Expanded = !category->Expanded;
					}
					else
					{
						category->MessagesEnabled = !category->MessagesEnabled;
						if (category->MessagesEnabled != category->Expanded)
							category->Expanded = category->MessagesEnabled;
					}
				}
				else
				{
					unsigned short modifiers = LHSys::TheSystem.keyboard.ModifierFlags;
					int            last = gatheringBox->LastSelected;
					int            wasSelected = false;
					if (gatheringBox->PlayerList->GetListBoxDraw(selected) == PlayerDraw)
						wasSelected = ((GBPlayer*)gatheringBox->PlayerList->GetItemData(selected))->Selected;
					if (modifiers || !wasSelected)
					{
						if (!(modifiers & LH_MOD_CTRL))
							gatheringBox->ClearSelection(false);
						if (modifiers & LH_MOD_SHIFT)
						{
							gatheringBox->Select(last, selected);
							gatheringBox->LastSelected = last;
						}
						else
						{
							gatheringBox->Select(selected, selected);
							gatheringBox->LastSelected = selected;
						}
					}
					else
					{
						gatheringBox->ClearSelection(false);
						gatheringBox->LastSelected = selected;
					}
				}
				gatheringBox->RebuildList();
			}
		done:
			gatheringBox->PlayerList->SelectedIndex = -1;
		}
		break;
	case SETUP_MESSAGE_CHAR:
		if (x == 13)
		{
			gatheringBox->SendMessageA(true, -1);
			LHSys::TheSystem.keyboard.ClearKey();
			LHSys::TheSystem.charRing.Clear();
		}
		break;
	case SETUP_MESSAGE_KEY:
		if (x == 1)
		{
			if (!gatheringBox->SongName->hidden)
				gatheringBox->HideMP3Controls(true);
			gatheringBox->Open = false;
			LHSys::TheSystem.keyboard.ClearKey();
			LHSys::TheSystem.charRing.Clear();
		}
		break;
	case SETUP_MESSAGE_ACTIVATE:
		gatheringBox->InitControls();
		break;
	case SETUP_MESSAGE_PRE_DRAW: {
		float textSize = (float)gatheringBox->ChatEdit->text_size;
		int   width = (int)(SetupThing::Font->GetStringWidth(gatheringBox->ChatEdit->label,
		                                                     wcslen(gatheringBox->ChatEdit->label), textSize) +
		                    20.0f);
		int   maxWidth = SetupThing::unadjustsize(LHSys::TheSystem.screen.width >> 1);
		int   minWidth = SetupThing::unadjustsize(90);
		width = width > minWidth ? (width < maxWidth ? width : maxWidth) : minWidth;
		gatheringBox->ChatEdit->rect.start.x = gatheringBox->ChatEdit->rect.end.x - width;
		gatheringBox->QuickChatButton->rect.start.x -= gatheringBox->QuickChatButton->rect.end.x;
		gatheringBox->QuickChatButton->rect.end.x = gatheringBox->ChatEdit->rect.start.x;
		gatheringBox->QuickChatButton->rect.start.x += gatheringBox->QuickChatButton->rect.end.x;
		gatheringBox->setup_box->Alpha = 0.9f;
		if (LHSys::TheSystem.keyboard.ModifierFlags == LH_MOD_SHIFT)
			gatheringBox->OpenButton->style = BBSTYLE_EXCLAIM_ARROW;
		else
			gatheringBox->OpenButton->style = BBSTYLE_SPEECH;
		gatheringBox->UpdateShow();
		break;
	}
	}
}

void GatheringBox::OpenDialog(bool close_after_send)
{
	CloseAfterSend = close_after_send;
	ShowInterface = true;
	Open = true;
	HideMP3Controls(true);
	ChatEdit->label[0] = 0;
	setup_box->SetFocusControl(ChatEdit);
}

void GatheringBox::SendMessageA(bool close, int quick_chat)
{
	char16_t* text = ChatEdit->label;
	if (quick_chat >= 0)
	{
		PlayTauntSample(quick_chat);
		if (!IsAtLeastOnePlayerSelected())
		{
			SendPacketToPlayers((PACKET_TYPE)73, 4, &quick_chat, false);
		}
		else
		{
			SendPacketToPlayers((PACKET_TYPE)73, 4, &quick_chat, true);
			char16_t* taunt = HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_YOU_ARE_GOOD_01 + quick_chat);
			SendMessageA(Friends, taunt);
			SendMessageA(OtherPlayers, taunt);
		}
	}
	else if (wcslen(text) != 0)
	{
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		status->guidance->HelpSpritesSayOneOffGuidanceIfNecessary(GGuidance::ONE_OFF_GUIDANCE_TYPE_3);
		LHNetBase::Instance.SendSpecial(text);
		if (!IsAtLeastOnePlayerSelected())
		{
			SendPacketToPlayers((PACKET_TYPE)72, wcslen(text) * 2 + 2, text, false);
		}
		else
		{
			SendPacketToPlayers((PACKET_TYPE)72, wcslen(text) * 2 + 2, text, true);
			SendMessageA(Friends, text);
			SendMessageA(OtherPlayers, text);
		}
	}
	if (ChatEdit->label[0] == 0 || CloseAfterSend)
		Open = false;
	ChatEdit->label[0] = 0;
	setup_box->SetFocusControl(NULL);
}

void GatheringBox::UpdateFrame()
{
	bool inGame = GGame::g_game->Initialised != 0 && GGame::g_game->ViewMode == 0 && GGlobal::Global.EditorMode == 0;
	LHSession* session = GGame::g_game->network.session;
	if (session == NULL || session->IsDisconnected() || (GGame::g_game->network.session->IsSinglePlayer() && !Open))
		ShowInterface = false;
	if (GGame::g_game->VideoPlayer != NULL)
		inGame = false;
	if (!inGame)
	{
		if (SetupBox::GetCurrentActiveBox() == setup_box)
			Hide();
		return;
	}
	if (Open || NumIncoming != 0)
		ShowInterface = true;
	bool creatureInteracting = false;
	if (GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->creature.Get() != NULL)
	{
		creatureInteracting = (GGame::g_game->MyPlayer()->creature->Flags >> 4) & 1;
		if (creatureInteracting)
			ShowInterface = false;
	}
	if (MusicLibrary != NULL && MP3PlayerEnabled && GGame::g_game->VideoPlayer == NULL &&
	    GGame::g_game->help_system->WideScreen == 0 && !creatureInteracting)
		ShowInterface = true;
	if (SetupBox::GetCurrentActiveBox() == NULL && ShowInterface)
	{
		Show();
		if (GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->creature.Get() != NULL)
			GGame::g_game->MyPlayer()->creature->bubble->DisplayTime = 3.0f;
	}
	if (SetupBox::GetCurrentActiveBox() == setup_box && !ShowInterface)
		Hide();
}

bool GatheringBox::WantsKeyControl()
{
	if (GGame::g_game->help_system != NULL && GGame::g_game->help_system->WideScreen != 0)
		return false;
	if (IsVisible() && Open && setup_box->FocusedWidget == ChatEdit && !ChatEdit->hidden)
		return true;
	return false;
}

bool GatheringBox::WantsMouseControl()
{
	static bool wantedMouse = false;
	if (IsVisible())
	{
		if (GGame::g_game->help_system == NULL || GGame::g_game->help_system->WideScreen == 0)
		{
			if (!SetupThing::MouseCaptured &&
			    (LHSys::TheSystem.mouse.Buttons & 1 || LHSys::TheSystem.mouse.Buttons & 2))
				return wantedMouse;
			int x = LHSys::TheSystem.mouse.Pos().x;
			int y = LHSys::TheSystem.mouse.Pos().y;
			SetupThing::unadjust(x, y);
			if (setup_box->FindControl(x, y) != NULL)
			{
				wantedMouse = true;
				return true;
			}
			if (SetupThing::MouseCaptured && wantedMouse)
			{
				wantedMouse = true;
				return true;
			}
		}
	}
	wantedMouse = false;
	return false;
}

bool GatheringBox::CanESCOut()
{
	return false;
}

LHPlayer* GetLHPlayerFromNetID(unsigned long net_id)
{
	for (GPlayer* player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextActivePlayer(player))
	{
		for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
		     status = player->GetNextInterfaceStatus(status))
		{
			if (status->GetInterface()->player != NULL && status->GetInterface()->player->UserId.id == net_id)
				return status->GetInterface()->player;
		}
	}
	return NULL;
}

void GatheringBox::RemoveFromList(GBCategory* category, LH_USER_ID user_id)
{
	for (LHLinkedNode<GBPlayer*>* node = category->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player->UserID.Number == user_id.Number)
		{
			category->Players.Remove(player);
			return;
		}
	}
}

void GatheringBox::AddToOtherList(char16_t* name, LH_USER_ID user_id, LHTransportInfo* transport_info)
{
	if (LHNetBase::Instance.User != NULL && LHNetBase::Instance.User->id.Number == user_id.Number)
		return;
	if (IsUserInList(Friends, user_id))
		return;
	if (OtherPlayers == NULL)
		OtherPlayers = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1122) GBCategory(NULL, OtherPlayersText);
	GBPlayer* player =
		new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1124) GBPlayer(-1, -1, name, user_id, 0, transport_info);
	if (user_id > 9999998 && user_id < 10000015)
		player->Colour = 0xffffff00;
	OtherPlayers->Players.Add(player);
	RelinkPeopleList();
}

bool GatheringBox::IsUserInAnyList(LH_USER_ID user_id)
{
	if (IsUserInList(OtherPlayers, user_id))
		return true;
	if (IsUserInList(Friends, user_id))
		return true;
	if (IsUserInList(CurrentPlayers, user_id))
		return true;
	return false;
}

bool GatheringBox::IsUserInList(GBCategory* category, LH_USER_ID user_id)
{
	if (category == NULL)
		return false;
	for (LHLinkedNode<GBPlayer*>* node = category->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->UserID.Number == user_id.Number)
			return true;
	}
	return false;
}

GBPlayer* GatheringBox::FindUserInAnyList(LH_USER_ID user_id)
{
	GBPlayer* player = FindUserInList(CurrentPlayers, user_id);
	if (player == NULL)
	{
		player = FindUserInList(Friends, user_id);
		if (player == NULL)
			player = FindUserInList(OtherPlayers, user_id);
	}
	return player;
}

void GatheringBox::UpdatePlayerOnlineInAllLists(LHTransportInfo* transport_info, char16_t* name, LH_USER_ID user_id)
{
	GBPlayer* player = FindUserInList(CurrentPlayers, user_id);
	if (player != NULL)
	{
		player->TransportInfo.Set(transport_info);
		if (wcscmp(player->Name, name) != 0)
		{
			wcsncpy(player->Name, name, 47);
			RelinkPeopleList();
		}
	}
	player = FindUserInList(Friends, user_id);
	if (player != NULL)
	{
		player->TransportInfo.Set(transport_info);
		player->LastSeen = OnlineTimer.MSeconds();
		player->Online = true;
		if (wcscmp(player->Name, name) != 0)
		{
			wcsncpy(player->Name, name, 47);
			RelinkPeopleList();
		}
	}
	player = FindUserInList(OtherPlayers, user_id);
	if (player != NULL)
	{
		player->TransportInfo.Set(transport_info);
		if (wcscmp(player->Name, name) != 0)
		{
			wcsncpy(player->Name, name, 47);
			RelinkPeopleList();
		}
	}
	else
	{
		AddToOtherList(name, user_id, transport_info);
	}
	if (user_id == 9999999)
	{
		OtherPlayers->Expanded = true;
		if (Instance != NULL)
			Instance->Open = true;
	}
}

GBPlayer* GatheringBox::FindUserInList(GBCategory* category, LH_USER_ID user_id)
{
	if (category == NULL)
		return NULL;
	for (LHLinkedNode<GBPlayer*>* node = category->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player->UserID.Number == user_id.Number)
			return player;
	}
	return NULL;
}

void GatheringBox::RebuildList(LHLinkedList<LHPlayer*>* players, GBCategory** category, const char16_t* name)
{
	GBCategory*     newCategory = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1233) GBCategory(*category, name);
	LHTransportInfo sessionTransportInfo;
	for (LHLinkedNode<LHPlayer*>* node = players->GetStart(); node != NULL; node = node->next.Get())
	{
		LHPlayer* player = node->payload;
		if ((unsigned long)player->GetUserID() == (unsigned long)GGame::g_game->network.session->GetUserID())
			continue;
		GBPlayer* gbPlayer = NULL;
		if (*category != NULL)
		{
			for (LHLinkedNode<GBPlayer*>* playerNode = (*category)->Players.GetStart(); playerNode != NULL;
			     playerNode = playerNode->next.Get())
			{
				GBPlayer* existing = playerNode->payload;
				if (player->UserId.Number == existing->UserID.Number)
				{
					gbPlayer = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1250) GBPlayer(*existing);
					LHTransportInfo* transportInfo = player->GetTransportInfo();
					if (transportInfo != NULL && transportInfo->type == LH_TRANSPORT_TYPE_TCP)
					{
						LHTransportInfo address(transportInfo->GetIP(), 2611);
						gbPlayer->TransportInfo.Set(&address);
					}
					if (transportInfo != NULL && transportInfo->type == LH_TRANSPORT_TYPE_ASYNC &&
					    LHNetBase::Instance.Session != NULL && !LHNetBase::Instance.Session->IsDisconnected())
					{
						LHNetBase::Instance.Session->GetTransportInfo(&sessionTransportInfo, 0);
						if (sessionTransportInfo.type == LH_TRANSPORT_TYPE_TCP)
						{
							sessionTransportInfo.address.port = 2611;
							gbPlayer->TransportInfo.Set(&sessionTransportInfo);
						}
					}
					if (gbPlayer->TransportInfo.type == LH_TRANSPORT_TYPE_TCP)
					{
						GBPlayer* friendPlayer = FindUserInList(Friends, gbPlayer->UserID);
						if (friendPlayer != NULL)
							friendPlayer->TransportInfo.Set(&gbPlayer->TransportInfo);
					}
				}
			}
		}
		if (gbPlayer == NULL)
		{
			LHPlayer* netPlayer = GetLHPlayerFromNetID(player->GetUserID());
			if (netPlayer != NULL)
			{
				gbPlayer = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1280)
					GBPlayer(netPlayer->TeamMemberNumber, netPlayer->TeamNumber, player->GetName(), player->GetUserID(),
				             netPlayer->GetPlayerID(), netPlayer->GetTransportInfo());
				LHTransportInfo* transportInfo = netPlayer->GetTransportInfo();
				if (transportInfo != NULL && transportInfo->type == LH_TRANSPORT_TYPE_TCP)
				{
					LHTransportInfo address(transportInfo->GetIP(), 2611);
					gbPlayer->TransportInfo.Set(&address);
				}
				if (transportInfo == NULL && LHNetBase::Instance.Session != NULL &&
				    !LHNetBase::Instance.Session->IsDisconnected())
				{
					LHNetBase::Instance.Session->GetTransportInfo(&sessionTransportInfo, 0);
					if (sessionTransportInfo.type == LH_TRANSPORT_TYPE_TCP)
					{
						sessionTransportInfo.address.port = 2611;
						gbPlayer->TransportInfo.Set(&sessionTransportInfo);
					}
				}
				if (gbPlayer->TransportInfo.type == LH_TRANSPORT_TYPE_TCP)
				{
					GBPlayer* friendPlayer = FindUserInList(Friends, gbPlayer->UserID);
					if (friendPlayer != NULL)
						friendPlayer->TransportInfo.Set(&gbPlayer->TransportInfo);
				}
			}
		}
		if (gbPlayer != NULL)
			newCategory->Players.Add(gbPlayer);
	}
	if (*category != NULL)
	{
		(*category)->Players.DeleteAll();
		delete *category;
	}
	*category = newCategory;
}

void GatheringBox::RebuildPlayerList()
{
	RebuildList(&GGame::g_game->network.session->Players, &CurrentPlayers, CurrentPlayersText);
	for (LHLinkedNode<GBPlayer*>* node = CurrentPlayers->Players.GetStart(); node != NULL; node = node->next.Get())
		node->payload->Selected = true;
	RelinkPeopleList();
}

void GatheringBox::WriteFriendListToRegistry()
{
	if (Friends == NULL)
		return;
	love_baby     babies[25];
	int           count = 0;
	unsigned char compressed[2048];
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		babies[count].UserID.Number = player->UserID.Number;
		babies[count].TransportInfo = player->TransportInfo;
		wcscpy(babies[count].Name, player->Name);
		if (++count == 25)
			break;
	}
	unsigned long size = sizeof(compressed);
	if (compress(compressed, &size, (Bytef*)babies, count * sizeof(love_baby)) == Z_OK)
		LHNetSetCurrentProfileData("friendlist", compressed, size);
}

void GatheringBox::ReadFriendListFromRegistry()
{
	GBCategory* category;
	if (Friends != NULL)
	{
		category = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1356) GBCategory(Friends, NULL);
		Friends->Players.DeleteAll();
		delete Friends;
	}
	else
	{
		category = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1362) GBCategory(NULL, FriendsText);
	}
	Friends = category;
	RelinkPeopleList();
	love_baby     babies[25];
	unsigned char compressed[2048];
	unsigned long compressedSize = sizeof(compressed);
	unsigned long size = sizeof(babies);
	if (LHNetGetCurrentProfileData("friendlist", compressed, &compressedSize) != LH_OK)
		return;
	if (uncompress((Bytef*)babies, &size, compressed, sizeof(compressed)) != Z_OK)
		return;
	for (int i = size / sizeof(love_baby) - 1; i > -1; i--)
	{
		GBPlayer* player = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1378)
			GBPlayer(-1, -1, babies[i].Name, babies[i].UserID, -1, &babies[i].TransportInfo);
		Friends->Players.Add(player);
		GBPlayer* current = FindUserInList(CurrentPlayers, player->UserID);
		if (current != NULL)
			player->TransportInfo.Set(&current->TransportInfo);
	}
	RelinkPeopleList();
}

void GatheringBox::RelinkPeopleList()
{
	LHLinkedNode<GBCategory*>* node;
	while ((node = ::PeopleList.GetStart()) != NULL)
		::PeopleList.Remove(node->payload);
	SetFriendFlags();
	if (OtherPlayers != NULL && OtherPlayers->Players.count > 0)
		::PeopleList.Add(OtherPlayers);
	if (Friends != NULL && Friends->Players.count > 0)
		::PeopleList.Add(Friends);
	if (CurrentPlayers != NULL && CurrentPlayers->Players.count > 0)
		::PeopleList.Add(CurrentPlayers);
	SortPlayerList();
	Instance->RebuildList();
}

void GatheringBox::SortPlayerList()
{
	if (CurrentPlayers == NULL || CurrentPlayers->Players.count == 0)
		return;
	LHLinkedList<GBPlayer*> sorted;
	do
	{
		GBPlayer* highest = NULL;
		for (LHLinkedNode<GBPlayer*>* node = CurrentPlayers->Players.GetStart(); node != NULL; node = node->next.Get())
		{
			GBPlayer* player = node->payload;
			if (highest == NULL || player->TeamNumber > highest->TeamNumber ||
			    (player->TeamNumber == highest->TeamNumber && player->TeamMemberNumber > highest->TeamMemberNumber))
				highest = player;
		}
		CurrentPlayers->Players.Remove(highest);
		sorted.Add(highest);
	} while (CurrentPlayers->Players.count != 0);
	CurrentPlayers->Players = sorted;
}

void GatheringBox::SetFriendFlags()
{
	if (Friends == NULL)
		return;
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		SetFriendFlags(OtherPlayers, player->UserID);
		SetFriendFlags(CurrentPlayers, player->UserID);
		player->IsFriend = true;
	}
}

void GatheringBox::SetFriendFlags(GBCategory* category, LH_USER_ID user_id)
{
	if (category == NULL)
		return;
	for (LHLinkedNode<GBPlayer*>* node = category->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player->UserID.Number == user_id.Number)
		{
			player->IsFriend = true;
			return;
		}
	}
}

void GatheringBox::InitialiseForCurrentGame()
{
	if (OtherPlayers != NULL)
		OtherPlayers->Players.DeleteAll();
	RebuildPlayerList();
	ReadFriendListFromRegistry();
	Instance->ShowInterface = !GGame::g_game->network.session->IsSinglePlayer();
}

void GatheringBox::SendMessageA(GBCategory* category, char16_t* text)
{
	if (category == NULL)
		return;
	for (LHLinkedNode<GBPlayer*>* node = category->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player->Selected &&
		    (player->TransportInfo.type == LH_TRANSPORT_TYPE_UDP ||
		     player->TransportInfo.type == LH_TRANSPORT_TYPE_TCP) &&
		    LHNetBase::Instance.Transport != NULL && LHNetBase::Instance.Transport->IsConnected())
			LHNetBase::Instance.Chat(player->UserID, text, &player->TransportInfo);
	}
}

void GatheringBox::SendIAmHereToFriends()
{
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
		LHNetBase::Instance.SendIAmHere(&node->payload->TransportInfo);
}

void GatheringBox::SendPacketToPlayers(PACKET_TYPE type, unsigned long size, void* data, bool selected_only)
{
	unsigned char players[32];
	memset(players, 0, sizeof(players));
	unsigned int count = 0;
	if (CurrentPlayers == NULL)
		return;
	data = LHNetBase::Instance.AdjustMessage((char16_t*)data);
	for (LHLinkedNode<GBPlayer*>* node = CurrentPlayers->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (selected_only)
		{
			if (player->Selected && player->PlayerID != -1)
				players[count++] = (unsigned char)player->PlayerID;
		}
		else if (player->PlayerID != -1)
		{
			players[count++] = (unsigned char)player->PlayerID;
		}
	}
	if (count == 0)
		return;
	GPacket        packet;
	unsigned char* buffer = (unsigned char*)malloc(count + size + 9);
	int            offset = 0;
	buffer[offset++] = 0;
	memset(&buffer[offset], 0, (unsigned char*)&packet.Type - (unsigned char*)&packet);
	offset += (unsigned char*)&packet.Type - (unsigned char*)&packet;
	buffer[offset++] = type;
	buffer[offset++] = GGame::g_game->MyPlayer()->GetPlayerNumber();
	buffer[offset++] = count;
	memcpy(&buffer[offset], players, count);
	offset += count;
	memcpy(&buffer[offset], &size, sizeof(size));
	offset += sizeof(size);
	memcpy(&buffer[offset], data, size);
	offset += size;
	GGame::g_game->network.session->Write(buffer, offset);
	free(buffer);
}

void GatheringBox::MakeFriends()
{
	MakeFriends(CurrentPlayers);
	MakeFriends(OtherPlayers);
	RemoveUnlovedFriends();
	WriteFriendListToRegistry();
	RelinkPeopleList();
}

void GatheringBox::UpdateOnlineStatus(long* status, long count)
{
	for (int i = 0; i < count * 2; i += 2)
	{
		unsigned long   id = status[i];
		LHTransportInfo transportInfo;
		ICQinttoLHTransportInfo(status[i + 1], &transportInfo);
		for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
		{
			GBPlayer* player = node->payload;
			if (player->UserID.Number == id)
			{
				player->TransportInfo = transportInfo;
				player->LastSeen = OnlineTimer.MSeconds();
			}
		}
	}
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player->LastSeen > (unsigned long)OnlineTimer.MSeconds())
			player->LastSeen = 0;
		player->Online = IsUserInList(CurrentPlayers, player->UserID) ||
		                 (unsigned long)(OnlineTimer.MSeconds() - player->LastSeen) < 450000;
	}
}

int GatheringBox::GetFriendArray(long* user_ids)
{
	int count = 0;
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		*user_ids = node->payload->UserID.Number;
		count++;
		user_ids++;
	}
	return count;
}

void GatheringBox::MakeFriends(GBCategory* category)
{
	if (category == NULL)
		return;
restart:
	for (LHLinkedNode<GBPlayer*>* node = category->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player->Selected)
		{
			if (Friends == NULL)
				Friends = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1645) GBCategory(NULL, FriendsText);
			if (player->IsFriend)
			{
				GBPlayer* friendPlayer = FindFriend(player);
				if (friendPlayer != NULL)
					friendPlayer->Selected = true;
			}
			else if (category == OtherPlayers)
			{
				Friends->Players.Add(player);
				RemoveFromList(category, player->UserID);
				player->Selected = false;
				goto restart;
			}
			else
			{
				GBPlayer* friendPlayer = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 1666) GBPlayer(*player);
				friendPlayer->Selected = false;
				friendPlayer->IsFriend = true;
				Friends->Players.Add(friendPlayer);
			}
		}
	}
}

GBPlayer* GatheringBox::FindFriend(GBPlayer* player)
{
	if (Friends == NULL)
		return NULL;
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* friendPlayer = node->payload;
		if (friendPlayer->UserID.Number == player->UserID.Number)
			return friendPlayer;
	}
	return NULL;
}

void GatheringBox::RemoveUnlovedFriends()
{
	if (Friends == NULL)
		return;
restart:
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player->Selected)
		{
			RemoveFromList(Friends, player->UserID);
			GBPlayer* current = FindUserInList(CurrentPlayers, player->UserID);
			if (current != NULL)
			{
				current->Selected = false;
				current->IsFriend = false;
			}
			delete player;
			RelinkPeopleList();
			goto restart;
		}
	}
}

bool GatheringBox::IsUserInAnyEnabledList(LH_USER_ID user_id)
{
	if (IsUserInList(CurrentPlayers, user_id) && CurrentPlayers->MessagesEnabled)
		return true;
	if (IsUserInList(OtherPlayers, user_id) && OtherPlayers->MessagesEnabled)
		return true;
	if (IsUserInList(Friends, user_id) && Friends->MessagesEnabled)
		return true;
	return false;
}

bool GatheringBox::IsAtLeastOnePlayerSelected()
{
	for (LHLinkedNode<GBCategory*>* node = ::PeopleList.GetStart(); node != NULL; node = node->next.Get())
	{
		for (LHLinkedNode<GBPlayer*>* playerNode = node->payload->Players.GetStart(); playerNode != NULL;
		     playerNode = playerNode->next.Get())
		{
			if (playerNode->payload->Selected == true)
				return true;
		}
	}
	return false;
}

void GatheringBox::SetFriendOnline(LH_USER_ID user_id, bool online)
{
	if (Friends == NULL)
		return;
	for (LHLinkedNode<GBPlayer*>* node = Friends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if (player != NULL && player->UserID.Number == user_id.Number)
		{
			player->Online = online;
			return;
		}
	}
}
