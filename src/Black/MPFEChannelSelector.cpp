#include "MPFEChannelSelector.h"
#include "MPFECreateGame.h"
#include "MPFEChooseConnection.h"

#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For SecondsPerYear */

#include <ctype.h>   /* For tolower */
#include <stdio.h>   /* For swprintf */
#include <string.h>  /* For memset, strcpy, strlen, strstr */
#include <wchar.h>   /* For wcscmp, wcscpy, wcslen, wcsncmp, wcsstr, towlower, _wcsnicmp */
#include <windows.h> /* For timeGetTime */

#include <GameSpy/Peer/peer.h>                      /* For peerStartListingGames, peerStopListingGames */
#include <Lionhead/LH3DLib/development/LH3DAtmos.h> /* For LH3DAtmos::mat0 */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>        /* For LHOSFile */
#include <Lionhead/LHLib/ver5.0/LHWin.h>            /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>        /* For LHSPrintfW */
#include <Lionhead/LHLog/ver4.0/LHVersion.h>        /* For LHVersion::GetModuleChecksum */

#include <chlasm/HelpTextEnums.h>

#include "alexmfc.h"              /* For SetupBigButton, SetupButton, SetupCheckBox, SetupEdit, SetupList */
#include "BWGameSpy.h"            /* For BWGameSpy */
#include "ChannelBox.h"           /* For ChannelBox::Data */
#include "FrontEnd.h"             /* For FrontEnd::ChannelDialog */
#include "GSFunctions.h"          /* For DECODE_NAME */
#include "HelpText.h"             /* For HelpTextDataBase::HelpTextDatabase, HelpTextDataPatch */
#include "LayerCommunication.h"   /* For LayerCommunication */
#include "LHNetBase.h"            /* For LHNetBase::Instance */
#include "MPFEChannelDetails.h"   /* For MPFEChannelDetails */
#include "MPFEConnectionStatus.h" /* For MPFEConnectionStatus::Status */
#include "MPFEData.h"             /* For MPFEData::Data */

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line)                                                                                            \
	((line) - ((line) < 100   ? 11                                                                                     \
	           : (line) < 204 ? 29                                                                                     \
	           : (line) < 205 ? 30                                                                                     \
	           : (line) < 241 ? 32                                                                                     \
	           : (line) < 300 ? 34                                                                                     \
	           : (line) < 800 ? 81                                                                                     \
	                          : 161))
#elif defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 100 ? 0 : 4))
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 100 ? 0 : (line) < 800 ? 4 : 2))
#endif

#define MPFE_CHANNEL_SELECTOR_COLOUR     0xe0e0e0
#define MPFE_CHANNEL_SELECTOR_JOIN_DELAY 5000
#define MPFE_CREATE_GAME_MIN_PLAYERS     2
#define MPFE_CREATE_GAME_MAX_PLAYERS     8

enum MPFE_CHANNEL_SELECTOR_CONTROL_ID
{
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_TEXT = 1,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_BACK = 2,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_NEXT = 3,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_HELP = 4,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_CHANNEL_LIST = 5,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_NAME_EDIT = 6,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_PASSWORD_EDIT = 7,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_PLAYER_LIST = 8,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_REFRESH = 9,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_CHANNEL_LIST_TITLE = 123,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_PLAYER_LIST_TITLE = 124,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_PASSWORD_LABEL = 126,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_NAME_LABEL = 127,
	MPFE_CHANNEL_SELECTOR_CONTROL_ID_OOS = 31337,
};

enum MPFE_CREATE_GAME_CONTROL_ID
{
	MPFE_CREATE_GAME_CONTROL_ID_BACK = 1,
	MPFE_CREATE_GAME_CONTROL_ID_CONTINUE = 2,
	MPFE_CREATE_GAME_CONTROL_ID_TITLE = 3,
	MPFE_CREATE_GAME_CONTROL_ID_EDIT = 4,
	MPFE_CREATE_GAME_CONTROL_ID_LABEL = 6,
	MPFE_CREATE_GAME_CONTROL_ID_OOS = 8,
	MPFE_CREATE_GAME_CONTROL_ID_MAX_PLAYERS = 9,
	MPFE_CREATE_GAME_CONTROL_ID_MAX_PLAYERS_LABEL = 10,
	MPFE_CREATE_GAME_CONTROL_ID_FEWER_PLAYERS = 11,
	MPFE_CREATE_GAME_CONTROL_ID_MORE_PLAYERS = 12,
};

// BW1W120 006289e0 BW1M119 inlined
static void OnClickBack(SetupBox* box, SetupControl* control);
// BW1W120 006289f0 BW1M119 inlined
static void OnClickNext(SetupBox* box, SetupControl* control);
// BW1W120 00628c00 BW1M119 inlined
static void OnClickChannelList(SetupBox* box, SetupControl* control);
// BW1W120 00628df0 BW1M119 inlined
static void OnClickRefresh(SetupBox* box, SetupControl* control);
// BW1W120 00629740 BW1M119 inlined
static void OnMessageBox(SetupBox* box, SetupControl* control, int button, int message_box);
// BW1W120 00629760 BW1M119 inlined
static void OnChar(SetupBox* box, SetupControl* control, int character, int data);
// BW1W120 00629790 BW1M119 null
void ChannelSelectorNoOp();
// BW1W120 006297a0 BW1M119 null
void __stdcall ChannelSelectorNoOpCallback(int data);
// BW1W120 0062aac0 BW1M119 inlined
static void OnClickCreateBack(SetupBox* box, SetupControl* control);
// BW1W120 0062aad0 BW1M119 inlined
static void OnClickCreateContinue(SetupBox* box, SetupControl* control);
#if !defined(VERSION_BW1W100)
// BW1W120 0062aa80 BW1M119 inlined
static void OnClickFewerPlayers(SetupBox* box, SetupControl* control);
// BW1W120 0062aaa0 BW1M119 inlined
static void OnClickMorePlayers(SetupBox* box, SetupControl* control);
#endif

