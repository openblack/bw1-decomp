#include "GameTimeConstants.h"
#include "TimerConstants.h"
#include "Network.h"

#include <io.h>       /* For _chmod, _filelength, _fileno, _unlink */
#include <stdio.h>    /* For sprintf */
#include <sys/stat.h> /* For _S_IREAD, _S_IWRITE */
#include <string.h>   /* For strcpy */

#include "ColourConstants.h" /* For White */
#include "DialogBoxBase.h"   /* For DialogBoxBase::RestoreSetupBox */
#include "Creature.h"
#include "EndGameBox.h"
#include "FrontEnd.h"
#include "Game.h"
#include "GameStats.h"
#include "Global.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "LeashStatus.h"
#include "Setup.h"
#include "SoundGuidance.h"
#include "ZipData.h"
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include "GameOSFile.h"
#include "GatheringBox.h"       /* For GatheringBox::UpdatePlayerOnlineInAllLists */
#include "IpSpecialDialog.h"    /* For TimIPSpecial */
#include "GatheringInterface.h" /* For AddIncomingText */
#include "HelpText.h"           /* For struct HelpTextData */
#include "LHNetBase.h"
#include "Player.h"  /* For ProcessExternalSpeech */
#include "alexmfc.h" /* For struct SetupBox */
#include <Lionhead/LHFile/ver3.0/LHOSFile.h>
#include <Lionhead/LHLog/ver4.0/LHRegistry.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetEvent.h>
#include <Lionhead/LHLib/ver5.0/LHTimer.inl>
#include <Lionhead/LHMultiplayer/ver4.0/LHLobby.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHMail.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHTransport.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>
#include <Lionhead/LHLib/ver5.0/LHHeap2.h> /* For Base::ObjectHeap */
#include "Base.h"
#include "LivingAction.h"
#include "MobileObject.h"
#include "OOSDebug.h"
#include "PSysInterface.h"
#include "Town.h"

#if defined(VERSION_BW1W100)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 404 ? 5 : 11))
#elif defined(VERSION_BW1W110)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 404 ? 0 : (line) < 761 ? 6 : 10))
#elif defined(VERSION_BW1WCI)
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - ((line) < 761 ? 0 : 1))
#endif

#define NETWORK_LOBBY_SERVER_REGISTRY_VALUE "PingServer"

#define NETWORK_REGISTRY_KEY "Software\\Lionhead Studios Ltd\\Black & White\\BWSetup"

char GNetwork::LobbyServerAddress[0x100];

static char*      NetworkRegistryKey = NETWORK_REGISTRY_KEY;
static const char DefaultLobbyServerAddress[] = "bwping.bwgame.com";

// BW1W120 0054c570 BW1M119 010015c0
void ResetLocalGameTimer();
// BW1W120 00635210 BW1M119 01115950
LH_RETURN SendNetworkChecksum(bool full);

