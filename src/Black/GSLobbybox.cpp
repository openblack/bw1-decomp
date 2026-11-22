#include "ColourConstants.h"   /* For White */
#include "GameTimeConstants.h" /* For NumDaysInYear, SecondsInDay, SecondsPerYear */
#include "SLobbyBox.h"

#include <stdio.h>    /* For sprintf, swprintf */
#include <stdlib.h>   /* For atoi, calloc, free, malloc */
#include <string.h>   /* For memcpy, memset, strchr, strcpy, strlen, strncmp, strncpy */
#include <wchar.h>    /* For wcscpy, wcslen */
#include <winsock2.h> /* For inet_ntoa */

#include <chlasm/HelpTextEnums.h>                          /* For HELP_TEXT_* */
#include <GameSpy/CEngine/goaceng.h>                       /* For ServerGetIntValue, ServerGetStringValue */
#include <GameSpy/Chat/chat.h>                             /* For chatGetNick */
#include <GameSpy/darray.h>                                /* For ArrayNew */
#include <Lionhead/LH3DLib/development/LH3DText.h>         /* For CHAR2WCHAR */
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>               /* For LHTimer */
#include <Lionhead/LHLib/ver5.0/LHWin.h>                   /* For NEW */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>               /* For LHSPrintf, LHSPrintfW */
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>         /* For LHLobby::UserData */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetEvent.h>      /* For LHNetEvent */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>       /* For LHNetUser */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>      /* For LHCheckForInternetConnection */
#include <Lionhead/LHMultiplayer/ver4.0/LHPacket.h>        /* For LHPacket */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>       /* For LHSession */
#include <Lionhead/LHMultiplayer/ver4.0/LHConnection.h>    /* For LHConnection::IsDisconnected */
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h> /* For LHTransportInfo */
#include <zlib/zlib.h>                                     /* For compress, uncompress */

#include "alexmfc.h"               /* For SetupBox */
#include "FrontEnd.h"              /* For FrontEnd, WCHAR2CHAR */
#include "Game.h"                  /* For GGame::g_game */
#include "GSFunctions.h"           /* For ENCODE_NAME, DECODE_NAME */
#include "HelpText.h"              /* For HelpTextDataBase */
#include "LandscapeDetails.h"      /* For struct LandscapeDetails */
#include "LHNetBase.h"             /* For LHNetBase::Instance */
#include "LobbyBox.h"              /* For LOBBY_BOX_CONTROL_ID */
#include "MapList.h"               /* For MapList */
#include "ServerLandscapeMap.h"    /* For ServerLandscapeMap, CopyMapList */
#include "SetupGameData.h"         /* For setupgamedata::Current */
#include "SetupMultiplayerMain.h"  /* For SetupMultiplayerMain::Instance */
#include "SetupOnlineLandscapes.h" /* For SetupOnlineLandscapes::Instance */

GSLobbyBox* GSLobbyBox::Instance;

// BW1W120 005f5200 BW1M119 inlined
char* SkipTag(char* text, const char* tag);

static const char LandscapeLoadedTag[] = "lOaDeDLaNdScApE";
static const char MapsPresentTag[] = "I-_H_A_V_E_-M_A+P-z";

// BW1W120 00beff64
static char SecretMessageSeparator = ':';

void DecodeBlock(const char* in, char* out, int count);
void EncodeBlock(const char* in, char* out, int count);

// BW1W120 005992a0 BW1M119 null
bool32_t IsEncodedString(const char* text)
{
	if (text[0] == '[' && text[1] == '^' && text[2] == ']')
	{
		return true;
	}
	return false;
}

// BW1W120 005992c0 BW1M119 null
bool32_t NeedsEncoding(wchar_t* text)
{
	for (; *text != L'\0'; text++)
	{
		if (((char*)text)[1] != '\0')
		{
			return true;
		}
	}
	return false;
}

void Decode(char* in, char* out, int* out_length);

// BW1W120 005992f0 BW1M119 null
wchar_t* DecodeUnicode(const char* text)
{
	static int     current;
	static wchar_t decoded[2][0x200];
	int            length;
	char           buffer[0x55a];
	current ^= 1;
	strncpy(buffer, text, sizeof(buffer) - 1);
	Decode(buffer + 3, (char*)decoded[current], &length);
	decoded[current][length / 2] = L'\0';
	return decoded[current];
}

// BW1W120 00599370 BW1M119 null
void Decode(char* in, char* out, int* out_length)
{
	int   length = strlen(in);
	int   decoded = -1;
	char* start = in;
	for (; *in != '\0'; in++)
	{
		if (*in == '_')
		{
			*in = '\0';
			if (decoded == -1)
			{
				decoded = (in - start) / 4 * 3 + (in - start - 1) % 4;
			}
		}
		else if (*in >= '0' && *in <= '9')
		{
			*in += 4;
		}
		else if (*in >= 'a' && *in <= 'z')
		{
			*in -= 'G';
		}
		else if (*in >= 'A' && *in <= 'Z')
		{
			*in -= 'A';
		}
		else if (*in == '[')
		{
			*in = 0x3e;
		}
		else if (*in == ']')
		{
			*in = 0x3f;
		}
	}
	if (decoded == -1)
	{
		decoded = (in - start) / 4 * 3;
	}
	for (int remaining = length; remaining > 0; remaining -= 4)
	{
		DecodeBlock(start, out, remaining);
		start += 4;
		out += 3;
	}
	if (out_length != NULL)
	{
		*out_length = decoded;
	}
}