static bool ChannelNameChanged = false;
static bool ChannelSelected = false;
static bool JoinPending = false;
static bool FilterChanged = false;
bool        MPFEChooseConnection::AskedForIPAddress = false;

MPFEChannelSelector MPFEChannelSelector::Instance;

MPFEChannelSelector::MPFEChannelSelector()
{
	Init(780, 500, ControlCallback);
	setup_box->TallBackground = 1;
#if !defined(VERSION_BW1W100)
	CreatingChannel = true;
#endif
}

MPFEChannelSelector::~MPFEChannelSelector() {}

void MPFEChannelSelector::AddPlayerToMiniList(wchar_t* name, bool local)
{
	PlayerList->AddString(name, local ? 0xff : 0, 0, 0);
}

void MPFEChannelSelector::Show()
{
	MPFEData::Data.Reset();
	DialogBoxBase::Show();
	InitControls();
}

void MPFEChannelSelector::Init(uint32_t background_style, uint32_t tall_background,
                               void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);

	BackButton = NEW(190) SetupBigButton(MPFE_CHANNEL_SELECTOR_CONTROL_ID_BACK, 30, 530, L"", 40,
	                                     SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	BackButton->ContinueButtonCallback = OnClickBack;
	NextButton = NEW(192) SetupBigButton(MPFE_CHANNEL_SELECTOR_CONTROL_ID_NEXT, 730, 530, L"", 40,
	                                     SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	NextButton->ContinueButtonCallback = OnClickNext;

	TitleText =
		NEW(195) SetupStaticText(MPFE_CHANNEL_SELECTOR_CONTROL_ID_TEXT, 40, 70, 720, 40, L"", TEXTJUSTIFY_CENTRE);
	TitleText->text_size = GetBigTextSize();
	InstructionsText = NEW(198)
		SetupStaticText(MPFE_CHANNEL_SELECTOR_CONTROL_ID_TEXT, 420, 175, 270, 310, L"", TEXTJUSTIFY_CENTRE_BREAK);
	InstructionsText->text_size = GetBigTextSize();

	ChannelListTitle = NEW(201)
		SetupStaticText(MPFE_CHANNEL_SELECTOR_CONTROL_ID_CHANNEL_LIST_TITLE, 110, 130, 270, 40, L"", TEXTJUSTIFY_LEFT);
	ChannelListTitle->text_size = GetMidTextSize();
	ChannelList = NEW(204) SetupList(MPFE_CHANNEL_SELECTOR_CONTROL_ID_CHANNEL_LIST, 110, 175, 270, 310);
	ChannelList->ContinueButtonCallback = OnClickChannelList;
	ChannelList->text_size = GetMidTextSize();

	PlayerListTitle = NEW(210)
		SetupStaticText(MPFE_CHANNEL_SELECTOR_CONTROL_ID_PLAYER_LIST_TITLE, 420, 130, 270, 40, L"", TEXTJUSTIFY_RIGHT);
	PlayerListTitle->text_size = GetMidTextSize();
	PlayerList = NEW(212) SetupList(MPFE_CHANNEL_SELECTOR_CONTROL_ID_PLAYER_LIST, 420, 175, 270, 310);
	PlayerList->text_size = GetMidTextSize();
	PlayerList->DrawHighlightBox = false;

	OOSCheckBox =
		NEW(215) SetupCheckBox(MPFE_CHANNEL_SELECTOR_CONTROL_ID_OOS, 385, 515, false, BBSTYLE_CHECK_BOX_OFF, L"", 30);
	OOSCheckBox->text_size = GetMidTextSize();

	NameLabel = NEW(225)
		SetupStaticText(MPFE_CHANNEL_SELECTOR_CONTROL_ID_NAME_LABEL, 130, 480, 200, 30, L"", TEXTJUSTIFY_RIGHT);
	NameLabel->text_size = GetMidTextSize();
	NameEdit = NEW(227) SetupEdit(MPFE_CHANNEL_SELECTOR_CONTROL_ID_NAME_EDIT, 350, 480, 200, 30, L"", true);
	NameEdit->text_size = GetMidTextSize();
	NameEdit->Hide(true);
	NameLabel->Hide(true);

	PasswordLabel = NEW(233)
		SetupStaticText(MPFE_CHANNEL_SELECTOR_CONTROL_ID_PASSWORD_LABEL, 130, 530, 200, 40, L"", TEXTJUSTIFY_RIGHT);
	PasswordLabel->text_size = GetMidTextSize();
	PasswordEdit = NEW(235) SetupEdit(MPFE_CHANNEL_SELECTOR_CONTROL_ID_PASSWORD_EDIT, 350, 530, 200, 40, L"", true);
	PasswordEdit->text_size = GetMidTextSize();
#if defined(VERSION_BW1W100)
	PasswordEdit->MaskedText = true;
#else
	PasswordEdit->MaxLength = 32;
	PasswordEdit->MaskedText = false;
	CreatingChannel = true;
#endif

	HelpButton = NEW(241) SetupButton(MPFE_CHANNEL_SELECTOR_CONTROL_ID_HELP, 550, 130, 200, 80, L"", false);
	HelpButton->text_size = GetMidTextSize();
	HelpButton->Hide(true);
#if !defined(VERSION_BW1W100)
	RefreshButton = NEW(244) SetupButton(MPFE_CHANNEL_SELECTOR_CONTROL_ID_REFRESH, 110, 490, 140, 40, L"", true);
	RefreshButton->text_size = GetMidTextSize();
	RefreshButton->ContinueButtonCallback = OnClickRefresh;
#endif
}

static void OnClickBack(SetupBox* box, SetupControl* control)
{
	MPFEConnectionStatus::Status.LeaveLobbyScreen();
}

static void OnClickNext(SetupBox* box, SetupControl* control)
{
	SetupList* list = MPFEChannelSelector::Instance.ChannelList;
	if (list->SelectedIndex == -1)
	{
		MPFEData::Data.CurrentChannel = NULL;
	}
	else
	{
		MPFEChannelDetails* channel = (MPFEChannelDetails*)list->GetItemData(list->SelectedIndex);
		MPFEData::Data.CurrentChannel = channel;
	}
	MPFEData::Data.ActiveDialog = FrontEnd::ChannelDialog;
	MPFEData::Data.InGameChannel = false;
	FrontEnd::ChannelDialog->Data = &MPFEData::Data;
#if !defined(VERSION_BW1W100)
	if (MPFEData::Data.CurrentChannel != NULL && MPFEConnectionStatus::Status.IsInternetLobby())
	{
		if (timeGetTime() - MPFEData::Data.CurrentChannel->JoinTime < MPFE_CHANNEL_SELECTOR_JOIN_DELAY)
		{
			return;
		}
		MPFEData::Data.CurrentChannel->JoinTime = timeGetTime();
	}
#endif
	if (MPFEData::Data.CurrentChannel == NULL && !MPFEConnectionStatus::Status.IsLanLobby())
	{
		if (JoinPending)
		{
			MPFEData::Data.IsHost = true;
			bool hasPassword = wcslen(MPFEChannelSelector::Instance.PasswordEdit->label) != 0;
#if defined(VERSION_BW1W100)
			MPFEData::Data.CurrentChannel =
				NEW(68) MPFEChannelDetails(MPFEChannelSelector::Instance.NameEdit->label, hasPassword, 0, false, NULL,
			                               LHVersion::GetModuleChecksum(), NULL);
#else
			MPFEData::Data.CurrentChannel =
				NEW(68) MPFEChannelDetails(MPFEChannelSelector::Instance.NameEdit->label, hasPassword, 0, false, NULL,
			                               LHVersion::GetModuleChecksum(), NULL, MPFECreateGame::Instance.MaxPlayers);
#endif
			MPFEData::Data.CurrentChannel->NumTeams = 3;
			wcscpy(MPFEData::Data.CurrentChannel->MapName,
			       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_91));
		}
		else
		{
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
			MPFEChannelSelector::Instance.PasswordEdit->label[0] = L'\0';
			MPFEChannelSelector::Instance.NameEdit->label[0] = L'\0';
#endif
			MPFECreateGame::Instance.Show();
			return;
		}
	}
	else
	{
		MPFEData::Data.CurrentChannel->NumPlayers = 0;
		MPFEData::Data.IsHost = false;
	}
	if (!JoinPending && MPFEConnectionStatus::Status.IsInternetLobby())
	{
		MPFEData::Data.IsOOSGame = BWGameSpy::IsOOSChannel(MPFEData::Data.CurrentChannel) != false;
	}
	JoinPending = false;
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	MPFEData::Data.ResetConditions();
#endif
	MPFEData::Data.GetLayer()->CreateOrJoinRoom(MPFEChannelSelector::Instance.NameEdit->label,
	                                            MPFEChannelSelector::Instance.PasswordEdit->label,
	                                            MPFEData::Data.CurrentChannel);
}

