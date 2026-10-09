#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Player.h"

#include <math.h>   /* For log */
#include <stdio.h>  /* For sprintf */
#include <string.h> /* For memmove */
#include <wchar.h>  /* For wcscpy */

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For EIGHTH_PI_F */
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>                   /* For operator new(size_t, const char*, uint32_t) */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>               /* For LHSPrintfW */
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>      /* For LHNetGetCurrentProfileDouble */
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>        /* For LHPlayer */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>       /* For LHSession */
#include <Lionhead/LHMultiplayer/ver4.0/LHTransportInfo.h> /* For LHTransportInfo */
#include <chlasm/AudioSFX.h>                               /* For AUDIO_SFX_BANK_TYPE_IN_GAME */
#include <chlasm/LHSample.h>                               /* For LH_SAMPLE_G_TAKEOVERTOWN_01 */

#include "Abode.h"
#include "Alignment.h"
#include "Audio.h"
#include "Camera.h"
#include "CameraModeNew3.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "CitadelPart.h"
#include "ControlHand.h"
#include "Creature.h"
#include "CreatureInfo.h"
#include "CreatureMental.h"
#include "Bubble.h"
#include "Debug.h"
#include "DialogBoxBase.h"
#include "EditorIconPDM.h"
#include "EndGameBox.h"
#include "FrontEnd.h"
#include "Game.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "GatheringInterface.h"
#include "Global.h"
#include "HelpText.h"
#include "Influence.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "LandAlignement.h"
#include "Landscape.h"
#include "LHNetBase.h"
#include "MagicTeleport.h"
#include "MPFEConnectionStatus.h"
#include "MPFEStartGameData.h"
#include "Network.h"
#include "ParticleContainer.h"
#include "PileResource.h"
#include "PlayerComputer.h"
#include "Rand.h"
#include "Reaction.h"
#include "Reward.h"
#include "Setup.h"
#include "alexmfc.h" /* For SetupBox */
#include "SoundGuidance.h"
#include "SpellIcon.h"
#include "SpellSeedInfo.h"
#include "StoragePit.h"
#include "TattooEditor.h"
#include "TownCentre.h"
#include "TribeInfo.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "Villager.h"
#include "VirtualInfluence.h"
#include "WorshipSite.h"
#include "WorshipSpellIcon.h"

#if defined(VERSION_BW1W100)
#define PLAYER_SOURCE_FILE "C:\\dev\\black\\Player.cpp"
#define PLAYER_LINE(line)  ((line) - ((line) < 900 ? 3 : (line) < 2000 ? 211 : 218))
#elif defined(VERSION_BW1W110)
#define PLAYER_SOURCE_FILE "C:\\dev\\Black\\Player.cpp"
#define PLAYER_LINE(line)  ((line) - ((line) < 900 ? 3 : 207))
#else
#define PLAYER_SOURCE_FILE "C:\\dev\\MP\\Black\\Player.cpp"
#define PLAYER_LINE(line)  (line)
#endif

#ifdef VERSION_BW1W120
// TODO: original name and home unknown (not in the Mac build). Reports the end of a multiplayer
// game to the lobby server.
struct LobbyServerAddress
{
	unsigned short Port;
	char           Address[0x64];
};

static inline void PingLobbyServer()
{
	LobbyServerAddress server;
	strcpy(server.Address, GNetwork::LobbyServerAddress);
	server.Port = 2611;
	LHTransportInfo info(LH_TRANSPORT_TYPE_TCP, strlen(server.Address) + 3, &server);
	LHNetBase::Instance.Ping(&info);
}
#endif

const float PlayerUnknownThousand = 1000.0f;

#define ISLAND_CENTRE_ZOOM_DISTANCE 2200.0f

inline float GetPlayerUnknownThousand()
{
	return PlayerUnknownThousand;
}

static float OneOverLogHalf = 1.0f / (float)log(0.5);

GPlayerInfo GPlayerInfo::Info;

char*         GPlayer::PlayerNameText[_PLAYER_NAME_COUNT + 1] = {"PLAYER_ONE",   "PLAYER_TWO",  "PLAYER_THREE",
                                                                 "PLAYER_FOUR",  "PLAYER_FIVE", "PLAYER_SIX",
                                                                 "PLAYER_SEVEN", "NEUTRAL",     ""};
unsigned long GPlayer::PlayerColours[_PLAYER_NAME_COUNT] = {0xffff4646, 0xff47ff54, 0xffe347ff, 0xff47f9ff,
                                                            0xfffffd47, 0xff4777ff, 0xffffa247, 0xff000000};
char*         GPlayer::CreatureMindData;
unsigned long GPlayer::CreatureMindDataLength;

GPlayer::GPlayer() : EditorIcon(NULL)
{
	SetToZero();
	alignment = new (PLAYER_SOURCE_FILE, PLAYER_LINE(125)) GAlignment();
}

GPlayer::~GPlayer()
{
	for (Town* town = towns.head; town != NULL;)
	{
		Town* nextTown = town->next;
		for (Abode* abode = town->AbodeList.head; abode != NULL;)
		{
			Abode* nextAbode = abode->next;
			for (Villager* villager = abode->villagers.head; villager != NULL;)
			{
				Villager* nextVillager = villager->next;
				villager->ToBeDeleted(0);
				villager = nextVillager;
			}
			abode->villagers.Clear();
			abode->ToBeDeleted(0);
			abode = nextAbode;
		}
		town->Delete();
		town = nextTown;
	}
	delete EditorIcon;
	if (citadel.Get() != NULL)
	{
		citadel->Delete();
	}
	if (creature.Get() != NULL)
	{
		creature->Delete();
	}
	for (int i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		if (interfaces[i] != NULL)
		{
			interfaces[i]->Delete();
		}
	}
	delete ComputerPlayer;
	delete StartGameData;
}

void GPlayer::ToBeDeleted(int delete_now)
{
	Uninit();
	GameThing::ToBeDeleted(delete_now);
}

void GPlayer::InitReal(LHPlayer* player)
{
	Init(PLAYER_TYPE_HUMAN, player->GetPlayerID(), player->Name, player->GetPlayerID());
	UserId = player->GetUserID();
	AlignmentSaveTurn = 0;
}

void GPlayer::InitReal(LHPlayer* player, unsigned char player_number)
{
	Init(PLAYER_TYPE_HUMAN, player_number, player->Name, player->GetPlayerID());
	UserId = player->GetUserID();
	interfaces[player->PlayerId]->player = player;
	AlignmentSaveTurn = 0;
	if (player != NULL && player->PlayerId != 0 && interfaces[player->PlayerId] != NULL &&
	    interfaces[player->PlayerId]->hand.Get() != NULL)
	{
		interfaces[player->PlayerId]->hand.Get()->UpdateLeftRightFromPlayer(player);
	}
}

void GPlayer::Init(PLAYER_TYPE type, unsigned char player_number, char16_t* player_name, unsigned char player_id)
{
	this->type = type;
	this->player_number = player_number;
	if (player_name != NULL)
	{
		wcscpy(name, player_name);
	}
	if (ComputerPlayer == NULL)
	{
		ComputerPlayer = new (PLAYER_SOURCE_FILE, PLAYER_LINE(259)) GComputerPlayer(this, 90.0f, 30.0f, 50);
	}
	if (game_stats == NULL)
	{
		game_stats = new (PLAYER_SOURCE_FILE, PLAYER_LINE(264)) GameStats();
		game_stats->Init(*this);
	}
	for (int i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		DamageFromPlayer[i] = 0.0f;
	}
	AverageInfluencePower = InfluencePower;
	AlignmentSaveTurn = 0;
	interfaces[player_id] = new (PLAYER_SOURCE_FILE, PLAYER_LINE(278)) GInterface();
	interfaces[player_id]->Init(player_number);
}

void GPlayer::Uninit()
{
	if (ComputerPlayer != NULL)
	{
		ComputerPlayer->ToBeDeleted(0);
		ComputerPlayer = NULL;
	}
	if (StartGameData != NULL)
	{
		delete StartGameData;
		StartGameData = NULL;
	}
	if (game_stats != NULL)
	{
		game_stats->ToBeDeleted(0);
		game_stats = NULL;
	}
	for (int i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		if (interfaces[i] != NULL)
		{
			interfaces[i]->ToBeDeleted(0);
			interfaces[i] = NULL;
		}
	}
	AverageInfluencePower = 0.0f;
	InfluencePower = 0.0f;
}

