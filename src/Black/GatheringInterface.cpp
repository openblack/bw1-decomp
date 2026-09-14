#include "GatheringInterface.h"

#include <stdio.h>
#include <new>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>
#include <windows.h>

#include <Lionhead/LH3DLib/development/LH3DAtmos.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <Lionhead/LHLib/ver5.0/LHTimer.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>
#include <zlib/zlib.h>

#include "AlexMfc.h"
#include "Game.h"
#include "GatheringBox.h"
#include "HelpSystem.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "LHNetBase.h"
#include "MusicMood.h"
#include "MPFEData.h"
#include "Player.h"
#include "SetupBox.h"
#include "SetupBigButton.h"
#include "SetupButton.h"
#include "SetupEdit.h"
#include "SetupList.h"
#include "SetupMP3Button.h"
#include "SetupSlider.h"
#include "SetupStaticTextNoHit.h"
#include "SetupThing.h"

// Broad surface recovery; integration evidence and remaining dependencies are in
// Disassembly/RE/GatheringInterface-surface.md. No source-linking claim.
// TODO: Recover Init, the main event handler, and message dispatch.
// In particular, do not infer a LH_USER_ID operator from the incorrect label at
// 00573e30: its three stack arguments and allocations implement recent contacts.

// Descriptive static names; ownership follows the recovered GatheringBox methods
// which initialize, mutate, and destroy this storage. See the handoff for addresses.
GBCategory*               GatheringBox::GatheringCurrentPlayers;
GBCategory*               GatheringBox::GatheringRecentPlayers;
GBCategory*               GatheringBox::GatheringFriends;
LHLinkedList<GBCategory*> GatheringBox::GatheringGroups;
char16_t                  GatheringBox::GatheringTimeText[256];
const char16_t*           GatheringBox::GatheringAddFriendText;
const char16_t*           GatheringBox::GatheringRemoveFriendText;
const char16_t*           GatheringBox::GatheringCurrentPlayersText;
const char16_t*           GatheringBox::GatheringRecentPlayersText;
const char16_t*           GatheringBox::GatheringFriendsText;
GatheringBox*             GatheringBox::GatheringActiveBox;
unsigned int              GatheringBox::GatheringMusicPlayerEnabled;

// BW1W120 00d06320; its members at 00d06420..00d0642c identify LHTimer.
// The original startup sequence constructs and then stops this timer again.
LHTimer GatheringBox::GatheringPresenceTimer;
// BW1W120 00d06440. Carries mouse ownership across a drag outside the controls.
bool GatheringBox::GatheringMouseCaptured;

// BW1W120 00d06438. Definition belongs to this TU, declaration is in MusicMood.h.
unsigned int MusicMoodController::CreatureMusicMoodEnabled;

// Copy only the live transport payload. The compiler-generated copy constructor
// instead copies all 102 bytes; those are deliberately separate operations.
static void CopyGatheringTransport(LHTransportInfo& destination, const LHTransportInfo& source)
{
	destination.type = source.type;
	destination.data_len = source.data_len;
	memcpy(&destination.port, &source.port, source.data_len);
}

// BW1W120 00573f70. MPFEData::TeamColors is a provisional name/scope for the
// shared MPFE team palette, also read by 0061ad20/0061e7c0/00620410/006207c0.
void GBPlayer::Init(long team_member_number, long team_number, const char16_t* name, LH_USER_ID user_id, long player_id,
                    LHTransportInfo* transport)
{
	PlayerId = player_id;
	IsFriend = false;
	Selected = false;
	Online = false;
	LastSeen = 0;
	memset(Name, 0, sizeof(Name));
	if (name != NULL)
		wcsncpy(Name, name, 47);
	Color = 0x00afefff;
	UserId = user_id;
	if (transport != NULL)
		Transport = *transport;
	TeamNumber = team_number;
	TeamMemberNumber = team_member_number;
	if (team_number >= 0 && team_number < 5)
	{
		uint32_t color = MPFEData::TeamColors[team_number];
		// Halfway towards white, using the original 128/256 integer interpolation.
		Color = (((((color & 0xff0000) * -128 + 0x7f800000) >> 8) + (color & 0xffff0000)) & 0xff0000) |
		        (((((color & 0xff00) * -128 + 0x7f8000) >> 8) + (color & 0xffffff00)) & 0xff00) |
		        (((((color & 0xff) * -128 + 0x7f80) >> 8) + color) & 0xff);
	}
}

// BW1W120 005749d0
GBPlayer& GBPlayer::operator=(const GBPlayer& player)
{
	IsFriend = player.IsFriend;
	UserId = player.UserId;
	Transport = player.Transport;
	LastSeen = player.LastSeen;
	PlayerId = player.PlayerId;
	TeamNumber = player.TeamNumber;
	TeamMemberNumber = player.TeamMemberNumber;
	Online = player.Online;
	Selected = player.Selected;
	for (int i = 0; i < 47; ++i)
		Name[i] = player.Name[i];
	Color = player.Color;
	return *this;
}

// BW1W120 005740c0
void GBCategory::Init(GBCategory* group, const char16_t* name)
{
	if (group == NULL)
	{
		ReceiveMessages = true;
		Expanded = true;
		if (name == NULL)
			Name[0] = 0;
		else
			wcscpy(Name, name);
		Color = 0xffffff;
	}
	else
	{
		ReceiveMessages = group->ReceiveMessages;
		Expanded = group->Expanded;
		wcscpy(Name, group->Name);
		Color = group->Color;
	}
	Players.head.Clear();
	Players.count = 0;
}

