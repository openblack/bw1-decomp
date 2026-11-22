#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For NumDaysInYear, SecondsInDay, SecondsPerYear */
#include "LobbyBox.h"

#include <stdio.h>  /* For sprintf */
#include <string.h> /* For memset, strcpy, strlen */
#include <wchar.h>  /* For wcscpy, wcslen */

#include <chlasm/HelpTextEnums.h>                          /* For HELP_TEXT_* */
#include <Lionhead/LH3DLib/development/LH3DText.h>         /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHLinkedListIterator.h>    /* For LHLinkedListIterator */
#include <Lionhead/LHLog/ver4.0/LHLogger.h>                /* For LHLogger */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>               /* For LHSPrintfW */
#include <Lionhead/LHMultiplayer/ver4.0/LHChannel.h>       /* For LH_CHANNEL_DEFAULT_NAME */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetEvent.h>      /* For LHNetEvent */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetTypes.h>      /* For LHLocalLobbyInfo */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>       /* For LHNetUser */
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>        /* For LHPlayer */
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h> /* For LHTransportInfo */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                   /* For NEW */
#include <Lionhead/LHMultiplayer/ver4.0/LHConnection.h>    /* For LHConnection::Open */
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>         /* For class LHLobby */
#include <Lionhead/LHMultiplayer/ver4.0/LHLobbyServer.h>   /* For class LHLobbyServerChannel */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>      /* For LHCheckForInternetConnection */

#include "HelpText.h"              /* For HelpTextDataBase */
#include "LandscapeDetails.h"      /* For struct LandscapeDetails */
#include "TextConversion.h"        /* For TextConversion */
#include "MapList.h"               /* For MapList */
#include "LHNetBase.h"             /* For LHNetBase::Instance */
#include "SetupGameData.h"         /* For setupgamedata::Current */
#include "SetupMultiplayerMain.h"  /* For SetupMultiplayerMain::Instance */
#include "ServerLandscapeMap.h"    /* For ServerLandscapeMap */
#include "SetupOnlineLandscapes.h" /* For SetupOnlineLandscapes::Instance */
#include "Game.h"                  /* For GGame::g_game */
#include "FrontEnd.h"              /* For WCHAR2CHAR */
#include "alexmfc.h"

LobbyBox* LobbyBox::Instance;

static const char LandscapeLoadedTag[] = "lOaDeDLaNdScApE";
static const char MapsPresentTag[] = "I-_H_A_V_E_-M_A+P-z";

// BW1W120 005f5200 BW1M119 inlined
static char* SkipTag(char* text, const char* tag)
{
	int i;
	for (i = 0; i < (int)strlen(tag); i++)
	{
		if (text[i] != tag[i])
		{
			return NULL;
		}
	}
	return text + i + 1;
}

// BW1W120 005f59c0 BW1M119 015dec60
static void OnlineLandscapesClicked(SetupBox* box, SetupControl* control);

void LobbyBox::Init(uint32_t background_style, uint32_t tall_background,
                    void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	GameList =
		NEW(78) SetupList(LOBBY_BOX_CONTROL_ID_GAME_LIST, 40, 80, 200,
	                      LHNetBase::Instance.InternetLobby && LHNetBase::Instance.InternetLobby->Open ? 325 : 360);
	ChatList = NEW(79) SetupList(LOBBY_BOX_CONTROL_ID_CHAT_LIST, 250, 80, 400, 360);
	PlayerList = NEW(80) SetupList(LOBBY_BOX_CONTROL_ID_PLAYER_LIST, 660, 80, 100, 360);
	GameListText = NEW(81)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 40, 50, 200, 27,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_GAMELIST), TEXTJUSTIFY_RIGHT);
	ChatRoomText = NEW(82)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 250, 50, 400, 27,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CHATROOM), TEXTJUSTIFY_RIGHT);
	PlayerListText = NEW(83)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 660, 50, 100, 27,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLAYERLIST), TEXTJUSTIFY_RIGHT);
	StatusText = NEW(87) SetupStaticText(LOBBY_BOX_CONTROL_ID_STATUS, 40, 23, 300, 30, L"", TEXTJUSTIFY_LEFT);
	InfoEdit = NEW(91) SetupEdit(LOBBY_BOX_CONTROL_ID_INFO, 150, 525, 300, 30, L" ", 0);
	InfoEdit->text_size = 16;
	OnlineMapsButton =
		NEW(94) SetupButton(LOBBY_BOX_CONTROL_ID_ONLINE_MAPS, 470, 525, 150, 30,
	                        HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_106), 0);
	OnlineMapsButton->ContinueButtonCallback = OnlineLandscapesClicked;
	StartGameButton = NEW(97) SetupBigButton(LOBBY_BOX_CONTROL_ID_START_GAME, 720, 520,
	                                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_STARTGAME),
	                                         40, 1, BBSTYLE_RIGHT_ARROW);
	BackButton = NEW(98) SetupBigButton(LOBBY_BOX_CONTROL_ID_BACK, 40, 520,
	                                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40, 0,
	                                    BBSTYLE_LEFT_ARROW);
	MessageEdit = NEW(102) SetupEdit(LOBBY_BOX_CONTROL_ID_MESSAGE, 250, 480, 400, 30, L"", 1);
	TypeMessageText = NEW(103) SetupStaticText(
		LOBBY_BOX_CONTROL_ID_TEXT, 248, 450, 400, 30,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TYPEMESSAGE), TEXTJUSTIFY_RIGHT);
	GameSetupButton =
		NEW(109) SetupButton(LOBBY_BOX_CONTROL_ID_GAME_SETUP, 470, 525, 150, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_122), 0);
	SetupMultiplayerMain::Instance->CurrentData = &setupgamedata::Current;
	GameSetupButton->Hide(true);
	OnlineMapsButton->Hide(false);
	RefreshButton = NEW(117) SetupButton(LOBBY_BOX_CONTROL_ID_REFRESH, 40, 410, 200, 30,
	                                     HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_REFRESH), 0);
	CreateButton = NEW(118) SetupButton(LOBBY_BOX_CONTROL_ID_CREATE, 40, 445, 95, 30,
	                                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_JOIN), 0);
	GameNameEdit = NEW(119) SetupEdit(LOBBY_BOX_CONTROL_ID_GAME_NAME, 145, 445, 95, 30, L"", 1);
	PasswordEdit = NEW(120) SetupEdit(LOBBY_BOX_CONTROL_ID_PASSWORD, 145, 480, 95, 30, L"", 1);
	PasswordEdit->MaskedText = true;
	PasswordText = NEW(122)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 40, 480, 100, 30,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PASSWORD), TEXTJUSTIFY_RIGHT);
	JoinButton = NEW(123) SetupButton(LOBBY_BOX_CONTROL_ID_JOIN, 40, 480, 200, 30,
	                                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_JOIN), 0);
	SavePacketsCheckBox =
		NEW(127) SetupCheckBox(LOBBY_BOX_CONTROL_ID_SAVE_PACKETS, 70, 570, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOBBYSAVEPACKETS), 20);
	SavePacketsCheckBox->text_size = 16;
	Instance->setup_box->DefaultTextSize = 16;
}

