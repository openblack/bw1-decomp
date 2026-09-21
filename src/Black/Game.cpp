#include "Game.h"
#include "GameVideo.h"
#include "PCInput.h"
#include "CreaturePhysical.h"
#include "CreatureMorph.h"
#include "EditorIconBase.h"
#include "FallingSpell.h"
#include "FireFly.h"
#include "LH3DZSorter.h"
#include "LightSheet.h"
#include "LiquidParticle.h"
#include "MagicHand.h"
#include "ParticleContainer.h"
#include "PSysLightMaps.h"
#include "Spell.h"
#include "TemporaryShadow.h"
#include "TownCentre.h"
#include "ValueSpinner.h"
#include "VillagerNames.h"
#include <Lionhead/LH3DLib/development/LH3DComplexObject.h>
#include <Lionhead/LH3DLib/development/LH3DSky.h>
#include <Lionhead/LH3DLib/development/LH3DStorm.h>
#include "CameraModeNew3.h"
#include "ChannelBox.h"
#include "CreatureExplorationMap.h"
#include "CreatureMentalAttributeTest.h"
#include "LHInetWeather.h"
#include "MPFEConnectionStatus.h"
#include "MPFEStartGameData.h"
#include "ServerLandscapeMap.h"
#include "SetupTabButton.h"
#include "SkirmishGameBox.h"
#include <Lionhead/LH3DLib/development/LH3DMeshIntersect.h>
#include <io.h>
#include "Alignment.h"
#include "MobileStatic.h"
#include "CarriedObject.h"
#include "CreatureDanceLineInput.h"
#include "CreatureMental.h"
#include "DanceGroup.h"
#include "DeadTree.h"
#include "HelpEditor.h"
#include "InterfaceStatus.h"
#include "JCGameBlock.h"
#include "MPFEData.h"
#include "PowerSpin.h"
#include "SpecialVillagerInfo.h"
#include "DialogBoxKeyBinding.h"
#include "DialogBoxOptions.h"
#include "DialogBoxSaveMessage.h"
#include "EditorPhysics.h"
#include "IpSpecialDialog.h"
#include "PCMain.h"
#include "PlayerSymbol.h"
#include "SetupBox.h"
#include "SpecialVillager.h"
#include "Utils.h"
#include "MapShield.h"
#include "Object.h"
#include "RoutePlan.h"
#include <Lionhead/LH3DLib/development/LH3DText.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>
#include <Lionhead/LHLib/ver5.0/RPFollow.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHMail.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUser.h>
#include <set>
#include <Lionhead/LH3DLib/development/InfluenceCircle.h>
#include <Lionhead/LH3DLib/development/SuperVillager.h>
#include <Lionhead/LH3DLib/development/LH3DSprite.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHPlayer.h>

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include "Audio.h"
#include "Belief.h"
#include "Bookmark.h"
#include "Camera.h"
#include "CameraEditor.h"
#include "CameraExclusion.h"
#include "CameraHelp.h"
#include "ChallengeRoom.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "CitadelPeople.h"
#include "DanceLight.h"
#include "Climate.h"
#include "Config.h"
#include "ControlHand.h"
#include "ControlMap.h"
#include "Creature.h"
#include "CreatureLessonChooser.h"
#include "CreatureMentalEditor.h"
#include "CreatureRoom.h"
#include "CreditsRoom.h"
#include "FrontEnd.h"
#include "GatheringBox.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "GestureSystem.h"
#include "GestureSystemData.h"
#include "GestureSystemDataList.h"
#include "GestureSystemResult.h"
#include "Settings.h"
#include "Water.h"
#include "Global.h"
#include "GroupBehaviour.h"
#include "HelpProfile.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Interface.h"
#include "LandBalance.h"
#include "LandAlignement.h"
#include "Living.h"
#include "LHNetBase.h"
#include "MainMenu.h"
#include "MobileWallHug.h"
#include "MusicMood.h"
#include "PhysicsObject.h"
#include "PlayerProfile.h"
#include "PSysEditor.h"
#include "PSysGlobal.h"
#include "Script.h"
#include "ScriptDLL.h"
#include "SaveGameRoom.h"
#include "SetupThing.h"
#include "SoundConfirmation.h"
#include "SoundGuidance.h"
#include "SoundMap.h"
#include "SoundTag.h"
#include "SpookyVoices.h"
#include "Temple.h"
#include "Villager.h"
#include "WorldRoom.h"
#include "WeatherInfo.h"
#include "Windmill.h"
#include "Plasma.h"
#include "Setup.h"
#include "Town.h"
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DLandscape.h>
#include <Lionhead/LH3DLib/development/LH3DMaterial.h>
#include <Lionhead/LH3DLib/development/LH3DTexture.h>
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/LHVideoPlayer.h>
#include <Lionhead/LH3DLib/development/Prss.h>
#include <Lionhead/LH3DLib/development/SnowCover.h>
#include <Lionhead/LH3DLib/development/ScriptedScreenShot.h>
#include <Lionhead/LHAudio/ver7.0/LH_SamplePlayOptions.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHLib/ver5.0/LHHeap2.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/RPHolder.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHNetUtils.h>
#include <chlasm/LHSample.h>
#include <windows.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>
#include <mmsystem.h>
#include <stdlib.h>
#include <string.h>
#include <wchar.h>

static_assert(sizeof(GSetup) == 1, "GSetup must remain an empty utility member");
static_assert(sizeof(BINKREALTIME) == 0x38, "Bink realtime ABI is incorrect");
static_assert(sizeof(LH3DZSorter::DrawCallback) == 4, "Windows drawing callback must be one word");
static_assert(offsetof(Morphable, DynamicShadow) == 0x482c, "Morphable shadow offset is incorrect");
static_assert(offsetof(CreaturePhysical, Creature3d) == 0x58, "Creature render pointer offset is incorrect");
static_assert(offsetof(PowerSpin, Position) == 0x9a8, "PowerSpin position offset is incorrect");
static_assert(offsetof(PowerSpinRunner, Next) == 0x9b4, "PowerSpinRunner link offset is incorrect");
static_assert(offsetof(ValueSpinner, point) == 8, "ValueSpinner position offset is incorrect");
static_assert(offsetof(VillagerName, next) == 0x460, "VillagerName link offset is incorrect");
static_assert(offsetof(TempleRoom, name) == 4, "TempleRoom vptr is missing");
static_assert(offsetof(GScript, FocusPos) == 0x40, "Script timer fields changed its layout");
#ifdef VERSION_BW1W120
static_assert(offsetof(GGame, setup) == 0x205a58, "GGame setup offset is incorrect");
static_assert(offsetof(GGame, PlayerIndex) == 0x205a59, "GGame player index offset is incorrect");
static_assert(offsetof(GPlayer, Conditions) == 0xf8, "GPlayer condition map offset is incorrect");
static_assert(offsetof(GPlayer, type) == 0x8e0, "GPlayer condition map changed its layout");
#else
static_assert(offsetof(GGame, setup) == 0x201b14, "GGame setup offset is incorrect");
static_assert(offsetof(GGame, PlayerIndex) == 0x201b15, "GGame player index offset is incorrect");
static_assert(offsetof(GPlayer, type) == 0xf8, "GPlayer layout is incorrect");
#endif
static_assert(offsetof(ChannelBox, ConditionEnabled) == 0xac4, "ChannelBox condition offset is incorrect");
static_assert(sizeof(ChannelBox) == 0xad4, "ChannelBox size is incorrect");
static_assert(offsetof(MPFEData, ActiveDialog) == 0xa64, "MPFEData dialog offset is incorrect");
static_assert(offsetof(MPFEData, Conditions) == 0x15d4, "MPFEData condition offset is incorrect");

GGame*                  GGame::g_game;
uint32_t                GGame::TutorialState;
uint32_t                GGame::StartTime;
uint32_t                GGame::MemoryState;
bool                    GGame::ScriptRebootRequested;
uint32_t                GGame::RepairMissingMothers;
GGameInfo               GGameInfo::Info;
CRITICAL_SECTION        GGame::VideoTimerSection;
bool                    GGame::SavingMap;
bool                    GGame::SystemExit;
int                     GGame::PacketTimeHistory[10];
unsigned long           GGame::IncomingQueueHistory[100];
uint32_t                GGame::NetworkTurnsThisFrame;
bool                    GGame::RenderLoopEnabled = true;
CreatureDanceLineInput* GGame::CreatureDanceLineIn;
LHMail*                 GGame::Mail;
bool                    GGame::InternetAvailable;
bool                    GGame::Initialising;
int                     GGame::LoadingFrameEnabled;
int                     GGame::FootballEnabled;
char* const             GGame::NetworkApplication = "Lionhead";
char* const             GGame::NetworkChannel = "Channel";
char* const             GGame::NetworkPassword = "Password";

// TODO: Original name unknown; tail-jumps to fn_007DEE00, not an empty function.
// BW1W120 0054d610
void             fn_0054D610();
void             CheckSquareFunction(int x, int z, RPHolder* holder);
void             AddSpecialRPObjects(RPHolder* holder);
void             InputReset();                           // 005fa000
void             DoLogo();                               // 005fa070
void             ClearTipVideo();                        // 005f3d90
void             ResetLocalGameTimer();                  // 0054c570
void             SendNetworkChecksum(bool);              // 00635210
void             fn_0064D0F0();                          // Real emitted empty function; original name unrecovered.
void             UninitialiseLiquidParticles();          // 00845c10
void             ResetCameraModeNew3();                  // 00460b20
void             ResetBlockersForClearMap();             // 0060a400
void             InitStaticsValues();                    // 0054a780
void             InitialiseLiquidParticles();            // 00845c00
void             StartTipOfTheDayText();                 // 005f4c90
void             MakeTipVideo();                         // 005f3ce0
bool             BWCheckFeatureIsEnabled(char* feature); // 005259d0
void             ClearAllStuff();                        // 0082aed0
void             ReinitLoadingScreen();
unsigned __int64 GetCreatureFileChecksum();
void             load_variables();
void             fn_0054B190();
void             fn_0054B180(); // Real emitted empty function; original name unrecovered.
void             LoadAllAnimations();
char*            WCHAR2CHAR(char16_t* text);
void __stdcall   camera_editor_callback(unsigned long message, unsigned long param_1, unsigned long param_2);
void __stdcall   water_drop_cb(LHPoint& position, float size, unsigned long type);

// Original comparator name; equal team/member keys intentionally collide in the set.
struct LHPlayerPointer_less
{
	bool32_t operator()(LHPlayer* left, LHPlayer* right) const
	{
		return left->TeamNumber * 100u + left->TeamMemberNumber < right->TeamNumber * 100u + right->TeamMemberNumber;
	}
};