// BW1W120 005707f0. Signed characters and the wrapping byte multiplier are
// visible in MOVSX and INC AL respectively; this is not a standard string hash.
uint32_t GatheringBox::GetMusicID()
{
	if (State.GetPlaybackState() != 1)
		return 0;
	char name[1024];
	State.GetSongName(name, 1023);
	name[1023] = 0;
	uint32_t      hash = 0;
	unsigned char multiplier = 1;
	for (unsigned int i = 0; i < strlen(name); ++i, ++multiplier)
		hash = ((hash >> 29) | (hash << 3)) ^ (name[i] * (multiplier | 0x10));
	return hash | 1;
}

// BW1W120 00570890
bool GatheringBox::MusicMoodActive()
{
	if (GGame::g_game->IsMultiplayerGame())
		return false;
	if (State.MusicModule == NULL || !MusicMoodController::CreatureMusicMoodEnabled)
		return false;
	return State.MusicAvailable() != 0;
}

// BW1W120 005708d0
void GatheringBox::HideMusicControls(int hidden)
{
	bool playlistHidden = State.PlayList->hidden;
	for (int id = 0x10429; id < 0x1043c; ++id)
	{
		SetupControl* control = setup_box->FindControl(id);
		if (control != NULL)
			control->Hide(hidden != 0);
	}
	if (!hidden)
		State.PlayList->Hide(playlistHidden);
}

// Shared inline seen in 00570930 and 00570b40. The selection remains invalid
// when index is out of range, but the IME test still uses the requested index.
static void SelectGatheringListIndex(SetupList* list, int index)
{
	list->SelectedIndex = index >= 0 && index < list->NumItems ? index : -1;
	if (list->field_0x4 != 0 && SetupThing::IMEActive && index >= 0 &&
	    LHSys::TheSystem.TbIME->CandidateList_GetSelectIdx() != index)
	{
		LHSys::TheSystem.TbIME->CandidateList_SetViewWindow(0, list->NumItems - 1, index);
		list->AutoScroll(false);
	}
}

// BW1W120 00570930
void GatheringBox::UpdatePlayList()
{
	if (State.MusicModule == NULL || !State.MusicAvailable())
		return;
	State.LastMusicUpdate = GetTickCount();
	if (State.MusicModule != NULL && (State.MusicCapabilities & 1))
	{
		State.TrackCount = State.GetTrackCount();
		SetupList* list = State.PlayList;
		while (list->NumItems > 0)
			list->DeleteString(list->NumItems - 1);
		for (int i = 0; i < State.TrackCount; ++i)
		{
			char path[1024], drive[1024], directory[1024], filename[1024], extension[256];
			State.GetTrackPath(i, path, sizeof(path));
			_splitpath(path, drive, directory, filename, extension);
			strcat(filename, extension);
			list = State.PlayList;
			list->InsertString(list->NumItems, CHAR2WCHAR(filename));
			int index = list->NumItems - 1;
			if (index >= 0 && index < list->NumItems)
				list->color[index] = LH3DColor(0);
		}
		SelectGatheringListIndex(State.PlayList, State.GetTrackIndex());
	}
}

// BW1W120 00570ae0
const char16_t* GatheringBox::FormatTime(int milliseconds)
{
	int seconds = milliseconds / 1000;
	if (seconds < 0)
		seconds = 0;
	swprintf(GatheringTimeText, L"%d:%02d", seconds / 60, seconds % 60);
	return GatheringTimeText;
}

// BW1W120 00570b40
void GatheringBox::UpdateMP3()
{
	if (State.MusicModule == NULL)
		return;
	if (!State.MusicAvailable())
	{
		HideMusicControls(1);
		return;
	}
	State.LastMusicUpdate = GetTickCount();
	if (State.MusicModule == NULL)
		return;
	State.TrackPosition = 0;
	State.TrackLength = 0;
	wcscpy(State.PositionSlider->label, L"");
	State.PositionSlider->field_0x1c = 0x40000000;
	if (State.MusicCapabilities & 0x100)
	{
		State.TrackPosition = State.GetTrackPosition();
		wcscat(State.PositionSlider->label, FormatTime(State.TrackPosition));
	}
	if (State.MusicCapabilities & 0x80)
	{
		State.TrackLength = State.GetTrackLength();
		if (State.MusicCapabilities & 0x100)
			wcscat(State.PositionSlider->label, L" / ");
		wcscat(State.PositionSlider->label, FormatTime(State.TrackLength));
	}
	if ((State.MusicCapabilities & 1) && (!State.PlayList->focus || !SetupThing::MouseCaptured))
	{
		SelectGatheringListIndex(State.PlayList, State.GetTrackIndex());
		if (State.GetTrackCount() != State.TrackCount)
			UpdatePlayList();
	}
	float volume = (float)State.Volume;
	volume = volume > 0.0f ? (volume < 255.0f ? volume : 255.0f) : 0.0f;
	State.VolumeSlider->value = volume * (1.0f / 255.0f);
	float length = (float)State.TrackLength;
	float position = (float)State.TrackPosition;
	position = position > 0.0f ? (position < length ? position : length) : 0.0f;
	State.PositionSlider->value = length > 0.0f ? position / length : 0.0f;
	char name[1024] = {0};
	State.GetSongName(name, sizeof(name));
	wcscpy(State.SongName->label, CHAR2WCHAR(name));
	const MusicEmotion* emotion = MusicMoodController::GetCurrentMusicEmotion();
	if (emotion != NULL)
	{
		uint32_t target = emotion->field_0x0 < 0.0f ? 0xffff0000 : 0xff00ff00;
		uint32_t base = *(uint32_t*)&SetupThing::DefaultColor;
		int      amount = abs((int)(emotion->field_0x0 * -255.0f));
		amount = amount > 0 ? (amount < 255 ? amount : 255) : 0;
		uint32_t red = ((((target & 0xff0000) - (base & 0xff0000)) * amount >> 8) + (base & 0xffff0000)) & 0xff0000;
		uint32_t green = ((((target & 0xff00) - (base & 0xff00)) * amount >> 8) + (base & 0xffffff00)) & 0xff00;
		uint32_t blue = ((((target & 0xff) - (base & 0xff)) * amount >> 8) + base) & 0xff;
		State.MusicButton->color = LH3DColor(red | green | blue | (target & 0xff000000));
	}
	else
		State.MusicButton->color = SetupThing::DefaultColor;
}