void GPlayer::SetToZero()
{
	int i;
	type = PLAYER_TYPE_0;
	player_number = 0;
	StartGameData = NULL;
#ifdef VERSION_BW1W120
	Score = 0.0f;
#endif
	memset(name, 0, sizeof(name));
	ComputerPlayer = NULL;
	citadel = NULL;
	creature = NULL;
	HasLost = 0;
	field_0x93c = 0;
	AlignmentSaveTurn = 0;
	for (i = 0; i < TRIBE_TYPE_LAST; i++)
	{
		MaxTribalPower[i] = 1.0f;
		TribalPower[i] = 1.0f;
	}
	ClearMagicTypesEnabled();
	for (i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		MagicTypeEverBeenEnabled[i] = false;
	}
	for (i = 0; i < _PLAYER_NAME_COUNT; i++)
	{
		Allies[i].Value = 0.0f;
	}
	game_stats = NULL;
	CheatOn = 0;
	AllMagicEnabled = FALSE;
	CheatField930 = 0;
	InfiniteInfluence = 0;
	for (i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		interfaces[i] = NULL;
	}
	WindResistance = 0;
	field_0xb4 = 0;
	ComputerPlayer = NULL;
	field_0x93c = 0;
	info = GPlayerInfo::GetInfo();
#ifdef VERSION_BW1W120
	Conditions.clear();
	for (i = 0; i < 500; i++)
	{
		ScoreHistory[i] = 0.0f;
	}
	ScoreHistoryIndex = 0;
#endif
}

void GPlayer::Process()
{
	char text[200];

	if (citadel.Get() != NULL)
	{
		if (GGame::g_game->MyPlayer() == this)
		{
			GGame::g_game->field_0x205a14 = 1;
		}
		citadel->Process();
	}
	Town* town = NULL;
	TotalPopulation = 0;
	unsigned long females = 0;
	unsigned long males = 0;
	while ((town = towns.GetNext(town)) != NULL)
	{
		town->Process();
		TotalPopulation += town->GetPopulation();
		females += town->stats.NumFemales;
		males += town->stats.NumMales;
	}
	if (game_stats != NULL)
	{
		game_stats->CheckAllPopulationTotals(males, females);
		GetStats()->PopulationGraph.Add(TotalPopulation);
	}
	if (type == PLAYER_TYPE_HUMAN)
	{
		sprintf(text, "Player[%d] is %.2f", GetPlayerNumber(), GetAlignmentValue());
		GGlobal::Global.debug.SetMessage(0, text);
	}
	ProcessTeleports();
	alignment->ProcessForPlayer(this);
	if (IsNeutral())
	{
		alignment->Value = 0.0f;
	}
	else
	{
		ComputerPlayer->NewProcess();
	}
	for (int i = 0; i < TRIBE_TYPE_LAST; i++)
	{
		TribalPower[i] = MaxTribalPower[i] = max(MaxTribalPower[i], 1.0f);
	}
	CalculateInfluencePower();
	if (GGame::g_game->data.GameTurn % 10000 == 0)
	{
		GInterfaceStatus* status = GGame::g_game->MyInterfaceStatus();
		status->guidance->HelpSpritesCheckPlayerWatching(this);
	}
	if (GGame::g_game->MyPlayer() == this)
	{
		GGlobal::Global.debug.SetMessage(4, "Population: %.2f", GetProportionOfWorldPopulationWhoBelieveInMe());
		GGlobal::Global.debug.SetMessage(4, "Births: %d", GetTotalBirthsInWholeWorld());
		GGlobal::Global.debug.SetMessage(4, "Deaths: %d", GetTotalDeathsInWholeWorld());
		GGlobal::Global.debug.SetMessage(4, "Abodes: %d", GetTotalAbodesBuiltInWholeWorld());
		GGlobal::Global.debug.SetMessage(4, "Wonders: %d", GetTotalWondersBuiltInWholeWorld());
	}
}

void GPlayer::ClaimTown(Town* town)
{
	if (town->GetPlayer() == this)
	{
		return;
	}
	IsNeutral();
	if (this == GGame::g_game->MyPlayer() || town->GetPlayer() != GGame::g_game->MyPlayer())
	{
		if (this == GGame::g_game->MyPlayer() && town->GetPlayer() != GGame::g_game->MyPlayer())
		{
			LH_SamplePlayOptions options;
			options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
			options.SampleNumber = LH_SAMPLE_G_TAKEOVERTOWN_01;
			options.AttachedObject = NULL;
			options.Positional = 0;
			GGlobal::Global.audio->PlaySoundEffect(&options);
		}
	}
	town->SetWorshipPercentage(0.0f);
	town->ResetAllDiscipleStates();
	town->RemoveTownFromPlayer();
	town->AddTownToPlayer(this);
	int population = town->GetPopulation();
	GetStats()->TotalPeopleConverted += population;
	TownCentre* centre = town->town_centre;
	if (centre != NULL)
	{
		Reaction::CreateReaction(centre, 0x1f, town->GetPlayer(), 0);
	}
	else
	{
		Reaction::CreateReaction(town, 0x1f, town->GetPlayer(), 0);
	}
	if (this != GGame::g_game->GetNeutralPlayer())
	{
		MapCoords pos = town->Pos;
		if (town->town_centre != NULL)
		{
			pos = town->town_centre->Pos;
		}
		GParticleContainer::CreateSpotVisual(pos, (SPOT_VISUAL_TYPE)6, 1.0f, NULL);
		GParticleContainer* visual = GParticleContainer::CreateSpotVisual(pos, (SPOT_VISUAL_TYPE)0x1f, 1.0f, NULL);
		if (visual != NULL)
		{
			visual->SetPlayer(this);
		}
	}
	GGame::g_game->GameFlags |= GAME_FLAG_NEEDS_CONTROL_MAP_UPDATE;
	GGame::g_game->ForceNeedUpdateInfluence();
#ifdef VERSION_BW1W120
	if (GGame::g_game->IsMultiplayerGame() && town->GetPlayer() != NULL)
	{
		GetPlayer()->AddToCondition(WC_TAKEOVER_NUM_TOWNS, 1);
	}
#endif
}