uint32_t GNetwork::PrepareCheckSum(void* data)
{
	uint32_t checksum =
		GGame::g_game->data.RandSeed + GGame::g_game->data.GameTurn + GGame::g_game->TotalObjects +
		LivingAction::StateCheckSum + LivingAction::PosCheckSum + LivingAction::DestPosCheckSum +
		LivingAction::DataCheckSum + LivingAction::ReactionCheckSum + MobileObject::MobileObjectCheckSum +
		Creature::MentalAgendaCheckSum + Creature::MentalBeliefsCheckSum + Creature::MentalDesiresCheckSum +
		Creature::MentalValueSystemCheckSum + Creature::MentalMiscCheckSum + Creature::PosCheckSum +
		Creature::DestPosCheckSum + Creature::CheckSum3D + Town::CheckSum + PSysInterface::PSysCheckSum +
		Base::ObjectHeap->GetNumberOfNews() + Base::ObjectHeap->GetNumberOfDeletes();
	GGame::g_game->Packet.CheckSum = checksum;

	uint32_t* checksums = (uint32_t*)data;
	checksums[0] = GGame::g_game->data.RandSeed;
	checksums[1] = GGame::g_game->data.GameTurn;
	checksums[2] = GGame::g_game->TotalObjects;
	checksums[3] = LivingAction::StateCheckSum;
	checksums[4] = LivingAction::PosCheckSum;
	checksums[5] = LivingAction::DestPosCheckSum;
	checksums[6] = LivingAction::DataCheckSum;
	checksums[7] = LivingAction::ReactionCheckSum;
	checksums[8] = MobileObject::MobileObjectCheckSum;
	checksums[9] = Creature::MentalAgendaCheckSum;
	checksums[10] = Creature::MentalBeliefsCheckSum;
	checksums[11] = Creature::MentalDesiresCheckSum;
	checksums[12] = Creature::MentalValueSystemCheckSum;
	checksums[13] = Creature::MentalMiscCheckSum;
	checksums[14] = Creature::PosCheckSum;
	checksums[15] = Creature::DestPosCheckSum;
	checksums[16] = Creature::CheckSum3D;
	checksums[17] = Town::CheckSum;
	checksums[18] = PSysInterface::PSysCheckSum;
	checksums[19] = Base::ObjectHeap->GetNumberOfNews();
	checksums[19] += Base::ObjectHeap->GetNumberOfDeletes();
	return checksum;
}

void GNetwork::ResetStateDebug()
{
	LivingAction::StateDebugCount = 0;
	LivingAction::StateCheckSum = 0;
	LivingAction::PosCheckSum = 0;
	LivingAction::DestPosCheckSum = 0;
	LivingAction::DataCheckSum = 0;
	LivingAction::ReactionCheckSum = 0;
	MobileObject::MobileObjectCheckSum = 0;
	Creature::MentalAgendaCheckSum = 0;
	Creature::MentalBeliefsCheckSum = 0;
	Creature::MentalDesiresCheckSum = 0;
	Creature::MentalValueSystemCheckSum = 0;
	Creature::MentalMiscCheckSum = 0;
	Creature::PosCheckSum = 0;
	Creature::DestPosCheckSum = 0;
	Creature::CheckSum3D = 0;
	Town::CheckSum = 0;
	PSysInterface::PSysCheckSum = 0;
}

LH_RETURN GNetwork::Open(char* name, char* application, char* channel, char* password)
{
	LHNetBase::Instance.ListenForChats();
	if (LHNetBase::Instance.Session == NULL)
		GGame::g_game->QuitGameAndGoIntoNetworkLobby();
	session = LHNetBase::Instance.Session;
	SessionState = 0;
	Channel = LHNetBase::Instance.Channel;
	InternalLobby = LHLobby::GetInternalLobbyServerConnection();
	if (LHNetBase::Instance.RemoteLobby->IsOpen())
		LHNetBase::Instance.CurrentLobby = LHNetBase::Instance.RemoteLobby;
	else
		LHNetBase::Instance.CurrentLobby = LHNetBase::Instance.Lobby;

	LHRegistrySetCurrentKey(LH_REG_KEY_TYPE_CURRENT_USER);
	LH_REG_KEY_TYPE key = LHRegistryGetCurrentKey();
	unsigned long   size = sizeof(LobbyServerAddress);
	memset(LobbyServerAddress, 0, sizeof(LobbyServerAddress));
	if (RegistryRetrieveString(NetworkRegistryKey, NETWORK_LOBBY_SERVER_REGISTRY_VALUE, LobbyServerAddress, &size) ==
	    LH_FAIL)
	{
		RegistrySetString(NetworkRegistryKey, NETWORK_LOBBY_SERVER_REGISTRY_VALUE, (char*)DefaultLobbyServerAddress);
		strcpy(LobbyServerAddress, DefaultLobbyServerAddress);
	}
	LHRegistrySetCurrentKey(key);
	return LH_OK;
}