static void OnClickChannelList(SetupBox* box, SetupControl* control)
{
#if defined(VERSION_BW1W100)
	if (MPFEChannelSelector::Instance.ChannelList->SelectedIndex == -1)
	{
		MPFEChannelSelector::Instance.PlayerList->DeleteAll();
		MPFEChannelSelector::Instance.PlayerList->Hide(true);
		MPFEChannelSelector::Instance.PlayerListTitle->Hide(true);
		MPFEChannelSelector::Instance.NameEdit->SetText(L"");
		MPFEChannelSelector::Instance.InstructionsText->Hide(false);
		ChannelNameChanged = true;
		ChannelSelected = true;
	}
	else
	{
		MPFEChannelSelector::Instance.PlayerList->DeleteAll();
		MPFEChannelSelector::Instance.PlayerList->Hide(false);
		MPFEChannelSelector::Instance.PlayerListTitle->Hide(false);
		MPFEChannelSelector::Instance.InstructionsText->Hide(true);
		MPFEData::Data.GetLayer()->PopulateChannelPlayers(
			(MPFEChannelDetails*)MPFEChannelSelector::Instance.ChannelList
				->ItemData[MPFEChannelSelector::Instance.ChannelList->SelectedIndex]);
		MPFEChannelSelector::Instance.NameEdit->SetText(
			((MPFEChannelDetails*)MPFEChannelSelector::Instance.ChannelList->GetItemData(
				 MPFEChannelSelector::Instance.ChannelList->SelectedIndex))
				->Name);
		ChannelNameChanged = true;
		ChannelSelected = true;
	}
#else
	if (!MPFEChannelSelector::Instance.ChannelList->DraggingScrollbar)
	{
		MPFEChannelDetails* channel = NULL;
		if (MPFEChannelSelector::Instance.ChannelList->SelectedIndex != -1)
		{
			channel = (MPFEChannelDetails*)MPFEChannelSelector::Instance.ChannelList
			              ->ItemData[MPFEChannelSelector::Instance.ChannelList->SelectedIndex];
		}
		if (MPFEChannelSelector::Instance.ChannelList->SelectedIndex != -1 && channel != NULL)
		{
			wcscpy(MPFEChannelSelector::Instance.PasswordEdit->label, L"");
			MPFEChannelSelector::Instance.PlayerList->DeleteAll();
			MPFEChannelSelector::Instance.PlayerList->Hide(false);
			MPFEChannelSelector::Instance.PlayerListTitle->Hide(false);
			MPFEChannelSelector::Instance.InstructionsText->Hide(true);
			MPFEData::Data.GetLayer()->PopulateChannelPlayers(channel);
			MPFEChannelSelector::Instance.NameEdit->SetText(
				((MPFEChannelDetails*)MPFEChannelSelector::Instance.ChannelList->GetItemData(
					 MPFEChannelSelector::Instance.ChannelList->GetSelected()))
					->Name);
			ChannelNameChanged = true;
			ChannelSelected = true;
		}
		else
		{
			wcscpy(MPFEChannelSelector::Instance.PasswordEdit->label, L"");
			MPFEChannelSelector::Instance.PlayerList->DeleteAll();
			MPFEChannelSelector::Instance.PlayerList->Hide(true);
			MPFEChannelSelector::Instance.PlayerListTitle->Hide(true);
			MPFEChannelSelector::Instance.NameEdit->SetText(L"");
			MPFEChannelSelector::Instance.InstructionsText->Hide(false);
			MPFEChannelSelector::Instance.RefreshChannelList();
			ChannelNameChanged = true;
			ChannelSelected = true;
		}
	}
#endif
}