// BW1W120 00599450 BW1M119 null
void DecodeBlock(const char* in, char* out, int count)
{
	out[0] = (in[0] << 2) | (in[1] >> 4);
	if (count > 1)
	{
		out[1] = (in[1] << 4) | (in[2] >> 2);
	}
	if (count > 2)
	{
		out[2] = (in[2] << 6) | in[3];
	}
}

void Encode(const char* in, char* out, int length);

// BW1W120 005994a0 BW1M119 null
char* EncodeUnicode(wchar_t* text)
{
	static int  current;
	static char encoded[2][0x559];
	current ^= 1;
	if (wcslen(text) * 2 > 0x400)
	{
		text[0x200] = L'\0';
	}
	strcpy(encoded[current], "[^]");
	Encode((char*)text, encoded[current] + 3, wcslen(text) * 2);
	return encoded[current];
}

// BW1W120 00599550 BW1M119 null
void Encode(const char* in, char* out, int length)
{
	char* start = out;
	for (int i = 0; i < length; i += 3)
	{
		EncodeBlock(in, out, length >= 3 ? 3 : length);
		out += 4;
		in += 3;
	}
	char* padding = out;
	if (length % 3 == 1)
	{
		padding = out - 2;
	}
	else if (length % 3 == 2)
	{
		padding = out - 1;
	}
	*out = '\0';
	while (out > start)
	{
		out--;
		if (out >= padding)
		{
			*out = '_';
		}
		else if (*out <= 25)
		{
			*out += 'A';
		}
		else if (*out <= 51)
		{
			*out += 'G';
		}
		else if (*out <= 61)
		{
			*out -= 4;
		}
		else if (*out == 0x3e)
		{
			*out = '[';
		}
		else if (*out == 0x3f)
		{
			*out = ']';
		}
	}
}

// BW1W120 00599610 BW1M119 null
void EncodeBlock(const char* in, char* out, int count)
{
	unsigned char block[3];
	int           copied = 0;
	if (count > 0)
	{
		memcpy(block, in, count);
		copied = count;
	}
	if (copied < 3)
	{
		memset(block + copied, 0, 3 - copied);
	}
	out[0] = block[0] >> 2;
	out[1] = ((block[0] & 3) << 4) | (block[1] >> 4);
	out[2] = ((block[1] & 0xf) << 2) | (block[2] >> 6);
	out[3] = block[2] & 0x3f;
}
// BW1W120 005996a0 BW1M119 015da8d0
void JoinCallback(PEER peer, PEERBool success, RoomType room, void* param)
{
	if (success)
	{
		((GSLobbyBox*)param)->RoomEntered(room);
		return;
	}
	if (room == StagingRoom)
	{
		peerJoinTitleRoom(peer, JoinCallback, param, PEERFalse);
		if (SetupBox::CurrentActiveBox != NULL)
		{
			SetupBox::CurrentActiveBox->MessageBoxA(
				HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_FAILEDTOJOIN),
				MSGBOXSTYLE_SINGLE_BUTTON, 0);
		}
		return;
	}
	((GSLobbyBox*)param)->CancelButtonClick();
	if (SetupBox::CurrentActiveBox != NULL)
	{
		SetupBox::CurrentActiveBox->MessageBoxA(
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_35), MSGBOXSTYLE_SINGLE_BUTTON, 0);
	}
}

// BW1W120 00599e70 BW1M119 015da760
void GSOnlineLandscapesClicked(SetupBox* box, SetupControl* control);