void OnlineLandscapesClicked(SetupBox* box, SetupControl* control)
{
	if (!LHCheckForInternetConnection(CheckInternetConnectionOptions))
	{
		box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_125),
		                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
		return;
	}
	SetupOnlineLandscapes::Instance->ChoosingMap = false;
	SetupOnlineLandscapes::Instance->Show();
}

void LobbyBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void LobbyBox::InitControls()
{
	Instance->setup_box->DefaultTextSize = 16;
	MessageEdit->SetText(L"");
	ChatList->DeleteAll();
	LeaveGameState();
	PlayerList->DeleteAll();
	GameList->DeleteAll();
	ChatList->DeleteAll();
	GameSetupButton->Hide(true);
	OnlineMapsButton->Hide(false);
}

void LobbyBox::SendSecretChatMessage(const char* tag, char* text, char* recipient)
{
	size_t length = strlen(tag);
	if (text != NULL)
	{
		length += strlen(text);
	}
	if (recipient != NULL)
	{
		length += strlen(recipient);
	}
	length += 10;
	char* message = NEW(211) char[length];
	memset(message, 0, length);
	if (text != NULL)
	{
		if (recipient != NULL)
		{
			sprintf(message, "%s%c%s%c%s", tag, ':', text, ':', recipient);
		}
		else
		{
			sprintf(message, "%s%c%s", tag, ':', text);
		}
	}
	else
	{
		strcpy(message, tag);
	}
	LHNetBase::Instance.Channel->ChatOnChannel(message, (strlen(message) + 1) * 2, 0, false);
	delete[] message;
}

void LobbyBox::SetUserColours()
{
	for (int i = 0; i < PlayerList->NumItems; i++)
	{
		MapList* maps = (MapList*)(i >= 0 && i < PlayerList->NumItems ? PlayerList->TagData[i] : NULL);
		if (maps != NULL && maps->Host)
		{
			PlayerList->SetCol(i, 0xff);
		}
		else if (setupgamedata::Current.UseCustomMap)
		{
			maps = (MapList*)(i >= 0 && i < PlayerList->NumItems ? PlayerList->TagData[i] : NULL);
			if (maps != NULL)
			{
				if (maps->DoWeHaveInList(&setupgamedata::Current.CustomMap))
				{
					PlayerList->SetCol(i, 0xff00);
				}
				else
				{
					PlayerList->SetCol(i, 0xff0000);
				}
			}
		}
		else
		{
			PlayerList->SetCol(i, 0xff00);
		}
	}
}