// BW1W120 0054f3b0 BW1M119 014e1990
// 0054f421 is a continuation in this same frame. Only the internet check is caught.
// TODO: Nonmatching switch/local scheduling and std::map insertion inlining.
bool32_t GGame::Init()
{
	InitStaticsValues();
	SavingMap = false;
	try
	{
		InternetAvailable = LHCheckForInternetConnection(CheckInternetConnectionOptions);
	}
	catch (...)
	{
		InternetAvailable = false;
	}
	field_0x25053c = 0;
	field_0x250540 = 0;
	Initialising = true;
	LoadingFrameEnabled = 1;
	if (TipVideo == NULL)
	{
		StartTipOfTheDayText();
		MakeTipVideo();
	}
	field_0x14 &= ~0x20004u;
	field_0x59b0 = 0;
	RenderLoadingFrame(true);
	GGlobal::Global.audio->Reset();
	field_0x599c = false;
	field_0x599d = 0;
	AttributeTest::CreateAttributeArray();
	AttributeTest::CreateBeliefArray();
	remove("physlog.txt");
	InitialiseLiquidParticles();
	DeadTree::Init();
	GGameInfo::Info.field_0x40 = 100;
	data.field_0xc = 0x88f89f;
	data.RandSeed = 0x88f89f;
	fn_0054D610();
	RenderLoadingFrame("Setting up players...");
	SetupPlayers();
	RenderLoadingFrame("Setting up data tables...");
	SetupDataTables();
	LandNumber = 0;
	help_profile = HelpProfile::Create();
	help_system = HelpSystem::Create();
	temple = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x10ff) Temple;
	script->Reset(1);
	FootballEnabled = BWCheckFeatureIsEnabled("football") != 0;
	MusicMoodController::CreatureMusicMoodEnabled = BWCheckFeatureIsEnabled("CreatureMusicMood");
	if (BWCheckFeatureIsEnabled("CreatureDanceLineIn") && CreatureDanceLineIn == NULL)
	{
		CreatureDanceLineIn = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x1113) CreatureDanceLineInput;
		CreatureDanceLineIn->fn_00437A40();
		if (!CreatureDanceLineIn->Active)
		{
			delete CreatureDanceLineIn;
			CreatureDanceLineIn = NULL;
		}
	}
	RenderLoadingFrame("Initialising map...");
	if (map.Init(0x200, 0x200, 0) != 1)
	{
		LoadingFrameEnabled = 0;
		Initialising = false;
		return 0;
	}
	map.field_0x8 |= 2;
	RenderLoadingFrame("Loading map script...");
	PlayerInfluenceMultiplier = 1.0f;
	TownInfluenceMultiplier = 1.0f;
	camera = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x112a) GCamera(StartCameraCoords);
	if (Enum0x25017c == 0 && !GameOSFile::IsAutoSaveValid())
		Enum0x25017c = 1;
	field_0x205a0c = 0;
	field_0x205a10 = 0;
	field_0x205a14 = 0;
	switch (Enum0x25017c)
	{
	case 0:
		RenderLoadingFrame(true);
		if (GameOSFile::AutoLoad())
		{
			Enum0x25017c = 0;
			break;
		}
		goto newGame;
	case 2:
		if (GameOSFile::LoadAllGame(LoadGameFilename))
		{
			Enum0x25017c = 2;
			break;
		}
		// Both failed loads use the complete new-game path.
	case 1:
	newGame:
		Enum0x25017c = 1;
		delete camera;
		camera = NULL;
		setup.LoadMapScript();
		OnNewGame();
		break;
	case 3: {
		char* mapName = NULL;
		field_0x14 &= ~0x2000u;
		if (network.session->Channel->GetGameDataLength())
			mapName = (char*)network.session->Channel->GetGameData();
		if (mapName && strcmp(mapName, "oos") == 0)
		{
			GSetup::CreateMultiplayerCreatures = 0;
			GSetup::LoadMapFeatures("oos.txt");
			GSetup::CreateMultiplayerCreatures = 1;
			g_game->SetUnusedCitadelComputerPlayers();
		}
		else
		{
			ServerLandscapeMap serverMap(NULL);
			char               mapPath[0x104];
			sprintf(mapPath, ".\\Online Maps\\%s.map", mapName ? mapName : "mpm_2p_1");
			serverMap.LoadMap(mapPath);
			serverMap.SaveLND(".");
			serverMap.SaveMAP(".");
			GSetup::CreateMultiplayerCreatures = 0;
			GSetup::MPDebugLoadState = 0;
			// LHOSFile reports success (zero) when the file exists.
			if (LHOSFile::Exists(".\\Scripts\\MPDebug.txt") == 0)
				GSetup::MPDebugLoadState = 1;
			if (!GSetup::MPDebugLoadState)
				GSetup::LoadMapFeatures(serverMap.GetMAPFilename("."));
			else
			{
				LHSys::TheSystem.script.Load(".\\Scripts\\MPDebug.txt", GSetup::MapCommands, GSetup::MapCommandProcess,
				                             NULL);
				if (GSetup::MPDebugLoadState == 1)
					GSetup::LoadMapFeatures(serverMap.GetMAPFilename("."));
				GSetup::MPDebugLoadState = 0;
			}
			_unlink(serverMap.GetMAPFilename("."));
			_unlink(serverMap.GetLNDFilename("."));
			GSetup::CreateMultiplayerCreatures = 1;
			g_game->SetUnusedCitadelComputerPlayers();
		}
		_unlink("oos.txt");
		_unlink("oos.lnd");
#ifdef VERSION_BW1W120
		field_0x59a0 *= 600;
		for (GPlayer* player = GetNextActivePlayer(NULL); player; player = GetNextActivePlayer(player))
		{
			for (int i = 0; i < 15; ++i)
			{
				if (MPFEData::Data.ActiveDialog->ConditionEnabled[i])
					player->Conditions.insert(std::make_pair(i, MPFEData::Data.Conditions[i]));
			}
		}
#endif
		break;
	}
	case 4: {
		char mapPath[0x104];
		strcpy(mapPath, WCHAR2CHAR(FrontEnd::SkirmishDialog->MapPath));
		g_game->ResetAndStartPlaygroundGame(mapPath);
		field_0x205a0c = 1;
		break;
	}
	}
	if (g_game->Enum0x25017c == 4 || g_game->Enum0x25017c == 1 || g_game->Enum0x25017c == 3)
	{
		delete camera;
		camera = NULL;
		Citadel* citadel = players[PlayerIndex].citadel;
		if (((StartCameraCoords.x == 0 && StartCameraCoords.z == 0 && StartCameraCoords.altitude == 0.0f) ||
		     g_game->Enum0x25017c == 3) &&
		    citadel)
		{
			camera = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x11cc) GCamera(citadel->Pos);
			CameraMode*     currentMode = camera->ModeCurrentIndex < 0 ? NULL : camera->modes[camera->ModeCurrentIndex];
			CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(currentMode);
			if (mode)
			{
				LHPoint point;
				GLandscape::ConvertMapCoordToLandscapePoint(citadel->Pos, point);
				mode->ZoomToCitadel(point.x, point.z, CameraModeNew3::CitadelDistance, CameraModeNew3::CitadelPitch, 0);
			}
		}
		else
			camera = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x11d7) GCamera(StartCameraCoords);
	}
	map.UpdateControlMap();
	CreatureGlobalExplorationMap::GlobalMap.PrecalculateMap();
	terrain_map.Init();
	field_0x205ba0 = 1;
	GSoundMap* soundMap = SoundMap;
	soundMap->CalculateRadiusPointAndDistance();
	soundMap->UpdateFromMap(MapCoords(soundMap->GetReceiverPos()));
	map.CalculateMapInfluence();
	field_0x205a2c = 0;
	field_0x205a28 = 0;
	RenderLoadingFrame(true);
	CarriedObject::Init();
	BMan_Zero();
	field_0x205d40 = 0;
	field_0x2502bc = 0;
	field_0x205e78 = 0;
	FinishInitialisation();
	MeshIntersect::InitialiseMeshIntersect();
	field_0x250538 = 1;
	field_0x205d60 = 0;
	RenderLoadingFrame(true);
	PlayerSymbol::CreateFinalTextureSymbols();
	RenderLoadingFrame(true);
	ReadRegistrySettings();
	RenderLoadingFrame(true);
	GSpookyVoices::GetPlayerName();
	time(&field_0x59ac);
	if ((field_0x205a0c || IsMultiplayerGame()) && players[PlayerIndex].citadel)
	{
		GInterfaceStatus* leader = players[PlayerIndex].GetLeaderInterfaceStatus();
		if (MyInterfaceStatus() == leader)
		{
			// Preserve the two by-value home-position calls and right-to-left argument evaluation.
			SetPacket((PACKET_TYPE)0x4e, (short)(players[PlayerIndex].citadel->GetCreatureHomePos().x >> 16),
			          (short)(players[PlayerIndex].citadel->GetCreatureHomePos().z >> 16), -1L);
		}
	}
	fn_005525E0();
	RenderLoadingFrame(true);
	wcscpy(FrontEnd::MultiplayerTab->label, L"");
	if (g_game->IsMultiplayerGame())
	{
		swprintf(FrontEnd::MultiplayerTab->label, L"%s", HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(19));
		field_0x59a8 = MPFEConnectionStatus::Status.IsInternetLobby() ? 1 : 2;
		for (GPlayer* player = GetNextPlayer(NULL); player; player = GetNextPlayer(player))
		{
			float alignment = player->StartGameData ? player->StartGameData->Alignment : 0.0f;
			player->alignment->CrudeSet(alignment);
			player->game_stats->Init(*player);
		}
	}
	else
	{
		players[PlayerIndex].LoadPlayerAlignment();
		players[PlayerIndex].game_stats->Init(players[PlayerIndex]);
		field_0x59a8 = 0;
	}
	RenderLoadingFrame(true);
	LHInetWeather::Weather.InitForGame();
	LoadingFrameEnabled = 0;
	Initialising = false;
	return 1;
}

// BW1W120 0054c190 BW1M119 010e7270
void GGame::StartGame()
{
	g_game->GameMode = GAME_MODE_RUNNING;
	if (Init() == 1 && !Dat_00D46AC1)
	{
		stop_draw_sprite_to_screen();
		Plasma* plasma = FrontEnd::Dat_00CD06E8;
		if (plasma != NULL)
		{
			// Inlined Plasma::Close(), followed by nonvirtual delete.
			plasma->PinMaterial->texture = NULL;
			plasma->PinTexture->Release();
			delete plasma;
		}
		FrontEnd::Dat_00CD06E8 = NULL;

		// Inlined timer.Reset(0); timer.Start(), as in ResetLocalGameTimer.
		timer.TickCount = GetTickCount();
		timer.ElapsedTime = 0;
		if (timer.SpeedUpFactor != 0.0f)
		{
			timer.SpeedUpFactor2 = timer.SpeedUpFactor;
			unsigned long ticks = GetTickCount() - timer.TickCount;
			timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
			timer.TickCount = GetTickCount();
			timer.SpeedUpFactor = 0.0f;
		}
		timer.SpeedUpFactor = 0.00001f;
		float         speed = timer.SpeedUpFactor2;
		unsigned long ticks = GetTickCount() - timer.TickCount;
		timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
		timer.TickCount = GetTickCount();
		timer.SpeedUpFactor = speed;
		Loop();
	}
}

// Mac 1056f520 includes the Reset performed by the Windows wrapper.
// BW1W120 00552f40 BW1M119 01115890
void GGame::StartPlaygroundGame(char* map_path)
{
	if (map_path != NULL)
	{
		g_game->ClearMap();
		LH3DLandscape::Release();
		LH3DIsland::Release();
		g_game->data.field_0x20 = 0;
		GSetup::LoadMapFeatures(map_path);
		Town::AsssignTownFeature();
	}
}

// Combined with StartPlaygroundGame in the Mac binary.
// BW1W120 00555990
void GGame::ResetAndStartPlaygroundGame(char* path)
{
	script->Reset(1);
	StartPlaygroundGame(path);
}

// BW1W120 005538e0 BW1M119 010e8430
void GGame::OnNewGame()
{
	char path[260];
	path_creator.CheckAndRecreateSaveGamePaths();
	path_creator.GetCurrentGamePath(path);
	ChallengeRoom::CreateChallengeFiles(path);
	path_creator.GetSaveGamePicturesPath(path);
	SaveGameRoom::CreateSaveGameFiles(path);

	bool started = false;
	if (g_game->script != NULL && GScript::Dat_00D95C0C && g_game->LandNumber == 1)
	{
		if (g_game->script->StartScript("LandControlAll"))
		{
			started = true;
		}
	}
	DoYesNoSkipTutorialRequestersIfNecessary();
	if (started && !(g_game->field_0x14 & 4))
	{
		g_game->script->SetupScreenFadeTo(0, 0, 0, 0);
		Temple::Dat_00C2A150 = 0.0f;
		Temple::Dat_00E06020 = 0.0f;
	}
}

// BW1W120 00555270 BW1M119 0151aec0
void GGame::ForceNeedUpdateInfluence()
{
	field_0x250174 = 1;
}

// BW1W120 00555280 BW1M119 01091800
void GGame::Update3DInfluence()
{
	if (field_0x250174 && data.GameTurn % 10 == 0)
	{
		InfluenceCircle::Reset();
		GPlayer* player = NULL;
		while ((player = GetNextPlayer(player)) != NULL)
		{
			// TODO: Original omits MSVC's byte-result mask after GetPlayerNumber.
			long     playerNumber = GetRemapedPlayer(player->GetPlayerNumber());
			float    influence;
			Citadel* citadel = player->citadel;
			if (citadel != NULL)
			{
				influence = citadel->GetInfluence();
				if (influence != 0.0f)
				{
					InfluenceCircle::Add(playerNumber, citadel->Pos.GetLHPoint(), influence);
				}
				citadel->field_0x78 = influence;
			}
			for (Town* town = player->towns.head; town != NULL; town = town->next)
			{
				influence = town->influence;
				if (influence != 0.0f)
				{
					InfluenceCircle::Add(playerNumber, town->Pos.GetLHPoint(), influence);
				}
				town->field_0xf24 = influence;
			}
		}
		field_0x250174 = 0;
	}
}

// BW1W120 0054ae20 BW1M119 015a07b0
void PauseGame(int pause)
{
	// Mac confirms unsigned-to-float conversion; MSVC optimizes the elapsed add to signed FIADD.
	if (pause != ((GGame::g_game->field_0x14 >> 2) & 1))
	{
		if (GGame::g_game->network.session->IsSinglePlayer())
		{
			uint32_t flags = GGame::g_game->field_0x14;
			// Replace only the pause bit with its complement, preserving the other flags.
			GGame::g_game->field_0x14 = flags ^ ((~flags ^ flags) & 4u);
			LHTimer& timer = GGame::g_game->timer;
			if (GGame::g_game->field_0x14 & 4)
			{
				if (timer.SpeedUpFactor != 0.0f)
				{
					timer.SpeedUpFactor2 = timer.SpeedUpFactor;
					unsigned long ticks = GetTickCount() - timer.TickCount;
					timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
					timer.TickCount = GetTickCount();
					timer.SpeedUpFactor = 0.0f;
				}
			}
			else
			{
				timer.SpeedUpFactor = 0.00001f;
				float         speed = timer.SpeedUpFactor2;
				unsigned long ticks = GetTickCount() - timer.TickCount;
				timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
				timer.TickCount = GetTickCount();
				timer.SpeedUpFactor = speed;
			}
		}
	}
}

// BW1W120 005537f0 BW1M119 01367db0
void GGame::SetSpeed(float speed)
{
	// As in PauseGame, unsigned source conversion produces signed FIADD with the original MSVC.
	network.field_0x4 = speed;
	if (!network.session->IsSinglePlayer())
	{
		network.session->SetIdlePeriod((unsigned long)(100.0f / network.field_0x4));
	}
	else
	{
		float newSpeed = network.field_0x4;
		if (timer.SpeedUpFactor != 0.0f)
		{
			unsigned long ticks = GetTickCount() - timer.TickCount;
			timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
			timer.TickCount = GetTickCount();
			timer.SpeedUpFactor = newSpeed;
		}
		else
		{
			timer.SpeedUpFactor2 = newSpeed;
		}
		GGlobal::Global.debug.field_0x2d284 = 0;
	}
}

// BW1W120 0054af60 BW1M119 013c9950
void AddSpecialRPObjects(RPHolder* holder)
{
	if (holder->field_0x50024 != NULL)
	{
		Creature* creature = (Creature*)holder->field_0x50024->field_0x64060;
		for (MapShield* shield = GGame::g_game->GameLists.MapShields.head; shield != NULL; shield = shield->next)
		{
			if (shield->CreatureMustAvoid(creature))
			{
				shield->AddToRoutePlan(holder, creature, 0, NULL);
			}
		}
	}
}

// BW1W120 0054afb0 BW1M119 01286b00
void CheckSquareFunction(int x, int z, RPHolder* holder)
{
	if (x >= 0 && x < 512 && z >= 0 && z < 512)
	{
		JustMapXZ mapPos;
		mapPos.Init((unsigned short)x, (unsigned short)z);
		if (mapPos.InBounds())
		{
			bool avoidWater = holder->field_0x50024 == NULL;
			for (int dx = -1; dx < 2; ++dx)
			{
				int cellX = x + dx;
				if (cellX >= 0 && cellX < 512)
				{
					for (int dz = -1; dz < 2; ++dz)
					{
						int cellZ = z + dz;
						if (cellZ >= 0 && cellZ < 512)
						{
							int type = LandAvoid[cellZ][cellX];
							if (type == 1 || (avoidWater && type == 6))
							{
								Point2D centre(cellX * 10.0f + 5.0f, cellZ * 10.0f + 5.0f);
								holder->AddObject(-1, centre, 7.1f, 0);
							}
						}
					}
				}
			}
			MapCell*        cell = mapPos.ToMap();
			Creature*       creature = avoidWater ? NULL : (Creature*)holder->field_0x50024->field_0x64060;
			MapCellIterator iter = cell->GetFirstIterator();
			while (iter.object != NULL)
			{
				if (iter.object->CreatureMustAvoid(creature) && holder->SquareDoesNotContain((int)iter.object, x, z))
				{
					iter.object->AddToRoutePlan(holder, creature, 0, NULL);
				}
				iter.object = iter.object->GetMapChild(*iter.cell);
				iter.MoveToMobileObsIfNeededAndPoss();
			}
		}
	}
}