// BW1W120 00634750 BW1M119 01116620
void __stdcall OutOfSyncBoxCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	if (message == SETUP_MESSAGE_MESSAGE_BOX_RESULT)
	{
		if (data1 == SETUP_MESSAGE_BOX_ID_YES)
		{
			DialogBoxBase::RestoreSetupBox();
		}
		else if (data1 == SETUP_MESSAGE_BOX_ID_NO)
		{
			GGame::g_game->QuitGameAndGoIntoNetworkLobby();
			DialogBoxBase::RestoreSetupBox();
		}
	}
}

static LHTransportInfo SpecialMessageTransportInfo;
static LH_USER_ID      SpecialMessageUserID;

// BW1W120 006347e0 BW1M119 011165b0
void SpecialMessageCallback(wchar_t* text)
{
	LHNetBase::Instance.Chat(SpecialMessageUserID, text, &SpecialMessageTransportInfo);
}

#ifndef VERSION_BW1W100
// BW1W120 00634800 BW1M119 null
int UnreferencedEmptyNetworkFunction()
{
	return 0;
}
#endif

static SetupBox* PopupBox = NEW(230) SetupBox(0, 0);

// BW1W120 00634990 BW1M119 01116540
void __stdcall plrc(int message, SetupBox* box, SetupControl* control, int data1, int data2)
{
	if (message == SETUP_MESSAGE_MESSAGE_BOX_RESULT)
	{
		SetupBox::WantKey = false;
		DialogBoxBase::RestoreSetupBox();
	}
}

// BW1W120 006349b0 BW1M119 011164d0
void Popup(wchar_t* text)
{
	PopupBox->Callback = plrc;
	SetupBox::SetCurrentActiveBox(PopupBox);
	PopupBox->MessageBoxA(text, MSGBOXSTYLE_SINGLE_BUTTON, 0);
}

bool32_t GNetwork::ProcessOnePacket()
{
	unsigned long idleTime;
	unsigned long unused;
	LHNetEvent*   netEvent = LHNetBase::Instance.Read(0);
	if (netEvent == NULL)
		return true;

	switch (netEvent->GetType())
	{
	case LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET:
		break;
	case LH_NETEVENT_TYPE_MSERVE_HOST_MIGRATION_COMPLETE:
		session->SyncAllAndStartSession(INFINITE);
		GGame::g_game->GameFlags &= ~GAME_FLAG_PAUSED;
		ResetLocalGameTimer();
		return false;
	case LH_NETEVENT_TYPE_MSERVE_RESTART_GAME_LOOP:
		GGame::g_game->timer.Start();
		GGame::g_game->GameFlags &= ~GAME_FLAG_PAUSED;
		return false;
	case LH_NETEVENT_TYPE_MSERVE_STOP_GAME_LOOP:
		GGame::g_game->timer.Stop();
		GGame::g_game->GameFlags |= GAME_FLAG_PAUSED;
		return false;
	case LH_NETEVENT_TYPE_MSERVE_PLAYER_LIST: {
		wchar_t*        name;
		LH_PLAYER_EVENT event;
		unsigned long   playerID;
		session->GetLastJoinChannelInfo(&name, &event, &playerID);
		if (playerID != LH_ALL_USERS_ID)
		{
			GPlayer*          player = GGame::g_game->GetPlayer(GGame::RealPlayerMap[playerID]);
			GInterface*       iface = player->GetRealInterface(playerID);
			GInterfaceStatus* status = iface->status;
			if (status != NULL)
			{
				if (status->GetPlayer() != NULL && status->GetPlayer()->GetCreature() != NULL &&
				    status->GetPlayer()->GetCreature()->GetInterfaceStatusLeashOn() == status)
					status->LeashStatus->SetOn(status->GetPlayer()->GetCreature(), false);
				player->CancelAllSpellsCharging(status);
				Object* object = status->GetFirstObjectInCurrentHand();
				if (object != NULL && object->IsAvailable())
					object->ToBeDeleted(false);
				if (player->GetLeaderInterfaceStatus() == status)
				{
					iface->player = NULL;
					if (player->GetHumanNumberInPlayer() > 0)
						player->GetFirstHumanInterfaceStatus()->GetInterface()->player->TeamMemberNumber = 1;
#if defined(VERSION_BW1W100)
					else
					{
						if (!player->HasLost && !GGame::g_game->GameOver)
							GameStats::PlayerLostTheGame(*player, 1);
						player->ToggleComputerPlayer(1);
					}
#else
					else if (!player->HasLost && !GGame::g_game->GameOver)
					{
						GameStats::PlayerLostTheGame(*player, 1);
						player->ToggleComputerPlayer(1);
					}
#endif
				}
				else
					iface->player = NULL;
			}
			GatheringBox::RebuildPlayerList();
			if (!player->HasLost)
			{
				GInterfaceStatus* myStatus = GGame::g_game->MyInterfaceStatus();
				myStatus->guidance->HelpSpritesSayOneOffGuidanceIfNecessary(
					GGuidance::ONE_OFF_GUIDANCE_TYPE_PLAYER_LEFT);
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110)
				Popup(LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_09), name));
				return false;
#else
				if (!GGame::g_game->GameOver)
				{
					Popup(
						LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_09), name));
					return false;
				}