// BW1W120 005706a0 / 00570710. Both callbacks end RET 20h, matching the shared
// SetupList__ListBoxDraw_t stdcall ABI.
static uint32_t __stdcall CatDraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max, int clip_min,
                                  int clip_max)
{
	int         size = SetupThing::unadjustsize(20);
	GBCategory* group = index >= 0 && index < list->NumItems ? (GBCategory*)list->field_0x264[index] : NULL;
	SetupThing::DrawBigButton(x_max - size - 2, clip_min, true, false, size,
	                          group->ReceiveMessages ? BBSTYLE_SPEECH : BBSTYLE_NO_SPEECH, false, y_min + 2, y_max - 2);
	return 1;
}

static uint32_t __stdcall PlayerDraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max,
                                     int clip_min, int clip_max)
{
	int       size = SetupThing::unadjustsize(20);
	GBPlayer* player = index >= 0 && index < list->NumItems ? (GBPlayer*)list->field_0x264[index] : NULL;
	int       top = clip_min > y_min ? (clip_min < y_max ? clip_min : y_max) : y_min;
	int       bottom = clip_max > y_min ? (clip_max < y_max ? clip_max : y_max) : y_min;
	if (bottom - 4 > top && player->Online && LH3DAtmos::AtmosMaterial != NULL)
	{
		LH3DColor white(0xffffffff);
		SetupThing::DrawBox(x_max - size - 2, top, x_max - 2, bottom, 0.875f, 0.375f, 1.0f, 0.5f,
		                    LH3DAtmos::AtmosMaterial, &white, 1, -40960, 40960, false, 100.0f);
	}
	return 1;
}

// BW1W120 00571f00. This is the real constant-return body, not a placeholder.
bool SetupStaticTextNoHit::HitTest(int x, int y)
{
	return false;
}

// BW1W120 00571f10 / 00571f30, compiler-generated deleting wrappers.
SetupStaticTextNoHit::~SetupStaticTextNoHit() {}
SetupMP3Button::~SetupMP3Button() {}

// BW1W120 00571f50
void GatheringBox::ClearSelection(bool rebuild)
{
	for (GBCategory* group = State.Groups->FindNext(NULL); group != NULL; group = State.Groups->FindNext(group))
		for (GBPlayer* player = group->Players.FindNext(NULL); player != NULL; player = group->Players.FindNext(player))
			player->Selected = false;
	State.SelectedPlayer = -1;
	if (rebuild)
		RebuildList();
	UpdateFriendButton();
}

// BW1W120 00571ff0. Toggle a range to the opposite of the last entry's state;
// group headings inside the range are skipped by testing the drawing callback.
void GatheringBox::Select(int first, int last)
{
	if (last < 0)
		return;
	if (first < 0)
		first = last;
	SetupList* list = State.PlayerList;
	GBPlayer*  endpoint = last < list->NumItems ? (GBPlayer*)list->field_0x264[last] : NULL;
	bool       selected = endpoint->Selected;
	if (first > last)
	{
		int oldFirst = first;
		first = last;
		last = oldFirst;
	}
	for (int i = first; i <= last; ++i)
	{
		list = State.PlayerList;
		if (i >= 0 && i < list->NumItems && list->ListBoxDraw[i] == PlayerDraw)
			((GBPlayer*)list->field_0x264[i])->Selected = !selected;
	}
}

// BW1W120 00572090
void GatheringBox::RebuildList()
{
	SetupList* list = State.PlayerList;
	float      oldScroll = (float)list->ScrollPosition;
	while (list->NumItems > 0)
		list->DeleteString(list->NumItems - 1);
	State.PlayerList->SelectedIndex = -1;
	if (State.Groups == NULL)
		return;
	char16_t text[128];
	for (GBCategory* group = State.Groups->FindNext(NULL); group != NULL; group = State.Groups->FindNext(group))
	{
		if (group->Expanded)
			wcscpy(text, group->Name);
		else
			UNICODE_sprintf(text, L"%s...", group->Name);
		list = State.PlayerList;
		list->InsertString(list->NumItems, text);
		int index = list->NumItems - 1;
		if (index >= 0 && index < list->NumItems)
		{
			list->color[index] = LH3DColor(group->Color & 0xffffff);
			list->field_0x264[index] = (uint32_t)group;
			list->ListBoxDraw[index] = CatDraw;
		}
		if (group->Expanded)
		{
			for (GBPlayer* player = group->Players.FindNext(NULL); player != NULL;
			     player = group->Players.FindNext(player))
			{
				UNICODE_sprintf(text, L"  %s", player->Name);
				list = State.PlayerList;
				list->InsertString(list->NumItems, text);
				index = list->NumItems - 1;
				if (index >= 0 && index < list->NumItems)
				{
					list->color[index] = LH3DColor(player->Color & 0xffffff);
					list->color[index] = LH3DColor(player->Color | (player->Selected ? 0xff000000 : 0));
					list->field_0x264[index] = (uint32_t)player;
					list->ListBoxDraw[index] = PlayerDraw;
				}
			}
		}
	}
	int maximumHeight = SetupThing::unadjustsize(LHSys::TheSystem.screen.height / 2);
	list = State.PlayerList;
	list->rect.p1.y = list->rect.p0.y + maximumHeight;
	list->UpdateHeights();
	int height = list->ScrollDistance + 8;
	height = height > 10 ? (height < maximumHeight ? height : maximumHeight) : 10;
	list->rect.p1.y = list->rect.p0.y + height;
	list->UpdateHeights();
	if (oldScroll > (float)list->field_0x278)
		oldScroll = (float)list->field_0x278;
	list->ScrollPosition = (int)oldScroll;
	State.FriendButton->rect.p1.y -= State.FriendButton->rect.p0.y;
	State.FriendButton->rect.p0.y = list->rect.p1.y;
	State.FriendButton->rect.p1.y += State.FriendButton->rect.p0.y;
	UpdateFriendButton();
}