static void OnClickRefresh(SetupBox* box, SetupControl* control)
{
	peerStopListingGames(LHNetBase::Instance.Peer);
	MPFEChannelSelector::Instance.RemoveAllChannels();
	peerStartListingGames(LHNetBase::Instance.Peer, BWGameSpy::ListingGamesCallback, NULL);
}

void MPFEChannelSelector::Destroy() {}

void MPFEChannelSelector::InitControls()
{
	bool lan = MPFEConnectionStatus::Status.IsLanLobby();
	wcscpy(InstructionsText->label, lan ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_12)
	                                    : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_13));
	wcscpy(TitleText->label, lan ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_55)
	                             : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_57));
	wcscpy(HelpButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_77));
	wcscpy(BackButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
	wcscpy(NextButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_76));
	wcscpy(NameEdit->label, L"");
	wcscpy(PasswordEdit->label, L"");
	wcscpy(ChannelListTitle->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_47));
	wcscpy(PlayerListTitle->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_112));
	wcscpy(NameLabel->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_CS_GAME_LABEL));
	wcscpy(PasswordLabel->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_CS_PASSWORD_LABEL));
	wcscpy(OOSCheckBox->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_SINGING_STONE_CURSE_04));
#if !defined(VERSION_BW1W100)
	wcscpy(RefreshButton->label, HelpTextDataPatch::GetTextL(HELP_TEXT_PATCH_09));
	RefreshButton->Hide(true);
	if (MPFEConnectionStatus::Status.IsInternetLobby())
	{
		RefreshButton->Hide(false);
	}
#endif
	if (MPFEConnectionStatus::Status.IsLanLobby())
	{
		if (LHOSFile::Exists("oos.txt") == LH_FILE_RESULT_OK)
		{
			OOSCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
			OOSCheckBox->Hide(false);
		}
		else
		{
			OOSCheckBox->Hide(true);
		}
	}
	else
	{
		OOSCheckBox->Hide(true);
	}
	Instance.InstructionsText->Hide(false);
}

void __stdcall MPFEChannelSelector::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1,
                                                    int data2)
{
	int top = 530;
	int bottom = 570;
#if !defined(VERSION_BW1W100)
	if (FilterChanged == true)
	{
		if (control == Instance.PasswordEdit && Instance.ChannelList->SelectedIndex == -1)
		{
			Instance.RefreshChannelList();
		}
		FilterChanged = false;
	}
#endif
	if (!Instance.PasswordEdit->hidden || !Instance.PasswordLabel->hidden)
	{
		top = 490;
		bottom = 530;
	}
	bool32_t gameSpy = MPFEConnectionStatus::Status.IsInternetLobby();
	if (gameSpy)
	{
		char server[0x100];
		strcpy(server, BWGameSpy::ChatServer);
		unsigned int i;
		for (i = 0; i < strlen(BWGameSpy::ChatServer); i++)
		{
			server[i] = tolower(BWGameSpy::ChatServer[i]);
		}
		server[i] = '\0';
		gameSpy = strstr(server, "gamespy") != NULL;
	}
	switch (message)
	{
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(Instance.TitleText->rect.start.x, Instance.TitleText->rect.start.y,
		                    Instance.TitleText->rect.end.x, Instance.TitleText->rect.end.y,
		                    MPFE_CHANNEL_SELECTOR_COLOUR, MPFE_CHANNEL_SELECTOR_COLOUR, MPFE_CHANNEL_SELECTOR_COLOUR,
		                    MPFE_CHANNEL_SELECTOR_COLOUR, 1, 1);
		if (!Instance.InstructionsText->hidden)
		{
			SetupThing::DrawBox(Instance.InstructionsText->rect.start.x, Instance.InstructionsText->rect.start.y,
			                    Instance.InstructionsText->rect.end.x, Instance.InstructionsText->rect.end.y,
			                    MPFE_CHANNEL_SELECTOR_COLOUR, MPFE_CHANNEL_SELECTOR_COLOUR,
			                    MPFE_CHANNEL_SELECTOR_COLOUR, MPFE_CHANNEL_SELECTOR_COLOUR, 1, 1);
		}
		SetupThing::DrawAlpha = alpha;
		break;
	}
	case SETUP_MESSAGE_CHAR:
		ChannelNameChanged = true;
		OnChar(box, control, data1, data2);
#if !defined(VERSION_BW1W100)
		FilterChanged = true;
#endif
		break;
#if !defined(VERSION_BW1W100)
	case SETUP_MESSAGE_MOUSE_UP:
		if (control == NULL || !control->TabStop)
		{
			Instance.ChannelList->SelectedIndex = -1;
			wcscpy(Instance.PasswordEdit->label, L"");
		}
		break;
#endif
	case SETUP_MESSAGE_CLICK:
		if (control->id != 0 && control->ContinueButtonCallback != NULL)
		{
			control->ContinueButtonCallback(box, control);
		}
		break;
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		OnMessageBox(box, control, data1, data2);
		break;
	case SETUP_MESSAGE_POST_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha /= 2;
		if (gameSpy && LH3DAtmos::mat0 != NULL)
		{
			LH3DColor colour(0xff, 0xff, 0xff, 0xff);
			SetupThing::DrawBox(314, top, 486, bottom, 0.0f, 0.51953125f, 1.0f, 0.75f, LH3DAtmos::mat0, &colour, 1,
			                    -0xa000, 0xa000, false, 100.0f);
		}
		SetupThing::DrawAlpha = alpha;
		break;
	}
	case SETUP_MESSAGE_UPDATE: {
		Instance.PasswordEdit->Hide(true);
		Instance.PasswordLabel->Hide(true);
		bool lan = MPFEConnectionStatus::Status.IsLanLobby();
#if defined(VERSION_BW1W100)
		if (Instance.ChannelList->SelectedIndex != -1)
		{
			Instance.NextButton->Hide(false);
			wcscpy(Instance.NextButton->label,
			       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_76));
			MPFEChannelDetails* channel = Instance.GetChannelDetailsForName(Instance.NameEdit->label);
			if (!lan && channel != NULL && channel->HasPassword)
			{
				Instance.PasswordEdit->Hide(false);
				Instance.PasswordLabel->Hide(false);
			}
		}
		else
		{
			if (MPFEConnectionStatus::Status.IsLanLobby())
			{
				Instance.NextButton->Hide(true);
			}
			else
			{
				Instance.NextButton->Hide(false);
			}
			wcscpy(Instance.NextButton->label,
			       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_44));
			Instance.PlayerList->Hide(true);
			Instance.PlayerListTitle->Hide(true);
			Instance.InstructionsText->Hide(false);
			if (JoinPending)
			{
				OnClickNext(box, Instance.NextButton);
				JoinPending = false;
			}
		}