void __stdcall LobbyBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	char    path[0x104];
	wchar_t text[0x400];
	switch (message)
	{
	case SETUP_MESSAGE_ON_HOLD:
		Instance->OnHold = true;
		break;
	case SETUP_MESSAGE_ACTIVATE:
		if (!Instance->ControlsInitialised)
		{
			Instance->InitControls();
		}
		if (Instance->MapChanged)
		{
			if (setupgamedata::Current.UseCustomMap)
			{
				Instance->SendSecretChatMessage(setupgamedata::Current.CustomMap.FileName,
				                                setupgamedata::Current.CustomMap.Name, NULL);
			}
			Instance->SetUserColours();
		}
		Instance->MapChanged = false;
		Instance->ControlsInitialised = false;
		break;
	case SETUP_MESSAGE_CHAR:
		if (x == VK_RETURN)
		{
			if (control != NULL && control->id == LOBBY_BOX_CONTROL_ID_MESSAGE)
			{
				Instance->SendMessageA();
				break;
			}
			control = Instance->StartGameButton;
		}
		else if (x == VK_ESCAPE)
		{
			control = Instance->BackButton;
		}
		else
		{
			break;
		}
	case SETUP_MESSAGE_CLICK:
		if (control == NULL)
		{
			break;
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_ONLINE_MAPS)
		{
			SetupOnlineLandscapes::Instance->ChoosingMap = false;
			SetupOnlineLandscapes::Instance->Show();
			break;
		}
		if (control->ContinueButtonCallback != NULL)
		{
			control->ContinueButtonCallback(box, control);
			break;
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_GAME_LIST)
		{
			Instance->SelectLobby();
			if (Instance->GameList->SelectedIndex >= 0)
			{
				Instance->PlayerList->SelectedIndex = -1;
			}
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_PLAYER_LIST)
		{
			if (Instance->PlayerList->SelectedIndex >= 0)
			{
				Instance->GameList->SelectedIndex = -1;
			}
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_GAME_SETUP && !control->hidden)
		{
			SetupMultiplayerMain::Instance->Show();
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_START_GAME && !control->hidden)
		{
			if (setupgamedata::Current.UseCustomMap)
			{
				bool               missing = false;
				ServerLandscapeMap map(NULL);
				sprintf(path, ".\\Online Maps\\Thumbs\\%s.thm", setupgamedata::Current.CustomMap.FileName);
				if (!map.LoadThumbnail(path))
				{
					box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_42),
					                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
				}
				if ((int)map.CitadelPoints.count < Instance->PlayerList->NumItems)
				{
					swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_43),
					         map.CitadelPoints.count);
					box->MessageBoxA(text, MSGBOXSTYLE_SINGLE_BUTTON, 0);
					break;
				}
				if ((int)map.CitadelPoints.count > Instance->PlayerList->NumItems)
				{
					swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_MULTIPLAYER_MAP_44),
					         map.CitadelPoints.count);
					box->MessageBoxA(text, MSGBOXSTYLE_SINGLE_BUTTON, 0);
					break;
				}
				for (int i = 0; i < Instance->PlayerList->NumItems; i++)
				{
					if (!((MapList*)(i >= 0 && i < Instance->PlayerList->NumItems ? Instance->PlayerList->TagData[i]
					                                                              : NULL))
					         ->DoWeHaveInList(&setupgamedata::Current.CustomMap))
					{
						missing = true;
					}
				}
				if (missing)
				{
					box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_21),
					                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
					break;
				}
			}
			if (Instance->SavePacketsCheckBox->style)
			{
				LHNetBase::Instance.Channel->PacketSource = LH_PACKET_SOURCE_RECORD;
			}
			LHNetBase::Instance.Channel->StartGame(100, sizeof(setupgamedata), &setupgamedata::Current);
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_DISCONNECT)
		{
			Instance->Disconnect();
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_JOIN)
		{
			Instance->Connect();
			Instance->OnlineMapsButton->Hide(true);
			Instance->GameSetupButton->Hide(true);
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_CREATE)
		{
			Instance->CreatingGame = true;
			if (Instance->GameNameEdit->label != NULL && wcslen(Instance->GameNameEdit->label) == 0)
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLEASEENTERROOMNAME),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
				return;
			}
			char* name = WCHAR2CHAR(Instance->GameNameEdit->label);
			if (LHNetBase::Instance.InternetLobby->ConnectToChannel(name, WCHAR2CHAR(Instance->PasswordEdit->label),
			                                                        LH_NET_CHANNEL_MODE_GAME) != LH_OK)
			{
				box->MessageBoxA(
					LHSPrintfW(L"%s %s", HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_FAILEDTOJOIN),
				               CHAR2WCHAR(LHLogger::GetText())),
					MSGBOXSTYLE_SINGLE_BUTTON, 0);
				return;
			}
			Instance->OnlineMapsButton->Hide(true);
			Instance->GameSetupButton->Hide(true);
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_REFRESH)
		{
			LHNetBase::Instance.InternetLobby->Write(
				LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST,
			                        LHNetBase::Instance.InternetLobby->GetNetUser()->GetID(), 0));
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_LEAVE)
		{
			Instance->GameSetupButton->Hide(true);
			Instance->OnlineMapsButton->Hide(false);
			Instance->Disconnect();
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_BACK)
		{
			if (Instance->GameList->hidden)
			{
				Instance->GameSetupButton->Hide(true);
				Instance->OnlineMapsButton->Hide(false);
				Instance->LeaveGameState();
				Instance->Disconnect();
			}
			else if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
			{
				DialogBoxBase::Hide();
			}
			else
			{
				Instance->Disconnect();
				DialogBoxBase::Hide();
				LHNetBase::Instance.Shutdown();
			}
		}
		break;
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (x == SETUP_MESSAGE_BOX_ID_OK && Instance->OnHold == true)
		{
			Instance->OnHold = false;
			if (Instance->PendingMessages.count != 0)
			{
				char16_t* text = Instance->PendingMessages.FindNext(NULL);
				Instance->OnHold = true;
				box->MessageBoxA(text, MSGBOXSTYLE_SINGLE_BUTTON, 0);
				Instance->PendingMessages.Remove(text);
				delete text;
			}
		}
		break;
	case SETUP_MESSAGE_UPDATE: {
		SetupControl* hover = box->FindControl(x, y);
		SetupEdit*    info = Instance->InfoEdit;
		if (hover != NULL)
		{
			switch (hover->id)
			{
			case LOBBY_BOX_CONTROL_ID_GAME_LIST:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_01));
				break;
			case LOBBY_BOX_CONTROL_ID_CHAT_LIST:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_02));
				break;
			case LOBBY_BOX_CONTROL_ID_PLAYER_LIST:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_03));
				break;
			case LOBBY_BOX_CONTROL_ID_JOIN:
			case LOBBY_BOX_CONTROL_ID_CREATE:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_04));
				break;
			case LOBBY_BOX_CONTROL_ID_REFRESH:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_05));
				break;
			case LOBBY_BOX_CONTROL_ID_GAME_NAME:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_06));
				break;
			case LOBBY_BOX_CONTROL_ID_PASSWORD:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_07));
				break;
			case LOBBY_BOX_CONTROL_ID_MESSAGE:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_08));
				break;
			case LOBBY_BOX_CONTROL_ID_START_GAME:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_09));
				break;
			case LOBBY_BOX_CONTROL_ID_BACK:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_11));
				break;
			case LOBBY_BOX_CONTROL_ID_GAME_SETUP:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HELP_10));
				break;
			case LOBBY_BOX_CONTROL_ID_ONLINE_MAPS:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_92));
				break;
			default:
				info->SetText(L"");
				break;
			}
		}
		Instance->ProcessNetEvents(LHNetBase::Instance.State == LH_NET_STATE_INTERNET, 0, box);
		break;
	}
	}
	if (Instance->GameList->SelectedIndex < 0)
	{
		Instance->CreateButton->Hide(true);
		Instance->JoinButton->Hide(true);
	}
	if (wcslen(Instance->GameNameEdit->label) > 0)
	{
		Instance->CreateButton->Hide(false);
	}
}