void GSLobbyBox::Init(uint32_t background_style, uint32_t tall_background,
                      void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int))
{
	DialogBoxBase::Init(background_style, tall_background, callback);
	Instance = this;
	GameList = NEW(638) SetupList(LOBBY_BOX_CONTROL_ID_GAME_LIST, 40, 80, 200, 325);
	ChatList = NEW(639) SetupList(LOBBY_BOX_CONTROL_ID_CHAT_LIST, 250, 80, 400, 360);
	PlayerList = NEW(640) SetupList(LOBBY_BOX_CONTROL_ID_PLAYER_LIST, 660, 80, 100, 360);
	GameListText = NEW(641)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 40, 50, 200, 27,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_GAMELIST), TEXTJUSTIFY_RIGHT);
	ChatRoomText = NEW(642)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 250, 50, 400, 27,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CHATROOM), TEXTJUSTIFY_RIGHT);
	PlayerListText = NEW(643)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 660, 50, 100, 27,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PLAYERLIST), TEXTJUSTIFY_RIGHT);
	StatusText = NEW(647) SetupStaticText(LOBBY_BOX_CONTROL_ID_STATUS, 40, 23, 300, 30, L"", TEXTJUSTIFY_LEFT);
	InfoEdit = NEW(651) SetupEdit(LOBBY_BOX_CONTROL_ID_INFO, 150, 525, 300, 30, L" ", 0);
	InfoEdit->text_size = 16;
	StartGameButton = NEW(654) SetupBigButton(
		LOBBY_BOX_CONTROL_ID_START_GAME, 720, 520,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_STARTGAME), 40, 1, BBSTYLE_RIGHT_ARROW);
	BackButton = NEW(655) SetupBigButton(LOBBY_BOX_CONTROL_ID_BACK, 40, 520,
	                                     HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK), 40, 0,
	                                     BBSTYLE_LEFT_ARROW);
	MessageEdit = NEW(659) SetupEdit(LOBBY_BOX_CONTROL_ID_MESSAGE, 250, 480, 400, 30, L"", 1);
	TypeMessageText = NEW(660) SetupStaticText(
		LOBBY_BOX_CONTROL_ID_TEXT, 248, 450, 400, 30,
		HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_TYPEMESSAGE), TEXTJUSTIFY_RIGHT);
	GameSetupButton =
		NEW(664) SetupButton(LOBBY_BOX_CONTROL_ID_GAME_SETUP, 470, 525, 150, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_122), 0);
	OnlineMapsButton =
		NEW(665) SetupButton(LOBBY_BOX_CONTROL_ID_ONLINE_MAPS, 470, 525, 150, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_106), 0);
	OnlineMapsButton->ContinueButtonCallback = GSOnlineLandscapesClicked;
	GameSetupButton->Hide(true);
	OnlineMapsButton->Hide(false);
	CreateButton =
		NEW(676) SetupButton(LOBBY_BOX_CONTROL_ID_CREATE, 40, 445, 95, 30,
	                         HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_45), 0);
	GameNameEdit = NEW(679) SetupEdit(LOBBY_BOX_CONTROL_ID_GAME_NAME, 145, 445, 95, 30, L"", 1);
	PasswordEdit = NEW(680) SetupEdit(LOBBY_BOX_CONTROL_ID_PASSWORD, 145, 480, 95, 30, L"", 1);
	PasswordEdit->MaskedText = true;
	PasswordText = NEW(682)
		SetupStaticText(LOBBY_BOX_CONTROL_ID_TEXT, 40, 480, 100, 30,
	                    HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_PASSWORD), TEXTJUSTIFY_RIGHT);
	SavePacketsCheckBox =
		NEW(684) SetupCheckBox(LOBBY_BOX_CONTROL_ID_SAVE_PACKETS, 70, 570, false, BBSTYLE_CHECK_BOX_OFF,
	                           HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_LOBBYSAVEPACKETS), 20);
	SavePacketsCheckBox->text_size = 16;
	SelectedServer = NULL;
	FileTransfers = NULL;
	SendBuffer = NULL;
	GameData = NULL;
	OnHold = false;
	MapChanged = false;
	ControlsInitialised = false;
}

void GSOnlineLandscapesClicked(SetupBox* box, SetupControl* control)
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

void GSLobbyBox::SendMapsPresentString()
{
	MapList maps;
	maps.GenerateFromFilesOnDisk();
	char* list = maps.EncodeList();
	SendSecretChatMessage(MapsPresentTag, list, NULL);
}

void GSLobbyBox::SendSecretChatMessage(const char* tag, char* text, char* recipient)
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
	char* message = NEW(719) char[length];
	memset(message, 0, length);
	if (text != NULL)
	{
		if (recipient != NULL)
		{
			sprintf(message, "%s%c%s%c%s", tag, SecretMessageSeparator, text, SecretMessageSeparator, recipient);
		}
		else
		{
			sprintf(message, "%s%c%s", tag, SecretMessageSeparator, text);
		}
	}
	else
	{
		strcpy(message, tag);
	}
	delete[] message;
}
void GSLobbyBox::InitControls()
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
	CurrentRoom = NumRooms;
	if (peerIsConnected(LHNetBase::Instance.Peer))
	{
		ReturnToTitleRoom();
	}
}

// BW1W120 0059a220 BW1M119 015da840
void ListingGamesCallback(PEER peer, PEERBool success, const char* name, GServer server, PEERBool staging, int message,
                          int progress, void* param);

void GSLobbyBox::ReturnToTitleRoom()
{
	peerLeaveRoom(LHNetBase::Instance.Peer, StagingRoom);
	peerLeaveRoom(LHNetBase::Instance.Peer, TitleRoom);
	peerJoinTitleRoom(LHNetBase::Instance.Peer, JoinCallback, this, PEERFalse);
	peerStartListingGames(LHNetBase::Instance.Peer, ListingGamesCallback, this);
}

void ListingGamesCallback(PEER peer, PEERBool success, const char* name, GServer server, PEERBool staging, int message,
                          int progress, void* param)
{
	if (success && server != NULL)
	{
		((GSLobbyBox*)param)->ListGame(server, staging, message);
	}
}

void GSLobbyBox::Destroy()
{
	DialogBoxBase::Destroy();
	Instance = NULL;
}