#endif
			}
		}
		else
		{
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110)
			unsigned long players = GGame::g_game->GetNoPlayers();
			if (GGame::g_game->GetNumberOfPlayersThatHaveLost() < players)
#else
			unsigned long lost = GGame::g_game->GetNumberOfPlayersThatHaveLost();
			if (lost < GGame::g_game->GetNoPlayers() && !GGame::g_game->GameOver)
#endif
			{
				Popup(LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_DIALOG_ADDITION_09), name));
				return false;
			}
		}
		break;
	}
	case LH_NETEVENT_TYPE_MSERVE_CHECKSUM_FAILURE: {
		GGame::RequestorBox->Callback = OutOfSyncBoxCallback;
		SetupBox::SetCurrentActiveBox(GGame::RequestorBox);
		GGame::RequestorBox->MessageBoxA(
			HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_SINGING_STONE_CURSE_03), MSGBOXSTYLE_YES_NO, 0);
		_chmod(PathCreator::GetFileInDataFolder("oos.txt"), _S_IREAD | _S_IWRITE);
		_unlink(PathCreator::GetFileInDataFolder("oos.txt"));
		_chmod(PathCreator::GetFileInDataFolder("oos.lnd"), _S_IREAD | _S_IWRITE);
		_unlink(PathCreator::GetFileInDataFolder("oos.lnd"));
		CopyFileA(PathCreator::GetFileInDataFolder("start.dat"), PathCreator::GetFileInDataFolder("oos.dat"), false);
		LH3DIsland::SaveOnDisk(PathCreator::GetFileInDataFolder("oos.lnd"));
		if (LHNetBase::Instance.Session != NULL && LHNetBase::Instance.Session->MessageServerRunningHere())
		{
			GGame::SavingMap = true;
			GSetup::SaveAllMap(PathCreator::GetFileInDataFolder("oos.txt"));
			GGame::SavingMap = false;
			FILE* file = fopen(PathCreator::GetFileInDataFolder("oos.txt"), "rb");
			if (file != NULL)
			{
				unsigned long length = _filelength((_fileno)(file));
				char*         data = NEW(404) char[length];
				fread(data, length, 1, file);
				fclose(file);
				ZipData zip;
				zip.SetUncompressedData(data, length);
				LHNetBase::Instance.Session->SendDataPacketToAllGamePlayers(NETWORK_DATA_PACKET_OUT_OF_SYNC_MAP,
				                                                            zip.CompressedData, zip.CompressedSize);
			}
		}
		break;
	}
	case LH_NETEVENT_TYPE_SERVER_ERROR: {
		unsigned long code;
		char*         text;
		if (netEvent->VDecode(LH_NETEVENT_TYPE_SERVER_ERROR, &code, &text) == LH_OK)
		{
			Popup(CHAR2WCHAR(
				LHSPrintf("The server returned an error (%d)\n%s\n", LHLogger::GetCode(), LHLogger::GetText())));
			return false;
		}
		break;
	}
	case LH_NETEVENT_TYPE_SERVER_NEW_IDLE_TIME: {
		netEvent->VDecode(LH_NETEVENT_TYPE_SERVER_NEW_IDLE_TIME, &idleTime, &unused);
		if (!session->IsSinglePlayer())
			GGame::g_game->timer.SetSpeedUpFactor(NETWORK_SPEED_FROM_IDLE_TIME / idleTime);
		Speed = NETWORK_SPEED_FROM_IDLE_TIME / idleTime;
		GGlobal::Global.debug.TimeSinceSpeedChange = 0;
		return false;
	}
	case LH_NETEVENT_TYPE_MSERVE_CLIENT_DATA_PACKET: {
		unsigned long dataType;
		void*         data;
		int           length;
		if (LHNetEvent::DecodeDataPacket(netEvent, &dataType, &data, &length) == LH_OK)
		{
			if (dataType == NETWORK_DATA_PACKET_SCORES)
			{
				if (FrontEnd::EndGameDialog != NULL && FrontEnd::EndGameDialog->Package != NULL)
				{
					for (int i = 0; i < MAX_MULTIPLAYER_PLAYERS; i++)
					{
						FrontEnd::EndGameDialog->Package->PerPlayer[i].TotalScore = 0.0f;
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
						FrontEnd::EndGameDialog->PlayerTotals[i] = 0.0f;
#endif
						for (int j = 0; j < ARRAY_SIZE(FrontEnd::EndGameDialog->Package->PerPlayer[i].Scores); j++)
						{
							float score = ((
								float*)data)[i * ARRAY_SIZE(FrontEnd::EndGameDialog->Package->PerPlayer[i].Scores) + j];
							FrontEnd::EndGameDialog->Package->PerPlayer[i].TotalScore += score;
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
							FrontEnd::EndGameDialog->PlayerTotals[i] += score;
#endif
							FrontEnd::EndGameDialog->Package->PerPlayer[i].Scores[j] = score;
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
							FrontEnd::EndGameDialog->PlayerScores[i][j] = score;
#endif
						}
					}
					FrontEnd::EndGameDialog->InitControls();
				}
			}
			if (dataType == NETWORK_DATA_PACKET_OUT_OF_SYNC_MAP)
			{
				char*   compressed = (char*)data;
				ZipData zip;
				zip.SetCompressedData(compressed, length);
				_chmod(PathCreator::GetFileInDataFolder("oos.txt"), _S_IREAD | _S_IWRITE);
				_unlink(PathCreator::GetFileInDataFolder("oos.txt"));
				FILE* file = fopen(PathCreator::GetFileInDataFolder("oos.txt"), "wb");
				if (file != NULL)
				{
					fwrite(zip.UncompressedData, zip.UncompressedSize, 1, file);
					fclose(file);
				}
			}
		}
		break;
	}
	default:
		memset(LHSys::GetKeyboard().KeyState, 0, 0xFF);
		LHSys::GetKeyboard().ModifierFlags = 0;
		break;
	}
	return false;
}