// BW1W120 00572460. A mixed friend/nonfriend selection disables the operation;
// its caption still reflects the first selected entry, as in the original.
void GatheringBox::UpdateFriendButton()
{
	bool isFriend = false;
	bool found = false;
	bool uniform = false;
	for (GBCategory* group = State.Groups->FindNext(NULL); group != NULL; group = State.Groups->FindNext(group))
	{
		for (GBPlayer* player = group->Players.FindNext(NULL); player != NULL; player = group->Players.FindNext(player))
		{
			if (player->Selected)
			{
				if (found)
				{
					if (isFriend != player->IsFriend)
						uniform = false;
				}
				else
				{
					isFriend = player->IsFriend;
					found = true;
					uniform = true;
				}
			}
		}
	}
	State.CanChangeFriend = uniform;
	wcscpy(State.FriendButton->label, isFriend ? GatheringRemoveFriendText : GatheringAddFriendText);
}

// BW1W120 00572530 BW1M100 103266d0
void GatheringBox::Destroy()
{
	DialogBoxBase::Destroy();
	GatheringActiveBox = NULL;
}

// BW1W120 00572540
void GatheringBox::InitControls()
{
	RebuildList();
	SetupEdit* edit = State.ChatEdit;
	wcsncpy(edit->label, L"", 255);
	edit->label[255] = 0;
	edit->CursorPosition = wcslen(edit->label);
	edit->SelectEnd = edit->CursorPosition;
	edit->SelectStart = edit->CursorPosition;
	edit->field_0x258 = 0;
	setup_box->SetFocusControl(edit);
}

// The repeated caption copy in 005725b0 and the main callback is an inline in
// the target. It does not remove a message or update the edit cursor.
static void UpdateGatheringMessageCaption(GatheringBoxState& state)
{
	state.MessageCount = state.Messages.count;
	if (state.MessageCount > 0 && state.Messages.GetStart() != NULL && state.Messages.GetStart()->payload != NULL)
	{
		wcsncpy(state.MessageText->label, state.Messages.GetStart()->payload->Text, 255);
		state.MessageText->label[255] = 0;
	}
}

// BW1W120 005725b0
void GatheringBox::UpdateShow()
{
	UpdateGatheringMessageCaption(State);
	int               flashingStyle = 0;
	int               steadyStyle = 0;
	GatheringMessage* message = State.Messages.GetStart() != NULL ? State.Messages.GetStart()->payload : NULL;
	if (State.MessageCount != 0 && message != NULL)
	{
		if (message->Type == 2)
		{
			flashingStyle = BBSTYLE_ENVELOPE;
			steadyStyle = BBSTYLE_ENVELOPE_ARROW;
		}
		else if (message->Type == 3)
			flashingStyle = steadyStyle = message->field_0x1004 + BBSTYLE_WEATHER_SUNNY;
		else if (message->Type != 0)
		{
			flashingStyle = BBSTYLE_SPEECH;
			steadyStyle = BBSTYLE_SPEECH_ARROW;
		}
	}
	if (((GetTickCount() / 100) & 3) == 0)
		steadyStyle = flashingStyle;
	State.QuickChatList->Hide(!State.QuickChat);
	State.ChatEdit->Hide(!State.ChatOpen);
	State.PlayerList->Hide(!State.ChatOpen || State.PlayerList->NumItems < 1 || State.QuickChat);
	State.SendButton->Hide(!State.ChatOpen);
	State.field_0xc0->Hide(!State.ChatOpen);
	State.ChatEdit->Hide(!State.ChatOpen);
	State.FriendButton->Hide(!State.ChatOpen || !State.CanChangeFriend || State.QuickChat);
	bool helpActive = GGame::g_game->help_system != NULL && GGame::g_game->help_system->field_0x45e8 != 0;
	State.MessageButton->Hide(State.MessageCount == 0 || steadyStyle == 0 || helpActive);
	State.MessageText->Hide(State.MessageCount == 0 || helpActive);
	State.ChatButton->Hide(!State.ShowInterface || State.ChatOpen);
	State.MusicButton->Hide(!GatheringMusicPlayerEnabled || State.ChatOpen || State.MusicModule == NULL);
	State.MusicButton->rect.p0.x = SetupThing::unadjustx(LHSys::TheSystem.screen.width - 40);
	State.MusicButton->rect.p1.x = State.MusicButton->rect.p0.x + SetupThing::unadjustsize(20);
	if (State.MusicButton->hidden && !State.SongName->hidden)
		HideMusicControls(1);
	State.MessageButton->style = (BBSTYLE)steadyStyle;
	State.SendButton->style = State.ChatEdit->label[0] != 0 ? BBSTYLE_RIGHT_ARROW : BBSTYLE_NO_SPEECH;
	message = State.Messages.GetStart() != NULL ? State.Messages.GetStart()->payload : NULL;
	if (!State.MessageButton->hidden && message != NULL && GetTickCount() - message->Time > 10000)
	{
		if (State.MessageCount > 0)
		{
			--State.MessageCount;
			State.Messages.Remove(message);
			delete message;
			if (State.Messages.GetStart() != NULL && State.Messages.GetStart()->payload != NULL)
				State.Messages.GetStart()->payload->Time = GetTickCount();
		}
		UpdateGatheringMessageCaption(State);
	}
}