void GPlayer::ProcessPlayers()
{
	GPlayer* player;
	for (player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
#ifdef VERSION_BW1W120
		if (GGame::g_game->IsMultiplayerGame())
		{
			player->SetCondition(WC_WOOD_IN_PITS, player->GetTotalWoodInStoragePits());
			player->SetCondition(WC_FOOD_IN_PITS, player->GetTotalFoodInStoragePits());
			Citadel* citadel = player->citadel.Get();
			if (citadel != NULL)
			{
				float chants = 0.0f;
				for (int i = 0; i < MAX_WORSHIP_SITES; i++)
				{
					if (citadel->WorshipSites[i] != NULL)
					{
						chants += citadel->WorshipSites[i]->GetChantsAvailable();
					}
				}
				player->SetCondition(WC_PRAYER_POWER_GENERATED, (int)chants);
			}
			float belief = 0.0f;
			for (Town* town = player->towns.GetNext(NULL); town != NULL; town = player->towns.GetNext(town))
			{
				belief += (int)(town->GetBeliefInPlayer(player) * 1000.0f);
			}
			player->SetCondition(WC_BELIEF_IN_WORLD, (int)belief);
		}
#endif
		player->Process();
	}

#ifdef VERSION_BW1W120
	if ((GGame::g_game->IsMultiplayerGame() || GGame::g_game->SkirmishGame != 0) && !GGame::g_game->GameOver)
#else
	if (GGame::g_game->IsMultiplayerGame() || GGame::g_game->SkirmishGame != 0)
#endif
	{
#ifdef VERSION_BW1W120
		bool checkLosers = false;
		if (GGame::g_game->MyPlayer()->Conditions.size() != 0 ||
		    (GGame::g_game->MultiplayerTimeLimit == GGame::g_game->data.GameTurn && GGame::g_game->SkirmishGame == 0))
		{
			float conditionWeight = 0.0f;
			if (GGame::g_game->MyPlayer()->Conditions.size() != 0)
			{
				conditionWeight = 1.0f / GGame::g_game->MyPlayer()->Conditions.size();
			}
			for (player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
			     player = GGame::g_game->GetNextActivePlayer(player))
			{
				if (player->GetPlayerNumber() >= MAX_MULTIPLAYER_PLAYERS)
				{
					continue;
				}
				bool allComplete = true;
				player->Score = 0.0f;
				if (player->citadel.Get() == NULL && !player->HasLost)
				{
					checkLosers = true;
				}
				for (std::map<int, WinCondition>::iterator it = player->Conditions.begin();
				     it != player->Conditions.end(); ++it)
				{
					if (!(*it).second.Completed)
					{
						allComplete = false;
					}
					player->Score +=
						((*it).second.Completed ? 1.0f : (float)(*it).second.Current / (*it).second.Target) *
						conditionWeight;
				}
				if (allComplete)
				{
					GGame::g_game->GameOver = true;
					player->Score = 1.0f;
				}
				if (GGame::g_game->data.GameTurn % 10 == 0)
				{
					player->AddScoreHistory(player->Score);
				}
			}
			if (GGame::g_game->GameOver || GGame::g_game->MultiplayerTimeLimit == GGame::g_game->data.GameTurn)
			{
				GPlayer* ranking[MAX_MULTIPLAYER_PLAYERS];
				ranking[0] = NULL;
				ranking[1] = NULL;
				ranking[2] = NULL;
				ranking[3] = NULL;
				GPlayer* winner = NULL;
				float    bestScore = -1.0f;
				GPlayer* best = NULL;
				int      numPlayers = 0;
				GGame::g_game->GameOver = true;
				PingLobbyServer();
				for (player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
				     player = GGame::g_game->GetNextActivePlayer(player))
				{
					numPlayers++;
					player->field_0x93c = 1;
					if (player->ComputerPlayer != NULL)
					{
						player->ComputerPlayer->Active = 0;
					}
					if (player == GGame::g_game->MyPlayer() && GGame::g_game->MyPlayer()->creature.Get() != NULL)
					{
						GameStats::GetPackage();
						if (CreatureMindData != NULL)
						{
							delete CreatureMindData;
							CreatureMindData = NULL;
						}
						CreatureMindDataLength =
							GGame::g_game->MyPlayer()->creature->SaveMindToMemory(&CreatureMindData);
					}
				}
				GPlayer** slot = &ranking[numPlayers];
				for (int rank = numPlayers; rank != 0; rank--)
				{
					for (player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
					     player = GGame::g_game->GetNextActivePlayer(player))
					{
						if (player->HasLost)
						{
							continue;
						}
						if (player->Score > bestScore)
						{
							bestScore = player->Score;
							best = player;
						}
						else if (player->Score == bestScore && best != NULL &&
						         player->GetRelativeInfluencePower() > best->GetRelativeInfluencePower())
						{
							bestScore = player->Score;
							best = player;
						}
					}
					best->HasLost = 1;
					bestScore = -1.0f;
					*--slot = best;
					if (winner == NULL)
					{
						winner = best;
					}
					best = NULL;
				}
				winner->HasLost = 0;
				for (int i = 0; i < numPlayers - 1; i++)
				{
					if (ranking[i] != NULL)
					{
						GameStats::PlayerLostTheGame(*ranking[i], 0);
					}
				}
				unsigned long team = GGame::g_game->MyInterface()->player->ClanID;
				if (winner != GGame::g_game->MyPlayer() &&
				    GGame::g_game->MyPlayer()->GetPlayerNumber() < MAX_MULTIPLAYER_PLAYERS)
				{
					HideGameOverDialogs();
					FrontEnd::EndGameDialog->ShowResult(END_GAME_RESULT_LOST, GGame::g_game->PlayerIndex, team != 0,
					                                    MPFEConnectionStatus::Status.IsInternetLobby(),
					                                    GameStats::GetPackage());
				}
				else
				{
					HideGameOverDialogs();
					FrontEnd::EndGameDialog->ShowResult(END_GAME_RESULT_WON, GGame::g_game->PlayerIndex, team != 0,
					                                    MPFEConnectionStatus::Status.IsInternetLobby(),
					                                    GameStats::GetPackage());
				}
			}
		}
		else
		{
			checkLosers = true;
		}
		if (checkLosers)
#endif
		{
#ifdef VERSION_BW1W120
			if (GGame::g_game->data.GameTurn % 10 == 0)
			{
				float total = 0.0f;
				for (player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
				     player = GGame::g_game->GetNextActivePlayer(player))
				{
					total += player->InfluencePower;
				}
				for (player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
				     player = GGame::g_game->GetNextActivePlayer(player))
				{
					player->AddScoreHistory(player->InfluencePower / total);
				}
			}
#endif
			for (player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
			     player = GGame::g_game->GetNextActivePlayer(player))
			{
				if (player->player_number >= MAX_MULTIPLAYER_PLAYERS || player->citadel.Get() != NULL ||
				    player->HasLost)
				{
					continue;
				}
				player->HasLost = 1;
				if (player->creature.Get() == NULL)
				{
					continue;
				}
#ifdef VERSION_BW1W120
				if (player == GGame::g_game->MyPlayer())
				{
					GameStats::GetPackage();
					if (CreatureMindData != NULL)
					{
						delete CreatureMindData;
						CreatureMindData = NULL;
					}
					CreatureMindDataLength = player->creature->SaveMindToMemory(&CreatureMindData);
				}
#endif
				player->creature->ToBeDeleted(0);
			}
			for (player = GGame::g_game->GetNextActivePlayer(NULL); player != NULL;
			     player = GGame::g_game->GetNextActivePlayer(player))
			{
				unsigned long team = GGame::g_game->MyInterface()->player->ClanID;
				if (!player->HasLost || player->field_0x93c)
				{
					continue;
				}
				GameStats::PlayerLostTheGame(*player, 0);
				if (player == GGame::g_game->MyPlayer())
				{
					GGame::g_game->field_0x599d = true;
					if (GGame::g_game->GetNumberOfPlayersThatHaveLost() < GGame::g_game->GetNoPlayers() - 1)
					{
						FrontEnd::EndGameDialog->field_0x5e = true;
#ifdef VERSION_BW1W120
						HideGameOverDialogs();
#endif
						FrontEnd::EndGameDialog->ShowResult(END_GAME_RESULT_ELIMINATED, GGame::g_game->PlayerIndex,
						                                    team != 0, MPFEConnectionStatus::Status.IsInternetLobby(),
						                                    GameStats::GetPackage());
					}
					else
					{
						FrontEnd::EndGameDialog->field_0x5e = false;
						GGame::g_game->GameOver = true;
#ifdef VERSION_BW1W120
						PingLobbyServer();
						HideGameOverDialogs();
#endif
						FrontEnd::EndGameDialog->ShowResult(END_GAME_RESULT_LOST, GGame::g_game->PlayerIndex, team != 0,
						                                    MPFEConnectionStatus::Status.IsInternetLobby(),
						                                    GameStats::GetPackage());
					}
				}
				else if (GGame::g_game->GetNumberOfPlayersThatHaveLost() < GGame::g_game->GetNoPlayers() - 1)
				{
					if (!FrontEnd::EndGameDialog->Showing)
					{
						DoOKGameRequestor(
							LHSPrintfW(HelpTextDataBase::HelpTextDatabase.GetHelpText(0x108e), player->name));
					}
				}
				else
				{
					GGame::g_game->GameOver = true;
#ifdef VERSION_BW1W120
					PingLobbyServer();
#endif
					GGame::g_game->field_0x599d = true;
#ifdef VERSION_BW1W120
					HideGameOverDialogs();
#endif
					FrontEnd::EndGameDialog->ShowResult(END_GAME_RESULT_WON, GGame::g_game->PlayerIndex, team != 0,
					                                    MPFEConnectionStatus::Status.IsInternetLobby(),
					                                    GameStats::GetPackage());
				}
				player->field_0x93c = 1;
				if (player->ComputerPlayer != NULL)
				{
					player->ComputerPlayer->Active = 0;
				}
			}
		}
	}
	GGame::g_game->MyPlayer()->UpdateAlignmentVisuals();
}

void GPlayer::Birthday()
{
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		town->Birthday();
	}
}

void GPlayer::Dump()
{
	for (GInterfaceStatus* status = GetNextInterfaceStatus(NULL); status != NULL;
	     status = GetNextInterfaceStatus(status))
	{
		status->GetInterface()->Dump();
	}
}

Town* GPlayer::GetNearestTown(const MapCoords& coords)
{
	return GetNearestTown(coords.MapX(), coords.MapZ());
}

Town* GPlayer::GetNearestTown(unsigned short cell_x, unsigned short cell_z)
{
	Town*         nearest = NULL;
	unsigned long bestDistance = (unsigned long)-1;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		unsigned long distance = GUtils::VeryFastDistance(cell_x, cell_z, town->Pos.MapX(), town->Pos.MapZ());
		if (distance < bestDistance)
		{
			nearest = town;
			bestDistance = distance;
		}
	}
	return nearest;
}

unsigned long GPlayer::GetPlayerNumber() const
{
	return player_number;
}

bool32_t GPlayer::ZoomToCitadel(bool to_island_centre)
{
	for (int attempt = 0; attempt < 2; attempt++)
	{
		CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(GGame::g_game->GetCamera()->GetCurrentMode());
		if (mode != NULL)
		{
			LHPoint point;
			if (to_island_centre)
			{
				GLandscape::GetIslandCentre(point);
				mode->ZoomToCitadel(point.x, point.z, ISLAND_CENTRE_ZOOM_DISTANCE, EIGHTH_PI_F, FALSE);
			}
			else if (citadel.Get() == NULL)
			{
				GLandscape::GetIslandCentre(point);
				mode->ZoomToCitadel(point.x, point.z, ISLAND_CENTRE_ZOOM_DISTANCE, EIGHTH_PI_F, TRUE);
			}
			else
			{
				GLandscape::ConvertMapCoordToLandscapePoint(citadel->Pos, point);
				mode->ZoomToCitadel(point.x, point.z, CameraModeNew3::CitadelDistance, CameraModeNew3::CitadelPitch,
				                    TRUE);
			}
			return TRUE;
		}
		if (attempt == 0)
		{
			new (PLAYER_SOURCE_FILE, PLAYER_LINE(936)) CameraModeNew3(GGame::g_game->GetCamera());
		}
	}
	return TRUE;
}