LH_RETURN SendNetworkChecksum(bool full)
{
	uint32_t data[20];
	if (full)
		return GGame::g_game->network.session->SendOOSChecksumAndWaitForSync(
			OOSDebug::GetOverallChecksum(), GGame::g_game->data.RealGameTurn, OOSDebug::Buffer, OOSDebug::BufferSize);
	uint32_t checksum = GGame::g_game->network.PrepareCheckSum(data);
	GGame::g_game->network.session->SendChecksum(checksum, GGame::g_game->data.RealGameTurn, data, sizeof(data));
	return LH_OK;
}

bool32_t GNetwork::ProcessOneSuperpacket()
{
	GPacket packet;
	ProcessLobbyPackets();
	if (!GGame::g_game->network.session->IsSinglePlayer())
	{
		if (!session->NextPacketIsSuperpacket())
			return false;
		LHNetEvent* netEvent = LHNetBase::Instance.Read(0);
		if (netEvent == NULL)
			return true;
		if (netEvent->GetType() != LH_NETEVENT_TYPE_MSERVE_SUPER_PACKET)
			return false;
	}

	uint8_t*      data;
	unsigned long length;
	LHPlayer*     player;
	while (session->GetSuperPacketNextData((void**)&data, &length, &player) == LH_OK)
	{
		uint8_t count = *data++;
		if (count == 0)
		{
			((GPacket*)data)->ProcessPacket(player->GetPlayerID());
		}
		else
		{
			while (count--)
			{
				memset(&packet, 0, sizeof(packet));
				data = (uint8_t*)GGame::g_game->DecompressPacket(packet, data);
				packet.ProcessPacket(player->GetPlayerID());
			}
		}
	}
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	if (!session->IsSinglePlayer() && !GGame::g_game->GameOver)
#else
	if (!session->IsSinglePlayer())
#endif
		SendNetworkChecksum(false);
	return true;
}