// BW1W120 0054ef40 BW1M119 0117b9a0
uint32_t GGame::InitOneTimeOnly()
{
	Report3D__FPCce("InitOneTimeOnly\n");
	settings->ParseConfigFile(NULL);
	RenderLoadingFrame(true);
	key_buffer.Init(0x80);
	Report3D__FPCce("LoadTextScript\n");
	RenderLoadingFrame(true);
	RenderLoadingFrame(true);
	MPFEData::CreatureFileChecksum = GetCreatureFileChecksum();
	Report3D__FPCce("LHNetUseProfile\n");
	LHSys::TheSystem.MessageHook = camera_editor_callback;
	g_water_drop_cb = water_drop_cb;
	LHNetUseProfile(LHNetGetCurrentProfileNameFromRegistry());
	Report3D__FPCce("ReinitLoadingScreen\n");
	RenderLoadingFrame(true);
	ReinitLoadingScreen();
	Report3D__FPCce("EditorPhysics::Load\n");
	RenderLoadingFrame(true);
	EditorPhysics::Load();
	fn_007DEE00();
	Report3D__FPCce("GSpookyVoices\n");
	RenderLoadingFrame(true);
	GSpookyVoices::Init();
	Report3D__FPCce("GConfirmation\n");
	RenderLoadingFrame(true);
	GConfirmation::Init();
	fn_007DEE00();
	Report3D__FPCce("StartupGameInfo\n");
	RenderLoadingFrame(true);
	GGameInfo::Info.CurrentYear = (uint32_t)(int)GGameInfo::Info.GetYear();
	fn_007DEE00();
	RenderLoadingFrame(true);
	GUtils::SetupUtils();
	fn_007DEE00();
	RenderLoadingFrame(true);
	if (LoadFiles() != 1)
	{
		return 0;
	}
	fn_007DEE00();
	RenderLoadingFrame("Loading variables...");
	Report3D__FPCce("load_variables\n");
	load_variables();
	fn_007DEE00();
	fn_007DEE00();
	RenderLoadingFrame(true);
	Report3D__FPCce("SetupStatics\n");
	GInterface::SetupStatics();
	RenderLoadingFrame("Initialising PSysGlobal...");
	PSysGlobal::InitializeOneTimeOnly();
	RenderLoadingFrame("...Finished PSysGlobal");
	dialog_box_options = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x1025) DialogBoxOptions;
	dialog_box_options->Init(780, 500, DialogBoxOptions::ControlCallback);
	dialog_box_options->setup_box->field_0xc8 = 1;
	dialog_box_key_binding = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x102a) DialogBoxKeyBinding;
	dialog_box_key_binding->Init(780, 500, DialogBoxKeyBinding::ControlCallback);
	dialog_box_save_message = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x102e) DialogBoxSaveMessage;
	dialog_box_save_message->Init(500, 250, DialogBoxSaveMessage::ControlCallback);
	IPSpecialDialog::Instance = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x1031) IPSpecialDialog;
	IPSpecialDialog::Instance->Init(700, 250, IPSpecialDialog::ControlCallback);
	control_map = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x1034) ControlMap;
	control_map->LoadDefaults();
	if (PlayerProfile::GetNumberOfProfiles() != 0 && LHNetGetCurrentProfileNameFromRegistry() != NULL)
	{
		char16_t profile[256];
		PlayerProfile::SetCurrentProfile((char16_t*)LHNetGetCurrentProfileNameFromRegistry());
		PlayerProfile::GetCurrentProfile(profile);
		PlayerProfile::GetProfileByName(profile, PlayerProfile::Profile);
	}
	PlayerSymbol::OpenOnce();
	char internetOptions = 0;
	if (ARGS_FORCEINETCONN)
	{
		internetOptions = 1;
	}
	if (ARGS_NOINETCONN)
	{
		internetOptions = 2;
	}
#ifdef VERSION_BW1W120
	field_0x59a0 = 30;
#endif
	Report3D__FPCce("LHCheckForInternetConnection\n");
	InternetAvailable = LHCheckForInternetConnection(internetOptions);
	Report3D__FPCce("GetNumberOfProfiles\n");
	if (InternetAvailable == true && PlayerProfile::GetNumberOfProfiles() > 0)
	{
		char userPath[256];
		memset(userPath, 0, sizeof(userPath));
		path_creator.UpdateCurrentProfile();
		path_creator.GetCurrentUserPath(userPath);
		if (path_creator.field_0x21c != NULL && path_creator.field_0x21c[0] != '\0')
		{
			Mail = LHLoadInGameEmailSystem(LHSPrintf("%s\\addressbook.lhe", userPath).Text);
		}
		else
		{
			Mail = LHLoadInGameEmailSystem(NULL);
		}
		if (Mail != NULL && !Mail->InitDriver())
		{
			delete Mail;
			Mail = NULL;
		}
	}
	else
	{
		Mail = NULL;
	}
	SpecialVillager::InitOnStartup();
	fn_0054B190();
	GLandBalance::Init();
	Base::ObjectHeapStore->Store();
	return 1;
}

// BW1W120 0054ff80 BW1M119 010a2a00
void GGame::KeyHandler(unsigned short message, LH_KEY key, unsigned short modifier, unsigned short param_4,
                       void* context)
{
	if ((message == WM_KEYDOWN || message == WM_SYSKEYDOWN) && key != KB_NONE)
	{
		if (AssertionKeyCapture)
		{
			AssertionKey = key;
		}
		else if (g_game != NULL && g_game->IsAvailable())
		{
			g_game->key_buffer.AddKeyIfDifferentToPrevious(key, modifier);
		}
	}
}

// BW1W120 00550080 BW1M119 0149ac40
void GGame::UnfinishInitialisation()
{
	GGlobal::Global.audio->ReleaseAtmosSoundBanks();
	Windmill::Close();
	LHSys::TheSystem.mouse.DrawCallback = NULL;
	LHSys::TheSystem.mouse.CallbackArg1 = NULL;
	LHSys::TheSystem.keyboard.Callback = NULL;
	LHSys::TheSystem.keyboard.CallbackContext = NULL;
	if (MyInterface() != NULL)
	{
		MyInterface()->MessageBuffers.FreeMsgBuffer();
	}
}

// BW1W120 00550110 BW1M119 010d8f80
void GGame::FinishInitialisation()
{
	if (MyInterface() != NULL)
	{
		GInterface* playerInterface = MyInterface();
		playerInterface->MessageBuffers.Init(64);
	}
	LHSys::TheSystem.keyboard.Callback = KeyHandler;
	LHSys::TheSystem.keyboard.CallbackContext = NULL;
	LHSys::TheSystem.mouse.DrawCallback = MouseHandler;
	LHSys::TheSystem.mouse.CallbackArg1 = NULL;
	Windmill::Open();
	GGlobal::Global.audio->InitAtmos();
}

// BW1W120 00550390 BW1M119 01509420
bool32_t GGame::LoadFiles()
{
	RenderLoadingFrame("loading animations");
	LoadAllAnimations();
	RenderLoadingFrame("loading meshes");
	CreateMeshPack();
	if (!gesture_system_data_list->Load(".\\Data\\Gestures.jty"))
	{
		return 0;
	}
	RenderLoadingFrame("loading interface files");
	if (MyInterface()->LoadFiles() != 1)
	{
		return 0;
	}
	RenderLoadingFrame("initialising shapes");
	data.InitialiseShapes();
	return 1;
}

// BW1W120 00550820
int GGame::MyPlayerID(unsigned long user_id)
{
	// TODO: MSVC assigns the user ID and player counter to opposite registers in the original.
	for (unsigned long i = 0; i < 8; ++i)
	{
		for (GInterfaceStatus* status = players[i].GetNextInterfaceStatus(NULL); status != NULL;
		     status = players[i].GetNextInterfaceStatus(status))
		{
			if (status->GetInterface()->player != NULL && status->GetInterface()->player->UserId.field_0x0 == user_id)
			{
				return status->GetInterface()->player->PlayerId;
			}
		}
	}
	return -1;
}

// BW1W120 00550780 BW1M119 010c8970
void GGame::Dump()
{
	for (unsigned int i = 0; i < 8; ++i)
	{
		GetPlayer(i)->Dump();
	}
	map.Dump();
	GameLists.Dump();
}

// BW1W120 005507d0
void GGame::LoopThroughPlayers()
{
	for (GPlayer* player = GetNextPlayer(NULL); player != NULL; player = GetNextPlayer(player))
	{
	}
}

// BW1W120 005509e0 BW1M119 0100e8b0
GPlayer* GGame::GetPlayerFromReal(unsigned long player_id)
{
	if (player_id >= 8)
	{
		return NULL;
	}
	return &players[RealPlayerMap[player_id]];
}

// BW1W120 00550a10
GInterface* GGame::GetPlayerInterfaceFromReal(unsigned long player_id)
{
	if (player_id >= 8)
	{
		return NULL;
	}
	return GetPlayerFromReal(player_id)->GetRealInterface(player_id);
}

// BW1W120 005557a0 BW1M119 010cc4c0
void GGame::ResetState()
{
	data.Reset();
	if (network.session != NULL)
	{
		network.session->EmptyEventQ();
	}
	GNetwork::ResetStateDebug();
	fn_0054B180();
	fn_0054B190();
}

// BW1W120 00550410 BW1M119 01567850
void GGame::SetupPlayers()
{
	// TODO: FindNext still inlines here, and STL cleanup outlines more than the original.
	LHPlayer* player = NULL;
	if (network.Open(WCHAR2CHAR(player_info.NetworkName), NetworkApplication, NetworkChannel, NetworkPassword) ==
	    LH_ERROR)
	{
		return;
	}
	NeutralPlayerIndex = PLAYER_NAME_NEUTRAL;
	HelpTextDataBase& textDatabase = HelpTextDataBase::HelpTextDatabase;
	players[PLAYER_NAME_NEUTRAL].Init(
		PLAYER_TYPE_NEUTRAL, PLAYER_NAME_NEUTRAL,
		(textDatabase.count <= 0x1a6c ? textDatabase.array : &textDatabase.array[0x1a6c])->Text, PLAYER_NAME_NEUTRAL);
	field_0x205a5c = 0;
	while ((player = network.session->Players.FindNext(player)) != NULL)
	{
		++field_0x205a5c;
		if (!g_game->IsMultiplayerGame())
		{
			player->TeamNumber = player->PlayerId + 1;
			player->TeamMemberNumber = 1;
		}
		if (player->UserId.field_0x0 == network.session->NetUser->id.field_0x0)
		{
			g_game->field_0x205a5a = (uint8_t)player->PlayerId;
			if (player->TeamNumber == 0)
			{
				g_game->PlayerIndex = PLAYER_NAME_PLAYER_SEVEN;
			}
			else
			{
				g_game->PlayerIndex = (uint8_t)(player->TeamNumber - 1);
			}
		}
	}
	player = NULL;
	std::set<LHPlayer*, LHPlayerPointer_less> orderedPlayers;
	while ((player = network.session->Players.FindNext(player)) != NULL)
	{
		orderedPlayers.insert(player);
	}
	for (std::set<LHPlayer*, LHPlayerPointer_less>::iterator it = orderedPlayers.begin(); it != orderedPlayers.end();
	     it++)
	{
		player = *it;
		if (player->TeamNumber == 0)
		{
			RealPlayerMap[player->PlayerId] = PLAYER_NAME_PLAYER_SEVEN;
			players[PLAYER_NAME_PLAYER_SEVEN].InitReal(player, PLAYER_NAME_PLAYER_SEVEN);
		}
		else
		{
			RealPlayerMap[player->PlayerId] = (uint8_t)(player->TeamNumber - 1);
			// Only the argument and map entry truncate; indexing uses the full team number.
			players[player->TeamNumber - 1].InitReal(player, (uint8_t)(player->TeamNumber - 1));
		}
	}
	for (unsigned int i = 0; i < 7; ++i)
	{
		char playerName[200];
		sprintf(playerName, "Player[%d]", i + 1);
		if (players[i].GetNextInterfaceStatus(NULL) == NULL)
		{
			players[i].Init(PLAYER_TYPE_0, (uint8_t)i, CHAR2WCHAR(playerName), (uint8_t)i);
		}
	}
}

static_assert(offsetof(LHPlayer, PlayerId) == 0x174, "LHPlayer ID offset");
static_assert(offsetof(LHPlayer, TeamMemberNumber) == 0x1f4, "LHPlayer member offset");
static_assert(offsetof(LHPlayer, TeamNumber) == 0x1f8, "LHPlayer team offset");
static_assert(offsetof(LHSession, Players) == 0x90, "LHSession player list offset");
static_assert(offsetof(LHConnection, NetUser) == 0x88, "LHConnection user offset");
static_assert(offsetof(GPlayerInfo, NetworkName) == 0x50, "GPlayerInfo network name offset");
static_assert(offsetof(LHSys, MessageHook) == 0x70cc, "LHWin message callback offset");

// BW1W120 0054b240 BW1M119 010ccb00
GGame::GGame()
{
	config = NULL;
	temple = NULL;
	SavingMap = false;
	Enum0x25017c = 0;
	GameMode = GAME_MODE_RUNNING;
	InitializeCriticalSection(&VideoTimerSection);
	InitializeCriticalSection(&LHVideoPlayer::CriticalSection);
	LH3DRender::RegisterFinishFrameCallback(0x8000, true, LHVideoPlayer::thedraw, NULL);
	CPController::Init();
	LHSys::TheSystem.keyboard.Callback = KeyHandler;
	LHSys::TheSystem.keyboard.CallbackContext = NULL;
	SystemExit = false;
	ClearVariables();
	GWater::InitialiseCircles();
	field_0x2502e8 = 0;
	field_0x2502ec = 0;
	field_0x205d3c = 0;
	SoundMap = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x3fe) GSoundMap;
	help_system = NULL;
	help_profile = NULL;
	script = GScript::Create();
	gesture_system_data_list = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x404) GestureSystemDataList;
	gesture_system_data = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x405) GestureSystemData;
	gesture_system = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x406) GestureSystem;
	gesture_system_result = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x407) GestureSystemResult;
	settings = new ("C:\\dev\\MP\\Black\\Game.cpp", 0x408) Settings;
	((LH3DMapCoords&)StartCameraCoords).SetToZero();
	field_0x2500a8[0] = 0;
	field_0x250170 = NULL;
	PlayerInfluenceMultiplier = 1.0f;
	TownInfluenceMultiplier = 1.0f;
	DanceLight::InitialiseBitmaps();
	RPHolder::InitialiseSystem(CheckSquareFunction, AddSpecialRPObjects);
	field_0x14 |= 0x10000;
	field_0x2502a4 = 0;
	LandNumber = 0;
	field_0x25053c = 0;
	field_0x250540 = 0;
	climate = NULL;
	field_0x59a4 = 1;
	field_0x205d34 = 50;
}