// BW1W120 005729e0. Five explicit callback arguments, RET 14h. The event and
// control ID values come from the target switch, not a guessed enum.
void GatheringBox::MP3Callback(int event, SetupBox* box, SetupControl* control, int x, int y)
{
	if (event == 0)
	{
		if ((int)GetTickCount() > (int)(State.LastMusicUpdate + 1000))
			UpdateMP3();
		return;
	}
	if (event != 1 && event != 4)
		return;
	if (State.MusicModule == NULL || control == NULL || control->id < 0x10428 || control->id > 0x1046a ||
	    !State.MusicAvailable())
		return;
	if (event == 4)
	{
		if (control->id == 0x10433 && (State.MusicCapabilities & 0x10))
		{
			State.Volume = (int)(State.VolumeSlider->value * 255.0f);
			State.SetVolume(State.Volume);
		}
		else if (control->id == 0x10434 && (State.MusicCapabilities & 0x200))
		{
			State.TrackPosition = (int)(State.TrackLength * State.PositionSlider->value);
			State.SetTrackPosition(State.TrackPosition);
		}
		return;
	}
	switch (control->id)
	{
	case 0x10428:
		HideMusicControls(!State.SongName->hidden);
		break;
	case 0x10429:
		State.field_0x68();
		break;
	case 0x1042a:
		if (State.MusicCapabilities & 2)
			State.field_0x6c();
		break;
	case 0x1042b:
		State.field_0x70();
		break;
	case 0x1042c:
		State.field_0x64();
		break;
	case 0x1042d:
		State.field_0x60();
		break;
	case 0x1042e:
		if (State.MusicCapabilities & 8)
			State.field_0x78();
		break;
	case 0x1042f:
		if (State.MusicCapabilities & 4)
			State.field_0x74();
		break;
	case 0x10430:
		if (State.MusicCapabilities & 0x20)
		{
			State.Shuffle = !State.Shuffle;
			State.SetShuffle(State.Shuffle);
		}
		State.ShuffleButton->field_0x1c = State.Shuffle;
		break;
	case 0x10431:
		if (State.MusicCapabilities & 0x40)
		{
			State.Repeat = !State.Repeat;
			State.SetRepeat(State.Repeat);
		}
		State.RepeatButton->field_0x1c = State.Repeat;
		break;
	case 0x10432:
		if (State.MusicCapabilities & 1)
		{
			State.PlayList->Hide(!State.PlayList->hidden);
			if (!State.PlayList->hidden)
				State.PlayList->AutoScroll(false);
		}
		break;
	case 0x10436:
		if (State.MusicCapabilities & 1)
		{
			int index = State.PlayList->SelectedIndex;
			if (index >= 0 && index != State.GetTrackIndex())
			{
				State.SetTrackIndex(index);
				State.field_0x68();
			}
		}
		break;
	}
	UpdateMP3();
}

// BW1W120 00573840
void GatheringBox::OpenDialog(bool close_after_send)
{
	State.CloseAfterSend = close_after_send;
	State.ShowInterface = true;
	State.ChatOpen = true;
	HideMusicControls(1);
	State.ChatEdit->label[0] = 0;
	setup_box->SetFocusControl(State.ChatEdit);
}

// BW1W120 00573b90. The result is AL, despite the provisional void symbol.
bool GatheringBox::WantsKeyControl()
{
	if (GGame::g_game->help_system != NULL && GGame::g_game->help_system->field_0x45e8 != 0)
		return false;
	return IsVisible() && State.ChatOpen && setup_box->FocusedWidget == State.ChatEdit && !State.ChatEdit->hidden;
}

// BW1W120 00573bf0
bool GatheringBox::WantsMouseControl()
{
	if (IsVisible() && (GGame::g_game->help_system == NULL || GGame::g_game->help_system->field_0x45e8 == 0))
	{
		if (!SetupThing::MouseCaptured && (LHSys::TheSystem.mouse.Buttons & 3))
			return GatheringMouseCaptured;
		// Original reads DefaultPos (+bc), not CurrentPos (+d0).
		int x = LHSys::TheSystem.mouse.DefaultPos.x;
		int y = LHSys::TheSystem.mouse.DefaultPos.y;
		SetupThing::unadjust(x, y);
		if (setup_box->FindControl(x, y) != NULL || (SetupThing::MouseCaptured && GatheringMouseCaptured))
		{
			GatheringMouseCaptured = true;
			return true;
		}
	}
	GatheringMouseCaptured = false;
	return false;
}

// BW1W120 00573cc0
bool GatheringBox::CanESCOut()
{
	return false;
}

// BW1W120 00573cd0
LHPlayer* GatheringFindGamePlayer(uint32_t user_id)
{
	for (GPlayer* player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
	     player = GGame::g_game->GetNextActivePlayer(player))
	{
		for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status != NULL;
		     status = player->GetNextInterfaceStatus(status))
		{
			if (status->GetInterface()->player != NULL && status->GetInterface()->player->UserId.field_0x0 == user_id)
				return status->GetInterface()->player;
		}
	}
	return NULL;
}

// BW1W120 00573db0. Detaches all nodes for the first matching payload; the
// payload is intentionally retained so that callers can move it between groups.
void GatheringBox::RemoveFromList(GBCategory* group, LH_USER_ID user_id)
{
	for (LHLinkedNode<GBPlayer*>* node = group->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		if (((node->payload->UserId.field_0x0 ^ user_id.field_0x0) & 0x1fffffff) == 0)
		{
			group->Players.Remove(node->payload);
			return;
		}
	}
}