void GPlayer::Cheat(unsigned long level)
{
	switch (level)
	{
	case 0:
	case 1:
		if (CheatOn)
		{
			CheatOn = 0;
			InfiniteInfluence = 0;
			AllMagicEnabled = FALSE;
			CheatField930 = 0;
		}
		else
		{
			CheatOn = 1;
			AllMagicEnabled = TRUE;
			CheatField930 = 1;
			GetTempFirstInterfaceStatus()->GetInterface()->Cheat();
			if (citadel.Get() != NULL)
			{
				citadel->Cheat(level != 0);
			}
		}
		break;
	case 2:
		CheatOn = 1;
		InfiniteInfluence = 1;
		AllMagicEnabled = TRUE;
		CheatField930 = 1;
		GetTempFirstInterfaceStatus()->GetInterface()->Cheat();
		if (citadel.Get() != NULL)
		{
			citadel->Cheat(level != 0);
		}
		break;
	}
}

GInterfaceStatus* GPlayer::GetTempFirstInterfaceStatus()
{
	for (unsigned long i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		if (interfaces[i] != NULL)
		{
			return interfaces[i]->status;
		}
	}
	return NULL;
}

GInterfaceStatus* GPlayer::GetLeaderInterfaceStatus()
{
	for (unsigned long i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		if (interfaces[i] != NULL && interfaces[i]->IsLeaderInterface())
		{
			return interfaces[i]->status;
		}
	}
	return NULL;
}

unsigned long GPlayer::GetHumanNumberInPlayer()
{
	unsigned long count = 0;
	for (unsigned long i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		if (interfaces[i] != NULL && interfaces[i]->player != NULL)
		{
			count++;
		}
	}
	return count;
}

unsigned long GPlayer::GetNumberOfInterfaces()
{
	unsigned long count = 0;
	for (unsigned long i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		if (interfaces[i] != NULL)
		{
			count++;
		}
	}
	return count;
}

GInterfaceStatus* GPlayer::GetFirstHumanInterfaceStatus()
{
	for (unsigned long i = 0; i < MAX_PLAYER_INTERFACES; i++)
	{
		if (interfaces[i] != NULL && interfaces[i]->player != NULL)
		{
			return interfaces[i]->status;
		}
	}
	return NULL;
}

GInterfaceStatus* GPlayer::GetNextInterfaceStatus(GInterfaceStatus* status)
{
	int i = 0;
	if (status != NULL)
	{
		GInterface* iface = status->GetInterface();
		for (i = 0; i < MAX_PLAYER_INTERFACES; i++)
		{
			if (interfaces[i] == iface)
			{
				i++;
				break;
			}
		}
	}
	for (int j = i; j < MAX_PLAYER_INTERFACES; j++)
	{
		if (interfaces[j] != NULL)
		{
			return interfaces[j]->status;
		}
	}
	return NULL;
}

CHand* GPlayer::GetRenderHand()
{
	GInterface* iface = GGame::g_game->MyInterface();
	return iface->hand.Get();
}

int GPlayer::GetNumberOfTownsOfTribe(TRIBE_TYPE tribe)
{
	float count = 0.0f;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		if (town->GetTribe()->type == tribe)
		{
			count += 1.0f;
		}
	}
	return (int)count;
}

void GPlayer::PostLoadCleanup()
{
	for (GPlayer* player = GGame::g_game->GetNextActivePlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextActivePlayerAndNeutral(player))
	{
		Citadel* citadel = player->citadel.Get();
		if (citadel != NULL)
		{
			for (Town* town = player->towns.head; town != NULL; town = town->next)
			{
				if (town->GetWorshipSite() == NULL)
				{
					citadel->AddTown(town);
				}
			}
			player->CalculateInfluencePower();
		}
	}
}

bool32_t GPlayer::IsNeutral()
{
	return this == GGame::g_game->GetNeutralPlayer();
}

void GPlayer::UpdateAlignmentVisuals()
{
	MapCoords pos;
	LHPoint   camera = GGame::g_game->MyInterface()->status->GetCameraPos();
	GLandscape::ConvertLandscapePointToMapCoord(camera, pos);
	GLandAlignement::SetAlignement((pos.CalculateMostInfluentialPlayer()->GetAlignmentValue() + 1.0f) * 0.5f);
}

float GPlayer::GetRelativeInfluencePower()
{
#ifdef VERSION_BW1W100
	if (GGame::g_game->LandNumber == 1)
	{
		return 0.01f;
	}
	float influence = InfluencePower;
	return influence / GetAllPlayersTotalInfluencePower();
#else
	if (GGame::g_game->LandNumber != 1)
	{
		float total = GetAllPlayersTotalInfluencePower();
		if (total != 0.0f)
		{
			return InfluencePower / total;
		}
	}
	return 0.01f;
#endif
}

float GPlayer::CalculateInfluencePower()
{
	InfluencePower = 0.0f;
	if (citadel.Get() != NULL && citadel->heart.Get() != NULL)
	{
		InfluencePower = citadel->GetInfluence();
	}
	for (Town* town = NULL; (town = towns.GetNext(town)) != NULL;)
	{
		InfluencePower += town->CalculateInfluencePower();
	}
	for (InfluenceRing* ring = GGame::g_game->GameLists.InfluenceRingList.GetNext(NULL); ring != NULL;)
	{
		InfluenceRing* next = GGame::g_game->GameLists.InfluenceRingList.GetNext(ring);
		if (ring->GetPlayer() == this)
		{
			InfluencePower += ring->Influence;
		}
		ring = next;
	}
	AverageInfluencePower = (AverageInfluencePower + InfluencePower) * 0.5f;
	GetStats()->InfluenceGraph.Add(InfluencePower);
	return InfluencePower;
}

float GPlayer::GetAllPlayersTotalInfluencePower()
{
	float total = 0.0f;
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		total += player->GetInfluencePower();
	}
	return total;
}

void GPlayer::ProcessSpellIcons()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		if (player->citadel.Get() != NULL)
		{
			player->citadel->ProcessSpellIcons();
		}
	}
}

void GPlayer::DrawSpellIcons()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		if (player->citadel.Get() != NULL)
		{
			player->citadel->DrawSpellIcons();
		}
	}
}

void ProcessTaunt(unsigned char* data, LHPlayer* player)
{
	ProcessSpeech(data, player, true);
}

void PlayTauntSample(int taunt)
{
	GInterface* iface = GGame::g_game->MyInterface();
	if (iface != NULL)
	{
		iface->status->guidance->HelpSpiritSay(taunt + 0x859, (GGuidance::GUIDANCE_SFX_TYPE)0);
	}
}

void ProcessSpeech(unsigned char* data, LHPlayer* player, bool taunt)
{
	unsigned long  numRecipients = data[1];
	char16_t*      text = (char16_t*)&data[numRecipients + 6];
	unsigned char* recipients;

	if (taunt)
	{
		unsigned long tauntIndex = *(unsigned long*)text;
		if (tauntIndex >= 0x33)
		{
			return;
		}
		text = HelpTextDataBase::HelpTextDatabase.GetHelpText(tauntIndex + 0x859);
		PlayTauntSample(tauntIndex);
	}
	recipients = numRecipients != 0 ? &data[2] : NULL;
	bool forMe = false;
	if (player->GetUserID() != LHNetBase::Instance.Session->GetUserID())
	{
		if (recipients == NULL)
		{
			forMe = true;
		}
		else
		{
			for (unsigned long i = 0; i < numRecipients; i++)
			{
				if (LHNetBase::Instance.Session->LocalPlayer->PlayerId == recipients[i])
				{
					forMe = true;
				}
			}
		}
	}
	if (forMe)
	{
		AddIncomingText(INCOMINGTEXTTYPE_CHAT, LHSPrintfW(L"%s: %s", player->Name, text));
	}
	GPlayer* speaker = GGame::g_game->GetPlayer(data[0]);
	if (speaker->creature.Get() != NULL)
	{
		speaker->creature->AddSpeechItem(text, player, 4);
		speaker->creature->bubble->DisplayTime += 3.0f;
	}
	for (GPlayer* other = GGame::g_game->GetNextPlayer(NULL); other != NULL;
	     other = GGame::g_game->GetNextPlayer(other))
	{
		if (other->creature.Get() == NULL || other == speaker)
		{
			continue;
		}
		if (recipients != NULL)
		{
			for (unsigned long i = 0; i < numRecipients; i++)
			{
				GPlayer* recipient = GGame::g_game->GetPlayer(recipients[i]);
				if (recipient != NULL && recipient->creature.Get() != NULL && recipient == other)
				{
					other->creature->AddSpeechItem(text, player, 0);
					other->creature->bubble->DisplayTime += 3.0f;
				}
			}
		}
		else
		{
			other->creature->AddSpeechItem(text, player, 0);
			other->creature->bubble->DisplayTime += 3.0f;
		}
	}
}