// BW1W120 0054bf20 BW1M119 0111c2b0
void GGame::ClearVariables()
{
	field_0x250174 = 0;
	VideoPlayer = NULL;
	field_0x250194 = 0;
	field_0x25018c = 0;
	field_0x250190 = 0;
	field_0x2502c8 = 0;
	field_0x205d44 = 0;
	field_0x250094 = 0;
	Fps0x205d38 = 0;
	camera = NULL;
	field_0x205d50 = 0;
	field_0x205d54 = 0;
	field_0x205d58 = 0;
	field_0x5978 = 1;
	field_0x5979 = 0;
	field_0x5318[0] = 0;
	field_0x2502d0 = NULL;
	field_0x2502d4 = NULL;
	field_0x2502d8 = NULL;
	field_0x2502dc = NULL;
	field_0x2502e0 = NULL;
	field_0x2502e4 = NULL;
	field_0x14 = 0x20;
	field_0x205a0c = 0;
	field_0x205a10 = 0;
	field_0x205a14 = 0;
	field_0x205a18 = 0;
	field_0x205a1c = 0;
}

// BW1W120 0054bfd0 BW1M119 013c9a40
void GGame::ToBeDeleted(int param_1)
{
	DanceLight::CloseBitmaps();
	delete gesture_system_data_list;
	delete gesture_system_data;
	delete gesture_system;
	::operator delete(gesture_system_result);
	::operator delete(settings);
	delete script;
	delete SoundMap;
	fclose(field_0x2502d0);
	fclose(field_0x2502d4);
	fclose(field_0x2502d8);
	fclose(field_0x2502dc);
	fclose(field_0x2502e0);
	fclose(field_0x2502e4);
	GWater::g_sprite_circle->Release();
	LHSys::TheSystem.keyboard.Callback = NULL;
	LHSys::TheSystem.keyboard.CallbackContext = NULL;
	CPController::Close();
	EnterVideoSection();
	DeleteVideo(true);
	LH3DRender::RemoveFinishFrameCallback(LHVideoPlayer::thedraw, NULL);
	LeaveVideoSection();
	EnterCriticalSection(&VideoTimerSection);
	LeaveCriticalSection(&VideoTimerSection);
	DeleteCriticalSection(&LHVideoPlayer::CriticalSection);
	DeleteCriticalSection(&VideoTimerSection);
	Flags |= GAME_THING_FLAG_UNAVAILABLE;
	delete field_0x250094;
	if (config != NULL)
	{
		delete config;
		config = NULL;
	}
}

// BW1W120 0054ec80 BW1M119 013bd6a0
bool32_t GGame::Close()
{
	ClearMap();
	climate = NULL;
#ifdef VERSION_BW1W120
	field_0x59a0 = 30;
#endif
	GameThing::ProcessDeadList(1);
	time_t currentTime;
	time(&currentTime);
	PlayerProfile::Profile.timestarted += currentTime - field_0x59ac;
	PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
	GameThing::ProcessDeadList(1);
	field_0x250538 = 0;
	if (script != NULL)
	{
		script->Reset(1);
	}
	GameThing::ProcessDeadList(1);
	delete temple;
	temple = NULL;
	MusicMoodController::Close();
	DeadTree::Close();
	GameThing::ProcessDeadList(1);
	UnfinishInitialisation();
	CarriedObject::Reset();
	help_profile->ToBeDeleted(0);
	help_system->ToBeDeleted(0);
	help_system = NULL;
	help_profile = NULL;
	CreatureDanceLineInput* lineInput = CreatureDanceLineIn;
	if (lineInput != NULL)
	{
		lineInput->fn_00437C00();
		lineInput->Analysis.fn_004373E0();
		::operator delete(lineInput);
	}
	CreatureDanceLineIn = NULL;
	MusicMoodController::CreatureMusicMoodEnabled = 0;
	GameThing::ProcessDeadList(1);
	SoundMap->Reset();
	camera->ToBeDeleted(0);
	camera = NULL;
	GameThing::ProcessDeadList(1);
	terrain_map.Clear();
	DanceGroup::NextUntitledNumber = 1;
	fn_0064D0F0();
	for (GPlayer* player = GetNextPlayerAndNeutral(NULL); player != NULL; player = GetNextPlayerAndNeutral(player))
	{
		player->Uninit();
		GameThing::ProcessDeadList(1);
	}
	UninitialiseLiquidParticles();
	GameThing::ProcessDeadList(1);
	landscape.Close();
	GameThing::ProcessDeadList(1);
	AttributeTest::DeleteAttributeArray();
	AttributeTest::DeleteBeliefArray();
	GameThing::ProcessDeadList(1);
	PhysicsObject::DeleteAll();
	while (PowerSpinRunner::First != NULL)
	{
		delete PowerSpinRunner::First;
	}
	for (int i = 0; i < 8; ++i)
	{
		players[i].SetToZero();
		GAlignment* alignment = players[i].alignment;
		alignment->field_0xc = 0.0f;
		alignment->value = 0.0f;
	}
	GameThing::ProcessDeadList(1);
	Base::ObjectHeapStore->Restore();
	return 1;
}

// BW1W120 00552bb0 BW1M119 01172c70
void GGame::ClearMap()
{
	fn_007DEE00();
	g_game->field_0x14 |= 0x8000;
	field_0x14 &= 0xffddffff;
	field_0x205a10 = 0;
	field_0x205a14 = 0;
	SuperVillager* superVillager = SuperVillager::g_first;
	while (superVillager != NULL)
	{
		SuperVillager* current = superVillager;
		superVillager = superVillager->Next;
		current->Release();
	}
	SuperVillager::g_first = NULL;
	g_game->GetCamera()->ClearCameraStack();
	MPFEData::Data.Reset();
	InfluenceCircle::Reset();
	// The coordinate setters are inlined here, unlike the constructor's SetToZero call.
	LH3DMapCoords& startCoords = (LH3DMapCoords&)StartCameraCoords;
	startCoords.x = 0;
	startCoords.z = 0;
	startCoords.altitude = 0.0f;
	if (players[PlayerIndex].creature != NULL && players[PlayerIndex].GetLeaderInterfaceStatus() != NULL &&
	    players[PlayerIndex].creature->field_0x1058 == 0)
	{
		char mindPath[256];
		char physiquePath[256];
		sprintf(mindPath, ".\\Scripts\\CreatureMind\\%s",
		        players[PlayerIndex].GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename);
		players[PlayerIndex].creature->mind->SaveMind(mindPath);
		sprintf(physiquePath, ".\\Scripts\\CreatureMind\\Physique%s",
		        players[PlayerIndex].GetLeaderInterfaceStatus()->GetInterface()->player->UserFilename);
		players[PlayerIndex].creature->Save3D(physiquePath);
	}
	CameraExclusion::RemoveAll();
	CameraExclusion::ResetExclusionFile(0);
	ResetCameraModeNew3();
	PhysicsObject::DeleteAll();
	GInterface& playerInterface = *g_game->MyInterface();
	playerInterface.hand.Get()->OnClearMap();
	GGlobal::Global.audio->ReleaseAllThingMusicInfo();
	GGlobal::Global.audio->Reset();
	g_game->script->ValidateScriptVariables();
	GGlobal::Global.audio->Reset();
	GameLists.ClearMap();
	if (g_game->temple != NULL)
	{
		ChallengeRoom::ChallengeClear();
	}
	for (int i = 0; i < 8; ++i)
	{
		players[i].OnEndOfClearMap();
	}
	Bookmark::ClearAll();
	ScriptHighlight::OnClearMap();
	FireFly::OnClearMap();
	PSysGlobal::OnClearMap();
	g_game->script->ValidateScriptVariables();
	g_game->MyInterface()->Validate();
	GLandscape::DrawListRebuildCount = 1;
	GBaseOnly::ReleaseAll();
	Dance* dance = g_game->GameLists.dances.head;
	while (dance != NULL)
	{
		Dance* next = dance->Next;
		dance->ToBeDeleted(0);
		dance = next;
	}
	GameThing::ProcessDeadList(1);
	ResetState();
	GameStats::ClearAll();
	CameraHelp::EnabledFeatures = 0x1bf;
	CameraHelp::AutoPitchParam2 = 75.0f;
	CameraHelp::AutoPitchParam1 = 0.5235988f;
	HelpProfile::AccumulatedTime = 0;
	for (int j = 0; j < GLandscape::DrawObjectCount; ++j)
	{
		GLandscape::DrawObjects[j] = NULL;
	}
	GLandscape::DrawObjectCount = 0;
	GLandscape::DrawListRebuildCount = 1;
	ResetBlockersForClearMap();
	climate = NULL;
	SoundMap->Reset();
	terrain_map.Clear();
	PhysicsObject::DeleteAll();
	while (PowerSpinRunner::First != NULL)
	{
		delete PowerSpinRunner::First;
	}
	GameThing::ProcessDeadList(1);
	Forest::OnClearMap();
	Creature::OnClearMap();
	GSpecialVillagerInfo::OnClearMap();
	g_game->field_0x14 &= ~0x8000u;
	GLandBalance::Init();
	InitStaticsValues();
	GameBlock::Clean();
	ClearAllStuff();
	fn_007DEE00();
}

// Constructors emitted in the original Game translation unit.
GPacket::PhysicsData::PhysicsData()
{
	Velocity.z = 0.0f;
	Velocity.y = 0.0f;
	Velocity.x = 0.0f;
	Rotation.z = 0.0f;
	Rotation.y = 0.0f;
	Rotation.x = 0.0f;
}
// BW1W120 0054b910 BW1M119 0101b3a0
MusicMoodPacket::MusicMoodPacket()
{
	Emotion.Reset();
	field_0x8 = 0;
	field_0x4 = 0;
	field_0x0 = 0;
}
// BW1W120 0054bcd0
GTerrainMap::GTerrainMap() {}
// BW1W120 0054b930
GKeyBuffer::GKeyBuffer()
{
	Inputs = NULL;
	BufferedKeys = 0;
	field_0xc = 0;
}
// BW1W120 0054b9d0
GSoundMap::GSoundMap()
{
	Reset();
	memset(field_0xb4, 0, sizeof(field_0xb4));
}
// BW1W120 0054baa0
GestureSystemDataList::GestureSystemDataList()
{
	Data = NULL;
	Count = 0;
}
// BW1W120 0054baf0 BW1M119 inlined
GestureSystemData::GestureSystemData()
{
	SetToZero();
}
// BW1W120 0054bb40
GestureSystem::GestureSystem()
{
	field_0xc94 = 1;
}
// BW1W120 0054bb90 BW1M119 01095b00
void GestureSystemResult::SetToZero()
{
	field_0x0 = 0;
	Reversed = 0;
	EndSample = 0;
	StartSample = 0;
}

static_assert(sizeof(GPacket) == 0x110, "GPacket size is incorrect");
#ifdef VERSION_BW1W120
static_assert(offsetof(GGame, Packet) == 0x205a60, "GPacket offset is incorrect");
static_assert(offsetof(GGame, field_0x5978) == 0x5978, "Packet length offset is incorrect");
static_assert(offsetof(GGame, VideoPlayer) == 0x250188, "Video player offset is incorrect");
#else
static_assert(offsetof(GGame, Packet) == 0x201b1c, "GPacket offset is incorrect");
static_assert(offsetof(GGame, field_0x5978) == 0x1a38, "Packet length offset is incorrect");
static_assert(offsetof(GGame, VideoPlayer) == 0x24c244, "Video player offset is incorrect");
#endif
static_assert(sizeof(GNetwork) == 0x30, "GNetwork size is incorrect");
static_assert(sizeof(GTerrainMap) == 0x4a130, "GTerrainMap size is incorrect");
#ifdef VERSION_BW1W120
static_assert(sizeof(GGame) == 0x250544, "GGame size is incorrect");
#else
static_assert(sizeof(GGame) == 0x24c600, "GGame size is incorrect");
#endif
static_assert(sizeof(GSoundMap) == 0x110, "GSoundMap size is incorrect");
static_assert(sizeof(GestureSystemDataList) == 0x10, "GestureSystemDataList size is incorrect");
static_assert(sizeof(GestureSystemData) == 0x65c, "GestureSystemData size is incorrect");
static_assert(sizeof(GestureSystem) == 0xc98, "GestureSystem size is incorrect");
static_assert(sizeof(GestureSystemResult) == 0xc, "GestureSystemResult size is incorrect");
static_assert(sizeof(Settings) == 0x104, "Settings size is incorrect");
static_assert(offsetof(CreatureDanceLineInput, Analysis) == 0x28, "Line-input prefix offset is incorrect");
static_assert(offsetof(Dance, Next) == 0xec, "Dance link offset is incorrect");
static_assert(sizeof(Dance) == 0x12c, "Dance size is incorrect");
#ifdef VERSION_BW1W120
static_assert(offsetof(GGame, field_0x59ac) == 0x59ac, "Game start-time offset is incorrect");
#else
static_assert(offsetof(GGame, field_0x59ac) == 0x1a68, "Game start-time offset is incorrect");
#endif
static_assert(offsetof(GInterfaceMessage, Collide) == 0xc, "Message collision offset is incorrect");
static_assert(offsetof(GInterfaceMessageBuffer, Messages) == 8, "Message array offset is incorrect");
static_assert(sizeof(GInterfaceMessageBuffer) == 0x14, "Message buffer size is incorrect");
static_assert(offsetof(LHSys, mouse) + offsetof(LHMouse, DrawCallback) == 0x1c8, "Mouse callback offset is incorrect");
static_assert(offsetof(LHSys, mouse) + offsetof(LHMouse, CallbackArg1) == 0x314, "Mouse context offset is incorrect");