void LobbyBox::SendMessageA()
{
	if (wcslen(MessageEdit->label) > 0)
	{
		if (GameList->SelectedIndex < 0 && PlayerList->SelectedIndex < 0 && LHNetBase::Instance.Channel == NULL)
		{
			LHLobby::Chat(0, NULL, MessageEdit->label, (wcslen(MessageEdit->label) + 1) * 2);
		}
		else if (GameList->SelectedIndex >= 0 && LHNetBase::Instance.Channel == NULL)
		{
			LHLocalLobbyInfo* lobby = (LHLocalLobbyInfo*)GameList->GetItemData(GameList->SelectedIndex);
			LHLobby::Chat(0, &lobby->BroadcastListener, MessageEdit->label, (wcslen(MessageEdit->label) + 1) * 2);
		}
		else if (LHNetBase::Instance.Channel != NULL)
		{
			if (PlayerList->SelectedIndex >= 0)
			{
				LH_USER_ID to = ((LHPlayer*)PlayerList->GetItemData(PlayerList->SelectedIndex))->UserId;
				LHNetBase::Instance.Channel->ChatOnChannel(MessageEdit->label, (wcslen(MessageEdit->label) + 1) * 2, to,
				                                           false);
			}
			else
			{
				LHNetBase::Instance.Channel->ChatOnChannel(MessageEdit->label, (wcslen(MessageEdit->label) + 1) * 2, 0,
				                                           false);
			}
		}
		else
		{
			return;
		}
	}
	GameList->SelectedIndex = -1;
	PlayerList->SelectedIndex = -1;
	MessageEdit->SetText(L"");
}

void LobbyBox::SendMapsPresentString()
{
	MapList maps;
	maps.GenerateFromFilesOnDisk();
	char* list = maps.EncodeList();
	SendSecretChatMessage(MapsPresentTag, list, NULL);
}

void LobbyBox::ShowMessage(char16_t* text, SetupBox* box)
{
	if (PendingMessages.count == 0 && !Instance->OnHold)
	{
		box->MessageBoxA(text, MSGBOXSTYLE_SINGLE_BUTTON, 0);
		delete text;
	}
	else
	{
		PendingMessages.AddToEnd(text);
	}
}

void LobbyBox::Disconnect()
{
	if (LHNetBase::Instance.RemoteLobby->Open)
	{
		if (LHNetBase::Instance.Channel != NULL)
		{
			LeaveGameState();
			LHNetBase::Instance.RemoteLobby->Close();
			LHNetBase::Instance.Channel = NULL;
		}
	}
	else if (LHNetBase::Instance.State == LH_NET_STATE_INTERNET)
	{
		if (LHNetBase::Instance.InternetLobby->Open && LHNetBase::Instance.Channel != NULL)
		{
			LHNetBase::Instance.InternetLobby->LeaveChannel(LHNetBase::Instance.Channel);
		}
		LeaveGameState();
		LHNetBase::Instance.Channel = NULL;
		if (LHNetBase::Instance.InternetLobby->Open)
		{
			LHNetBase::Instance.InternetLobby->Write(
				LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST,
			                        LHNetBase::Instance.InternetLobby->GetNetUser()->GetID(), 0));
		}
	}
	else
	{
		LHLobbyChannel* channel = LHNetBase::Instance.Lobby->FindChannel((char*)LH_CHANNEL_DEFAULT_NAME);
		if (channel != NULL && channel->Players.count > 1)
		{
			LHNetBase::Instance.Lobby->BootOtherUsersOffChannel((char*)LH_CHANNEL_DEFAULT_NAME);
		}
	}
	setupgamedata::Current.reset_to_defaults();
}