void ProcessExternalSpeech(char16_t* text, LH_USER_ID id, char16_t* name, unsigned long flags)
{
	AddIncomingText(INCOMINGTEXTTYPE_CHAT, LHSPrintfW(L"%s: %s", name, text));
	if (GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->GetCreature() != NULL &&
	    GGame::g_game->MyPlayer()->creature.Get() != NULL)
	{
		LHPlayer speaker;
		speaker.SetDetails(name, id, -1);
		GGame::g_game->MyPlayer()->creature->AddSpeechItem(text, &speaker, flags);
		GGame::g_game->MyPlayer()->creature->bubble->DisplayTime += 3.0f;
	}
}

void GPlayer::AddEditorIcon(char* text)
{
	if (EditorIcon != NULL)
	{
		EditorIcon->AddShow(text);
	}
}

void GPlayer::SetCreature(Creature* creature)
{
	this->creature = creature;
	ReflectCreatureInTowns();
}

void GPlayer::ReflectCreatureInTowns()
{
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		if (town->town_centre != NULL)
		{
			town->town_centre->SetPlayersCreature();
		}
	}
}

void GPlayer::CreateEditorIcon(EditorIconPDM* parent)
{
	EditorIcon = parent->AddPDM(WCHAR2CHAR(name), 0, 0);
}

void GPlayer::DeleteAllTowns()
{
	for (Town* town = towns.head; town != NULL;)
	{
		Town* next = town->next;
		town->ToBeDeleted(0);
		town = next;
	}
}

LH3DColor GPlayer::GetPlayer3DColor()
{
	LH3DColor colour = GetPlayerColour();
	colour.a = 0xff;
	return colour;
}

void GPlayer::MakeCreatureEmpathiseWithPlayer(CREATURE_DESIRES desire, const MapCoords& pos)
{
	Creature* creature = this->creature.Get();
	if (creature != NULL && creature->CanSeePos(pos))
	{
		creature->mind->EmpathiseWithPlayer(desire);
	}
}

GPlayer* GPlayer::GetPlayerFromText(char* text)
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		if (_stricmp(text, PlayerNameText[player->GetPlayerNumber()]) == 0)
		{
			return player;
		}
	}
	return GGame::g_game->GetNeutralPlayer();
}

unsigned long GPlayer::GetPlayerTotemForTown()
{
	if (creature.Get() != NULL)
	{
		return creature->GetInfo()->field_0x344;
	}
	return 0xfa;
}

float GPlayer::GetMaxAlignmentChangePerGameTurn()
{
	return info->MaxAlignmentChangePerGameTurn;
}

float GPlayer::GetProportionOfWorldPopulationWhoBelieveInMe()
{
	unsigned long females = 0;
	unsigned long males = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		females += town->stats.NumFemales;
		males += town->stats.NumMales;
	}
	unsigned long worldPopulation = GGame::g_game->data.WorldPopulation;
	if (worldPopulation != 0 && males + females != 0)
	{
		float believers = (float)(males + females);
		float population = (float)worldPopulation;
		return believers / population;
	}
	return 0.0f;
}

float GPlayer::GetProportionOfAllPlayersInfluence()
{
	float total = 0.0f;
	for (GPlayer* player = GGame::g_game->GetNextActivePlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextActivePlayerAndNeutral(player))
	{
		total += player->GetInfluencePower();
	}
	float influence = GetInfluencePower();
	if (influence != 0.0f)
	{
		return total / influence;
	}
	return 0.0f;
}

unsigned long GPlayer::GetTotalDeathsInWholeWorld()
{
	if (game_stats != NULL)
	{
		return game_stats->TotalDeaths;
	}
	return 0;
}

unsigned long GPlayer::GetTotalBirthsInWholeWorld()
{
	if (game_stats != NULL)
	{
		return game_stats->TotalBirths;
	}
	return 0;
}

unsigned long GPlayer::GetTotalAbodesBuiltInWholeWorld()
{
	if (game_stats != NULL)
	{
		return game_stats->TotalBuildingsBuilt;
	}
	return 0;
}

float GPlayer::GetPercentageOfMalesInTheWorld()
{
	unsigned long males = 0;
	unsigned long villagers = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		for (Abode* abode = town->AbodeList.head; abode != NULL; abode = abode->next)
		{
			for (Villager* villager = abode->villagers.head; villager != NULL; villager = villager->next)
			{
				if (villager->GetInfo()->sex != SEX_FEMALE)
				{
					males++;
				}
				villagers++;
			}
		}
		for (Villager* villager = town->HomelessList.head; villager != NULL; villager = villager->next)
		{
			if (villager->GetInfo()->sex != SEX_FEMALE)
			{
				males++;
			}
			villagers++;
		}
	}
	// 1.00 does not check for an empty world.
#ifdef VERSION_BW1W100
	return (float)males / (float)villagers;
#else
	if (villagers != 0)
	{
		return (float)males / (float)villagers;
	}
	return 0.0f;
#endif
}

unsigned long GPlayer::GetTotalWondersBuiltInWholeWorld()
{
	if (game_stats != NULL)
	{
		return game_stats->TotalWondersBuilt;
	}
	return 0;
}

unsigned long GPlayer::GetTotalNumberOfDisciples()
{
	unsigned long count = 0;
	for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		Town* town = node->payload;
		if (town->GetPlayer() == this)
		{
			for (unsigned long i = 0; i < VILLAGER_DISCIPLE_LAST; i++)
			{
				if (i != VILLAGER_DISCIPLE_MISSIONARY)
				{
					count += town->stats.NumDisciples[i];
				}
			}
		}
		else
		{
			for (MissionaryControl* missionary = town->MissionaryList.head; missionary != NULL;
			     missionary = missionary->next)
			{
				if (missionary->GetPlayer() == this)
				{
					count++;
				}
			}
		}
	}
	return count;
}

unsigned long GPlayer::GetNumberOfDisciplesBuilder()
{
	unsigned long count = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		count += town->stats.NumDisciples[VILLAGER_DISCIPLE_BUILDER];
	}
	return count;
}

unsigned long GPlayer::GetNumberOfDisciplesBreeder()
{
	unsigned long count = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		count += town->stats.NumDisciples[VILLAGER_DISCIPLE_BREEDER];
	}
	return count;
}

unsigned long GPlayer::GetNumberOfDisciplesFisherman()
{
	unsigned long count = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		count += town->stats.NumDisciples[VILLAGER_DISCIPLE_FISHERMAN];
	}
	return count;
}

unsigned long GPlayer::GetNumberOfDisciplesFarmer()
{
	unsigned long count = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		count += town->stats.NumDisciples[VILLAGER_DISCIPLE_FARMER];
	}
	return count;
}

unsigned long GPlayer::GetNumberOfDisciplesForester()
{
	unsigned long count = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		count += town->stats.NumDisciples[VILLAGER_DISCIPLE_FORESTER];
	}
	return count;
}

unsigned long GPlayer::GetNumberOfDisciplesProtection()
{
	unsigned long count = 0;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		count += town->stats.NumDisciples[VILLAGER_DISCIPLE_PROTECTION];
	}
	return count;
}

unsigned long GPlayer::GetTotalNumberOfMisionaries()
{
	unsigned long count = 0;
	for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		for (MissionaryControl* missionary = node->payload->MissionaryList.head; missionary != NULL;
		     missionary = missionary->next)
		{
			if (missionary->GetPlayer() == this)
			{
				count++;
			}
		}
	}
	return count;
}

unsigned long GPlayer::GetNumberOfDisciples(VILLAGER_DISCIPLE disciple)
{
	unsigned long count = 0;
	if (disciple != VILLAGER_DISCIPLE_MISSIONARY)
	{
		for (Town* town = towns.head; town != NULL; town = town->next)
		{
			count += town->stats.NumDisciples[disciple];
		}
		return count;
	}
	return GetTotalNumberOfMisionaries();
}

bool GPlayer::GetHasSpellCharging(GInterfaceStatus* status)
{
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (unsigned long i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->IsCharging(status))
					{
						return true;
					}
				}
			}
		}
	}
	return false;
}

float GPlayer::GetSpellChargingFraction(GInterfaceStatus* status)
{
	float    fraction = 0.0f;
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->GetSpellChargingFraction(status) >= fraction)
					{
						fraction = icon->GetSpellChargingFraction(status);
					}
				}
			}
		}
	}
	return fraction;
}

bool32_t GPlayer::IsAtLeastOneSpellBeginToBeCharged()
{
	if (citadel.Get() != NULL)
	{
		for (unsigned long i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = citadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->Charge > 0.0f)
					{
						return TRUE;
					}
				}
			}
		}
	}
	return FALSE;
}

bool32_t GPlayer::IsSpellBeginToBeCharged(MAGIC_TYPE type)
{
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (unsigned long i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->GetMagicType() == type && icon->Charge > 0.0f)
					{
						return TRUE;
					}
				}
			}
		}
	}
	return FALSE;
}

bool32_t GPlayer::CancelAllSpellsCharging(GInterfaceStatus* status)
{
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->IsCharging(status))
					{
						icon->CancelCharge(status);
					}
				}
			}
		}
		return TRUE;
	}
	return FALSE;
}