static_assert(sizeof(GGlobal) == 0x2d500, "GGlobal size is incorrect");
static_assert(offsetof(GGlobal, field_0x2d2ac) == 0x2d2ac, "GGlobal editor mode offset is incorrect");
static_assert(offsetof(GGlobal, field_0x2d2e4) == 0x2d2e4, "GGlobal editor pointer offset is incorrect");
static_assert(sizeof(Prss) == 0x10, "Prss size is incorrect");
static_assert(offsetof(GDebug, CellBoxes) == 0x2d2a0, "GDebug CellBoxes offset is incorrect");
static_assert(sizeof(GDebug) == 0x2d2a8, "GDebug size is incorrect");
static_assert(offsetof(GPlayer, interfaces) == 0x14, "GPlayer interfaces offset is incorrect");
static_assert(offsetof(GGame, players) == 0x18, "GGame players offset is incorrect");
#ifdef VERSION_BW1W120
static_assert(sizeof(GPlayer) == 0xa60, "GPlayer stride is incorrect");
static_assert(offsetof(GPlayer, type) == 0x8e0, "GPlayer type offset is incorrect");
static_assert(offsetof(GPlayer, towns) == 0xa50, "GPlayer towns offset is incorrect");
static_assert(offsetof(GGame, PlayerIndex) == 0x205a59, "GGame player index offset is incorrect");
static_assert(offsetof(GGame, field_0x205a5a) == 0x205a5a, "GGame interface index offset is incorrect");
static_assert(offsetof(GGame, network) + offsetof(GNetwork, session) == 0x205b80, "GGame session offset is incorrect");
static_assert(offsetof(GGame, camera) == 0x2502c0, "GGame camera offset is incorrect");
#else
static_assert(sizeof(GPlayer) == 0x278, "GPlayer stride is incorrect");
static_assert(offsetof(GPlayer, type) == 0xf8, "GPlayer type offset is incorrect");
static_assert(offsetof(GPlayer, towns) == 0x268, "GPlayer towns offset is incorrect");
static_assert(offsetof(GGame, NeutralPlayerIndex) == 0x201b17, "GGame neutral player index offset is incorrect");
static_assert(offsetof(GGame, GameLists) + offsetof(GlobalGameLists, GameThings) == 0x201dd8,
              "GGame game things list offset is incorrect");
static_assert(offsetof(GGame, PlayerIndex) == 0x201b15, "GGame player index offset is incorrect");
static_assert(offsetof(GGame, field_0x205a5a) == 0x201b16, "GGame interface index offset is incorrect");
static_assert(offsetof(GGame, network) + offsetof(GNetwork, session) == 0x201c3c, "GGame session offset is incorrect");
static_assert(offsetof(GGame, camera) == 0x24c37c, "GGame camera offset is incorrect");
#endif
static_assert(offsetof(Town, field_0x5b4) == 0x5b4, "Town ID offset is incorrect");
#ifdef VERSION_BW1W120
static_assert(offsetof(Town, next) == 0x75c, "Town next offset is incorrect");
static_assert(offsetof(GGame, field_0x205a5c) == 0x205a5c, "GGame serialized byte offset is incorrect");
#elif defined(VERSION_BW1W110)
static_assert(offsetof(Town, next) == 0x758, "Town next offset is incorrect");
static_assert(offsetof(GGame, field_0x205a5c) == 0x201b18, "GGame serialized byte offset is incorrect");
#else
static_assert(offsetof(Town, next) == 0x754, "Town next offset is incorrect");
static_assert(offsetof(GGame, field_0x205a5c) == 0x201b18, "GGame serialized byte offset is incorrect");
#endif
static_assert(sizeof(CMouse) == 4, "CMouse size is incorrect");
static_assert(offsetof(GCameraEditor, field_0x10) == 0x10, "GCameraEditor flag offset is incorrect");
#ifdef VERSION_BW1W120
static_assert(offsetof(GGame, field_0x205ba0) == 0x205ba0, "GGame serialized word offset is incorrect");
static_assert(offsetof(GGame, script_creature_curse) == 0x250084, "GGame curse offset is incorrect");
static_assert(offsetof(GGame, Mouse) == 0x2502b8, "GGame mouse offset is incorrect");
static_assert(offsetof(GGame, key_buffer) + offsetof(GKeyBuffer, Inputs) == 0x2502b0,
              "GGame key array offset is incorrect");
static_assert(offsetof(GGame, key_buffer) + offsetof(GKeyBuffer, BufferedKeys) == 0x2502b6,
              "GGame key count offset is incorrect");
static_assert(offsetof(GGame, GameLists) + offsetof(GlobalGameLists, LivingList) == 0x205bbc,
              "GGame living list offset is incorrect");
#else
// Everything after GGame::players sits 0x3f44 lower in 1.00/1.10 (see the GPlayer note above).
static_assert(offsetof(GGame, field_0x205ba0) == 0x201c5c, "GGame serialized word offset is incorrect");
static_assert(offsetof(GGame, script_creature_curse) == 0x24c140, "GGame curse offset is incorrect");
static_assert(offsetof(GGame, Mouse) == 0x24c374, "GGame mouse offset is incorrect");
static_assert(offsetof(GGame, key_buffer) + offsetof(GKeyBuffer, Inputs) == 0x24c36c,
              "GGame key array offset is incorrect");
static_assert(offsetof(GGame, key_buffer) + offsetof(GKeyBuffer, BufferedKeys) == 0x24c372,
              "GGame key count offset is incorrect");
static_assert(offsetof(GGame, GameLists) + offsetof(GlobalGameLists, LivingList) == 0x201c78,
              "GGame living list offset is incorrect");
#endif
static_assert(offsetof(Living, next) == 0xa4, "Living link offset is incorrect");
static_assert(offsetof(Villager, mother) == 0x100, "Villager mother offset is incorrect");

// BW1W120 0054b9a0 BW1M119 0109ee50
bool32_t GGame::IsAvailable()
{
	return (Flags & GAME_THING_FLAG_UNAVAILABLE) == 0;
}

// BW1W120 0054b9b0 BW1M119 01357d50
uint32_t GGame::GetSaveType()
{
	return 0x6a;
}

// BW1W120 0054b9c0 BW1M119 0116e6c0
char* GGame::GetDebugText()
{
	return "Game:";
}

// BW1W120 0054c180 BW1M119 0103cd90
GCamera* GGame::GetCamera()
{
	return camera;
}

// BW1W120 0054c330 BW1M119 010e7580
void GGame::Delete() {}

// BW1W120 0054c340 BW1M119 0107be10
void GGame::ProcessFrameInputs()
{
	DanceEditState::UpdateEveryRender();
	CreatureMentalEditor::Update();
	CreatureLessonChooser::Update();
	PSysEditorInterface::ProcessFrameInputs();
	ProcessMapKeys();
	if (GGlobal::Global.field_0x2d2ac != 0)
	{
		if (GCameraEditor::Instance == NULL || GCameraEditor::Instance->field_0x10 != 0)
		{
			EditorProcessInputs();
		}
	}
	else if (!MyInterface()->IsPlayBack(0))
	{
		Mouse.ProcessButtons();
	}
	BMan_Zero();
	EnterCriticalSection(&LHScreen::CriticalSection);
	MyInterface()->ProcessFrameUpdates();
	LeaveCriticalSection(&LHScreen::CriticalSection);
}

// BW1W120 0054c3d0 BW1M119 01020dd0
void GGame::ProcessGameInputs()
{
	EnterCriticalSection(&LHKeyboard::CriticalSection);
	ProcessBufferedKeys();
	LeaveCriticalSection(&LHKeyboard::CriticalSection);
	ProcessOneSuperpacket();
	EnterCriticalSection(&LHScreen::CriticalSection);
	MyInterface()->Process();
	LeaveCriticalSection(&LHScreen::CriticalSection);
}

// BW1W120 0054c420 BW1M119 01086330
void GGame::ProcessBufferedKeys()
{
	int count = key_buffer.BufferedKeys;
	for (int i = 0; i < count; ++i)
	{
		// Snapshot the count, but reload the mode and array after each callback.
		if (GGlobal::Global.field_0x2d2ac != 0)
		{
			EditorProcessKey(key_buffer.Inputs[(unsigned short)i].Key, key_buffer.Inputs[(unsigned short)i].Modifier);
		}
		else
		{
			ProcessKey(key_buffer.Inputs[(unsigned short)i].Key, key_buffer.Inputs[(unsigned short)i].Modifier);
		}
	}
	key_buffer.BufferedKeys = 0;
}