#else
		if (Instance.ChannelList->SelectedIndex != -1)
		{
			Instance.CreatingChannel = false;
			Instance.PasswordEdit->MaskedText = true;
			Instance.NextButton->Hide(false);
			wcscpy(Instance.PasswordLabel->label,
			       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_76));
			wcscpy(Instance.NextButton->label,
			       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_76));
			MPFEChannelDetails* channel = Instance.GetChannelDetailsForName(Instance.NameEdit->label);
			if (!lan && channel != NULL && channel->HasPassword)
			{
				Instance.PasswordEdit->Hide(false);
				Instance.PasswordLabel->Hide(false);
				wcscpy(Instance.PasswordLabel->label,
				       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_CS_PASSWORD_LABEL));
			}
		}
		else
		{
			Instance.PasswordEdit->MaskedText = false;
			Instance.CreatingChannel = true;
			Instance.PasswordEdit->Hide(false);
			Instance.PasswordLabel->Hide(false);
			wcscpy(Instance.PasswordLabel->label, HelpTextDataPatch::GetTextL(HELP_TEXT_PATCH_10));
			if (MPFEConnectionStatus::Status.IsLanLobby())
			{
				Instance.NextButton->Hide(true);
			}
			else
			{
				Instance.NextButton->Hide(false);
			}
			wcscpy(Instance.NextButton->label,
			       HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_44));
			Instance.PlayerList->Hide(true);
			Instance.PlayerListTitle->Hide(true);
			Instance.InstructionsText->Hide(false);
			if (JoinPending)
			{
				OnClickNext(box, Instance.NextButton);
				JoinPending = false;
			}
		}
		if (Instance.ChannelList->DraggingScrollbar || MPFEConnectionStatus::Status.IsLanLobby())
		{
			Instance.PasswordEdit->Hide(true);
			Instance.PasswordLabel->Hide(true);
		}
		if (MPFEConnectionStatus::Status.IsLanLobby())
		{
			Instance.CreatingChannel = false;
		}
#endif
		MPFEData::Data.ProcessDaniel();
		break;
	}
	}
}

static void OnMessageBox(SetupBox* box, SetupControl* control, int button, int message_box)
{
	if (message_box == LOBBY_MESSAGE_BOX_ERROR && button == SETUP_MESSAGE_BOX_ID_OK)
	{
		MPFEConnectionStatus::Status.LeaveLobbyScreen();
	}
}

static void OnChar(SetupBox* box, SetupControl* control, int character, int data)
{
	if (character == '\r' && control != NULL && control->id == MPFE_CHANNEL_SELECTOR_CONTROL_ID_NAME_EDIT)
	{
		MPFEChannelSelector::Instance.setup_box->FocusedWidget = MPFEChannelSelector::Instance.PasswordEdit;
	}
}

void ChannelSelectorNoOp() {}

void __stdcall ChannelSelectorNoOpCallback(int data) {}

void MPFEChannelSelector::RemoveAllChannels()
{
#if !defined(VERSION_BW1W100)
	CreatingChannel = true;
	wcscpy(Instance.PasswordEdit->label, L"");
	wcscpy(Instance.PasswordLabel->label, L"Game Name Filter:");
#endif
	ChannelList->DeleteAll();
	Channels.DeleteAll();
}

inline bool operator<(MPFEChannelDetails& a, MPFEChannelDetails& b)
{
	return wcscmp(a.Name, b.Name) < 0;
}

#if defined(VERSION_BW1W100)
void MPFEChannelSelector::AddChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version,
                                     bool has_password, GServer server, LHLocalLobbyInfo* lobby_info, char* host)
#else
void MPFEChannelSelector::AddChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version,
                                     bool has_password, GServer server, LHLocalLobbyInfo* lobby_info, char* host,
                                     int max_players)
#endif
{
	for (OrderedNode<MPFEChannelDetails>* node = Channels.head; node != NULL; node = node->next)
	{
		switch (MPFEConnectionStatus::Status.IsInternetLobby())
		{
		case true:
			if (node->GetData()->Server == server)
			{
				return;
			}
			break;
		case false:
			if (wcscmp(name, node->GetData()->Name) == 0)
			{
				return;
			}
			break;
		}
	}
#if defined(VERSION_BW1W100)
	MPFEChannelDetails* channel =
		NEW(493) MPFEChannelDetails(name, has_password, num_players, closed, server, game_version, lobby_info);
#else
	MPFEChannelDetails* channel = NEW(493)
		MPFEChannelDetails(name, has_password, num_players, closed, server, game_version, lobby_info, max_players);
#endif
	if (host != NULL)
	{
		strcpy(channel->Host, host);
	}
	else
	{
		strcpy(channel->Host, "");
	}
	Channels.Insert(channel);
	RefreshChannelList();
}