bool32_t GPlayer::CancelSpellCharging(GInterfaceStatus* status)
{
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		WorshipSpellIcon* latest = NULL;
		unsigned long     latestTurn = 0;
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->IsCharging(status))
					{
						unsigned long turn = icon->GetTurnChargingStarted();
						if (turn > latestTurn)
						{
							latestTurn = turn;
							latest = icon;
						}
					}
				}
			}
		}
		if (latest != NULL)
		{
			latest->CancelCharge(status);
			return TRUE;
		}
	}
	return FALSE;
}

bool32_t GPlayer::RequestSpellPrevious(GInterfaceStatus* status)
{
	if (ValidForRequestSpell(status, status->GetLastSpellGained()) == TRUE)
	{
		return RequestSpell(status, status->GetLastSpellGained());
	}
	return FALSE;
}

bool32_t GPlayer::ValidForRequestSpellPrevious(GInterfaceStatus* status)
{
	return ValidForRequestSpell(status, status->GetLastSpellGained());
}

bool32_t GPlayer::RequestSpell(GInterfaceStatus* status, SPELL_SEED_TYPE type)
{
	if (type != SPELL_SEED_TYPE_NONE)
	{
		WorshipSpellIcon* icon = FindBestSpellIconForSpellSeed(status, type);
		if (icon != NULL)
		{
			return icon->RequestSpell(status, POWER_UP_TYPE_NONE, true);
		}
	}
	return FALSE;
}

bool32_t GPlayer::ValidForRequestSpell(GInterfaceStatus* status)
{
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (unsigned long i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->ValidForRequestSpell(status, POWER_UP_TYPE_NONE, true) == TRUE)
					{
						return TRUE;
					}
				}
			}
		}
	}
	return FALSE;
}

bool32_t GPlayer::ValidForRequestSpell(GInterfaceStatus* status, GESTURE_TYPE gesture)
{
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (unsigned long i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				for (WorshipSpellIcon* icon = site->IconList.head; icon != NULL; icon = icon->next)
				{
					if (icon->seed_info.Get() != NULL && icon->seed_info->Gesture == gesture &&
					    icon->ValidForRequestSpell(status, POWER_UP_TYPE_NONE, true) == TRUE)
					{
						return TRUE;
					}
				}
			}
		}
	}
	return FALSE;
}

bool32_t GPlayer::ValidForRequestSpell(GInterfaceStatus* status, SPELL_SEED_TYPE type)
{
	if (type != SPELL_SEED_TYPE_NONE)
	{
		Citadel* playerCitadel = citadel.Get();
		if (playerCitadel != NULL)
		{
			for (unsigned long i = 0; i < MAX_WORSHIP_SITES; i++)
			{
				WorshipSite* site = playerCitadel->WorshipSites[i];
				if (site != NULL)
				{
					WorshipSpellIcon* icon = site->GetSpellIconFromSeedType(type);
					if (icon != NULL && icon->IsFunctional() &&
					    icon->ValidForRequestSpell(status, POWER_UP_TYPE_NONE, true) == TRUE)
					{
						return TRUE;
					}
				}
			}
		}
	}
	return FALSE;
}

WorshipSpellIcon* GPlayer::FindBestSpellIconForSpellSeed(GInterfaceStatus* status, SPELL_SEED_TYPE type)
{
	if (type == SPELL_SEED_TYPE_NONE)
	{
		return NULL;
	}
	WorshipSpellIcon* best = NULL;
	float             bestChants = -1.0f;
	Citadel*          playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			WorshipSite* site = playerCitadel->WorshipSites[i];
			if (site != NULL)
			{
				float             chants = site->GetChantsAvailableForCharging(false);
				WorshipSpellIcon* icon = site->GetSpellIconFromSeedType(type);
				if (icon != NULL && icon->ValidForRequestSpell(status, POWER_UP_TYPE_NONE, true) && chants > bestChants)
				{
					bestChants = chants;
					best = icon;
				}
			}
		}
	}
	return best;
}

inline MapCoords::MapCoords(float x, float z, float altitude)
{
	SetWholeX((long)(x * (float)0x10000 / MetresPerMapCell));
	SetWholeZ((long)(z * (float)0x10000 / MetresPerMapCell));
	this->altitude = altitude;
}

MapCoords GPlayer::GetCreatureHomePos()
{
	if (citadel.Get() != NULL)
	{
		return citadel->GetCreatureHomePos();
	}
	if (towns.head != NULL)
	{
		return towns.head->Pos;
	}
	return MapCoords(255.0f, 255.0f, 0.0f);
}

void GPlayer::AddTown(Town* town)
{
	Town* last = towns.head;
	if (last != NULL)
	{
		while (last->next != NULL)
		{
			last = last->next;
		}
		last->next = town;
	}
	else
	{
		towns.head = town;
	}
	town->next = NULL;
	towns.count++;
}

void GPlayer::RemoveTown(Town* town)
{
	Town* walker = towns.head;
	if (walker == town)
	{
		towns.head = town->next;
		towns.count--;
		town->next = NULL;
		return;
	}
	for (; walker != NULL; walker = walker->next)
	{
		if (walker->next == town)
		{
			walker->next = town->next;
			towns.count--;
			town->next = NULL;
			return;
		}
	}
}

void GPlayer::DrawPlayers()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		player->Draw();
	}
}

void GPlayer::Draw()
{
	for (Town* town = NULL; (town = towns.GetNext(town)) != NULL;)
	{
		town->Draw();
	}
}

void GPlayer::DrawComputerPlayers()
{
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		player->DrawComuterPlayer();
	}
}

void GPlayer::DrawComuterPlayer()
{
	if (ComputerPlayer != NULL && GetPlayerNumber() == PLAYER_NAME_PLAYER_TWO)
	{
		ComputerPlayer->Draw();
	}
}

void GPlayer::ClearMagicTypesEnabled()
{
	for (int i = 0; i < MAGIC_TYPE_LAST; i++)
	{
		MagicTypeEnabled[i] = FALSE;
	}
}

bool32_t GPlayer::IsMagicTypeEnabled(MAGIC_TYPE type)
{
	return AllMagicEnabled || MagicTypeEnabled[type];
}

void GPlayer::SetMagicTypeEverBeenEnabled(MAGIC_TYPE type)
{
	MagicTypeEverBeenEnabled[type] = true;
}

bool32_t GPlayer::HasMagicTypeEverBeenEnabled(MAGIC_TYPE type)
{
	return MagicTypeEverBeenEnabled[type];
}

MAGIC_TYPE GPlayer::GetNextMagicTypeToEnable()
{
	const GRewardProgress* progress;
	float                  alignmentValue = GetAlignmentValue();
	if (alignmentValue == 0.0f)
	{
		progress = GRand::GameRand(2, PLAYER_SOURCE_FILE, PLAYER_LINE(2303)) ? GRewardProgress::GetInfoGood()
		                                                                     : GRewardProgress::GetInfoEvil();
	}
	else if (alignmentValue > 0.0f)
	{
		progress = GRewardProgress::GetInfoGood();
	}
	else
	{
		progress = GRewardProgress::GetInfoEvil();
	}
	for (unsigned long i = 0; i < 30; progress++, i++)
	{
		MAGIC_TYPE type = progress->MagicType;
		if (progress->AvailableOnLand[GGame::g_game->LandNumber] != 0 && !IsMagicTypeEnabled(type))
		{
			return type;
		}
	}
	return MAGIC_TYPE_NONE;
}

void GPlayer::SetMagicTypeEnabled(MAGIC_TYPE type, int enable)
{
	if (enable)
	{
		MagicTypeEnabled[type]++;
		MagicTypeEverBeenEnabled[type] = true;
	}
	else if (MagicTypeEnabled[type] > 0)
	{
		MagicTypeEnabled[type]--;
	}
	Citadel* playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			if (playerCitadel->WorshipSites[i] != NULL)
			{
				playerCitadel->WorshipSites[i]->UpdateGraphicsWithPULevels();
			}
		}
	}
}

void GPlayer::SetSpellSeedTypeEnabled(SPELL_SEED_TYPE type, int enable)
{
	if (type != SPELL_SEED_TYPE_NONE)
	{
		MAGIC_TYPE magicType = GSpellSeedInfo::Infos[type].GetMagicType(GESTURE_TYPE_NONE);
		if (magicType != MAGIC_TYPE_NONE)
		{
			SetMagicTypeEnabled(magicType, enable);
		}
	}
}

void GPlayer::SetType(PLAYER_TYPE type)
{
	this->type = type;
}

void GPlayer::SetVirtualInfluence(int enable)
{
	for (GInterfaceStatus* status = GetNextInterfaceStatus(NULL); status != NULL;
	     status = GetNextInterfaceStatus(status))
	{
		if (status->influence != NULL)
		{
			status->influence->Disabled = !enable;
			if (status->influence->Disabled)
			{
				status->influence->field_0x30 = 0;
			}
		}
	}
}

void GPlayer::ToggleComputerPlayer(int enable)
{
	if (ComputerPlayer != NULL)
	{
		ComputerPlayer->Active = enable;
		if (enable)
		{
			type = PLAYER_TYPE_COMPUTER;
		}
	}
}