// BW1W120 0054c4a0 BW1M119 0102c2e0
bool32_t GGame::LocalTimerSaysDoATurn()
{
	// MSeconds converts both tick values as unsigned floats (also visible in the PPC implementation).
	int elapsed =
		(int)((float)(GetTickCount() - timer.TickCount) * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
	int gameTime = (int)(g_game->data.GameTurn * 100);
	if (g_game->field_0x14 & 0x400000)
	{
		return 1;
	}
	if (network.session->IsSinglePlayer() && (g_game->field_0x14 & 4))
	{
		return 0;
	}
	if (network.session->IsSinglePlayer() && !(g_game->field_0x14 & 4) && elapsed - gameTime > 2000)
	{
		ResetLocalGameTimer();
	}
	// Deliberately compare the pre-reset snapshot.
	return elapsed >= gameTime;
}

// BW1W120 0054c570 BW1M119 010015c0
void ResetLocalGameTimer()
{
	// Stop, Reset and Start are fully inlined here in the original, unlike Loop startup.
	{
		LHTimer& timer = GGame::g_game->timer;
		if (timer.SpeedUpFactor != 0.0f)
		{
			timer.SpeedUpFactor2 = timer.SpeedUpFactor;
			unsigned long ticks = GetTickCount() - timer.TickCount;
			timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
			timer.TickCount = GetTickCount();
			timer.SpeedUpFactor = 0.0f;
		}
	}
	{
		uint32_t gameTurn = GGame::g_game->data.GameTurn;
		LHTimer& timer = GGame::g_game->timer;
		timer.TickCount = GetTickCount();
		timer.ElapsedTime = gameTurn * 100;
		if (timer.SpeedUpFactor != 0.0f)
		{
			timer.SpeedUpFactor2 = timer.SpeedUpFactor;
			unsigned long ticks = GetTickCount() - timer.TickCount;
			timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
			timer.TickCount = GetTickCount();
			timer.SpeedUpFactor = 0.0f;
		}
	}
	{
		LHTimer& timer = GGame::g_game->timer;
		timer.SpeedUpFactor = 0.00001f;
		float         speed = timer.SpeedUpFactor2;
		unsigned long ticks = GetTickCount() - timer.TickCount;
		timer.ElapsedTime = (int)((float)ticks * timer.SpeedUpFactor + (float)(uint32_t)timer.ElapsedTime);
		timer.TickCount = GetTickCount();
		timer.SpeedUpFactor = speed;
	}
}

// BW1W120 0054cc30 BW1M119 0102be90
void GGame::ProcessNetworkPackets()
{
	if (network.session->field_0x4 == 0)
	{
		return;
	}
	if (network.session->IsDisconnected() && !network.session->CheckForEvents())
	{
		return;
	}
	if ((field_0x14 & 4) && (GGlobal::Global.field_0x2d2ac != 0 || field_0x205a28 == 1))
	{
		static DWORD lastPausedTurn = GetTickCount();
		if (GetTickCount() - lastPausedTurn > 100)
		{
			lastPausedTurn += 100;
			if (GetTickCount() - lastPausedTurn > 200)
			{
				lastPausedTurn = GetTickCount();
			}
			if (GGlobal::Global.field_0x2d2ac != 0)
			{
				GGlobal::Global.field_0x2d2e4 = GGlobal::Global.field_0x2d2e4->ProcessTurn();
				if (GGlobal::Global.field_0x2d2e4 == NULL)
				{
					GGlobal::Global.field_0x2d2ac = 0;
				}
			}
			if (field_0x205a28 == 1)
			{
				temple->ProcessGameTurn();
			}
		}
	}
	uint32_t turnLimit = g_game->IsMultiplayerGame() ? 10 : 1;
	while ((network.session->IsSinglePlayer() || network.session->CheckForEvents()) && LocalTimerSaysDoATurn() &&
	       NetworkTurnsThisFrame < turnLimit)
	{
		if (network.session->IsSinglePlayer() || network.session->NextPacketIsSuperpacket())
		{
			++NetworkTurnsThisFrame;
			LHNetEvent* event = network.session->Peek(0);
			if (!network.session->IsSinglePlayer() && network.session->RawPeek(0, LH_NETEVENT_TYPE_0x1b63) == NULL)
			{
				for (int i = 0; i < 9; ++i)
				{
					PacketTimeHistory[i] = PacketTimeHistory[i + 1];
				}
				int eventTime = event->field_0x4;
				GetTickCount(); // Two real clock calls; the first result is discarded.
				PacketTimeHistory[9] = GetTickCount() - 200 - eventTime;
				int sum = 0;
				int minTime = 100000;
				int maxTime = -100000;
				for (int j = 0; j < 10; ++j)
				{
					int value = PacketTimeHistory[j];
					sum += value;
					if (minTime >= value)
					{
						minTime = value;
					}
					if (maxTime <= value)
					{
						maxTime = value;
					}
				}
				timer.TickCount -= (sum / 10 - ((maxTime - minTime) >> 1)) >> 2;
			}
			field_0x59a4 = 1;
			ProcessOneGameTurn();
			field_0x59a4 = 0;
			network.session->GetIncomingEventQSize();
			for (int k = 0; k < 99; ++k)
			{
				IncomingQueueHistory[k] = IncomingQueueHistory[k + 1];
			}
			IncomingQueueHistory[99] = network.session->GetIncomingEventQSize();
		}
		else if (!network.session->IsSinglePlayer())
		{
			network.ProcessOnePacket();
		}
	}
}

// BW1W120 0054ced0 BW1M119 0149e1d0
void GGame::DoNetworkStart()
{
	RenderLoadingFrame("Waiting for completion of user data transer...");
	network.field_0x4 = 1.0f;
	g_game->data.field_0x14 = g_game->network.session->SuperPacketGameTurn + 1;
	RenderLoadingFrame("Waiting for first super packet...");
	RenderLoadingFrame("Found superpacket.");
	GatheringBox::InitialiseForCurrentGame();
}

// BW1W120 0054cf20 BW1M119 01106610
void GGame::Loop()
{
	bool32_t showMainMenu = 0;
	char16_t entryProfile[32];
	if (!IsMultiplayerGame())
	{
		wcscpy(entryProfile, (char16_t*)LHNetGetCurrentUsedProfile());
	}
	if (Enum0x25017c == 0)
	{
		FrontEnd::StartupMenuActive = true;
		FrontEnd::SetCursorOn();
		showMainMenu = 1;
	}
	else
	{
		LHTimer& localTimer = timer;
		localTimer.TickCount = GetTickCount();
		localTimer.ElapsedTime = 0;
		localTimer.Stop();
		localTimer.SpeedUpFactor = 0.00001f;
		localTimer.SetSpeedUpFactor(localTimer.SpeedUpFactor2);
	}
	memset(IncomingQueueHistory, 0, sizeof(IncomingQueueHistory));
	memset(PacketTimeHistory, 0, sizeof(PacketTimeHistory));
	DoNetworkStart();
	camera->Update();
	RenderLoadingFrame("Starting game loop...");
	if (!network.session->IsSinglePlayer())
	{
		help_system->field_0x4608 = 0;
	}
	LH3DTech::g_game_time_inc = 0;
	field_0x205d48 = 0;
	field_0x205d64 = 0.0f;
	static uint32_t playLogoOnFirstLoop = 1;
	if (playLogoOnFirstLoop)
	{
		LH_SamplePlayOptions options;
		options.field_0x8 = 0;
		options.Bank = GGlobal::Global.audio->AudioBanks[AUDIO_SFX_BANK_TYPE_IN_GAME];
		options.AttachedObject = NULL;
		options.SampleNumber = LH_SAMPLE_LOGO;
		GGlobal::Global.audio->PlaySoundEffect(&options);
		playLogoOnFirstLoop = 0;
		if (!g_game->IsMultiplayerGame())
		{
			DoLogo();
			GGlobal::Global.audio->StopPlayingSoundEffect(LH_SAMPLE_LOGO, 0, AUDIO_SFX_BANK_TYPE_IN_GAME);
		}
	}
	if (showMainMenu)
	{
		FrontEnd::MainMenuDialog->Show();
	}
	InputReset();
	if (IsMultiplayerGame())
	{
		LHNetBase::Instance.Session->SetupGamePlayerInfo();
		SendNetworkChecksum(false);
		ProcessGameCode();
		LH3DTech::g_game_time_inc = 0;
		field_0x205d48 = 0;
		ProcessGraphicsEngine(0, 0);
		LH3DRender::StartFrame();
		SetupThing::DrawAlpha = 0xff;
		SetupThing::DrawBg(100, 200, 700, 400, 0xffffff, 0, -1);
		LH3DColor color;
		color.b = 0;
		color.g = 0;
		color.r = 0;
		color.a = 0xff;
		HelpTextDataBase& textDatabase = HelpTextDataBase::HelpTextDatabase;
		char16_t* text = (textDatabase.count <= 0x1ab4 ? textDatabase.array : &textDatabase.array[0x1ab4])->Text;
		SetupThing::DrawTextWrap(101, 201, 701, 401, 401, true, text, GetBigTextSize(), &color, true, false);
		color.b = 0xff;
		color.g = 0xff;
		color.r = 0xff;
		color.a = 0xff;
		text = (textDatabase.count <= 0x1ab4 ? textDatabase.array : &textDatabase.array[0x1ab4])->Text;
		SetupThing::DrawTextWrap(100, 200, 700, 400, 400, true, text, GetBigTextSize(), &color, true, false);
		LH3DRender::FinishFrame();
		FlipScreen();
		if (network.session->SyncAllAndStartSession(0xffffffffUL) != LH_OK)
		{
			fn_00555400();
			return;
		}
	}
	ResetLocalGameTimer();
	InputReset();
	PlayerProfile::SetCurrentProfile((char16_t*)LHNetGetCurrentProfileNameFromRegistry());
	{
		char16_t currentProfile[256];
		PlayerProfile::GetCurrentProfile(currentProfile);
		PlayerProfile::GetProfileByName(currentProfile, PlayerProfile::Profile);
		PlayerProfile::WriteBackToRegistry(PlayerProfile::Profile);
	}
	g_game->GameMode = GAME_MODE_RUNNING;
	ClearTipVideo();
	while (g_game->GameMode == GAME_MODE_RUNNING)
	{
		field_0x205d5c = 0;
		control_map->ProcessActionsPerformed();
		EnterCriticalSection(&LHKeyboard::CriticalSection);
		ProcessBufferedKeys();
		LeaveCriticalSection(&LHKeyboard::CriticalSection);
		ProcessNetworkPackets();
		fn_005525E0();
		++data.field_0x1c;
		if (RenderLoopEnabled)
		{
			if ((field_0x14 & 4) == 0)
			{
				static int      PreviousLoopTimerSample = 0;
				static uint32_t PreviousLoopGameTurn = 0;
				static int      LoopTimeRemainder = 0;
				int             sample = (int)((float)(GetTickCount() - timer.TickCount) * timer.SpeedUpFactor +
				                               (float)(uint32_t)timer.ElapsedTime);
				int             delta = sample - PreviousLoopTimerSample;
				PreviousLoopTimerSample = sample;
				uint32_t gameTurn = data.GameTurn;
				if (PreviousLoopGameTurn == gameTurn)
				{
					LoopTimeRemainder += delta;
				}
				else
				{
					LoopTimeRemainder += delta - 100;
					PreviousLoopGameTurn = gameTurn;
				}
				if (LoopTimeRemainder > 0)
				{
					if (LoopTimeRemainder >= 99)
					{
						LoopTimeRemainder = 99;
					}
				}
				else
				{
					LoopTimeRemainder = 0;
				}
				uint32_t renderTime = gameTurn * 100 + LoopTimeRemainder;
				if (renderTime < field_0x25053c)
				{
					field_0x25053c = renderTime;
					LoopTimeRemainder = 0;
				}
				field_0x250540 = renderTime - field_0x25053c;
				field_0x25053c = renderTime;
				LH3DTech::g_game_time_inc = field_0x250540;
				field_0x205d48 = field_0x250540;
				field_0x205d64 = (float)LoopTimeRemainder * 0.01f;
			}
			else
			{
				field_0x250540 = 0;
				LH3DTech::g_game_time_inc = 0;
				field_0x205d48 = 0;
			}
			if (!LHSys::GetScreen().IsAppMinimized())
			{
				ProcessGraphicsEngine(0, 0);
			}
		}
		NetworkTurnsThisFrame = 0;
		if (field_0x205d58 != 0)
		{
			ProcessNetworkPackets();
		}
		if (RenderLoopEnabled)
		{
			fn_0054D7F0();
			ProcessFrameInputs();
			ScriptedScreenShot::Process();
			FlipScreen();
		}
		players[PlayerIndex].SavePlayerAlignment(data.GameTurn);
		CreatureRoom::ProcessScreenShot();
		if (LHSys::GetSystem().Terminate != 0 && help_system != NULL &&
		    (help_system->field_0x45e8 == 0 || help_system->field_0x45ec == 0))
		{
			g_game->GameMode = GAME_MODE_QUITTING;
		}
	}
	DialogBoxBase::HideAll();
	if (field_0x205a10 == 0 && !IsMultiplayerGame() && field_0x205a0c == 0 && g_game->GameMode != GAME_MODE_4)
	{
		if (GameMode == GAME_MODE_QUITTING)
		{
			bool callbacksEnabled = g_enable_callbacks;
			g_enable_callbacks = false;
			for (int i = 0; i < 2; ++i)
			{
				LH3DTech::g_game_time_inc = 0;
				g_game->field_0x205d48 = 0;
				LH3DRender::StartFrame();
				SetupThing::DrawAlpha = 0xff;
				SetupThing::DrawBox(-1, -1, LHSys::GetScreen().width, LHSys::GetScreen().height, 0xff000000, 0xff000000,
				                    0xff000000, 0xff000000, 1, 0);
				LH3DRender::FinishFrame();
				LHSys::GetScreen().Flip(1);
			}
			g_enable_callbacks = callbacksEnabled;
		}
		if (g_game->LandNumber != 6)
		{
			if (FrontEnd::PreviousProfile[0] == 0 ||
			    (g_game->GameMode != GAME_MODE_2 &&
			     _wcsicmp(PlayerProfile::Profile.CurrentProfile, FrontEnd::PreviousProfile) == 0))
			{
				SaveGameRoom::InstantSaveGame(20);
			}
			else
			{
				char16_t restoreProfile[32];
				wcscpy(restoreProfile, PlayerProfile::Profile.CurrentProfile);
				if (PlayerProfile::ProfileExists(FrontEnd::PreviousProfile) &&
				    _wcsicmp(PlayerProfile::Profile.CurrentProfile, FrontEnd::PreviousProfile) != 0)
				{
					PlayerProfile::SetCurrentProfile(FrontEnd::PreviousProfile);
					SaveGameRoom::InstantSaveGame(20);
					PlayerProfile::SetCurrentProfile(restoreProfile);
				}
			}
		}
		FrontEnd::PreviousProfile[0] = 0;
	}
	if (LHSys::GetSystem().Terminate == 1)
	{
		GameMode = GAME_MODE_QUITTING;
	}
}

// Original name unrecovered.
// BW1W120 0054d7f0
void GGame::fn_0054D7F0()
{
	++field_0x205d44;
}

// BW1W120 0054d800 BW1M119 010e5f60
void GGame::FlipScreen()
{
	if (RenderLoopEnabled)
	{
		LHSys::GetScreen().Flip(1);
	}
}

// Original name unrecovered.
// BW1W120 005525e0
void GGame::fn_005525E0()
{
	if (field_0x5318[0] != 0)
	{
		network.fn_00635450(field_0x5318, field_0x5978);
		field_0x5978 = 1;
		field_0x5318[0] = 0;
	}
}

// Original name unrecovered.
// BW1W120 00555400
void GGame::fn_00555400()
{
	GameMode = GAME_MODE_ONLINE;
}

// BW1W120 0054d620 BW1M119 01020e60
void GGame::ProcessOneGameTurn()
{
	fn_0054D610();
	network.session->IsSinglePlayer();
	if (config != NULL)
	{
		config->Process();
	}
	field_0x205d44 = 0;
	field_0x205d40 += GGameInfo::Info.field_0x40;
	ProcessGameInputs();
	if (!g_game->field_0x599c)
	{
		ProcessGameCode();
	}
	fn_005557D0();
	DoWallHuggerLookahead();
	if (RepairMissingMothers == 1)
	{
		// Preserve the original iterator's null-to-head fallback.
		for (Living* living = g_game->GameLists.LivingList.head; living != NULL;
		     living = living == NULL ? g_game->GameLists.LivingList.head : living->next)
		{
			Villager* villager = dynamic_cast<Villager*>(living);
			if (villager != NULL && villager->mother == NULL)
			{
				villager->mother = villager;
			}
		}
	}
}

// BW1W120 0054d850 BW1M119 0107bf40
void GGame::ProcessGraphicsEngine(uint32_t param_1, uint32_t param_2)
{
	LHSys::GetMouse().UpdateDeltaPos();
	ControlMap::MouseDelta = LHSys::GetMouse().AccumDelta;
	camera->Update();
	MyInterface()->PreDrawProcess();
	Process3dEngine();
	if (GGlobal::Global.field_0x2d2ac)
	{
		BMan_Display();
		DrawMouseCross();
		GCameraEditor::FinalDraw();
	}
	g_game->MyInterface()->PostDrawProcess();
	help_system->PostDrawProcess();
}

// BW1W120 0054da80 BW1M119 01036750
void GGame::Process3dEngine()
{
	bool32_t drewLandscape = false;
	if (Dat_00D46A74 && (field_0x14 & 4) && (g_game->field_0x14 & 4))
	{
		PhysicsObject::GameTurnUpdate();
	}
	LH3DRender::StartFrame();
	EnterVideoSection();
	if (g_game->VideoPlayer && g_game->VideoPlayer->Bink)
	{
		BinkService(g_game->VideoPlayer->Bink);
	}
	if (VideoFinished)
	{
		FinishedVideo();
	}
	if (VideoPlayer)
	{
		field_0x250194 = 1.0f;
		if (VideoPlayer->CurrentFrame >= field_0x250190)
		{
			field_0x250194 = 0.0f;
			DeleteVideo(true);
		}
		else
		{
			if (VideoPlayer->CurrentFrame > field_0x25018c)
			{
				if (VideoPreviousPause != ((field_0x14 >> 2) & 1))
				{
					PauseGame(VideoPreviousPause);
				}
				field_0x250194 = 1.0f - (float)(VideoPlayer->CurrentFrame - field_0x25018c) /
				                            (abs(field_0x250190 - field_0x25018c) + 1);
			}
			if (field_0x250194 == 1.0f && !FallingSpellVideo)
			{
				int tries = 1000;
				while (!VideoFramesReady && tries--)
				{
					VideoPoll(false, false);
					Good_sleep_us(500);
				}
			}
			// VideoPoll can finish and delete the movie.
			if (VideoPlayer)
			{
				int       border = (int)((LH3DTech::g_info_transform.resolution.y -
				                          LH3DTech::g_info_transform.resolution.x * (9.0f / 16.0f)) *
				                         VideoLetterboxScale) /
				                   2;
				LH3DColor color;
				color.b = 255;
				color.g = 255;
				color.r = 255;
				color.a = (unsigned char)((FallingSpellVideo ? 80 : 255) * field_0x250194);
				VideoPlayer->DrawToScreen(color, 0, border, LH3DTech::g_info_transform.resolution.x + 1,
				                          LH3DTech::g_info_transform.resolution.y - border * 2 + 1, false, false);
				VideoFramesReady = 0;
				BINKREALTIME realtime;
				BinkGetRealtime(VideoPlayer->Bink, &realtime, 1);
				unsigned long frameTime = realtime.FramesTime;
				if (frameTime < 1)
					frameTime = 1;
				unsigned long bufferSize = realtime.ReadBufferSize;
				if (bufferSize < 1)
					bufferSize = 1;
				sprintf(
					VideoStatistics,
					"frame %d, video=%d%% audio=%d%% readfore=%d%% readback=%d%% readidle=%d%% blit=%d%% buffer=%d%% datarate=%dk",
					realtime.FrameNum, realtime.FramesVideoDecompTime * 100 / frameTime,
					realtime.FramesAudioDecompTime * 100 / frameTime, realtime.FramesReadTime * 100 / frameTime,
					realtime.FramesThreadReadTime * 100 / frameTime, realtime.FramesIdleReadTime * 100 / frameTime,
					realtime.FramesBlitTime * 100 / frameTime, realtime.ReadBufferUsed * 100 / bufferSize,
					realtime.FramesDataRate >> 10);
			}
		}
	}
	bool videoOnly = VideoPlayer && field_0x250194 == 1.0f;
	if (FallingSpellVideo)
		videoOnly = false;
	LeaveVideoSection();
	if (!videoOnly)
	{
		switch (field_0x205a28)
		{
		case 2:
			LH3DAtmos::Update3D((int)LH3DTech::g_delta_time * 0.001f);
			LH3DRender::g_mode_cleaning = 0;
			fn_00553A60();
			if (!VideoPlayer || FallingSpellVideo->field_0x20 == 4)
			{
				EndFallingSpellVideo();
				break;
			}
			FallingSpellVideo->Draw();
			UpdateLiquidParticles((int)LH3DTech::g_delta_time * 0.001f);
			DrawLiquidParticles();
			break;
		case 1:
			LH3DAtmos::Update3D((int)LH3DTech::g_delta_time * 0.001f);
			LH3DRender::g_mode_cleaning = 0;
			LH3DSky::g_b_we_are_inside_citadel = 1;
			TemporaryShadow::UpdateAll();
			GLandAlignement::DrawSky();
			LH3DSky::g_b_we_are_inside_citadel = 0;
			temple->Draw();
			temple->Update();
			UpdateLiquidParticles((int)LH3DTech::g_delta_time * 0.001f);
			DrawLiquidParticles();
			break;
		case 0: {
			if (RenderLoopEnabled)
				landscape.PreDraw();
			TemporaryShadow::UpdateAll();
			for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node; node = node->next.Get())
			{
				node->payload->physical->Creature3d->PrepareForDrawing();
			}
			CHand* hand = g_game->MyInterface()->hand.Get();
			if (hand)
				hand->PrepareForDrawing();
			PSysLightMaps::AddDrawing();
			LH3DLandscape::TextureUpdateThread();
			LH3DAtmos::Update3D((int)LH3DTech::g_game_time_inc * 0.001f);
			if (RenderLoopEnabled)
				landscape.Draw();
			drewLandscape = true;
			if (players[PlayerIndex].creature)
				players[PlayerIndex].creature->physical->Creature3d->DrawFightSparkles();
			GInterface::DrawAllLeashes();
			PhysicsObject::DrawAll();
			MyInterface()->hand.Get()->UpdateHeldObject();
			if (GGlobal::Global.field_0x2d2ac)
				GGlobal::Global.field_0x2d2e4->Display();
			if (hand)
				hand->AddDrawing();
			for (GPlayer* player = GetNextPlayer(NULL); player; player = GetNextPlayer(player))
			{
				for (GInterfaceStatus* status = player->GetNextInterfaceStatus(NULL); status;
				     status = player->GetNextInterfaceStatus(status))
				{
					if (status != MyInterface()->status)
					{
						GMagicHand* magicHand =
							status->HandHoldingSomething ? &status->magic_hand[status->HandHoldingSomething] : NULL;
						if (magicHand)
						{
							Object* object = magicHand->GetObjectFromHand();
							if (object)
								object->DrawInHand(status);
						}
					}
				}
			}
			MyInterface()->Draw();
			UpdateLiquidParticles((unsigned int)field_0x205d48 * 0.001f);
			DrawLiquidParticles();
			Draw();
			CreatureLessonChooser::UpdateDraw();
			EditorIconBase::DrawMouseOver();
			PSysGlobal::DrawLoop();
			FireFly::DrawAll();
			Spell::DrawSpells();
			GParticleContainer::DrawParticleContainers();
			GPlayer::DrawPlayers();
			TownCentre::DrawAll();
			float time = (int)LH3DTech::g_game_time_inc * 0.001f;
			for (ValueSpinner *spinner = ValueSpinner::first, *nextSpinner; spinner; spinner = nextSpinner)
			{
				nextSpinner = spinner->next;
				spinner->Update(time);
			}
			if (!g_game->help_system->field_0x45e8)
			{
				for (ValueSpinner* spinner = ValueSpinner::first; spinner; spinner = spinner->next)
					spinner->AddDrawing();
			}
			if (GGlobal::Global.debug.field_0x2d1b0)
			{
				LH3DStorm::DebugDrawAll();
				LH3DAtmos::DrawWindField();
			}
			LH3DAtmos::Render3D();
			if (CameraModeNew3::ForceField && CameraModeNew3::DrawForceField)
			{
				CameraModeNew3::ForceField->count = CameraModeNew3::ForceFieldPointCount + 1;
				int i;
				for (i = 0; i < CameraModeNew3::ForceField->count - 1; ++i)
					CameraModeNew3::ForceField->field_0x20[i] = CameraModeNew3::ForceFieldPoints[i];
				CameraModeNew3::ForceField->field_0x20[i] = CameraModeNew3::ForceFieldPoints[0];
				CameraModeNew3::ForceField->Update((int)LH3DTech::g_game_time_inc * 0.001f);
				CameraModeNew3::ForceField->DoTheDrawing(CameraModeNew3::ForceFieldMaterial);
			}
			float target = (float)((field_0x14 >> 17) & 1);
			float step = (int)LH3DTech::g_game_time_inc * 0.003f;
			if (field_0x59b0 < target)
			{
				field_0x59b0 += step;
				if (field_0x59b0 > target)
					field_0x59b0 = target;
			}
			else
			{
				field_0x59b0 -= step;
				if (field_0x59b0 < target)
					field_0x59b0 = target;
			}
			if (!g_game->help_system->field_0x45e8 || !g_game->help_system->field_0x45ec)
			{
				for (VillagerName* name = VillagerName::First; name; name = name->next)
					name->AddDrawing();
			}
			else
			{
				while (VillagerName::First)
					VillagerName::First->Remove();
			}
			break;
		}
		}
	}
	if (field_0x205a28 != 3)
	{
		if (Temple::Dat_00E06020 == Temple::Dat_00C2A150 && field_0x205a28 != 1)
			script->ProcessFade(true);
		else
			Temple::UpdateFade();
		help_system->Draw3D();
		if (drewLandscape)
			ClearLight();
		for (PowerSpinRunner *spin = PowerSpinRunner::First, *nextSpin; spin; spin = nextSpin)
		{
			nextSpin = spin->Next;
			if (spin->Update(MyInterface()->hand.Get()->DynamicShadow->matrix, (int)LH3DTech::g_game_time_inc * 0.001f))
			{
				if (LH3DRender::g_started_frame)
				{
					LH3DRender::g_zsorter->NewZObject(spin, (LH3DZSorter::DrawCallback)&PowerSpin::Draw,
					                                  LH3DTech::GetValueForZSorter(spin->Position), 0);
				}
			}
		}
		if (GCameraEditor::Instance)
			GCameraEditor::Draw3DPart();
	}
	g_enable_callbacks = true;
	if (!field_0x205a28)
		InfluenceCircle::Draw(1);
	else if (field_0x205a28 != 2 && dynamic_cast<class WorldRoom*>(temple->ActiveRoom) && WorldRoom::ShowInfluence)
		InfluenceCircle::Draw(0);
	LH3DRender::FinishFrame();
	VillagerNameBlock::DeleteAll();
	fn_007DEE00();
	if (CreatureMentalEditor::Instance)
		CreatureMentalEditor::Instance->Draw();
	Creature::DrawLeashInfo();
	Town::DisplayHowImpressed();
	GPlayer::DrawComputerPlayers();
	if (script->CountDownTimerEnabled && script->CountDownTimerVisible)
	{
		char  text[256];
		float remaining = script->GetCountDownTimerRemainingTime();
		sprintf(text, "Time: %.1f", remaining);
		unsigned long red = 0;
		unsigned long green = 0;
		if (remaining < 10.0f)
			red = 255;
		else
			green = 255;
		CreatureMentalEditor::DrawTextA(text, 320, 90, 24.0f, red, green, 0);
	}
	if (field_0x205a28 != 1 && field_0x205a28 != 2)
		LH3DAtmos::Render2D();
	fn_007DEE00();
}