void MPFEChannelSelector::SetHostPing(char* host, unsigned long ping)
{
	wchar_t name[0x80];
	for (int i = 0; i < ChannelList->NumItems; i++)
	{
		MPFEChannelDetails* channel = (MPFEChannelDetails*)ChannelList->GetItemData(i);
		if (strcmp(host, channel->Host) == 0 && ChannelList->SelectedIndex == i)
		{
			wcscpy(name, LHSPrintfW(L"%s", DECODE_NAME(host)));
			if (PlayerList->NumItems != 0)
			{
				for (int j = 0; j < PlayerList->NumItems; j++)
				{
					if (wcsncmp(name, PlayerList->item_labels[j], wcslen(name)) == 0)
					{
						wcscpy(PlayerList->item_labels[j], LHSPrintfW(L"%s - Ping %u ms", name, ping));
					}
				}
			}
		}
	}
}

#if defined(VERSION_BW1W100)
void MPFEChannelSelector::UpdateChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version,
                                        bool has_password, GServer server, char* host)
#else
void MPFEChannelSelector::UpdateChannel(wchar_t* name, int num_players, bool closed, unsigned long game_version,
                                        bool has_password, GServer server, char* host, int max_players)
#endif
{
	bool found = false;
	for (OrderedNode<MPFEChannelDetails>* node = Channels.head; node != NULL && !found; node = node->next)
	{
		bool match;
		if (MPFEConnectionStatus::Status.IsInternetLobby())
		{
			match = server == node->GetData()->Server;
		}
		else
		{
			match = _wcsnicmp(name, node->GetData()->Name, 0x200) == 0;
		}
		if (match)
		{
			MPFEChannelDetails* channel = node->GetData();
			channel->NumPlayers = num_players;
			channel->Closed = closed;
			channel->GameVersion = game_version;
			channel->HasPassword = has_password;
			channel->Server = server;
			wcscpy(channel->Name, name);
			if (host != NULL)
			{
				strcpy(channel->Host, host);
			}
			else
			{
				strcpy(channel->Host, "");
			}
			found = true;
		}
	}
	RefreshChannelList();
}

void MPFEChannelSelector::RefreshChannelList()
{
#if defined(VERSION_BW1W100)
	ChannelList->DeleteAll();
	for (OrderedNode<MPFEChannelDetails>* node = Channels.head; node != NULL; node = node->next)
	{
		ChannelList->AddString(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_138), 0, 0, 0);
		node->GetData()->GetDisplayString(ChannelList->item_labels[ChannelList->NumItems - 1]);
		ChannelList->SetItemData(ChannelList->NumItems - 1, (uint32_t)node->data);
	}
	ChannelList->UpdateHeights();
#else
	SetupList*          list = ChannelList;
	float               scrollPosition = list->ScrollPosition;
	MPFEChannelDetails* selected = (MPFEChannelDetails*)list->GetItemData(list->SelectedIndex);
	list->DeleteAll();
	for (OrderedNode<MPFEChannelDetails>* node = Channels.head; node != NULL; node = node->next)
	{
		if (wcscmp(Instance.PasswordEdit->label, L"") != 0 && Instance.CreatingChannel)
		{
			wchar_t filter[0x80];
			wchar_t channelName[0x80];
			memset(filter, 0, sizeof(filter));
			memset(channelName, 0, sizeof(channelName));
			for (unsigned int i = 0; i < wcslen(Instance.PasswordEdit->label); i++)
			{
				filter[i] = towlower(Instance.PasswordEdit->label[i]);
			}
			for (unsigned int j = 0; j < wcslen(node->GetData()->Name); j++)
			{
				channelName[j] = towlower(node->GetData()->Name[j]);
			}
			if (wcsstr(channelName, filter) != NULL)
			{
				ChannelList->AddString(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_138), 0, 0,
				                       0);
				node->GetData()->GetDisplayString(ChannelList->item_labels[ChannelList->NumItems - 1]);
				ChannelList->SetItemData(ChannelList->NumItems - 1, (uint32_t)node->data);
			}
		}
		else
		{
			ChannelList->AddString(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_PAUSE_STATS_138), 0, 0, 0);
			node->GetData()->GetDisplayString(ChannelList->item_labels[ChannelList->NumItems - 1]);
			ChannelList->SetItemData(ChannelList->NumItems - 1, (uint32_t)node->data);
		}
	}
	ChannelList->UpdateHeights();
	for (int k = 0; k < ChannelList->NumItems; k++)
	{
		if (ChannelList->ItemData[k] == (uint32_t)selected)
		{
			ChannelList->SelectedIndex = k;
			ChannelList->AutoScroll(false);
		}
	}
	if (selected == NULL)
	{
		ChannelList->ScrollPosition = scrollPosition;
	}
	list = ChannelList;
	list->ScrollPosition = list->ScrollPosition > 0 ? min(list->ScrollPosition, list->MaxScrollPosition) : 0;
	if (Instance.ChannelList->SelectedIndex == -1)
	{
		Instance.PlayerList->DeleteAll();
		Instance.PlayerList->Hide(true);
		Instance.PlayerListTitle->Hide(true);
		Instance.NameEdit->SetText(L"");
		Instance.InstructionsText->Hide(false);
	}
	else
	{
		Instance.PlayerList->DeleteAll();
		Instance.PlayerList->Hide(false);
		Instance.PlayerListTitle->Hide(false);
		Instance.InstructionsText->Hide(true);
		MPFEData::Data.GetLayer()->PopulateChannelPlayers(
			(MPFEChannelDetails*)Instance.ChannelList->ItemData[Instance.ChannelList->SelectedIndex]);
		Instance.NameEdit->SetText(
			((MPFEChannelDetails*)Instance.ChannelList->GetItemData(Instance.ChannelList->SelectedIndex))->Name);
	}
	ChannelNameChanged = true;
	ChannelSelected = true;
#endif
}