float GPlayer::MaintainSpell(uint32_t spell, float amount)
{
	if (this == GGame::g_game->GetNeutralPlayer())
	{
		return amount;
	}
	return 0.0f;
}

void GPlayer::UpdateSpellInfo(Spell* spell, PSysProcessInfo* info)
{
	if (this != GGame::g_game->GetNeutralPlayer() && spell != NULL)
	{
		GInterfaceStatus* status = spell->GetInterfaceStatus();
		if (status != NULL)
		{
			status->UpdateSpellInfo(spell, info);
		}
	}
}

uint32_t GPlayer::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		WRITE_SAFE(file, player_number);
		WRITE_IT(file, *alignment);
		file.WriteInfo(info);
		file.WriteArray(TribalPower, TRIBE_TYPE_LAST);
		file.WriteArray(MaxTribalPower, TRIBE_TYPE_LAST);
		WRITE_IT(file, type);
		file.WriteArray(name, 0x20);
		WRITE_IT(file, UserId);
		WRITE_IT(file, CheatOn);
		WRITE_IT(file, WindResistance);
		WRITE_IT(file, AllMagicEnabled);
		WRITE_IT(file, CheatField930);
		file.WriteIt(InfiniteInfluence);
		file.WritePtr(ComputerPlayer);
		file.WriteIt(TotalPopulation);
		file.WriteIt(StartPos);
		file.WriteArray(MagicTypeEnabled, MAGIC_TYPE_LAST);
		file.WriteArray(MagicTypeEverBeenEnabled, MAGIC_TYPE_LAST);
		file.WritePtr(game_stats);
		file.WritePtr(citadel.Get());
		file.WritePtr(creature.Get());
		file.WriteSafe(towns);
		file.WriteSafe(teleports);
		file.WriteIt(InfluencePower);
		file.WriteIt(AverageInfluencePower);
		file.WriteArray(DamageFromPlayer, _PLAYER_NAME_COUNT);
		file.WriteArray(Allies, _PLAYER_NAME_COUNT);
		file.WritePtrArray((GameThing**)interfaces, 18);
		file.WriteIt(HasLost);
		file.WriteIt(field_0x93c);
		return 1;
	}
	return 0;
}

uint32_t GPlayer::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadIt(player_number);
		file.ReadIt(*alignment);
		file.ReadInfo((const GBaseInfo**)&info);
		file.ReadArray(TribalPower);
		file.ReadArray(MaxTribalPower);
		file.ReadIt(type);
		file.ReadArray(name);
		file.ReadIt(UserId);
		file.ReadIt(CheatOn);
		file.ReadIt(WindResistance);
		file.ReadIt(AllMagicEnabled);
		file.ReadIt(CheatField930);
		file.ReadIt(InfiniteInfluence);
		file.ReadPtr((GameThing**)&ComputerPlayer);
		file.ReadIt(TotalPopulation);
		file.ReadIt(StartPos);
		file.ReadArray(MagicTypeEnabled);
		file.ReadArray(MagicTypeEverBeenEnabled);
		file.ReadPtr((GameThing**)&game_stats);
		file.ReadPtr((GameThing**)&citadel);
		file.ReadPtr((GameThing**)&creature);
		file.ReadSafe(towns);
		file.ReadSafe(teleports);
		file.ReadIt(InfluencePower);
		file.ReadIt(AverageInfluencePower);
		file.ReadArray(DamageFromPlayer);
		file.ReadArray(Allies);
		file.ReadPtrArray((GameThing**)interfaces);
		file.ReadIt(HasLost);
		file.ReadIt(field_0x93c);
		return 1;
	}
	return 0;
}

void GPlayer::SaveExtraData(GameOSFile& file)
{
	unsigned long playerNumber = GetPlayer()->GetPlayerNumber();
	file.WriteIt(playerNumber);
}

void GPlayer::ResolveLoad() {}

void GPlayer::OnEndOfClearMap()
{
	if (ComputerPlayer != NULL)
	{
		ComputerPlayer->OnEndOfClearMap();
	}
	ClearMagicTypesEnabled();
	for (int i = 0; i < TRIBE_TYPE_LAST; i++)
	{
		MaxTribalPower[i] = 1.0f;
		TribalPower[i] = 1.0f;
	}
}

MapCoords GPlayer::GetFixedPos()
{
	if (citadel.Get() != NULL && citadel->heart.Get() != NULL)
	{
		return citadel->heart.Get()->Pos;
	}
	if (ComputerPlayer != NULL && ComputerPlayer->Active)
	{
		return ComputerPlayer->GetHandPos();
	}
	return GetLeaderInterfaceStatus()->GetHandMapCoords();
}

float GPlayer::CalculateDesireToAttack(GPlayer* other)
{
	float gap =
		max(GetFixedPos().GetDistance(other->GetFixedPos()) - (other->GetInfluencePower() + GetInfluencePower()), 0.0f);
	float  distanceDesire = GUtils::GetDistanceModifier(gap, 5120.0f);
	double otherPower = other->InfluencePower + 0.0001;
	double myPower = InfluencePower + 0.0001;
	float  growthDesire =
		max(otherPower / (other->AverageInfluencePower + 0.0001) - myPower / (AverageInfluencePower + 0.0001), 0.0);
	double ratio = otherPower / myPower;
	float  strengthDesire = distanceDesire * max(ratio - 1.0, 0.0);
	float  weaknessDesire = max(0.0, POWER(1.0 - ratio, 3));
	float  revengeDesire = max(0.0, 1.0 - (other->DamageFromPlayer[player_number] + 0.001) /
	                                          (DamageFromPlayer[other->player_number] + 0.001));
	float  alignmentDesire = abs((int)(GetAlignmentValue() - other->GetAlignmentValue())) / 4;

	MapCoords handPos = ComputerPlayer != NULL && ComputerPlayer->Active ? ComputerPlayer->GetHandPos()
	                                                                     : GetLeaderInterfaceStatus()->Pos;
	float     nearest = 100.0f;
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		for (Abode* abode = town->AbodeList.head; abode != NULL; abode = abode->next)
		{
			float distance = handPos.GetDistance(abode->Pos);
			if (distance < nearest)
			{
				nearest = distance;
			}
		}
	}
	float proximityDesire = 1.0f - nearest / 100.0f;
	if (other->creature.Get() != NULL)
	{
		Influence::CalculateMostInfluentialPlayer(other->creature->GetInteractPos(), NULL);
	}
	return (proximityDesire + alignmentDesire + revengeDesire + weaknessDesire + strengthDesire + growthDesire) *
	       distanceDesire;
}

unsigned long GPlayer::GetTotalWorshipers()
{
	unsigned long total = 0;
	Citadel*      playerCitadel = citadel.Get();
	if (playerCitadel != NULL)
	{
		for (int i = 0; i < MAX_WORSHIP_SITES; i++)
		{
			if (playerCitadel->WorshipSites[i] != NULL)
			{
				total += playerCitadel->WorshipSites[i]->GetNumberVillagersWorshipping();
			}
		}
	}
	return total;
}

unsigned long GPlayer::GetTotalPopulation()
{
	return TotalPopulation;
}

void GPlayer::UnsetupPlayers() {}

void GPlayer::fn_0064D100(int param_1) {}

void GPlayer::fn_0064D110(int param_1) {}

GInterface* GPlayer::GetRealInterface(unsigned long interface_index)
{
	return interfaces[interface_index];
}

unsigned long GPlayer::GetTotalNumberOfAbodes()
{
	unsigned long count = 0;
	for (Town* town = GetNextTown(NULL); town != NULL; town = GetNextTown(town))
	{
		count += town->AbodeList.count;
	}
	return count;
}

#ifndef VERSION_BW1W100
Town* GPlayer::GetRandomTown()
{
	LHLinkedList<Town*> candidates;
	for (Town* town = GetNextTown(NULL); town != NULL; town = GetNextTown(town))
	{
		if (town->AbodeList.count != 0 || town->HomelessList.head != NULL)
		{
			candidates.Add(town);
		}
	}
	if (candidates.count == 0)
	{
		return NULL;
	}
	LHLinkedNode<Town*>* node =
		candidates.GetNodeAtPosition(GRand::GameRand(candidates.count, PLAYER_SOURCE_FILE, PLAYER_LINE(2780)));
	Town* chosen = node == NULL ? NULL : node->payload;
	while (candidates.GetStart() != NULL)
	{
		candidates.Remove(candidates.GetStart()->payload);
	}
	return chosen;
}
#endif

Town* GPlayer::GetNextTown(Town* town)
{
	if (town != NULL)
	{
		return town->next;
	}
	return towns.head;
}

void GPlayer::SavePlayerAlignment(unsigned long game_turn)
{
	if (!GGame::g_game->IsMultiplayerGame() && game_turn - AlignmentSaveTurn >= 600)
	{
		LHNetSetCurrentProfileDouble("LoveBuckets", alignment->Value);
		AlignmentSaveTurn = game_turn;
	}
}