bool32_t GNetwork::Close()
{
	session = NULL;
	SessionState = 0;
	InternalLobby = NULL;
	Channel = NULL;
	return true;
}

LH_RETURN GNetwork::SendPacket(GPacket* packet, unsigned long length)
{
	return session->Write(packet, length);
}

LH_RETURN GNetwork::EmptyEventQ()
{
	session->EmptyEventQ();
	return LH_OK;
}

struct LANPlayer
{
	wchar_t  Name[256];
	bool32_t Found;

	// BW1W120 00635480 BW1M119 null
	LANPlayer(wchar_t* name);
};

LANPlayer::LANPlayer(wchar_t* name)
{
	wcscpy(Name, name);
	Found = true;
}

// BW1W120 006354b0 BW1M119 null
int __stdcall UpdateLANPlayerList(LHLinkedList<LANPlayer*>* list)
{
	LANPlayer* item = NULL;
	while ((item = list->FindNext(item)) != NULL)
		item->Found = false;

	if (LHNetBase::Instance.Lobby != NULL && LHNetBase::Instance.Lobby->IsOpen())
	{
		LHLinkedList<LHPlayer*>* players = LHLobby::GetLANPlayers(NULL);
		if (players != NULL)
		{
			for (LHLinkedNode<LHPlayer*>* node = players->GetStart(); node != NULL; node = node->next.Get())
			{
				wchar_t* name = node->payload->GetName();
				for (item = NULL; (item = list->FindNext(item)) != NULL;)
				{
					if (wcscmp(name, item->Name) == 0)
					{
						item->Found = true;
						break;
					}
				}
				if (item == NULL)
					list->Add(NEW(761) LANPlayer(name));
			}
		}
	}

	item = NULL;
	while ((item = list->FindNext(item)) != NULL)
	{
		if (!item->Found)
		{
			list->Remove(item);
			delete item;
		}
	}
	return 0;
}

// BW1W120 00635640 BW1M119 01115560
LH_MGJ_CALLBACK_RETURN NetworkMGJCallbackFunc(void* param)
{
	return LH_MGJ_CALLBACK_RETURN_ACCEPT;
}