void LobbyBox::Connect()
{
	int selected = GameList->SelectedIndex;
	if (selected >= 0)
	{
		LHLocalLobbyInfo* lobby = (LHLocalLobbyInfo*)GameList->GetItemData(selected);
		LHTransportInfo   info(lobby->ConnectionAcceptor.GetIP(), lobby->ConnectionAcceptor.GetPort());
		if (LHNetBase::Instance.RemoteLobby->OpenRemoteLobby(LHNetBase::Instance.User, &info) == LH_OK)
		{
			JoinButton->Hide(true);
			if (!(LHNetBase::Instance.InternetLobby != NULL && LHNetBase::Instance.InternetLobby->Open))
			{
				GameList->rect.end.y = MessageEdit->rect.end.y;
			}
		}
		else
		{
			setup_box->MessageBoxA(
				LHSPrintfW(L"%s\n%s %d", CHAR2WCHAR(LHLogger::GetText()),
			               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ERRORCODEWAS),
			               LHLogger::GetCode()),
				MSGBOXSTYLE_SINGLE_BUTTON, 0);
		}
	}
}

void LobbyBox::ProcessNetEvents(int internet, int keep_connection, SetupBox* box)
{
	LHSPrintf       mserve_text;
	LH_USER_ID      mserve_user;
	LHTransportInfo mserve_info;
	LHLobbyChannel* channel;
	LH_USER_ID      broadcast_user;

	bool lobby_ready = LHNetBase::Instance.Lobby->Open && !LHNetBase::Instance.Lobby->IsDisconnected() &&
	                   LHNetBase::Instance.Lobby->CheckForEvents();
	bool remote_ready = LHNetBase::Instance.RemoteLobby->Open && !LHNetBase::Instance.RemoteLobby->IsDisconnected() &&
	                    LHNetBase::Instance.RemoteLobby->CheckForEvents();
	bool internet_ready = LHNetBase::Instance.InternetLobby->Open &&
	                      !LHNetBase::Instance.InternetLobby->IsDisconnected() &&
	                      LHNetBase::Instance.InternetLobby->CheckForEvents();
	LHLobby* connection;
	if (lobby_ready)
	{
		connection = LHNetBase::Instance.Lobby;
	}
	else if (remote_ready)
	{
		connection = LHNetBase::Instance.RemoteLobby;
	}
	else if (internet_ready)
	{
		connection = LHNetBase::Instance.InternetLobby;
	}
	else
	{
		return;
	}

	LHNetEvent* event = connection->Read(0, LH_NETEVENT_TYPE_NONE);
	switch (event->GetType())
	{
	case LH_NETEVENT_TYPE_LOBBY_CHANNEL_LIST_INFO: {
		LHLinkedList<LHLobbyServerChannel*>* channels = &LHNetBase::Instance.InternetLobby->ServerChannels;
		Instance->GameList->DeleteAll();
		for (LHLinkedListIterator<LHLobbyServerChannel*> it(channels->GetStart()); it.MoreToDo(); it++)
		{
			LHLobbyServerChannel* channel = it.Get();
			GameList->AddString(
				LHSPrintfW(L"%s(%d)%s", CHAR2WCHAR(channel->GetName()), channel->GetSize(),
			               channel->MServeStarted ? HelpTextData::GetTextL(HELP_TEXT_MPFE_PLAYING) : L""),
				0, 0, 0);
			GameList->SetItemData(GameList->NumItems - 1, (uint32_t)channel);
		}
		break;
	}
	case LH_NETEVENT_TYPE_LOBBY_GREETING:
		if (!internet)
		{
			connection->ConnectToChannel((char*)LH_CHANNEL_DEFAULT_NAME, NULL, LH_NET_CHANNEL_MODE_GAME);
			wcscpy(StatusText->label,
			       LHSPrintfW(L"%s %s", LHNetBase::Instance.User->Name,
			                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ONLAN)));
		}
		else
		{
			LHTransportInfo info;
			wchar_t         address[0x100];
			LHNetBase::Instance.InternetLobby->GetTransportInfo(&info, false);
			wcscpy(address, CHAR2WCHAR(info.GetIP()));
			wcscpy(StatusText->label,
			       LHSPrintfW(L"%s %s %s", LHNetBase::Instance.User->Name,
			                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ONLOBBY), address));
		}
		break;
	case LH_NETEVENT_TYPE_SERVER_ERROR: {
		long  code;
		char* text;
		if (event->VDecode(LH_NETEVENT_TYPE_SERVER_ERROR, &code, &text) != LH_OK)
		{
			break;
		}
		LHSPrintfW error(CHAR2WCHAR(text));
		if (!internet)
		{
			LHNetBase::Instance.RemoteLobby->Close();
		}
		setup_box->MessageBoxA(LHSPrintfW(L"%s\n%s %d", (wchar_t*)error,
		                                  HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ERRORCODEWAS),
		                                  code),
		                       MSGBOXSTYLE_SINGLE_BUTTON, 0);
		break;
	}
	case LH_NETEVENT_TYPE_LOBBY_PLAYER_LIST:
		if (keep_connection)
		{
			LHNetBase::Instance.Channel = LHNetBase::Instance.Lobby->FindChannel(event->GetChannelName());
			LHNetBase::Instance.Channel->StartGame(100, 0, NULL);
		}
		else if (internet)
		{
			LHNetBase::Instance.Channel = LHNetBase::Instance.InternetLobby->FindChannel(event->GetChannelName());
			Instance->SendMapsPresentString();
			ResetUsers(LHNetBase::Instance.InternetLobby, LHNetBase::Instance.Channel);
			if (CreatingGame)
			{
				CreatingGame = false;
				LHNetBase::Instance.InternetLobby->Write(
					LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_LIST,
				                        LHNetBase::Instance.InternetLobby->GetNetUser()->GetID(), 0));
			}
		}
		else if (LHNetBase::Instance.RemoteLobby->Open)
		{
			LHNetBase::Instance.Channel = LHNetBase::Instance.RemoteLobby->FindChannel(event->GetChannelName());
			Instance->SendMapsPresentString();
			ResetUsers(LHNetBase::Instance.RemoteLobby, LHNetBase::Instance.Channel);
		}
		else
		{
			LHNetBase::Instance.Channel = LHNetBase::Instance.Lobby->FindChannel(event->GetChannelName());
			Instance->SendMapsPresentString();
			ResetUsers(LHNetBase::Instance.Lobby, LHNetBase::Instance.Channel);
			if (LHNetBase::Instance.Lobby->FindChannel(event->GetChannelName())->Players.count == 1)
			{
				LHNetBase::Instance.Channel = NULL;
			}
		}
		break;
	case LH_NETEVENT_TYPE_LOBBY_CHAT_ON_CHANNEL: {
		LHPlayer* player;
		void*     data;
		bool32_t  is_private;
		connection->GetChatOnChannelInfo(event, &channel, &player, &data, &is_private);
		LHPlayer*                me = channel->GetPlayer(connection->GetNetUser()->GetID());
		LH_USER_ID               user_id;
		LHLinkedNode<LHPlayer*>* last = channel->GetPlayerList()->GetLastNode();
		LHPlayer*                host = last != NULL ? last->payload : NULL;
		if (wcslen((wchar_t*)data) != 0)
		{
			TextConversion conversion((char*)data);
			char           text[0x400];
			strcpy(text, conversion.Narrow);
			char* landscape = SkipTag(text, LandscapeLoadedTag);
			char* maps = SkipTag(text, MapsPresentTag);
			if (landscape != NULL)
			{
				if (host != me)
				{
					LandscapeDetails details;
					wchar_t          message[0x400];
					details.TakeFromString(landscape);
					if (!SetupOnlineLandscapes::Instance->CheckIfWeHaveMap(&details))
					{
						swprintf(message, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_24),
						         &details);
						box->MessageBoxA(message, MSGBOXSTYLE_SINGLE_BUTTON, 0);
					}
					else
					{
						swprintf(message, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_25),
						         &details);
						box->MessageBoxA(message, MSGBOXSTYLE_SINGLE_BUTTON, 0);
					}
				}
			}
			else if (maps != NULL)
			{
				if (host == me)
				{
					MapList list;
					list.Decode(maps);
					MapList* existing = MapList::GetForPlayer((unsigned long)player);
					if (existing != NULL)
					{
						CopyMapList(existing, &list);
					}
					else
					{
						existing = NEW(768) MapList;
						existing->PlayerID = (unsigned long)player;
						existing->Host = player == host;
						CopyMapList(existing, &list);
						MapList::List.AddToEnd(existing);
					}
					ResetUsers(connection, channel);
				}
			}
			else
			{
				ChatList->AddString(LHSPrintfW(L"%s: %s", player->GetName(), data), is_private ? 0x80 : 0,
				                    is_private ? 0xff : 0, is_private ? 0x80 : 0);
			}
		}
		ChatList->AutoScroll(true);
		break;
	}
	case LH_NETEVENT_TYPE_LOBBY_CHANNEL_USERS: {
		char*                   name;
		LHLinkedList<LHPlayer*> players;
		PlayerList->DeleteAll();
		event->VDecode(LH_NETEVENT_TYPE_LOBBY_CHANNEL_USERS, &name, LHPlayer::Create, &players);
		for (LHLinkedListIterator<LHPlayer*> it(players.GetStart()); it.MoreToDo(); it++)
		{
			PlayerList->AddString(it.Get()->GetName(), 0, 0, 0);
			PlayerList->SetCol(PlayerList->NumItems - 1, 0xff00);
		}
		break;
	}
	case LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE: {
		char*         channel_name;
		char*         mserve_name;
		bool32_t      mgj;
		unsigned long game_data_length;
		void*         game_data;
		event->VDecode(LH_NETEVENT_TYPE_LOBBY_CONNECT_TO_MSERVE, &channel_name, &mserve_user, &mserve_info,
		               &mserve_name, &mgj, &game_data_length, &game_data);
		channel = connection->FindChannel(event->GetChannelName());
		switch (mserve_info.type)
		{
		case LH_TRANSPORT_TYPE_SYNC:
			mserve_text.SetString(
				WCHAR2CHAR(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_INTERNALSYNCRONOUS)));
			break;
		case LH_TRANSPORT_TYPE_TCP: {
			char* user = WCHAR2CHAR(channel->GetPlayer(mserve_user) != NULL
			                            ? channel->GetPlayer(mserve_user)->Name
			                            : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_USER));
			mserve_text.SetString("MServe Info: %s:%d(%s@%s)\n", mserve_info.GetIP(), mserve_info.GetPort(), user,
			                      mserve_name);
			break;
		}
		}
		break;
	}
	case LH_NETEVENT_TYPE_LOBBY_EJECTED_FROM_CHANNEL:
		Disconnect();
		break;
	case LH_NETEVENT_TYPE_LOBBY_VERIFY_CODE_CHECKSUMS: {
		channel = connection->FindChannel(event->GetChannelName());
		char* channel_name;
		char* text;
		event->VDecode(LH_NETEVENT_TYPE_LOBBY_VERIFY_CODE_CHECKSUMS, &channel_name, &text);
		setup_box->MessageBoxA(
			LHSPrintfW(L"%s\n%s\n",
		               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_WARNINGVERSIONMISMATCH),
		               CHAR2WCHAR(text)),
			MSGBOXSTYLE_SINGLE_BUTTON, 0);
		break;
	}
	case LH_NETEVENT_TYPE_INTERNAL_LOBBY_NEW_LOCAL_LOBBY_LIST: {
		LHLocalLobbyInfo* selected = (LHLocalLobbyInfo*)GameList->GetItemData(GameList->SelectedIndex);
		GameList->DeleteAll();
		for (LHLocalLobbyInfo* lobby = LHLobby::GetNextLocalLobby(NULL); lobby != NULL;
		     lobby = LHLobby::GetNextLocalLobby(lobby))
		{
			GameList->AddString(LHSPrintfW(L"%s %s (%d)%s", CHAR2WCHAR(lobby->Name),
			                               lobby->Category == LH_USER_ID::CATEGORY_GLOBAL_SERVER
			                                   ? HelpTextData::GetTextL(HELP_TEXT_DIALOG_GLOBALLOBBY)
			                                   : L"",
			                               LHLobby::GetNumberOfPlayersOnDefaultChannel(lobby),
			                               lobby->GameStarted ? HelpTextData::GetTextL(HELP_TEXT_MPFE_PLAYING) : L""),
			                    0, 0, 0);
			GameList->SetItemData(GameList->NumItems - 1, (uint32_t)lobby);
			if (lobby == selected)
			{
				GameList->SelectedIndex = GameList->NumItems - 1;
			}
		}
		break;
	}
	case LH_NETEVENT_TYPE_LOBBY_SESSION_READY: {
		channel = connection->FindChannel(event->GetChannelName());
		LHNetBase::Instance.Channel = connection->FindChannel(event->GetChannelName());
		LHNetBase::Instance.Session = channel->GetSession();
		LHNetBase::Instance.CurrentLobby = connection;
		LHNetBase::Instance.WaitUntilGameLoopStarted();
		DialogBoxBase::HideAll();
		FrontEnd::InMultiplayerScreens = false;
		FrontEnd::MultiplayerGameRunning = true;
		break;
	}
	case LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT: {
		wchar_t*      name;
		unsigned long length;
		void*         data;
		wchar_t       message[0x100];
		char          sender[100];
		event->VDecode(LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT, &broadcast_user, &name, &length, &data);
		wcscpy(message, (wchar_t*)data);
		ChatList->AddString(LHSPrintfW(L"%s: %s", name, message), 0x80, 0x80, 0xff);
		ChatList->AutoScroll(true);
		strcpy(sender, WCHAR2CHAR(name));
		break;
	}
	}
}