void GPlayer::LoadPlayerAlignment()
{
	if (!GGame::g_game->IsMultiplayerGame())
	{
		double value = 0.0;
		LHNetGetCurrentProfileDouble("LoveBuckets", &value);
		if (value > 1.0)
		{
			value = 1.0;
		}
		else if (value < -1.0)
		{
			value = -1.0;
		}
		alignment->CrudeSet((float)value);
	}
}

bool GPlayer::FindNearestPosInsideInfluence(const MapCoords& pos, MapCoords& nearest)
{
	float    bestDistance = 9999999.0f;
	bool     found = false;
	GPlayer* player = GetPlayer();
	if (Influence::CalculatePlayerInfluence(pos, player, 0, INFL_CALC_TYPE_DEFAULT, 1) > 0.0f)
	{
		nearest = pos;
		return true;
	}
	if (citadel.Get() != NULL)
	{
		MapCoords citadelPos = citadel->Pos;
		float     distance = citadelPos.GetDistance(pos) - citadel->GetInfluence();
		if (distance < 9999999.0f)
		{
			float angle = GUtils::Get3DAngleFromXZ(citadelPos, pos);
			nearest = citadelPos + GUtils::GetPosFromAngle(angle, citadel->GetInfluence());
			bestDistance = distance;
			found = true;
		}
	}
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		MapCoords townPos = town->Pos;
		float     townInfluence = town->influence;
		float     distance = townPos.GetDistance(pos) - townInfluence;
		if (distance < bestDistance)
		{
			float angle = GUtils::Get3DAngleFromXZ(townPos, pos);
			nearest = townPos + GUtils::GetPosFromAngle(angle, town->GetInfluence());
			bestDistance = distance;
			found = true;
		}
	}
	return found;
}

GPlayer* GPlayer::GetNextAllyPlayer(GPlayer* player)
{
	for (GPlayer* next = GGame::g_game->GetNextPlayerAndNeutral(player); next != NULL;
	     next = GGame::g_game->GetNextPlayerAndNeutral(next))
	{
		if (IsAllied(next))
		{
			return next;
		}
	}
	return NULL;
}

GPlayer* GPlayer::GetNextPlayer(GPlayer* player, bool (GPlayer::*predicate)(GPlayer*))
{
	for (GPlayer* next = GGame::g_game->GetNextPlayerAndNeutral(player); next != NULL;
	     next = GGame::g_game->GetNextPlayerAndNeutral(next))
	{
		if ((this->*predicate)(next))
		{
			return next;
		}
	}
	return NULL;
}

bool GPlayer::IsAllied(GPlayer* other)
{
	if (other != NULL)
	{
		return Allies[other->GetPlayerNumber()].Value > 0.0f;
	}
	return false;
}

bool32_t GPlayer::CanAllyUseInfluence(GPlayer* other)
{
	return Allies[other->GetPlayerNumber()].Value > 0.1;
}

void GPlayer::SetAllyValue(GPlayer* other, float value)
{
	Allies[other->GetPlayerNumber()].Value = value;
	other->Allies[GetPlayerNumber()].Value = value;
}

float GPlayer::GetAllyValue(GPlayer* other)
{
	return Allies[other->GetPlayerNumber()].Value;
}

float GPlayer::GetAlignmentValue()
{
	return alignment->Value;
}

MagicTeleport* GPlayer::FindTeleportBetween(MapCoords& from, MapCoords& to, float max_distance)
{
	MagicTeleport* best = NULL;
	float          fromDistance = max_distance;
	float          toDistance = max_distance;
	for (MagicTeleport* teleport = teleports.head; teleport != NULL; teleport = teleport->next)
	{
		float distance = teleport->Pos.GetDistance(from);
		if (distance < fromDistance)
		{
			fromDistance = distance;
			best = teleport;
		}
		distance = teleport->Pos.GetDistance(to);
		if (distance < toDistance)
		{
			toDistance = distance;
		}
	}
	if (fromDistance + toDistance < max_distance)
	{
		return best;
	}
	return NULL;
}

bool32_t GPlayer::IsMemberOfThisPlayer(GInterfaceStatus* status)
{
	for (GInterfaceStatus* member = GetNextInterfaceStatus(NULL); member != NULL;
	     member = GetNextInterfaceStatus(member))
	{
		if (member == status)
		{
			return TRUE;
		}
	}
	return FALSE;
}

long GetRemapedPlayer(unsigned long player)
{
	switch (GGame::g_game->LandNumber)
	{
	case 1:
	case 4:
		if (player == PLAYER_NAME_PLAYER_TWO)
		{
			return PLAYER_NAME_PLAYER_SEVEN;
		}
		break;
	case 2:
		if (player == PLAYER_NAME_PLAYER_TWO)
		{
			return PLAYER_NAME_PLAYER_FIVE;
		}
		if (player == PLAYER_NAME_PLAYER_THREE)
		{
			return PLAYER_NAME_PLAYER_SIX;
		}
		break;
	case 3:
		if (player == PLAYER_NAME_PLAYER_TWO)
		{
			return PLAYER_NAME_PLAYER_SIX;
		}
		break;
	case 5:
		if (player == PLAYER_NAME_PLAYER_TWO)
		{
			return PLAYER_NAME_PLAYER_SEVEN;
		}
		break;
	}
	return player;
}

unsigned long GPlayer::GetPlayerColour() const
{
	return PlayerColours[GetRemapedPlayer(GetPlayerNumber())];
}

#ifndef VERSION_BW1W100
// 1.10 added this overload; 1.00 only has the member version.
unsigned long GPlayer::GetPlayerColour(unsigned long player_number)
{
	return PlayerColours[GetRemapedPlayer(player_number)];
}
#endif

bool32_t GPlayer::SaveObject(LHOSFile& file, const MapCoords& coords)
{
	char  text[200];
	char* playerName = PlayerNameText[GetPlayerNumber()];
	sprintf(text, "\nrem *********************** %s ***********************\n", playerName);
	GSetup::WriteToFile(this, file, text, strlen(text));
	if (ComputerPlayer != NULL)
	{
		ComputerPlayer->IsActive();
	}
	for (Town* town = towns.head; town != NULL; town = town->next)
	{
		sprintf(text, "rem ---------------- Town: %d ----------------\n", town->ID);
		GSetup::WriteToFile(this, file, text, strlen(text));
		town->SaveTown(file, coords);
	}
	Citadel* c = citadel.Get();
	if (c != NULL)
	{
		CitadelHeart* heart = c->heart.Get();
		if (heart != NULL)
		{
			heart->SaveObject(file, NULL);
		}
		for (CitadelPart* part = c->PartList.head; part != NULL; part = part->next)
		{
			if (part != heart)
			{
				part->SaveObject(file, NULL);
			}
		}
	}
	return TRUE;
}

unsigned long GPlayer::GetTotalWoodInStoragePits()
{
	unsigned long total = 0;
	for (Town* town = towns.GetNext(NULL); town != NULL; town = towns.GetNext(town))
	{
		if (town->GetStoragePit() != NULL)
		{
			for (int i = 0; i < MAX_WOOD_PILES; i++)
			{
				PileResource* pile = town->GetStoragePit()->GetResourcePile(RESOURCE_TYPE_WOOD, i);
				if (pile != NULL)
				{
					total += pile->ResourceAmount;
				}
			}
		}
	}
	return total;
}

unsigned long GPlayer::GetTotalFoodInStoragePits()
{
	unsigned long total = 0;
	for (Town* town = towns.GetNext(NULL); town != NULL; town = towns.GetNext(town))
	{
		if (town->GetStoragePit() != NULL)
		{
			PileResource* pile = town->GetStoragePit()->GetResourcePile(RESOURCE_TYPE_FOOD, 0);
			if (pile != NULL)
			{
				total += pile->ResourceAmount;
			}
		}
	}
	return total;
}

#ifdef VERSION_BW1W120
void GPlayer::SetCondition(int type, int value)
{
	if (this != NULL && GGame::g_game->IsMultiplayerGame())
	{
		std::map<int, WinCondition>::iterator it = Conditions.find(type);
		if (it != Conditions.end())
		{
			(*it).second.Set(value);
		}
	}
}

void GPlayer::AddToCondition(int type, int value)
{
	if (this != NULL && GGame::g_game->IsMultiplayerGame())
	{
		std::map<int, WinCondition>::iterator it = Conditions.find(type);
		if (it != Conditions.end())
		{
			(*it).second.Add(value);
		}
	}
}

void GPlayer::AddScoreHistory(float score)
{
	if (ScoreHistoryIndex == 499)
	{
		memmove(&ScoreHistory[0], &ScoreHistory[1], 499 * sizeof(float));
	}
	else
	{
		ScoreHistoryIndex++;
	}
	ScoreHistory[ScoreHistoryIndex] = score;
}
#endif

void GPlayer::HideGameOverDialogs()
{
	if (FrontEnd::TattooDialog->setup_box == SetupBox::CurrentActiveBox)
	{
		FrontEnd::TattooDialog->SetC3D(NULL);
		DialogBoxBase::Hide();
	}
	DialogBoxBase::HideAll();
}