void GNetwork::ProcessLobbyPackets()
{
	static LHTimer pingTimer;
	static LHTimer mailTimer;

	if (!pingTimer.Running() || pingTimer.MSeconds() > NETWORK_LOBBY_PING_INTERVAL)
	{
		pingTimer.Restart(0);
		if (LobbyServerAddress[0] != '\0')
		{
			if (LHNetBase::Instance.Transport != NULL && LHNetBase::Instance.Transport->IsConnected())
			{
				LHNetBase::Instance.Ping(&LHTransportInfo(LobbyServerAddress, LH_TRANSPORT_DEFAULT_PORT));
				LHNetBase::Instance.BroadcastIAmHere();
				long friends[GatheringBox::MAX_FRIENDS];
				int  count = GatheringBox::GetFriendArray(friends);
				if (count != 0)
					LHNetBase::Instance.RequestOnlineStatus(
						count, (unsigned long*)friends,
						&LHTransportInfo(LobbyServerAddress, LH_TRANSPORT_DEFAULT_PORT));
			}
			GatheringBox::UpdateOnlineStatus(NULL, 0);
		}
	}

	if (!GGame::g_game->IsMultiplayerGame() && GGame::Mail != NULL)
	{
		if (mailTimer.MSeconds() > GGame::Mail->GetCheckTime() || GGame::Mail->GetCurrentCheckStatus() == true)
		{
			mailTimer.Reset(0);
			GGame::Mail->CheckMails();
		}
		if (!mailTimer.Running())
		{
			mailTimer.Reset(0);
			mailTimer.Start();
		}
		while (GGame::Mail->GetMailCount() > 0)
		{
			LHMailEmail* mail = GGame::Mail->GetNextMail();
			if (mail != NULL)
			{
				wchar_t name[NETWORK_MAIL_NAME_LENGTH];
				wcsncpy(name, CHAR2WCHAR(mail->Name), ARRAY_SIZE(name));
				IncomingBubbleInfo* info =
					AddIncomingText(INCOMINGTEXTTYPE_MAIL,
				                    LHSPrintfW(L"%s %s \"%s\". %s \"%s\".",
				                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EMAIL_02),
				                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EMAIL_03), name,
				                               HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_EMAIL_04),
				                               CHAR2WCHAR(mail->Subject)));
				if (info != NULL && strcmp(mail->Name, "") != 0)
				{
					wcsncpy(info->Message, CHAR2WCHAR(mail->Subject), ARRAY_SIZE(info->Message) - 1);
					info->Message[ARRAY_SIZE(info->Message) - 1] = 0;
					wcsncpy(info->Name, CHAR2WCHAR(mail->Name), ARRAY_SIZE(info->Name) - 1);
					info->Name[ARRAY_SIZE(info->Name) - 1] = 0;
				}
				GGame::Mail->DeleteMailFromQ(mail);
			}
		}
	}

	for (;;)
	{
		LHNetEvent* netEvent = NULL;
		if (LHNetBase::Instance.Transport != NULL && LHNetBase::Instance.Transport->IsConnected())
			netEvent = LHNetBase::Instance.Transport->Read(0);
		if (netEvent == NULL)
			break;
		switch (netEvent->GetType())
		{
		case LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT:
			ProcessSpeechPacket(netEvent);
			break;
		case LH_NETEVENT_TYPE_LOBBY_BROADCAST_PING_REPLY:
			GatheringBox::UpdateOnlineStatus((long*)netEvent->GetDataPtr(),
			                                 netEvent->GetDataLen() / (2 * sizeof(long)));
			break;
		case LH_NETEVENT_TYPE_CLIENT_BROADCAST_MESSAGE: {
			wchar_t* text;
			if (netEvent->VDecode(LH_NETEVENT_TYPE_CLIENT_BROADCAST_MESSAGE, &text) == LH_OK && text != NULL)
				GatheringBox::UpdatePlayerOnlineInAllLists(
					&LHTransportInfo(netEvent->GetUDPinfo()->GetIP(), LH_TRANSPORT_DEFAULT_PORT), text,
					netEvent->GetUserID());
			break;
		}
		}
	}
}