// BW1W120 00573e30 (incorrectly named LH_USER_ID::operator== in symbols.txt).
void GatheringBox::AddToOtherList(char16_t* name, LH_USER_ID user_id, LHTransportInfo* transport)
{
	if (LHNetBase::Instance.User != NULL &&
	    ((LHNetBase::Instance.User->id.field_0x0 ^ user_id.field_0x0) & 0x1fffffff) == 0)
		return;
	if (IsUserInList(GatheringFriends, user_id))
		return;
	if (GatheringRecentPlayers == NULL)
		GatheringRecentPlayers =
			new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 0x462) GBCategory(NULL, GatheringRecentPlayersText);
	GBPlayer* player =
		new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 0x464) GBPlayer(-1, -1, name, user_id, 0, transport);
	if (user_id.field_0x0 >= 9999999 && user_id.field_0x0 < 10000015)
		player->Color = 0xffffff00;
	GatheringRecentPlayers->Players.Add(player);
	RelinkPeopleList();
}

// BW1W120 00574140
bool GatheringContainsPlayer(LH_USER_ID user_id)
{
	return GatheringBox::IsUserInList(GatheringBox::GatheringRecentPlayers, user_id) ||
	       GatheringBox::IsUserInList(GatheringBox::GatheringFriends, user_id) ||
	       GatheringBox::IsUserInList(GatheringBox::GatheringCurrentPlayers, user_id);
}

// BW1W120 00574190
bool GatheringBox::IsUserInList(GBCategory* group, LH_USER_ID user_id)
{
	if (group != NULL)
		for (LHLinkedNode<GBPlayer*>* node = group->Players.GetStart(); node != NULL; node = node->next.Get())
			if (((node->payload->UserId.field_0x0 ^ user_id.field_0x0) & 0x1fffffff) == 0)
				return true;
	return false;
}

// BW1W120 005741d0
GBPlayer* GatheringFindPlayer(LH_USER_ID user_id)
{
	GBPlayer* player = GatheringBox::FindUserInList(GatheringBox::GatheringCurrentPlayers, user_id);
	if (player == NULL)
		player = GatheringBox::FindUserInList(GatheringBox::GatheringFriends, user_id);
	if (player == NULL)
		player = GatheringBox::FindUserInList(GatheringBox::GatheringRecentPlayers, user_id);
	return player;
}

// BW1W120 00574210
void GatheringBox::UpdatePlayerOnlineInAllLists(LHTransportInfo* transport, char16_t* name, LH_USER_ID user_id)
{
	GBPlayer* player = FindUserInList(GatheringCurrentPlayers, user_id);
	if (player != NULL)
	{
		CopyGatheringTransport(player->Transport, *transport);
		if (wcscmp(player->Name, name) != 0)
		{
			wcsncpy(player->Name, name, 47);
			RelinkPeopleList();
		}
	}
	player = FindUserInList(GatheringFriends, user_id);
	if (player != NULL)
	{
		CopyGatheringTransport(player->Transport, *transport);
		player->LastSeen = GatheringPresenceTimer.MSeconds();
		player->Online = true;
		if (wcscmp(player->Name, name) != 0)
		{
			wcsncpy(player->Name, name, 47);
			RelinkPeopleList();
		}
	}
	player = FindUserInList(GatheringRecentPlayers, user_id);
	if (player == NULL)
		AddToOtherList(name, user_id, transport);
	else
	{
		CopyGatheringTransport(player->Transport, *transport);
		if (wcscmp(player->Name, name) != 0)
		{
			wcsncpy(player->Name, name, 47);
			RelinkPeopleList();
		}
	}
	if (user_id.field_0x0 == 9999999)
	{
		GatheringRecentPlayers->Expanded = true;
		if (GatheringActiveBox != NULL)
			GatheringActiveBox->State.ChatOpen = true;
	}
}

// BW1W120 005743c0
GBPlayer* GatheringBox::FindUserInList(GBCategory* group, LH_USER_ID user_id)
{
	if (group != NULL)
		for (LHLinkedNode<GBPlayer*>* node = group->Players.GetStart(); node != NULL; node = node->next.Get())
			if (((node->payload->UserId.field_0x0 ^ user_id.field_0x0) & 0x1fffffff) == 0)
				return node->payload;
	return NULL;
}

static void DeleteGatheringPlayers(GBCategory* group)
{
	while (group->Players.GetStart() != NULL)
	{
		GBPlayer* player = group->Players.GetStart()->payload;
		group->Players.Remove(player);
		delete player;
	}
}

// BW1W120 00574ab0
void GatheringBox::RebuildPlayerList()
{
	RebuildList(&GGame::g_game->network.session->Players, &GatheringCurrentPlayers, GatheringCurrentPlayersText);
	for (LHLinkedNode<GBPlayer*>* node = GatheringCurrentPlayers->Players.GetStart(); node != NULL;
	     node = node->next.Get())
		node->payload->Selected = true;
	RelinkPeopleList();
}

// On-disk profile records differ from the runtime player structure. The 25-entry
// buffer and sizeof(record)==0xf8 follow 00574c90's constructor loop and division.
struct GatheringFriendRecord
{
	LH_USER_ID      UserId;
	char16_t        Name[64];
	LHTransportInfo Transport;
	GatheringFriendRecord() { UserId.field_0x0 = 0; }
};
static_assert(sizeof(GatheringFriendRecord) == 0xf8, "Gathering friend record size");