void LobbyBox::LeaveGameState()
{
	MessageEdit->rect.start.x = 250;
	ChatList->rect.start.x = 250;
	ChatRoomText->rect.start.x = 250;
	wcscpy(BackButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
	wcscpy(ChatRoomText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CHATROOM));
	PlayerList->rect.end.y = InfoEdit->rect.end.y;
	if (LHNetBase::Instance.InternetLobby != NULL && LHNetBase::Instance.InternetLobby->Open)
	{
		GameList->rect.end.y = GameList->rect.start.y + 325;
	}
	else
	{
		GameList->rect.end.y = MessageEdit->rect.end.y;
	}
	GameListText->Hide(false);
	GameList->Hide(false);
	StartGameButton->Hide(true);
	ChatList->DeleteAll();
	PlayerList->DeleteAll();
	GameList->SelectedIndex = -1;
	MessageEdit->SetText(L"");
	GameNameEdit->SetText(L"");
	PasswordEdit->SetText(L"");
	CreateButton->Hide(true);
	JoinButton->Hide(true);
	RefreshButton->Hide(true);
	GameNameEdit->Hide(true);
	PasswordEdit->Hide(true);
	PasswordText->Hide(true);
	GameSetupButton->Hide(true);
	OnlineMapsButton->Hide(false);
	if (LHNetBase::Instance.State == LH_NET_STATE_INTERNET)
	{
		RefreshButton->Hide(false);
		GameNameEdit->Hide(false);
		PasswordEdit->Hide(false);
		PasswordText->Hide(false);
		CreateButton->Hide(false);
	}
}