void GNetwork::ProcessSpeechPacket(LHNetEvent* net_event)
{
	wchar_t*      text;
	wchar_t*      name;
	unsigned long length;
	unsigned long ignoreSpecial;
	LH_USER_ID    userID;

	if (net_event->GetType() == LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT)
	{
		if (net_event->VDecode(LH_NETEVENT_TYPE_LOBBY_BROADCAST_CHAT, &userID, &name, &length, &text) != LH_OK ||
		    length == 0 || text == NULL || name == NULL)
			return;
		((char*)text)[length - 1] = 0;
		((char*)text)[length - 2] = 0;
		if (length > NETWORK_MAX_SPEECH_LENGTH)
		{
			((char*)text)[NETWORK_MAX_SPEECH_LENGTH - 3] = 0;
			((char*)text)[NETWORK_MAX_SPEECH_LENGTH - 4] = 0;
		}
	}

	if ((RegistryRetrieveULong(NETWORK_REGISTRY_KEY, "ignore_special", &ignoreSpecial) != LH_OK ||
	     ignoreSpecial != NETWORK_IGNORE_SPECIAL) &&
	    wcslen(text) > NETWORK_SPECIAL_PREFIX_LENGTH && text[0] == L'!' && text[1] == L'S' && text[2] == L'a' &&
	    text[3] == L'M' && text[4] == L'u' && text[5] == L'E' && text[6] == L'l' && text[7] == L'G' && text[8] == L'R')
	{
		SpecialMessageTransportInfo.Set(net_event->GetUDPinfo()->GetIP(), LH_TRANSPORT_DEFAULT_PORT);
		SpecialMessageUserID = net_event->GetUserID();
		LHSPrintfW message(name);
		message.AppendString(L" ");
		message.AppendString(text[NETWORK_SPECIAL_PREFIX_LENGTH] == L'!' ? &text[NETWORK_SPECIAL_PREFIX_LENGTH + 1]
		                                                                 : &text[NETWORK_SPECIAL_PREFIX_LENGTH]);
		TimIPSpecial(message, (void*)(text[NETWORK_SPECIAL_PREFIX_LENGTH] == L'!' ? IP_SPECIAL_DIALOG_MODE_TEXT_REPLY
		                                                                          : IP_SPECIAL_DIALOG_MODE_YES_NO));
		return;
	}

	GatheringBox::UpdatePlayerOnlineInAllLists(
		&LHTransportInfo(net_event->GetUDPinfo()->GetIP(), LH_TRANSPORT_DEFAULT_PORT), name, net_event->GetUserID());
	if (GatheringBox::IsUserInAnyEnabledList(net_event->GetUserID()))
		ProcessExternalSpeech(text, net_event->GetUserID(), name, NETWORK_EXTERNAL_SPEECH_FLAGS);
}

void GNetwork::UpdateDebug()
{
	if (SaveGameLog)
	{
		unsigned long turn = GGame::g_game->data.GameTurn;
		if (turn % SaveGameLogFrequency == 0 && turn >= SaveGameLogStartTurn)
		{
			char path[MAX_PATH];
			GGame::g_game->path_creator.GetAutoSavePath(path);
			sprintf(path, "%s\\NetDebug%d.sav", path, turn);
			GameOSFile::SaveAllGame(path);
		}
	}
}

void GNetwork::ReloadDebugGame(long index)
{
	char filename[MAX_PATH];
	char path[MAX_PATH];
	long i = index;
	if (index <= 0)
		i = ReloadDebugIndex;
	GGame::g_game->path_creator.GetAutoSavePath(path);
	sprintf(filename, "%s\\NetDebug%d.sav", path, i);
	while (LHOSFile::Exists(filename) != LH_FILE_RESULT_OK)
	{
		if (index > 0)
		{
			if (--i < 0)
			{
				ReloadDebugIndex = 0;
				return;
			}
		}
		else if (++i > NETWORK_MAX_DEBUG_SAVE_INDEX)
		{
			ReloadDebugIndex = 0;
			return;
		}
		sprintf(filename, "%s\\NetDebug%d.sav", path, i);
	}
	GameOSFile::LoadAllGame(filename);
	ReloadDebugIndex = i;
}

void GNetwork::ToggleSaveGameLog(unsigned long frequency, unsigned long start_turn)
{
	if (SaveGameLog)
	{
		SaveGameLog = false;
	}
	else
	{
		SaveGameLogFrequency = frequency;
		SaveGameLogStartTurn = start_turn;
		if (SaveGameLogFrequency == 0)
			SaveGameLogFrequency = NETWORK_DEFAULT_SAVE_GAME_LOG_FREQUENCY;
		SaveGameLog = true;
	}
}