// BW1W120 00574b00; currently swallowed by fn_00574AB0's symbol range.
void GatheringBox::WriteFriendListToRegistry()
{
	if (GatheringFriends == NULL)
		return;
	GatheringFriendRecord records[25];
	unsigned char         compressed[2048];
	int                   count = 0;
	for (LHLinkedNode<GBPlayer*>* node = GatheringFriends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		records[count].UserId.field_0x0 =
			(records[count].UserId.field_0x0 & 0xe0000000) | (player->UserId.field_0x0 & 0x1fffffff);
		records[count].Transport = player->Transport;
		wcscpy(records[count].Name, player->Name);
		if (++count == 25)
			break;
	}
	unsigned long compressedSize = sizeof(compressed);
	if (compress(compressed, &compressedSize, (const Bytef*)records, count * sizeof(GatheringFriendRecord)) == Z_OK)
		LHNetSetCurrentProfileData("friendlist", compressed, compressedSize);
}

// BW1W120 00574c90. Static/cdecl: no this use and RET, not RET n.
void GatheringBox::ReadFriendListFromRegistry()
{
	GBCategory* friends;
	if (GatheringFriends != NULL)
	{
		friends = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 0x54c) GBCategory(GatheringFriends, NULL);
		DeleteGatheringPlayers(GatheringFriends);
		delete GatheringFriends;
	}
	else
		friends = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 0x552) GBCategory(NULL, GatheringFriendsText);
	GatheringFriends = friends;
	RelinkPeopleList();

	GatheringFriendRecord records[25];
	unsigned char         compressed[2048];
	unsigned long         compressedSize = sizeof(compressed);
	unsigned long         recordSize = sizeof(records);
	if (LHNetGetCurrentProfileData("friendlist", compressed, &compressedSize) == LH_OK)
	{
		// Original passes the whole input buffer, not the returned profile length.
		if (uncompress((Bytef*)records, &recordSize, compressed, sizeof(compressed)) == Z_OK)
		{
			for (int i = recordSize / sizeof(GatheringFriendRecord) - 1; i >= 0; --i)
			{
				GBPlayer* player = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 0x562)
					GBPlayer(-1, -1, records[i].Name, records[i].UserId, -1, &records[i].Transport);
				GatheringFriends->Players.Add(player);
				GBPlayer* current = FindUserInList(GatheringCurrentPlayers, player->UserId);
				if (current != NULL)
					CopyGatheringTransport(player->Transport, current->Transport);
			}
			RelinkPeopleList();
		}
	}
}

// BW1W120 00574f10
void GatheringBox::RelinkPeopleList()
{
	while (GatheringGroups.GetStart() != NULL)
		GatheringGroups.Remove(GatheringGroups.GetStart()->payload);
	SetFriendFlags();
	if (GatheringRecentPlayers != NULL && GatheringRecentPlayers->Players.count != 0)
		GatheringGroups.Add(GatheringRecentPlayers);
	if (GatheringFriends != NULL && GatheringFriends->Players.count != 0)
		GatheringGroups.Add(GatheringFriends);
	if (GatheringCurrentPlayers != NULL && GatheringCurrentPlayers->Players.count != 0)
		GatheringGroups.Add(GatheringCurrentPlayers);
	SortPlayerList();
	GatheringActiveBox->RebuildList();
}

// BW1W120 00575040. Repeated maximum extraction followed by prepend produces
// ascending team/member order. Keep the original tie behavior and node ownership.
void GatheringBox::SortPlayerList()
{
	if (GatheringCurrentPlayers == NULL || GatheringCurrentPlayers->Players.count == 0)
		return;
	LHLinkedList<GBPlayer*> sorted;
	do
	{
		GBPlayer* highest = NULL;
		for (LHLinkedNode<GBPlayer*>* node = GatheringCurrentPlayers->Players.GetStart(); node != NULL;
		     node = node->next.Get())
		{
			GBPlayer* player = node->payload;
			if (highest == NULL || player->TeamNumber > highest->TeamNumber ||
			    (player->TeamNumber == highest->TeamNumber && player->TeamMemberNumber > highest->TeamMemberNumber))
				highest = player;
		}
		GatheringCurrentPlayers->Players.Remove(highest);
		sorted.Add(highest);
	} while (GatheringCurrentPlayers->Players.count != 0);
	GatheringCurrentPlayers->Players = sorted;
}

// BW1W120 00575140
void GatheringBox::SetFriendFlags()
{
	if (GatheringFriends != NULL)
	{
		for (LHLinkedNode<GBPlayer*>* node = GatheringFriends->Players.GetStart(); node != NULL;
		     node = node->next.Get())
		{
			GBPlayer* player = node->payload;
			SetFriendFlags(GatheringRecentPlayers, player->UserId);
			SetFriendFlags(GatheringCurrentPlayers, player->UserId);
			player->IsFriend = true;
		}
	}
}

// BW1W120 00575190
void GatheringBox::SetFriendFlags(GBCategory* group, LH_USER_ID user_id)
{
	if (group != NULL)
	{
		for (LHLinkedNode<GBPlayer*>* node = group->Players.GetStart(); node != NULL; node = node->next.Get())
		{
			if (((node->payload->UserId.field_0x0 ^ user_id.field_0x0) & 0x1fffffff) == 0)
			{
				node->payload->IsFriend = true;
				return;
			}
		}
	}
}

// BW1W120 005751d0 BW1M100 103227e0
void GatheringBox::InitialiseForCurrentGame()
{
	if (GatheringRecentPlayers != NULL)
		DeleteGatheringPlayers(GatheringRecentPlayers);
	RebuildPlayerList();
	ReadFriendListFromRegistry();
	GatheringActiveBox->State.ShowInterface = !GGame::g_game->network.session->IsSinglePlayer();
}