void LobbyBox::LockInGameState(bool host, char16_t* name)
{
	MessageEdit->rect.start.x = 40;
	ChatList->rect.start.x = 40;
	ChatRoomText->rect.start.x = 40;
	wcscpy(ChatRoomText->label, name);
	CreateButton->Hide(true);
	GameList->Hide(true);
	JoinButton->Hide(true);
	RefreshButton->Hide(true);
	GameNameEdit->Hide(true);
	PasswordEdit->Hide(true);
	PasswordText->Hide(true);
	GameListText->Hide(true);
	GameSetupButton->Hide(true);
	OnlineMapsButton->Hide(true);
	if (host)
	{
		StartGameButton->Hide(false);
		GameSetupButton->Hide(false);
		memset(&setupgamedata::Current.CustomMap, 0, sizeof(LandscapeDetails));
		OnlineMapsButton->Hide(true);
		PlayerList->rect.end.y = ChatList->rect.end.y;
	}
	else
	{
		StartGameButton->Hide(true);
		GameSetupButton->Hide(true);
		OnlineMapsButton->Hide(true);
		PlayerList->rect.end.y = InfoEdit->rect.end.y;
	}
	GameNameEdit->SetText(L"");
}

void LobbyBox::SelectLobby()
{
	if (LHNetBase::Instance.State == LH_NET_STATE_INTERNET)
	{
		if (GameList->SelectedIndex >= 0)
		{
			GameNameEdit->SetText(CHAR2WCHAR(((LHLobbyChannel*)GameList->GetItemData(GameList->SelectedIndex))->Name));
			LHNetBase::Instance.InternetLobby->Write(LHNetEvent::VCreate(
				LH_NETEVENT_TYPE_LOBBY_CLIENT_REQUEST_CHANNEL_USERS, LHNetBase::Instance.User->GetID(),
				((LHLobbyChannel*)GameList->GetItemData(GameList->SelectedIndex))->Name));
		}
		return;
	}
	if (GameList->GetItemData(GameList->SelectedIndex) != NULL)
	{
		LHLocalLobbyInfo* lobby = (LHLocalLobbyInfo*)GameList->GetItemData(GameList->SelectedIndex);
		PlayerList->DeleteAll();
		bool first = true;
		for (LHLinkedListIterator<LHPlayer*> it(lobby->Players); it.MoreToDo(); it++)
		{
			PlayerList->AddString(it.Get()->GetName(), 0, 0, 0);
			if (first)
			{
				PlayerList->SetCol(PlayerList->NumItems - 1, 0xff);
			}
			else
			{
				PlayerList->SetCol(PlayerList->NumItems - 1, 0);
			}
			first = false;
		}
	}
	if (!LHNetBase::Instance.RemoteLobby->Open &&
	    LHNetBase::Instance.Lobby->FindChannel((char*)LH_CHANNEL_DEFAULT_NAME)->Players.count <= 1)
	{
		if (GameList->SelectedIndex >= 0)
		{
			JoinButton->Hide(false);
			if (!(LHNetBase::Instance.InternetLobby != NULL && LHNetBase::Instance.InternetLobby->Open))
			{
				GameList->rect.end.y = MessageEdit->rect.start.y - 10;
			}
		}
		else
		{
			JoinButton->Hide(true);
			if (!(LHNetBase::Instance.InternetLobby != NULL && LHNetBase::Instance.InternetLobby->Open))
			{
				GameList->rect.end.y = MessageEdit->rect.end.y;
			}
		}
	}
}