void GSLobbyBox::FreeInternals()
{
	if (GameData != NULL)
	{
		free(GameData);
	}
	GameData = NULL;
	if (FileTransfers != NULL)
	{
		ArrayFree(FileTransfers);
	}
	FileTransfers = NULL;
	FreeSendBuffer();
}

void GSLobbyBox::FreeSendBuffer()
{
	if (SendBuffer != NULL)
	{
		free(SendBuffer);
		SendPosition = NULL;
		SendBuffer = NULL;
		NextSendTime = 0;
	}
}

// BW1W120 0059b1d0 BW1M119 null
void GameStartedCallback(PEER peer, unsigned int ip, const char* message, void* param);

void __stdcall GSLobbyBox::ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
{
	char    path[0x104];
	wchar_t text[0x400];
	char    game_data[0x5a0];
	if (Instance->PendingMessages.count != 0 && !Instance->OnHold)
	{
		char16_t* pending = Instance->PendingMessages.FindNext(NULL);
		Instance->OnHold = true;
		box->MessageBoxA(pending, MSGBOXSTYLE_SINGLE_BUTTON, 0);
		Instance->PendingMessages.Remove(pending);
		delete pending;
	}
	switch (message)
	{
	case SETUP_MESSAGE_MESSAGE_BOX_RESULT:
		if (x == SETUP_MESSAGE_BOX_ID_OK && Instance->OnHold == true)
		{
			Instance->OnHold = false;
			if (Instance->PendingMessages.count != 0)
			{
				char16_t* pending = Instance->PendingMessages.FindNext(NULL);
				Instance->OnHold = true;
				box->MessageBoxA(pending, MSGBOXSTYLE_SINGLE_BUTTON, 0);
				Instance->PendingMessages.Remove(pending);
				delete pending;
			}
		}
		break;
	case SETUP_MESSAGE_ON_HOLD:
		Instance->OnHold = true;
		break;
	case SETUP_MESSAGE_ACTIVATE:
		if (!Instance->ControlsInitialised)
		{
			Instance->InitControls();
		}
		if (Instance->MapChanged && setupgamedata::Current.UseCustomMap)
		{
			Instance->SendSecretChatMessage(setupgamedata::Current.CustomMap.FileName,
			                                setupgamedata::Current.CustomMap.Name, NULL);
		}
		Instance->MapChanged = false;
		Instance->ControlsInitialised = false;
		break;
	case SETUP_MESSAGE_CHAR:
		if (control == NULL)
		{
			break;
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_GAME_NAME)
		{
			Instance->SelectedServer = NULL;
			Instance->SetCreateButtonText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_43),
			                              true);
		}
		if (x == VK_RETURN)
		{
			if (control->id == LOBBY_BOX_CONTROL_ID_MESSAGE)
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
			Instance->SelectGame();
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
			bool missing = false;
			if (setupgamedata::Current.UseCustomMap)
			{
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
			Encode((char*)&setupgamedata::Current, game_data, sizeof(setupgamedata));
			peerStartGame(LHNetBase::Instance.Peer, game_data, PEERFalse);
			GameStartedCallback(LHNetBase::Instance.Peer, 0, game_data, Instance);
			Instance->HostSession = LHSession::Create(
				true, LHNetBase::Instance.User, NULL, (char*)peerGetRoomName(LHNetBase::Instance.Peer, StagingRoom),
				Instance->NumPlayers, 100, Instance->GameData, Instance->GameDataLength, NULL, NULL);
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
			if (Instance->SelectedServer != NULL && ServerGetIntValue(Instance->SelectedServer, "password", 0) == 1 &&
			    Instance->PasswordEdit->label != NULL && wcslen(Instance->PasswordEdit->label) == 0)
			{
				box->MessageBoxA(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ROOMPASSWORD),
				                 MSGBOXSTYLE_SINGLE_BUTTON, 0);
				return;
			}
			peerLeaveRoom(LHNetBase::Instance.Peer, TitleRoom);
			Instance->CurrentRoom = NumRooms;
			if (Instance->SelectedServer != NULL)
			{
				Instance->Hosting = false;
				peerJoinStagingRoom(LHNetBase::Instance.Peer, Instance->SelectedServer,
				                    LHSPrintf("%s", ENCODE_NAME(Instance->PasswordEdit->label)), JoinCallback, Instance,
				                    PEERTrue);
				Instance->SendMapsPresentString();
			}
			else
			{
				Instance->Hosting = true;
				char name[0x80];
				strncpy(name, WCHAR2CHAR(Instance->GameNameEdit->label), sizeof(name));
				peerCreateStagingRoom(LHNetBase::Instance.Peer, name, 32,
				                      LHSPrintf("%s", ENCODE_NAME(Instance->PasswordEdit->label)), JoinCallback,
				                      Instance, PEERTrue);
				wcscpy(Instance->RoomName, Instance->GameNameEdit->label);
				Instance->GameSetupButton->Hide(false);
			}
			Instance->OnlineMapsButton->Hide(true);
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_LEAVE)
		{
			Instance->GameSetupButton->Hide(true);
			Instance->OnlineMapsButton->Hide(false);
		}
		if (control->id == LOBBY_BOX_CONTROL_ID_BACK)
		{
			Instance->GameSetupButton->Hide(true);
			Instance->OnlineMapsButton->Hide(false);
			Instance->CancelButtonClick();
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
			case 17:
				break;
			case LOBBY_BOX_CONTROL_ID_ONLINE_MAPS:
				info->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_92));
				break;
			default:
				info->SetText(L"");
				break;
			}
		}
		static LHTimer thinkTimer;
		if (!thinkTimer.Running())
		{
			thinkTimer.Start();
		}
		if (thinkTimer.MSeconds() > 100)
		{
			if (LHNetBase::Instance.Peer != NULL)
			{
				peerThink(LHNetBase::Instance.Peer);
			}
			thinkTimer.Restart(0);
		}
		if (Instance->NextSendTime != 0 && GetTickCount() >= Instance->NextSendTime)
		{
			Instance->SendCharacterFileChunk();
		}
		break;
	}
	}
	if (wcslen(Instance->GameNameEdit->label) <= 0)
	{
		Instance->SelectedServer = NULL;
		Instance->SetCreateButtonText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_43),
		                              true);
	}
}