// BW1W120 0054d820 BW1M119 010861b0
void GGame::ProcessGameCode()
{
	StartTurn();
	if ((field_0x14 & 4) == 0)
	{
		ProcessTurn();
	}
	EndTurn();
}

// BW1W120 0054e4f0 BW1M119 01086050
void GGame::StartTurn()
{
	++data.field_0x14;
	if ((field_0x14 & 4) == 0)
	{
		++data.GameTurn;
	}
	GGlobal::Global.debug.ClearMessages(-1);
	for (LHLinkedNode<CellBox*>* node = GGlobal::Global.debug.CellBoxes.GetStart(); node != NULL;
	     node = GGlobal::Global.debug.CellBoxes.GetStart())
	{
		CellBox* cellBox = node->payload;
		GGlobal::Global.debug.CellBoxes.Remove(cellBox, false);
		// Both targets free the payload directly, without a destructor call.
		::operator delete(cellBox);
	}
	MyInterface()->Dump();
	GGameInfo::Info.Debug();
	if (IsMultiplayerGame())
	{
		help_system->field_0x4608 = 0;
	}
}

// BW1W120 0054e5c0 BW1M119 01068d80
void GGame::ProcessTurn()
{
	Whale::ProcessAll();
	LH3DAtmos::UpdateGame(GLandAlignement::VisualTime, 0.1f);
	LHPoint wind = LH3DAtmos::GetWind(LH3DAtmos::ambient);
	LH3DTech::g_ambient_wind_direction.x = wind.x;
	LH3DTech::g_ambient_wind_direction.y = 0.0f;
	LH3DTech::g_ambient_wind_direction.z = wind.z;
	LH3DTech::g_ambient_wind_direction.FastNormalize();
	PSysGlobal::GameLoopStart();
	GGameInfo::Info.Process();
	InfluenceRing::ProcessRings();
	GPlayer::ProcessPlayers();
	Dance::ProcessDances();
	GameLists.Process();
	Forest::ProcessForests();
	Living::ProcessLiving();
	FireEffect::ProcessList();
	Ball::ProcessBalls();
	Reaction::ProcessReactions();
	Spell::ProcessSpells();
	GParticleContainer::ProcessParticleContainers();
	FireFly::ProcessAll();
	PhysicsObject::GameTurnUpdate();
	PSysEditorInterface::ProcessGameTurn();
	PSysGlobal::GameLoopEnd();
	script->Process();
	help_system->Process();
	help_profile->Process();
	GLandAlignement::UpdateTime(GGameInfo::Info.VisualTimeScale * 0.1f, 0.1f);
	WeatherThing::ProcessWeatherThings();
	Bookmark::ProcessAll();
	ScriptHighlight::ProcessHighlights();
	GClimate::ProcessAll();
	GBelief::ProcessOncePerTurn();
	MyInterface()->hand.Get()->GameTurnUpdate();
	AddPlayerSparkles();
	MobileObject::AddMobileObjectCheckSum();
	GameThing::ProcessDeadList(0);
	Reward::ProcessList();
	GSpookyVoices::Process();
	GGuidance::HelpSpritesCheckMoonPhase();
	GGuidance::ProcessTownDesireSFX(*MyInterface()->status);
	GConfirmation::Process();
	Update3DInfluence();
	camera->CheckStackedModesForValidity();
	camera->Validate();
	LHLinkedNode<Fragment*>* node = g_game->GameLists.fragments.head.Get();
	while (node != NULL)
	{
		LHLinkedNode<Fragment*>* next = node->next.Get();
		node->payload->ProcessTimer();
		node = next;
	}
	MusicMoodController::UpdateOnGameTurn(0.1f, false);

	// This packet handshake is Windows-specific; the Mac memory warning path differs.
	if (g_game->help_system != NULL &&
	    (g_game->help_system->field_0x45e8 == 0 || g_game->help_system->field_0x45ec == 0))
	{
		if (!g_game->IsMultiplayerGame() && g_game->field_0x205a10 == 0 && g_game->data.GameTurn % 2000 == 0 &&
		    StartTime != 0 && MemoryState == 0 && timeGetTime() > StartTime + 0x36ee80u &&
		    (unsigned int)Base::ObjectHeap->GetFreeMemory() < 0x80000u &&
		    abs((int)(g_game->field_0x205a18 - g_game->data.GameTurn)) > 3)
		{
			MemoryState = 1;
			g_game->field_0x205a18 = g_game->data.GameTurn;
			SetPacket(PACKET_TYPE_0x61);
		}
	}
	if (MemoryState == 2 && !g_game->IsMultiplayerGame() && g_game->field_0x205a10 == 0 &&
	    abs((int)(g_game->field_0x205a1c - g_game->data.GameTurn)) > 3)
	{
		MemoryState = 0;
		SetPacket(PACKET_TYPE_0x62);
	}
	if (ScriptRebootRequested)
	{
		GScript::DeleteAllScriptCreatedGameThings();
		GScript::g_scriptDLL->StopAllTasks();
		g_game->script->CleanGameForScriptReboot();
		g_game->script->StartScript("KeepRunningControl");
		TutorialState = 0;
		GScript::SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL_NORMAL);
		ScriptRebootRequested = 0;
	}
}

// BW1W120 0054e960 BW1M119 01072bb0
void GGame::EndTurn()
{
	// These calls reset x87 state and select single precision; they are not no-ops.
	fn_007DEE00();
	SoundMap->Update();
	fn_007DEE00();
	SoundMap->Dump();
	fn_007DEE00();
	SoundTag::ProcessSoundTags();
	if ((field_0x14 & 4) == 0 && data.GameTurn > 5)
	{
		GGlobal::Global.audio->ProcessAudioGameTurn();
	}
	else
	{
		GGlobal::Global.audio->AtmosProcess(0);
	}
	if ((field_0x14 & 0x1000) != 0)
	{
		map.UpdateControlMap();
	}
	if (GGlobal::Global.field_0x2d2ac != 0)
	{
		GGlobal::Global.field_0x2d2e4 = GGlobal::Global.field_0x2d2e4->ProcessTurn();
		if (GGlobal::Global.field_0x2d2e4 == NULL)
		{
			GGlobal::Global.field_0x2d2ac = 0;
		}
	}
	int count = GLandscape::DrawObjectCount;
	for (int i = 0; i < count; ++i)
	{
		if (GLandscape::DrawObjects[i] != NULL &&
		    (GLandscape::DrawObjects[i]->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) != 0)
		{
			GLandscape::DrawObjects[i] = NULL;
			GLandscape::DrawObjectActive[i] = 0;
		}
	}
	map.CalculateMapInfluenceX();
	field_0x14 &= ~0x10u;
	if ((field_0x14 & 0x10000) != 0 && field_0x205a10 == 0)
	{
		GameOSFile::AutoSave(0);
	}
	network.UpdateDebug();
	if (field_0x205a10 == 0 && g_game->field_0x205a0c == 0 && !g_game->IsMultiplayerGame() &&
	    g_game->field_0x205a14 == 1 && &g_game->players[g_game->PlayerIndex] != NULL &&
	    g_game->players[g_game->PlayerIndex].citadel != NULL &&
	    g_game->players[g_game->PlayerIndex].citadel->heart != NULL &&
	    g_game->players[g_game->PlayerIndex].citadel->heart->field_0xb8 != 0)
	{
		field_0x205a10 = 1;
		g_game->script->StartScript("GameOver");
	}
	uint32_t interval = GameStats::UpdateInterval;
	if ((field_0x14 & 4) != 0)
	{
		interval >>= 1;
	}
	if (data.GameTurn % interval == 0)
	{
		GameStats::AddToTotalLinesOfCodeExecuted();
		float frameRate = (float)g_frame_rate_stats;
		if (frameRate > GameStats::MaxFrameRate)
		{
			GameStats::MaxFrameRate = frameRate;
		}
		else if (frameRate < GameStats::MinFrameRate)
		{
			GameStats::MinFrameRate = frameRate;
		}
	}
}