// BW1W120 00575670. Static/cdecl, despite the provisional thiscall map label.
void GatheringBox::UpdateOnlineStatus(long* status, long count)
{
	for (int i = 0; i < count * 2; i += 2)
	{
		uint32_t        userId = status[i];
		LHTransportInfo transport;
		ICQinttoLHTransportInfo(status[i + 1], &transport);
		for (LHLinkedNode<GBPlayer*>* node = GatheringFriends->Players.GetStart(); node != NULL;
		     node = node->next.Get())
		{
			GBPlayer* player = node->payload;
			if ((player->UserId.field_0x0 & 0x1fffffff) == userId)
			{
				player->Transport = transport;
				player->LastSeen = GatheringPresenceTimer.MSeconds();
			}
		}
	}
	for (LHLinkedNode<GBPlayer*>* node = GatheringFriends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		GBPlayer* player = node->payload;
		if ((uint32_t)GatheringPresenceTimer.MSeconds() < player->LastSeen)
			player->LastSeen = 0;
		player->Online = IsUserInList(GatheringCurrentPlayers, player->UserId) ||
		                 (uint32_t)(GatheringPresenceTimer.MSeconds() - player->LastSeen) < 450000;
	}
}

// BW1W120 00575880
int GatheringBox::GetFriendArray(long* user_ids)
{
	int count = 0;
	for (LHLinkedNode<GBPlayer*>* node = GatheringFriends->Players.GetStart(); node != NULL; node = node->next.Get())
	{
		*user_ids++ = node->payload->UserId.field_0x0 & 0x1fffffff;
		++count;
	}
	return count;
}

// BW1W120 005758f0. Recent entries move; current-session entries are copied.
void GatheringBox::MakeFriends(GBCategory* group)
{
	if (group == NULL)
		return;
	LHLinkedNode<GBPlayer*>* node = group->Players.GetStart();
	while (node != NULL)
	{
		GBPlayer* player = node->payload;
		if (player->Selected)
		{
			if (GatheringFriends == NULL)
				GatheringFriends =
					new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 0x66d) GBCategory(NULL, GatheringFriendsText);
			if (player->IsFriend)
			{
				GBPlayer* friendPlayer = FindFriend(player);
				if (friendPlayer != NULL)
					friendPlayer->Selected = true;
			}
			else if (group == GatheringRecentPlayers)
			{
				GatheringFriends->Players.Add(player);
				RemoveFromList(group, player->UserId);
				player->Selected = false;
				node = group->Players.GetStart();
				continue;
			}
			else
			{
				GBPlayer* friendPlayer = new ("C:\\dev\\MP\\Black\\GatheringInterface.cpp", 0x682) GBPlayer(*player);
				friendPlayer->Selected = false;
				friendPlayer->IsFriend = true;
				GatheringFriends->Players.Add(friendPlayer);
			}
		}
		node = node->next.Get();
	}
}

// BW1W120 00575ad0
GBPlayer* GatheringBox::FindFriend(GBPlayer* player)
{
	return FindUserInList(GatheringFriends, player->UserId);
}

// BW1W120 00575b80
bool GatheringBox::IsUserInAnyEnabledList(LH_USER_ID user_id)
{
	if (IsUserInList(GatheringCurrentPlayers, user_id) && GatheringCurrentPlayers->ReceiveMessages)
		return true;
	if (IsUserInList(GatheringRecentPlayers, user_id) && GatheringRecentPlayers->ReceiveMessages)
		return true;
	return IsUserInList(GatheringFriends, user_id) && GatheringFriends->ReceiveMessages;
}

// BW1W120 00575bf0
bool GatheringBox::IsAtLeastOnePlayerSelected()
{
	for (LHLinkedNode<GBCategory*>* group = GatheringGroups.GetStart(); group != NULL; group = group->next.Get())
		for (LHLinkedNode<GBPlayer*>* player = group->payload->Players.GetStart(); player != NULL;
		     player = player->next.Get())
			if (player->payload->Selected)
				return true;
	return false;
}

// BW1W120 00575c30
void GatheringSetFriendOnline(LH_USER_ID user_id, bool online)
{
	if (GatheringBox::GatheringFriends != NULL)
		for (LHLinkedNode<GBPlayer*>* node = GatheringBox::GatheringFriends->Players.GetStart(); node != NULL;
		     node = node->next.Get())
			if (node->payload != NULL && ((node->payload->UserId.field_0x0 ^ user_id.field_0x0) & 0x1fffffff) == 0)
			{
				node->payload->Online = online;
				return;
			}
}

// BW1W120 00575b10. Restart after deletion because rebuilding the display can
// change group nodes. Only the current-session counterpart is unmarked here.
void GatheringBox::RemoveUnlovedFriends()
{
	if (GatheringFriends == NULL)
		return;
	LHLinkedNode<GBPlayer*>* node = GatheringFriends->Players.GetStart();
	while (node != NULL)
	{
		GBPlayer* player = node->payload;
		if (player->Selected)
		{
			RemoveFromList(GatheringFriends, player->UserId);
			GBPlayer* current = FindUserInList(GatheringCurrentPlayers, player->UserId);
			if (current != NULL)
			{
				current->Selected = false;
				current->IsFriend = false;
			}
			delete player;
			RelinkPeopleList();
			node = GatheringFriends->Players.GetStart();
		}
		else
			node = node->next.Get();
	}
}

// BW1W120 005754b0
void GatheringBox::MakeFriends()
{
	MakeFriends(GatheringCurrentPlayers);
	MakeFriends(GatheringRecentPlayers);
	RemoveUnlovedFriends();
	WriteFriendListToRegistry();
	RelinkPeopleList();
}