void MPFEChannelSelector::RemoveChannel(unsigned long id, wchar_t* name)
{
	for (OrderedNode<MPFEChannelDetails>* node = Channels.head; node != NULL; node = node->next)
	{
		if (MPFEConnectionStatus::Status.IsInternetLobby())
		{
			if ((unsigned long)node->GetData()->Server == id)
			{
				Channels.Remove(node->GetData());
				break;
			}
		}
		else if (_wcsnicmp(name, node->GetData()->Name, 0x100) == 0)
		{
			Channels.Remove(node->GetData());
			break;
		}
	}
	RefreshChannelList();
}

bool MPFEChannelSelector::ChannelExists(wchar_t* name)
{
	for (OrderedNode<MPFEChannelDetails>* node = Channels.head; node != NULL; node = node->next)
	{
		if (_wcsnicmp(name, node->GetData()->Name, 0x200) == 0)
		{
			return true;
		}
	}
	return false;
}

MPFEChannelDetails* MPFEChannelSelector::GetChannelDetailsForName(wchar_t* name)
{
	for (OrderedNode<MPFEChannelDetails>* node = Channels.head; node != NULL; node = node->next)
	{
		if (_wcsnicmp(name, node->GetData()->Name, 0x200) == 0)
		{
			return node->GetData();
		}
	}
	return NULL;
}

void MPFEChannelSelector::SelectChannel(wchar_t* name)
{
	MPFEChannelDetails* channel = GetChannelDetailsForName(name);
	for (int i = 0; i < ChannelList->NumItems; i++)
	{
		if (ChannelList->ItemData[i] == (uint32_t)channel)
		{
			ChannelList->SelectedIndex = i;
			if (!ChannelSelected)
			{
				OnClickChannelList(NULL, NULL);
			}
			ChannelSelected = true;
			return;
		}
	}
}

MPFECreateGame MPFECreateGame::Instance;

MPFECreateGame::MPFECreateGame()
{
	Init(780, 500, ControlCallback);
	setup_box->TallBackground = 1;
}

MPFECreateGame::~MPFECreateGame() {}

void MPFECreateGame::InitControls()
{
	wcscpy(BackButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
	wcscpy(ContinueButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_44));
	wcscpy(TitleText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_27));
	wcscpy(NameLabel->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_59));
	wcscpy(PasswordLabel->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_PASSWORD_LABEL));
	wcscpy(OOSCheckBox->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_SINGING_STONE_CURSE_04));
	wcscpy(NameEdit->label, L"");
#if !defined(VERSION_BW1W100)
	wcscpy(MaxPlayersLabel->label, HelpTextDataPatch::GetTextL(HELP_TEXT_PATCH_03));
	MaxPlayers = MPFE_CREATE_GAME_MAX_PLAYERS;
#endif
	PasswordEdit->MaskedText = true;
	if (LHOSFile::Exists("oos.txt") == LH_FILE_RESULT_OK)
	{
		OOSCheckBox->Hide(false);
		OOSCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
	}
	else
	{
		OOSCheckBox->Hide(true);
		OOSCheckBox->style = BBSTYLE_CHECK_BOX_OFF;
	}
#if defined(VERSION_BW1WCI)
	NameEdit->SetText(L"");
	PasswordEdit->SetText(L"");
#else
	NameEdit->SetText(MPFEChannelSelector::Instance.NameEdit->label);
	PasswordEdit->SetText(MPFEChannelSelector::Instance.PasswordEdit->label);
#endif
	setup_box->SetFocusControl(NameEdit);
}

void MPFECreateGame::CopyToChannelSelector()
{
	NameEdit->label[64] = L'\0';
	PasswordEdit->label[16] = L'\0';
	MPFEChannelSelector::Instance.NameEdit->SetText(NameEdit->label);
	MPFEChannelSelector::Instance.PasswordEdit->SetText(PasswordEdit->label);
	ChannelNameChanged = true;
}

void MPFECreateGame::Init(uint32_t background_style, uint32_t tall_background,
                          void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);

#if defined(VERSION_BW1W100)
	BackButton = NEW(803) SetupBigButton(MPFE_CREATE_GAME_CONTROL_ID_BACK, 30, 530, L"", 40, SETUP_TEXT_POSITION_RIGHT,
	                                     BBSTYLE_LEFT_ARROW);
	BackButton->ContinueButtonCallback = OnClickCreateBack;
	ContinueButton = NEW(805) SetupBigButton(MPFE_CREATE_GAME_CONTROL_ID_CONTINUE, 730, 530, L"", 40,
	                                         SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	ContinueButton->ContinueButtonCallback = OnClickCreateContinue;

	PasswordLabel =
		NEW(809) SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_LABEL, 110, 370, 200, 45, L"", TEXTJUSTIFY_RIGHT);
	PasswordLabel->text_size = GetBigTextSize();
	NameLabel = NEW(813) SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_LABEL, 110, 250, 200, 45, L"", TEXTJUSTIFY_RIGHT);
	NameLabel->text_size = GetBigTextSize();

	NameEdit = NEW(818) SetupEdit(MPFE_CREATE_GAME_CONTROL_ID_EDIT, 325, 250, 230, 40, L"", true);
	NameEdit->text_size = GetMidTextSize();
	PasswordEdit = NEW(822) SetupEdit(MPFE_CREATE_GAME_CONTROL_ID_EDIT, 325, 370, 230, 40, L"", true);
	PasswordEdit->text_size = GetMidTextSize();

	OOSCheckBox =
		NEW(826) SetupCheckBox(MPFE_CREATE_GAME_CONTROL_ID_OOS, 423, 440, false, BBSTYLE_CHECK_BOX_OFF, L"", 35);
	OOSCheckBox->text_size = GetMidTextSize();

	TitleText = NEW(830) SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_TITLE, 40, 70, 720, 40, L"", TEXTJUSTIFY_CENTRE);
	TitleText->text_size = GetBigTextSize();