// BW1W120 005507f0 BW1M119 010c8560
void GGame::Birthday()
{
	for (GPlayer* player = GetNextPlayerAndNeutral(NULL); player != NULL; player = GetNextPlayerAndNeutral(player))
	{
		player->Birthday();
	}
}

// BW1W120 005508a0 BW1M119 01066be0
GPlayer* GGame::GetNextPlayer(GPlayer* player)
{
	if (player == NULL)
	{
		player = players;
	}
	else if ((++player)->type == 3)
	{
		return NULL;
	}
	return player < &players[7] ? player : NULL;
}

// BW1W120 005508d0 BW1M119 014ffa10
GPlayer* GGame::GetNextActivePlayer(GPlayer* player)
{
	if (player == NULL)
	{
		player = players;
	}
	else if ((++player)->type == 3)
	{
		return NULL;
	}
	// The type read intentionally precedes the end check.
	while (player->type == PLAYER_TYPE_0 && player < &players[7])
	{
		++player;
	}
	return player < &players[7] ? player : NULL;
}

// BW1W120 00550930 BW1M119 01097c90
GPlayer* GGame::GetNextActivePlayerAndNeutral(GPlayer* player)
{
	if (player == NULL)
	{
		player = players;
	}
	else
	{
		++player;
	}
	while (player->type == PLAYER_TYPE_0 && player < &players[7])
	{
		++player;
	}
	return player < &players[8] ? player : NULL;
}

// BW1W120 00550980 BW1M119 0105ef60
GPlayer* GGame::GetNextPlayerAndNeutral(GPlayer* player)
{
	if (player == NULL)
	{
		player = players;
	}
	else
	{
		++player;
	}
	return player < &players[8] ? player : NULL;
}

// BW1W120 005509b0 BW1M119 0105b3b0
GPlayer* GGame::GetPlayer(uint32_t player_index)
{
	if (player_index >= 8)
	{
		return NULL;
	}
	return &players[player_index];
}

// BW1W120 00550a60 BW1M119 inlined
GPlayer* GGame::GetPlayer(PLAYER_NAME player_name)
{
	return &players[player_name];
}

// BW1W120 00550dd0 BW1M119 0157b2a0
void GGame::SetPacket(PACKET_TYPE type)
{
	Packet.Type = (uint8_t)type;
	SendPacketCompressed(type, SETPACKET_FUNCTION_NUMBER_0xc);
}

// BW1W120 00552f80 BW1M119 01039330
bool32_t GGame::IsMultiplayerGame() const
{
	if (network.session == NULL)
	{
		return 0;
	}
	return !network.session->IsSinglePlayer();
}

// BW1W120 00552fa0 BW1M119 010adff0
Town* GGame::FindTownWithID(unsigned long id)
{
	for (GPlayer* player = GetNextPlayerAndNeutral(NULL); player != NULL; player = GetNextPlayerAndNeutral(player))
	{
		for (Town* town = player->towns.head; town != NULL; town = town->next)
		{
			if (town->field_0x5b4 == id)
			{
				return town;
			}
		}
	}
	return NULL;
}

// BW1W120 00554090 BW1M119 01366f90
uint32_t GGame::Save(GameOSFile& file)
{
	if (!GameThing::Save(file))
	{
		return 0;
	}
	char*    revision = "$Revision: 756 $";
	uint32_t length = strlen(revision) + 1;
	if (GameOSFile::WriteEnabled)
	{
		file.WriteIt(length);
		for (uint32_t i = 0; i < length; ++i)
		{
			file.WriteIt(revision[i]);
			if (!GameOSFile::WriteEnabled)
			{
				break;
			}
		}
	}
	file.WriteIt(field_0x14);
	file.WriteIt(LandNumber);
	for (uint32_t player = 0; player < 8; ++player)
	{
		file.WritePtr(&players[player]);
	}
	file.WriteSafe(data);
	file.WriteIt(PlayerIndex);
	unsigned char creatureFlags = 0;
	Creature*     creature = players[PlayerIndex].creature;
	script_creature_curse.Init(creature);
	if (creature)
	{
		// The original combines low bytes by addition, without Boolean normalization.
		creatureFlags = (unsigned char)creature->field_0x110c + 2 * (unsigned char)creature->field_0x1110 +
		                4 * (unsigned char)creature->field_0x1114;
	}
	file.WriteIt(creatureFlags);
	file.WriteIt(field_0x205a5c);
	file.WriteIt(field_0x205ba0);
	GameLists.Save(file);
	file.WriteIt(field_0x205d34);
	file.WriteIt(field_0x25053c);
	file.WriteIt(field_0x250540);
	file.WriteIt(PlayerInfluenceMultiplier);
	file.WriteIt(TownInfluenceMultiplier);
	float visualTime = GGameInfo::Info.GetVisualTime();
	file.WriteIt(visualTime);
	file.WriteIt(GGameInfo::Info.field_0x48);
	file.WriteIt(GGameInfo::Info.field_0x4c);
	file.WriteIt(GGameInfo::Info.field_0x50);
	file.WriteIt(GGameInfo::Info.VisualTimeScale);
	help_system->Save(file);
	help_profile->Save(file);
	script->Save(file);
	file.WriteIt(StartCameraCoords);
	file.WritePtr(camera);
	file.WritePtr(climate);
	CameraExclusion::SaveExclusionFile(file);
	file.WriteIt(CameraHelp::EnabledFeatures);
	file.WriteIt(CameraHelp::AutoPitchParam1);
	file.WriteIt(CameraHelp::AutoPitchParam2);
	file.WriteIt(CreatureRoom::CreatureInTemple);

	// Init/Close manage a stack of current covers and shared texture resources.
	SnowCover* temporarySnow = NULL;
	if (!SnowCover::g_snowcover)
	{
		temporarySnow = (SnowCover*)::operator new(sizeof(SnowCover), "C:\\dev\\MP\\Black\\Game.cpp", 0x1c4e);
		temporarySnow->Init();
	}
	// TODO: Recover the original counted-array template name (0052c0c0/0052c170).
	float*   snow = SnowCover::g_snowcover->Depth;
	uint32_t count = 0x4000;
	if (GameOSFile::WriteEnabled)
	{
		file.WriteIt(count);
		for (uint32_t i = 0; i < count; ++i)
		{
			file.WriteIt(snow[i]);
			if (!GameOSFile::WriteEnabled)
			{
				break;
			}
		}
	}
	snow = SnowCover::g_snowcover->field_0x10000;
	count = 0x400;
	if (GameOSFile::WriteEnabled)
	{
		file.WriteIt(count);
		for (uint32_t i = 0; i < count; ++i)
		{
			file.WriteIt(snow[i]);
			if (!GameOSFile::WriteEnabled)
			{
				break;
			}
		}
	}
	file.WriteIt(SnowCover::g_snowcover->field_0x11000);
	file.WriteIt(SnowCover::g_snowcover->field_0x11004);
	if (temporarySnow)
	{
		temporarySnow->Close();
		::operator delete(temporarySnow);
	}
	file.WriteIt(LH3DAtmos::ambient);
	file.WriteIt(Enum0x25017c);
	file.WriteIt(ScriptRebootRequested);
	file.WriteIt(field_0x205a0c);
	file.WriteIt(field_0x205a10);
	file.WriteIt(field_0x205a14);
	file.WriteIt(GameOSFile::LastAutoSaveTurn);
	file.WriteIt(field_0x205a18);
	Bookmark::SaveAll(file);
	GLandBalance::SaveAll(file);
	GInterface& playerInterface = *GGame::g_game->MyInterface();
	CHand*      hand = playerInterface.hand.Get();
	if (hand)
	{
		hand->Save(file);
	}
	GGlobal::Global.audio->Save(file);
	file.WriteIt(WorldRoom::RoomsAvailable);
	WorldRoom::SaveButtonConfig(file);
	CreditsRoom::DYKSave(file);
	((class ChallengeRoom*)temple->rooms[2])->ChallengeSave(file);
	file.WriteIt(script_creature_curse);
	return 1;
}

// BW1W120 00554830 BW1M119 0154ca00
uint32_t GGame::Load(GameOSFile& file)
{
	if (!GameThing::Load(file))
	{
		return 0;
	}
	char revision[256];
	if (GameOSFile::ReadEnabled)
	{
		uint32_t length;
		file.ReadIt(length);
		for (uint32_t i = 0; i < length; ++i)
		{
			file.ReadIt(revision[i]);
		}
	}
	file.ReadIt(field_0x14);
	file.ReadIt(LandNumber);
	GameThing* player;
	for (uint32_t i = 0; i < 8; ++i)
	{
		// The factory loads into existing embedded players using their saved identity.
		file.ReadPtr(&player);
	}
	file.ReadSafe(data);
	file.ReadIt(PlayerIndex);
	file.ReadIt(GameOSFile::LoadedCreatureFlags);
	NeutralPlayerIndex = 7;
	file.ReadIt(field_0x205a5c);
	file.ReadIt(field_0x205ba0);
	GameLists.Load(file);
	file.ReadIt(field_0x205d34);
	file.ReadIt(field_0x25053c);
	file.ReadIt(field_0x250540);
	file.ReadIt(PlayerInfluenceMultiplier);
	file.ReadIt(TownInfluenceMultiplier);
	float visualTime;
	file.ReadIt(visualTime);
	GGameInfo::Info.ForceVisualTime(visualTime);
	file.ReadIt(GGameInfo::Info.field_0x48);
	file.ReadIt(GGameInfo::Info.field_0x4c);
	file.ReadIt(GGameInfo::Info.field_0x50);
	file.ReadIt(GGameInfo::Info.VisualTimeScale);
	GGameInfo::Info.SetVisualTimeScale(GGameInfo::Info.VisualTimeScale);
	GGameInfo::Info.SetVisualTimeCycle(GGameInfo::Info.field_0x48, GGameInfo::Info.field_0x50,
	                                   GGameInfo::Info.field_0x4c);
	terrain_map.Init();
	GSoundMap* soundMap = SoundMap;
	soundMap->CalculateRadiusPointAndDistance();
	soundMap->UpdateFromMap(MapCoords(soundMap->GetReceiverPos()));
	gesture_system->Reset();
	help_system->Load(file);
	help_profile->Load(file);
	script->Load(file);
	file.ReadIt(StartCameraCoords);
	file.ReadPtr((GameThing**)&camera);
	file.ReadPtr((GameThing**)&climate);
	CameraExclusion::LoadExclusionFile(file);
	file.ReadIt(CameraHelp::EnabledFeatures);
	file.ReadIt(CameraHelp::AutoPitchParam1);
	file.ReadIt(CameraHelp::AutoPitchParam2);
	file.ReadIt(CreatureRoom::CreatureInTemple);
	SnowCover::Reset();
	SnowCover* temporarySnow = NULL;
	if (!SnowCover::g_snowcover)
	{
		temporarySnow = (SnowCover*)::operator new(sizeof(SnowCover), "C:\\dev\\MP\\Black\\Game.cpp", 0x1d00);
		temporarySnow->Init();
	}
	float* snow = SnowCover::g_snowcover->Depth;
	if (GameOSFile::ReadEnabled)
	{
		uint32_t count;
		file.ReadIt(count);
		for (uint32_t i = 0; i < count; ++i)
		{
			file.ReadIt(snow[i]);
		}
	}
	snow = SnowCover::g_snowcover->field_0x10000;
	if (GameOSFile::ReadEnabled)
	{
		uint32_t count;
		file.ReadIt(count);
		for (uint32_t i = 0; i < count; ++i)
		{
			file.ReadIt(snow[i]);
		}
	}
	file.ReadIt(SnowCover::g_snowcover->field_0x11000);
	file.ReadIt(SnowCover::g_snowcover->field_0x11004);
	if (temporarySnow)
	{
		temporarySnow->Close();
		::operator delete(temporarySnow);
	}
	file.ReadIt(LH3DAtmos::ambient);
	memset(&LH3DAtmos::ambient, 0, sizeof(LH3DAtmos::ambient));
	file.ReadIt(Enum0x25017c);
	file.ReadIt(ScriptRebootRequested);
	file.ReadIt(field_0x205a0c);
	file.ReadIt(field_0x205a10);
	file.ReadIt(field_0x205a14);
	file.ReadIt(GameOSFile::LastAutoSaveTurn);
	GameOSFile::LastAutoSaveTurn = GGame::g_game->data.GameTurn;
	field_0x205a1c = GGame::g_game->data.GameTurn;
	file.ReadIt(field_0x205a18);
	Bookmark::LoadAll(file);
	GLandBalance::LoadAll(file);
	GInterface& playerInterface = *GGame::g_game->MyInterface();
	CHand*      hand = playerInterface.hand.Get();
	if (hand)
	{
		hand->Load(file);
	}
	GGlobal::Global.audio->Load(file);
	file.ReadIt(WorldRoom::RoomsAvailable);
	WorldRoom::LoadButtonConfig(file);
	CreditsRoom::DYKLoad(file);
	((class ChallengeRoom*)temple->rooms[2])->ChallengeLoad(file);
	file.ReadIt(script_creature_curse);
	return 1;
}

// BW1W120 00555080 BW1M119 01367ec0
void GGame::ResolveLoad()
{
	GInterface& playerInterface = *GGame::g_game->MyInterface();
	CHand*      hand = playerInterface.hand.Get();
	if (hand)
	{
		hand->ResolveLoad();
	}
	field_0x250540 = 0;
	field_0x25053c = data.GameTurn * 100;
	LH3DTech::g_game_time_inc = 0;
	field_0x205d48 = field_0x250540;
	field_0x205d64 = 0.0f;
	GLandBalance::ReInit();
	help_system->ResolveLoad();
}

// BW1W120 00555850 BW1M119 01053ef0
GInterface* GGame::MyInterface()
{
	return players[PlayerIndex].GetRealInterface(field_0x205a5a);
}

// BW1W120 00555880 BW1M119 01062630
GInterfaceStatus* GGame::MyInterfaceStatus()
{
	return MyInterface()->status;
}