void LobbyBox::ResetUsers(LHLobby* lobby, LHLobbyChannel* channel)
{
	LHLinkedList<LHPlayer*>* players = channel->GetPlayerList();
	LHLinkedNode<LHPlayer*>* last = players->GetLastNode();
	LHPlayer*                host = last != NULL ? last->payload : NULL;
	LHPlayer*                me = channel->GetPlayer(lobby->GetNetUser()->GetID());
	PlayerList->DeleteAll();
	Hosting = me == host;
	if (LHNetBase::Instance.State == LH_NET_STATE_INTERNET)
	{
		if (channel != NULL && channel->Players.count != 0)
		{
			LockInGameState(channel->Players.count > 1 &&
			                    channel->GetFirstUserID() == LHNetBase::Instance.User->GetID(),
			                CHAR2WCHAR(channel->Name));
		}
		else
		{
			LeaveGameState();
		}
	}
	if (LHNetBase::Instance.State == LH_NET_STATE_LOCAL_LOBBY)
	{
		if (lobby == LHNetBase::Instance.Lobby)
		{
			if (channel->Players.count < 2)
			{
				LeaveGameState();
				return;
			}
			LockInGameState(channel->GetFirstUserID() == LHNetBase::Instance.User->GetID(),
			                CHAR2WCHAR(LHLobby::ConnectedLobbyName));
		}
		else
		{
			LockInGameState(channel->GetFirstUserID() == LHNetBase::Instance.User->GetID(),
			                CHAR2WCHAR(LHLobby::ConnectedLobbyName));
		}
	}
	for (LHPlayer* player = channel->GetNextPlayer(NULL); player != NULL; player = channel->GetNextPlayer(player))
	{
		PlayerList->AddString(player->Name, 0, 0, 0);
		PlayerList->SetItemData(PlayerList->NumItems - 1, (uint32_t)player);
		PlayerList->SetTagData(PlayerList->NumItems - 1, MapList::GetForPlayer((unsigned long)player));
		MapList* maps = MapList::GetForPlayer((unsigned long)player);
		if (!Hosting)
		{
			if (player == host)
			{
				PlayerList->SetCol(PlayerList->NumItems - 1, 0xff);
			}
			else
			{
				PlayerList->SetCol(PlayerList->NumItems - 1, 0);
			}
		}
		else
		{
			PlayerList->SetCol(PlayerList->NumItems - 1, 0xff00);
			LHLinkedNode<LHPlayer*>* tail;
			if (maps != NULL && player != ((tail = players->GetLastNode()) != NULL ? tail->payload : NULL) &&
			    setupgamedata::Current.UseCustomMap && !maps->DoWeHaveInList(&setupgamedata::Current.CustomMap))
			{
				PlayerList->SetCol(PlayerList->NumItems - 1, 0xff0000);
			}
			if (Hosting && player == me)
			{
				PlayerList->SetCol(PlayerList->NumItems - 1, 0xff);
			}
		}
	}
	if (lobby != NULL)
	{
		if (lobby->LastJoinEvent == 0)
		{
			ChatList->AddString(
				LHSPrintfW(L"%s %s", lobby->LastJoinChannelPlayerName,
			               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HASJOINEDCHANNEL)),
				0, 0, 0);
		}
		else
		{
			ChatList->AddString(
				LHSPrintfW(L"%s %s", lobby->LastJoinChannelPlayerName,
			               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_HASLEFTCHANNEL)),
				0, 0, 0);
		}
		ChatList->AutoScroll(true);
	}
}