void GameStartedCallback(PEER peer, unsigned int ip, const char* message, void* param)
{
	GSLobbyBox* box = (GSLobbyBox*)param;
	char*       data = box->GameData;
	box->StartSendingCharacterFile();
	box->HostIP = ip;
	if (data != NULL)
	{
		free(data);
	}
	data = (char*)malloc(strlen(message) * 3 / 4 + 5);
	Decode((char*)message, data, &box->GameDataLength);
	box->GameData = data;
	peerStopListingGames(LHNetBase::Instance.Peer);
}

void GSLobbyBox::SetCreateButtonText(char16_t* text, bool show)
{
	wcscpy(CreateButton->label, text);
	if (GameList->hidden)
	{
		CreateButton->Hide(true);
	}
	else
	{
		CreateButton->Hide(!show);
	}
}
void GSLobbyBox::CancelButtonClick()
{
	FreeInternals();
	if (GameList->hidden)
	{
		GameSetupButton->Hide(true);
		OnlineMapsButton->Hide(false);
		LeaveGameState();
		peerLeaveRoom(LHNetBase::Instance.Peer, StagingRoom);
		CurrentRoom = NumRooms;
		peerJoinTitleRoom(LHNetBase::Instance.Peer, JoinCallback, this, PEERFalse);
	}
	else if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		DialogBoxBase::Hide();
	}
	else
	{
		DialogBoxBase::Hide();
		if (LHNetBase::Instance.Session == NULL || LHNetBase::Instance.Session->IsDisconnected())
		{
			LHNetBase::Instance.Shutdown();
		}
	}
}

void GSLobbyBox::SelectGame()
{
	GServer server = (GServer)GameList->GetItemData(GameList->SelectedIndex);
	if (server == NULL)
	{
		return;
	}
	if (ServerGetIntValue(server, "gamever", 2) != 2)
	{
		GameNameEdit->SetText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_149));
		SetCreateButtonText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_149), false);
		SelectedServer = NULL;
		return;
	}
	GameNameEdit->SetText(CHAR2WCHAR(ServerGetStringValue(server, "hostname", "(None)")));
	SetCreateButtonText(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_75), true);
	SelectedServer = server;
}
// BW1W120 0059b540 BW1M119 015d9c40
void EnumPlayersCB(PEER peer, PEERBool success, RoomType room, int index, const char* nick, PEERBool host, void* param);

void GSLobbyBox::PlayerListChanged(RoomType room)
{
	PlayerList->DeleteAll();
	peerEnumPlayers(LHNetBase::Instance.Peer, room, EnumPlayersCB, this);
}

void EnumPlayersCB(PEER peer, PEERBool success, RoomType room, int index, const char* nick, PEERBool host, void* param)
{
	if (!success)
	{
		return;
	}
	((GSLobbyBox*)param)->PlayerList->AddString(LHSPrintfW(L"%s", DECODE_NAME(nick)), 0, 0, 0);
}

void GSLobbyBox::RoomEntered(RoomType room)
{
	CurrentRoom = room;
	switch (room)
	{
	case TitleRoom:
		LeaveGameState();
		break;
	case StagingRoom:
		LockInGameState(Hosting, CHAR2WCHAR(peerGetRoomName(LHNetBase::Instance.Peer, StagingRoom)));
		break;
	}
	PlayerListChanged(room);
}

// BW1W120 0059b640 BW1M119 null
void GetPlayerProfileIDCallback(PEER peer, PEERBool success, const char* nick, int profile_id, void* param)
{
	if (success)
	{
		*(int*)param = profile_id;
	}
}

// BW1W120 0059b660 BW1M119 null
void GetPlayerIPCallback(PEER peer, PEERBool success, const char* nick, unsigned int ip, void* param)
{
	if (success)
	{
		*(unsigned int*)param = ip;
	}
}