#else
	BackButton = NEW(803) SetupBigButton(MPFE_CREATE_GAME_CONTROL_ID_BACK, 30, 530, L"", 40, SETUP_TEXT_POSITION_RIGHT,
	                                     BBSTYLE_LEFT_ARROW);
	BackButton->ContinueButtonCallback = OnClickCreateBack;
	ContinueButton = NEW(805) SetupBigButton(MPFE_CREATE_GAME_CONTROL_ID_CONTINUE, 730, 530, L"", 40,
	                                         SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	ContinueButton->ContinueButtonCallback = OnClickCreateContinue;

	PasswordLabel =
		NEW(809) SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_LABEL, 110, 300, 200, 45, L"", TEXTJUSTIFY_RIGHT);
	PasswordLabel->text_size = GetBigTextSize();
	NameLabel = NEW(813) SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_LABEL, 110, 200, 200, 45, L"", TEXTJUSTIFY_RIGHT);
	NameLabel->text_size = GetBigTextSize();
	MaxPlayersLabel = NEW(816)
		SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_MAX_PLAYERS_LABEL, 110, 400, 200, 45, L"", TEXTJUSTIFY_RIGHT);
	MaxPlayersLabel->text_size = GetBigTextSize();

	NameEdit = NEW(820) SetupEdit(MPFE_CREATE_GAME_CONTROL_ID_EDIT, 325, 200, 230, 40, L"", true);
	NameEdit->text_size = GetMidTextSize();
	PasswordEdit = NEW(824) SetupEdit(MPFE_CREATE_GAME_CONTROL_ID_EDIT, 325, 300, 230, 40, L"", true);
	PasswordEdit->text_size = GetMidTextSize();

	MaxPlayers = MPFE_CREATE_GAME_MAX_PLAYERS;
	MaxPlayersText =
		NEW(829) SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_MAX_PLAYERS, 400, 400, 40, 40, L"8", TEXTJUSTIFY_CENTRE);
	MaxPlayersText->text_size = GetBigTextSize();
	FewerPlayersButton = NEW(832) SetupBigButton(MPFE_CREATE_GAME_CONTROL_ID_FEWER_PLAYERS, 350, 400, L"", 40,
	                                             SETUP_TEXT_POSITION_RIGHT, BBSTYLE_LEFT_ARROW);
	FewerPlayersButton->ContinueButtonCallback = OnClickFewerPlayers;
	MorePlayersButton = NEW(835) SetupBigButton(MPFE_CREATE_GAME_CONTROL_ID_MORE_PLAYERS, 460, 400, L"", 40,
	                                            SETUP_TEXT_POSITION_LEFT, BBSTYLE_RIGHT_ARROW);
	MorePlayersButton->ContinueButtonCallback = OnClickMorePlayers;

	OOSCheckBox =
		NEW(841) SetupCheckBox(MPFE_CREATE_GAME_CONTROL_ID_OOS, 423, 480, false, BBSTYLE_CHECK_BOX_OFF, L"", 35);
	OOSCheckBox->text_size = GetMidTextSize();

	TitleText = NEW(844) SetupStaticText(MPFE_CREATE_GAME_CONTROL_ID_TITLE, 40, 70, 720, 40, L"", TEXTJUSTIFY_CENTRE);
	TitleText->text_size = GetBigTextSize();
#endif
}

#if !defined(VERSION_BW1W100)
static void OnClickFewerPlayers(SetupBox* box, SetupControl* control)
{
	if (MPFECreateGame::Instance.MaxPlayers > MPFE_CREATE_GAME_MIN_PLAYERS)
	{
		MPFECreateGame::Instance.MaxPlayers--;
	}
}

static void OnClickMorePlayers(SetupBox* box, SetupControl* control)
{
	if (MPFECreateGame::Instance.MaxPlayers < MPFE_CREATE_GAME_MAX_PLAYERS)
	{
		MPFECreateGame::Instance.MaxPlayers++;
	}
}
#endif

static void OnClickCreateBack(SetupBox* box, SetupControl* control)
{
#if defined(VERSION_BW1WCI)
	MPFEChannelSelector::Instance.NameEdit->SetText(L"");
	MPFEChannelSelector::Instance.PasswordEdit->SetText(L"");
#else
	MPFECreateGame::Instance.CopyToChannelSelector();
#endif
	DialogBoxBase::Hide();
}

static void OnClickCreateContinue(SetupBox* box, SetupControl* control)
{
	MPFECreateGame::Instance.CopyToChannelSelector();
	JoinPending = true;
	MPFEData::Data.IsOOSGame = MPFECreateGame::Instance.OOSCheckBox->style != BBSTYLE_CHECK_BOX_OFF;
	DialogBoxBase::Hide();
}

void MPFECreateGame::Destroy() {}

void __stdcall MPFECreateGame::ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	switch (message)
	{
	case SETUP_MESSAGE_PRE_DRAW: {
		int alpha = SetupThing::DrawAlpha;
		SetupThing::DrawAlpha = alpha / 2;
		SetupThing::DrawBox(Instance.TitleText->rect.start.x, Instance.TitleText->rect.start.y,
		                    Instance.TitleText->rect.end.x, Instance.TitleText->rect.end.y,
		                    MPFE_CHANNEL_SELECTOR_COLOUR, MPFE_CHANNEL_SELECTOR_COLOUR, MPFE_CHANNEL_SELECTOR_COLOUR,
		                    MPFE_CHANNEL_SELECTOR_COLOUR, 1, 1);
		SetupThing::DrawAlpha = alpha;
		break;
	}
	case SETUP_MESSAGE_ACTIVATE:
		Instance.InitControls();
		break;
	case SETUP_MESSAGE_CLICK:
		if (control->id != 0 && control->ContinueButtonCallback != NULL)
		{
			control->ContinueButtonCallback(box, control);
		}
		break;
	case SETUP_MESSAGE_UPDATE:
#if !defined(VERSION_BW1W100)
		swprintf(Instance.MaxPlayersText->label, L"%d", Instance.MaxPlayers);
#endif
		MPFEData::Data.ProcessDaniel();
		break;
	}
}