void GSLobbyBox::ReceiveChatMessage(const char* nick, char* message, int is_private)
{
	if (message[0] == '@' && message[1] == '@' && message[2] == '@')
	{
		return;
	}
	char* landscape = SkipTag(message, LandscapeLoadedTag);
	char* maps = SkipTag(message, MapsPresentTag);
	if (landscape != NULL)
	{
		if (Instance->Hosting)
		{
			LandscapeDetails details;
			wchar_t          text[0x400];
			details.TakeFromString(landscape);
			if (!SetupOnlineLandscapes::Instance->CheckIfWeHaveMap(&details))
			{
				swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_24), &details);
				PendingMessages.AddToEnd(text);
			}
			else
			{
				swprintf(text, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_25), &details);
				PendingMessages.AddToEnd(text);
			}
		}
	}
	else if (maps != NULL)
	{
		if (Hosting)
		{
			MapList list;
			list.Decode(maps);
			MapList* existing = MapList::GetForName((char*)nick);
			if (existing != NULL)
			{
				CopyMapList(existing, &list);
			}
			else
			{
				existing = MapList::Create((char*)nick);
				existing->Host = Instance->Hosting;
				CopyMapList(existing, &list);
			}
		}
	}
	else
	{
		wchar_t name[0x400];
		wcscpy(name, LHSPrintfW(L"%s", DECODE_NAME(nick)));
		ChatList->AddString(LHSPrintfW(L"%s: %s", name, (wchar_t*)LHSPrintfW(L"%s", DECODE_NAME(message))),
		                    is_private ? 0x80 : 0, is_private ? 0xff : 0, is_private ? 0x80 : 0);
		ChatList->AutoScroll(true);
	}
}

void GSLobbyBox::ListGame(GServer server, PEERBool staging, int message)
{
	int i;
	switch (message)
	{
	case PEER_CLEAR:
		GameList->DeleteAll();
		SelectedServer = NULL;
		break;
	case PEER_ADD:
		GameList->AddString(
			LHSPrintfW(L"%s(%d)%s%s%s", CHAR2WCHAR(ServerGetStringValue(server, "hostname", "(None)")),
		               ServerGetIntValue(server, "numplayers", 0),
		               staging ? L"" : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_PLAYING),
		               ServerGetIntValue(server, "gamever", 2) == 2
		                   ? L""
		                   : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_WRONGVER),
		               ServerGetIntValue(server, "password", 0) == 1
		                   ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_NEEDS_PASSWORD)
		                   : L""),
			0, 0, 0);
		GameList->SetItemData(GameList->NumItems - 1, (uint32_t)server);
		break;
	case PEER_UPDATE:
		for (i = 0; i < GameList->NumItems; i++)
		{
			if ((GServer)GameList->GetItemData(i) == server)
			{
				GameList->SetString(
					i,
					LHSPrintfW(L"%s(%d)%s%s%s", CHAR2WCHAR(ServerGetStringValue(server, "hostname", "(None)")),
				               ServerGetIntValue(server, "numplayers", 0),
				               staging ? L"" : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_PLAYING),
				               ServerGetIntValue(server, "gamever", 2) == 2
				                   ? L""
				                   : HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_WRONGVER),
				               ServerGetIntValue(server, "password", 0) == 1
				                   ? HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_MPFE_NEEDS_PASSWORD)
				                   : L""));
				break;
			}
		}
		break;
	case PEER_REMOVE:
		for (i = 0; i < GameList->NumItems; i++)
		{
			if ((GServer)GameList->GetItemData(i) == server)
			{
				GameList->DeleteString(i);
				break;
			}
		}
		if (SelectedServer == server)
		{
			SelectedServer = NULL;
		}
		break;
	}
}

void GSLobbyBox::SendMessageA()
{
	char    nick[0x80];
	wchar_t player[0x80];
	if (wcslen(MessageEdit->label) > 0 && PlayerList->GetSelected() >= 0)
	{
		PlayerList->GetString(PlayerList->GetSelected(), player);
		strcpy(nick, LHSPrintf("%s", ENCODE_NAME(player)));
		peerMessagePlayer(LHNetBase::Instance.Peer, nick, LHSPrintf("%s", ENCODE_NAME(MessageEdit->label)),
		                  NormalMessage);
		ReceiveChatMessage(nick, LHSPrintf("%s", ENCODE_NAME(MessageEdit->label)), true);
	}
	PlayerList->SelectedIndex = -1;
	MessageEdit->SetText(L"");
}

// BW1W120 0059c020 BW1M119 null
void ReadyChangedCallback(PEER peer, const char* nick, PEERBool ready, void* param) {}

void GSLobbyBox::PlayerUTM(const char* nick, const char* command, const char* parameters)
{
	const char* name = command + 3;
	if (*name == '\0')
	{
		return;
	}
	const char* data = strchr(name, '\\');
	if (data == NULL)
	{
		data = "";
	}
	else
	{
		data++;
	}
	if (strncmp(name, "FDS", 3) == 0)
	{
		ReceiveFileStart(nick, data);
	}
	else if (strncmp(name, "FDD", 3) == 0)
	{
		ReceiveFileData(nick, data);
	}
	else if (strncmp(name, "FDF", 3) == 0)
	{
		ReceiveFileEnd(nick, data);
	}
}

// BW1W120 0059c0e0 BW1M119 null
void FreeFileTransfer(void* element)
{
	GSLobbyBoxFileTransfer* transfer = (GSLobbyBoxFileTransfer*)element;
	if (transfer->Data != NULL)
	{
		free(transfer->Data);
		transfer->Data = NULL;
		transfer->Position = NULL;
	}
}

void GSLobbyBox::ResetFileTransfers()
{
	if (FileTransfers != NULL)
	{
		ArrayFree(FileTransfers);
	}
	FileTransfers = ArrayNew(sizeof(GSLobbyBoxFileTransfer), 4, FreeFileTransfer);
}

// BW1W120 0059c150 BW1M119 null
void CountPlayersCallback(PEER peer, PEERBool success, RoomType room, int index, const char* nick, PEERBool host,
                          void* param)
{
	if (success)
	{
		(*(int*)param)++;
	}
}

void GSLobbyBox::StartSendingCharacterFile()
{
	ResetFileTransfers();
	LHNetEvent* event = LHNetEvent::VCreate(LH_NETEVENT_TYPE_LOBBY_CLIENT_USER_FILE, LHNetBase::Instance.User->GetID(),
	                                        peerGetRoomName(LHNetBase::Instance.Peer, StagingRoom), LHLobby::UserFile,
	                                        LHNetBase::Instance.User->GetID(), LHLobby::UserDataLen, LHLobby::UserData);
	char*       compressed = (char*)malloc(event->GetPacket()->GetDataLen() + 4);
	unsigned long length = event->GetPacket()->GetDataLen();
	compress((Bytef*)(compressed + 4), &length, event->GetPacket()->GetDataPtr(), event->GetPacket()->GetDataLen());
	length += 4;
	*(int*)compressed = event->GetPacket()->GetDataLen();
	SendBuffer = (char*)malloc(length / 3 * 4 + 5);
	Encode(compressed, SendBuffer, length);
	free(compressed);
	SendRemaining = strlen(SendBuffer);
	SendPosition = SendBuffer;
	NumPlayers = 0;
	peerEnumPlayers(LHNetBase::Instance.Peer, StagingRoom, CountPlayersCallback, &NumPlayers);
	if (NumPlayers == 0)
	{
		NumPlayers = 1;
	}
	SendInterval = NumPlayers * 250;
	NextSendTime = GetTickCount() % NumPlayers * 250 + GetTickCount();
}

void GSLobbyBox::SendCharacterFileChunk()
{
	int  length = 0x17c;
	char chunk[0x190];
	if (!peerIsConnected(LHNetBase::Instance.Peer) || CurrentRoom != StagingRoom)
	{
		FreeSendBuffer();
	}
	if (SendBuffer == NULL)
	{
		return;
	}
	if (SendRemaining < 0x17c)
	{
		length = SendRemaining;
	}
	strcpy(chunk, "@@@FDD\\");
	chunk[strlen(chunk) + length] = '\0';
	SendRemaining -= length;
	SendPosition += length;
	ReceiveChatMessage("Sent:", LHSPrintf("character file (%d left)", SendRemaining), false);
	if (SendRemaining == 0)
	{
		FreeSendBuffer();
		return;
	}
	NextSendTime = GetTickCount() + SendInterval;
}

// BW1W120 0059c3c0 BW1M119 null
int CompareFileTransfers(const void* a, const void* b)
{
	return strcmp((const char*)a, (const char*)b);
}

void GSLobbyBox::ReceiveFileStart(const char* nick, const char* parameters)
{
	GSLobbyBoxFileTransfer transfer;
	if (FileTransfers == NULL)
	{
		return;
	}
	strcpy(transfer.Nick, nick);
	int index = ArraySearch(FileTransfers, &transfer, CompareFileTransfers, 0, 0);
	if (index != -1)
	{
		ArrayDeleteAt(FileTransfers, index);
	}
	transfer.Received = 0;
	transfer.Length = atoi(parameters);
	transfer.Data = (char*)malloc(transfer.Length + 1);
	transfer.Position = transfer.Data;
	transfer.Complete = false;
	ArrayAppend(FileTransfers, &transfer);
	ReceiveChatMessage("Got:", LHSPrintf("start of character file from %s, total length %d", nick, transfer.Length),
	                   false);
}

void GSLobbyBox::ReceiveFileData(const char* nick, const char* parameters)
{
	GSLobbyBoxFileTransfer key;
	if (FileTransfers == NULL)
	{
		return;
	}
	strcpy(key.Nick, nick);
	int index = ArraySearch(FileTransfers, &key, CompareFileTransfers, 0, 0);
	if (index == -1)
	{
		return;
	}
	GSLobbyBoxFileTransfer* transfer = (GSLobbyBoxFileTransfer*)ArrayNth(FileTransfers, index);
	if (transfer == NULL)
	{
		return;
	}
	int length = strlen(parameters);
	if (length > transfer->Length - transfer->Received)
	{
		return;
	}
	memcpy(transfer->Position, parameters, length);
	transfer->Position += length;
	transfer->Received += length;
	ReceiveChatMessage(
		"Got:", LHSPrintf("character file from %s (%d of %d)", nick, transfer->Received, transfer->Length), false);
}

void GSLobbyBox::ReceiveFileEnd(const char* nick, const char* parameters)
{
	GSLobbyBoxFileTransfer key;
	if (FileTransfers == NULL)
	{
		return;
	}
	strcpy(key.Nick, nick);
	int index = ArraySearch(FileTransfers, &key, CompareFileTransfers, 0, 0);
	if (index == -1)
	{
		return;
	}
	GSLobbyBoxFileTransfer* transfer = (GSLobbyBoxFileTransfer*)ArrayNth(FileTransfers, index);
	if (transfer == NULL)
	{
		return;
	}
	transfer->Complete = true;
	transfer->Data[transfer->Received] = '\0';
	ReceiveChatMessage("Got:", LHSPrintf("end of character file from %s", nick), false);
	if (ArrayLength(FileTransfers) < NumPlayers)
	{
		return;
	}
	for (int i = 0; i < ArrayLength(FileTransfers); i++)
	{
		if (!((GSLobbyBoxFileTransfer*)ArrayNth(FileTransfers, i))->Complete)
		{
			return;
		}
	}
	StartSession();
}

void GSLobbyBox::ShowMessage(char16_t* text, SetupBox* box)
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

void GSLobbyBox::StartSession()
{
	LHSession* session;
	if (HostIP != 0)
	{
		LHTransportInfo transport_info(inet_ntoa(*(in_addr*)&HostIP), LH_TRANSPORT_DEFAULT_PORT + 1);
		session = LHSession::Create(false, LHNetBase::Instance.User, &transport_info,
		                            (char*)peerGetRoomName(LHNetBase::Instance.Peer, StagingRoom), NumPlayers, 100,
		                            GameData, GameDataLength, NULL, NULL);
	}
	else
	{
		session = HostSession;
	}
	free(GameData);
	GameData = NULL;
	if (session == NULL)
	{
		return;
	}
	LHNetBase::Instance.Session = session;
	LHNetBase::Instance.Channel = NULL;
	LHNetBase::Instance.CurrentLobby = NULL;
	LHNetBase::Instance.WaitUntilGameLoopStarted();
	for (int i = 0; i < ArrayLength(FileTransfers); i++)
	{
		LH_USER_ID              user_id;
		GSLobbyBoxFileTransfer* transfer = (GSLobbyBoxFileTransfer*)ArrayNth(FileTransfers, i);
		if (strcmp(transfer->Nick, chatGetNick(peerGetChat(LHNetBase::Instance.Peer))) == 0)
		{
			continue;
		}
		int   decoded_length;
		char* decoded = (char*)malloc(transfer->Received * 3 / 4 + 5);
		Decode(transfer->Data, decoded, &decoded_length);
		unsigned long length = *(int*)decoded;
		decoded += 4;
		decoded_length -= 4;
		char* packet_data = (char*)malloc(length);
		uncompress((Bytef*)packet_data, &length, (Bytef*)decoded, decoded_length);
		unsigned long size = length;
		LHPacket*     packet = (LHPacket*)calloc(size + LH_PACKET_ALLOCATION_PADDING, 1);
		packet->SetDataLen(size);
		memcpy(packet->GetDataPtr(), packet_data, length);
		LHNetEvent*   event = LHNetEvent::CreateFromPacket(packet);
		char*         channel_name;
		char*         file_name;
		unsigned long data_length;
		void*         data;
		event->VDecode(LH_NETEVENT_TYPE_LOBBY_CLIENT_USER_FILE, &channel_name, &file_name, &user_id, &data_length,
		               &data);
		session->SetUserData(user_id, file_name, data_length, data);
		free(packet);
		free(packet_data);
		free(decoded - 4);
	}
	FrontEnd::MultiplayerGameRunning = true;
	FrontEnd::InMultiplayerScreens = false;
	DialogBoxBase::Hide();
}
void GSLobbyBox::LockInGameState(bool host, char16_t* name)
{
	MessageEdit->rect.start.x = 40;
	ChatList->rect.start.x = 40;
	ChatRoomText->rect.start.x = 40;
	wcscpy(ChatRoomText->label, name);
	CreateButton->Hide(true);
	GameList->Hide(true);
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

void GSLobbyBox::LeaveGameState()
{
	MessageEdit->rect.start.x = 250;
	ChatList->rect.start.x = 250;
	ChatRoomText->rect.start.x = 250;
	wcscpy(BackButton->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_BACK));
	wcscpy(ChatRoomText->label, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_CHATROOM));
	PlayerList->rect.end.y = InfoEdit->rect.end.y;
	GameList->rect.end.y = GameList->rect.start.y + 325;
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
	GameNameEdit->Hide(true);
	PasswordEdit->Hide(true);
	PasswordText->Hide(true);
	GameSetupButton->Hide(true);
	OnlineMapsButton->Hide(false);
	if (LHNetBase::Instance.State == LH_NET_STATE_INTERNET)
	{
		GameNameEdit->Hide(false);
		PasswordEdit->Hide(false);
		PasswordText->Hide(false);
		CreateButton->Hide(false);
	}
}
