#include "Game.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For CellSizeXGridDim */

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

GGame*           GGame::g_game;
uint32_t         GGame::TutorialState;
uint32_t         GGame::StartTime;
uint32_t         GGame::MemoryState;
bool             GGame::ScriptRebootRequested;
uint32_t         GGame::RepairMissingMothers;
GGameInfo        GGameInfo::Info;
CRITICAL_SECTION GGame::VideoTimerSection;
bool             GGame::SavingMap;
bool             GGame::SystemExit;
int              GGame::PacketTimeHistory[10];
unsigned long    GGame::IncomingQueueHistory[100];
uint32_t         GGame::NetworkTurnsThisFrame;
bool             GGame::RenderLoopEnabled = true;

// BW1W120 0054d610. TODO: Original name unknown; tail-jumps to fn_007DEE00, not an empty function.
void fn_0054D610();
void CheckSquareFunction(int x, int z, RPHolder* holder);
void AddSpecialRPObjects(RPHolder* holder);
void InputReset();              // 005fa000
void DoLogo();                  // 005fa070
void ClearTipVideo();           // 005f3d90
void ResetLocalGameTimer();     // 0054c570
void SendNetworkChecksum(bool); // 00635210

// BW1W120 0054b240 BW1M100 104fda10 GGame::GGame(void)
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

// BW1W120 0054bf20 BW1M100 104eff40 GGame::ClearVariables(void)
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

// Constructors emitted in the original Game translation unit.
// BW1W120 0054b910 BW1M100 10018800 MusicMoodPacket::MusicMoodPacket(void)
MusicMoodPacket::MusicMoodPacket()
{
	Emotion.Reset();
	field_0x8 = 0;
	field_0x4 = 0;
	field_0x0 = 0;
}
// BW1W120 0054bcd0 GTerrainMap::GTerrainMap(void)
GTerrainMap::GTerrainMap() {}
// BW1W120 0054b930 GKeyBuffer::GKeyBuffer(void)
GKeyBuffer::GKeyBuffer()
{
	Inputs = NULL;
	BufferedKeys = 0;
	field_0xc = 0;
}
// BW1W120 0054b9d0 GSoundMap::GSoundMap(void)
GSoundMap::GSoundMap()
{
	Reset();
	memset(field_0xb4, 0, sizeof(field_0xb4));
}
// BW1W120 0054baa0 GestureSystemDataList::GestureSystemDataList(void)
GestureSystemDataList::GestureSystemDataList()
{
	Data = NULL;
	Count = 0;
}
// BW1W120 0054baf0 GestureSystemData::GestureSystemData(void)
GestureSystemData::GestureSystemData()
{
	SetToZero();
}
// BW1W120 0054bb40 GestureSystem::GestureSystem(void)
GestureSystem::GestureSystem()
{
	field_0xc94 = 1;
}
// BW1W120 0054bb90 BW1M100 100938a0 GestureSystemResult::SetToZero(void)
void GestureSystemResult::SetToZero()
{
	field_0x0 = 0;
	Reversed = 0;
	EndSample = 0;
	StartSample = 0;
}

static_assert(sizeof(GPacket) == 0x110, "GPacket size is incorrect");
static_assert(offsetof(GGame, Packet) == 0x205a60, "GPacket offset is incorrect");
static_assert(offsetof(GGame, field_0x5978) == 0x5978, "Packet length offset is incorrect");
static_assert(offsetof(GGame, VideoPlayer) == 0x250188, "Video player offset is incorrect");
static_assert(sizeof(GNetwork) == 0x30, "GNetwork size is incorrect");
static_assert(sizeof(GTerrainMap) == 0x4a130, "GTerrainMap size is incorrect");
static_assert(sizeof(GGame) == 0x250544, "GGame size is incorrect");
static_assert(sizeof(GSoundMap) == 0x110, "GSoundMap size is incorrect");
static_assert(sizeof(GestureSystemDataList) == 0x10, "GestureSystemDataList size is incorrect");
static_assert(sizeof(GestureSystemData) == 0x65c, "GestureSystemData size is incorrect");
static_assert(sizeof(GestureSystem) == 0xc98, "GestureSystem size is incorrect");
static_assert(sizeof(GestureSystemResult) == 0xc, "GestureSystemResult size is incorrect");
static_assert(sizeof(Settings) == 0x104, "Settings size is incorrect");

static_assert(sizeof(GGlobal) == 0x2d500, "GGlobal size is incorrect");
static_assert(offsetof(GGlobal, field_0x2d2ac) == 0x2d2ac, "GGlobal editor mode offset is incorrect");
static_assert(offsetof(GGlobal, field_0x2d2e4) == 0x2d2e4, "GGlobal editor pointer offset is incorrect");
static_assert(sizeof(Prss) == 0x10, "Prss size is incorrect");
static_assert(offsetof(GDebug, CellBoxes) == 0x2d2a0, "GDebug CellBoxes offset is incorrect");
static_assert(sizeof(GDebug) == 0x2d2a8, "GDebug size is incorrect");
static_assert(sizeof(GPlayer) == 0xa60, "GPlayer stride is incorrect");
static_assert(offsetof(GPlayer, interfaces) == 0x14, "GPlayer interfaces offset is incorrect");
static_assert(offsetof(GPlayer, type) == 0x8e0, "GPlayer type offset is incorrect");
static_assert(offsetof(GPlayer, towns) == 0xa50, "GPlayer towns offset is incorrect");
static_assert(offsetof(GGame, players) == 0x18, "GGame players offset is incorrect");
static_assert(offsetof(GGame, PlayerIndex) == 0x205a59, "GGame player index offset is incorrect");
static_assert(offsetof(GGame, field_0x205a5a) == 0x205a5a, "GGame interface index offset is incorrect");
static_assert(offsetof(GGame, network) + offsetof(GNetwork, session) == 0x205b80, "GGame session offset is incorrect");
static_assert(offsetof(GGame, camera) == 0x2502c0, "GGame camera offset is incorrect");
static_assert(offsetof(Town, field_0x5b4) == 0x5b4, "Town ID offset is incorrect");
static_assert(offsetof(Town, next) == 0x75c, "Town next offset is incorrect");
static_assert(offsetof(GGame, field_0x205a5c) == 0x205a5c, "GGame serialized byte offset is incorrect");
static_assert(offsetof(GGame, field_0x205ba0) == 0x205ba0, "GGame serialized word offset is incorrect");
static_assert(offsetof(GGame, script_creature_curse) == 0x250084, "GGame curse offset is incorrect");
static_assert(sizeof(CMouse) == 4, "CMouse size is incorrect");
static_assert(offsetof(GGame, Mouse) == 0x2502b8, "GGame mouse offset is incorrect");
static_assert(offsetof(GGame, key_buffer) + offsetof(GKeyBuffer, Inputs) == 0x2502b0,
              "GGame key array offset is incorrect");
static_assert(offsetof(GGame, key_buffer) + offsetof(GKeyBuffer, BufferedKeys) == 0x2502b6,
              "GGame key count offset is incorrect");
static_assert(offsetof(GCameraEditor, field_0x10) == 0x10, "GCameraEditor flag offset is incorrect");
static_assert(offsetof(GGame, GameLists) + offsetof(GlobalGameLists, LivingList) == 0x205bbc,
              "GGame living list offset is incorrect");
static_assert(offsetof(Living, next) == 0xa4, "Living link offset is incorrect");
static_assert(offsetof(Villager, mother) == 0x100, "Villager mother offset is incorrect");

// BW1W120 0054b9a0 BW1M100 1009d100 GGame::IsAvailable(void)
bool32_t GGame::IsAvailable()
{
	return (Flags & GAME_THING_FLAG_UNAVAILABLE) == 0;
}

// BW1W120 0054b9b0 BW1M100 10512c00 GGame::GetSaveType(void)
uint32_t GGame::GetSaveType()
{
	return 0x6a;
}

// BW1W120 0054b9c0 BW1M100 10496160 GGame::GetDebugText(void)
char* GGame::GetDebugText()
{
	return "Game:";
}

// BW1W120 0054c180 BW1M100 1003a410 GGame::GetCamera(void)
GCamera* GGame::GetCamera()
{
	return camera;
}

// BW1W120 0054c330 BW1M100 10496be0 GGame::Delete(void)
void GGame::Delete() {}

// BW1W120 0054c340 BW1M100 10079850 GGame::ProcessFrameInputs(void)
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

// BW1W120 0054c3d0 BW1M100 1001e260 GGame::ProcessGameInputs(void)
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

// BW1W120 0054c420 BW1M100 10083f50 GGame::ProcessBufferedKeys(void)
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

// BW1W120 0054c4a0 BW1M100 10029760 GGame::LocalTimerSaysDoATurn(void)
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

// BW1W120 0054c570 BW1M100 100015c0 ResetLocalGameTimer(void)
void ResetLocalGameTimer()
{
	// Stop, Reset and Start are fully inlined here in the original, unlike Loop startup.
	LHTimer& stoppedTimer = GGame::g_game->timer;
	if (stoppedTimer.SpeedUpFactor != 0.0f)
	{
		stoppedTimer.SpeedUpFactor2 = stoppedTimer.SpeedUpFactor;
		stoppedTimer.ElapsedTime = (int)((float)(GetTickCount() - stoppedTimer.TickCount) * stoppedTimer.SpeedUpFactor +
		                                 (float)(uint32_t)stoppedTimer.ElapsedTime);
		stoppedTimer.TickCount = GetTickCount();
		stoppedTimer.SpeedUpFactor = 0.0f;
	}
	uint32_t gameTurn = GGame::g_game->data.GameTurn;
	LHTimer& resetTimer = GGame::g_game->timer;
	resetTimer.TickCount = GetTickCount();
	resetTimer.ElapsedTime = gameTurn * 100;
	if (resetTimer.SpeedUpFactor != 0.0f)
	{
		resetTimer.SpeedUpFactor2 = resetTimer.SpeedUpFactor;
		resetTimer.ElapsedTime = (int)((float)(GetTickCount() - resetTimer.TickCount) * resetTimer.SpeedUpFactor +
		                               (float)(uint32_t)resetTimer.ElapsedTime);
		resetTimer.TickCount = GetTickCount();
		resetTimer.SpeedUpFactor = 0.0f;
	}
	LHTimer& startedTimer = GGame::g_game->timer;
	startedTimer.SpeedUpFactor = 0.00001f;
	float speed = startedTimer.SpeedUpFactor2;
	startedTimer.ElapsedTime = (int)((float)(GetTickCount() - startedTimer.TickCount) * startedTimer.SpeedUpFactor +
	                                 (float)(uint32_t)startedTimer.ElapsedTime);
	startedTimer.TickCount = GetTickCount();
	startedTimer.SpeedUpFactor = speed;
}

// BW1W120 0054cc30 BW1M100 10029320 GGame::ProcessNetworkPackets(void)
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

// BW1W120 0054ced0 BW1M100 100dc070 GGame::DoNetworkStart(void)
void GGame::DoNetworkStart()
{
	RenderLoadingFrame("Waiting for completion of user data transer...");
	network.field_0x4 = 1.0f;
	g_game->data.field_0x14 = g_game->network.session->SuperPacketGameTurn + 1;
	RenderLoadingFrame("Waiting for first super packet...");
	RenderLoadingFrame("Found superpacket.");
	GatheringBox::InitialiseForCurrentGame();
}

// BW1W120 0054cf20 BW1M100 100e23b0 GGame::Loop(void)
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

// BW1W120 0054d7f0. Original name unrecovered.
void GGame::fn_0054D7F0()
{
	++field_0x205d44;
}

// BW1W120 0054d800 BW1M100 1048f9d0 GGame::FlipScreen(void)
void GGame::FlipScreen()
{
	if (RenderLoopEnabled)
	{
		LHSys::GetScreen().Flip(1);
	}
}

// BW1W120 005525e0. Original name unrecovered.
void GGame::fn_005525E0()
{
	if (field_0x5318[0] != 0)
	{
		network.fn_00635450(field_0x5318, field_0x5978);
		field_0x5978 = 1;
		field_0x5318[0] = 0;
	}
}

// BW1W120 00555400. Original name unrecovered.
void GGame::fn_00555400()
{
	GameMode = GAME_MODE_ONLINE;
}

// BW1W120 0054d620 BW1M100 1001e2f0 GGame::ProcessOneGameTurn(void)
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

// BW1W120 0054d820 BW1M100 10083dd0 GGame::ProcessGameCode(void)
void GGame::ProcessGameCode()
{
	StartTurn();
	if ((field_0x14 & 4) == 0)
	{
		ProcessTurn();
	}
	EndTurn();
}

// BW1W120 0054e4f0 BW1M100 10083c70 GGame::StartTurn(void)
void GGame::StartTurn()
{
	++data.field_0x14;
	if ((field_0x14 & 4) == 0)
	{
		++data.GameTurn;
	}
	GGlobal::Global.debug.ClearMessages(-1);
	for (LHLinkedNode<CellBox>* node = GGlobal::Global.debug.CellBoxes.GetStart(); node != NULL;
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

// BW1W120 0054e5c0 BW1M100 100665c0 GGame::ProcessTurn(void)
void GGame::ProcessTurn()
{
	Whale::ProcessAll();
	// TODO: Recover original inline visual-time access and wind return-value construction.
	LH3DAtmos::UpdateGame(GGameInfo::Info.GetVisualTime(), 0.1f);
	// The original inlines GetWind(const WeatherInfo&) here.
	LHPoint wind;
	wind.x = (float)LH3DAtmos::ambient.WindX * 0.125f;
	wind.y = 0.0f;
	wind.z = (float)LH3DAtmos::ambient.WindZ * 0.125f;
	LH3DTech::g_ambient_wind_direction = wind;
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
	MyInterface()->hand->GameTurnUpdate();
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
	LHLinkedNode<Fragment>* node = g_game->GameLists.fragments.head;
	while (node != NULL)
	{
		LHLinkedNode<Fragment>* next = node->next;
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

// BW1W120 0054e960 BW1M100 10070430 GGame::EndTurn(void)
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

// BW1W120 005507f0 BW1M100 10506220 GGame::Birthday(void)
void GGame::Birthday()
{
	for (GPlayer* player = GetNextPlayerAndNeutral(NULL); player != NULL; player = GetNextPlayerAndNeutral(player))
	{
		player->Birthday();
	}
}

// BW1W120 005508a0 BW1M100 10064420 GGame::GetNextPlayer(GPlayer *)
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

// BW1W120 005508d0 BW1M100 100c0950 GGame::GetNextActivePlayer(GPlayer *)
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

// BW1W120 00550930 BW1M100 10095d40 GGame::GetNextActivePlayerAndNeutral(GPlayer *)
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

// BW1W120 00550980 BW1M100 1005c2a0 GGame::GetNextPlayerAndNeutral(GPlayer *)
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

// BW1W120 005509b0 BW1M100 100586e0 GGame::GetPlayer(unsigned long)
GPlayer* GGame::GetPlayer(uint32_t player_index)
{
	if (player_index >= 8)
	{
		return NULL;
	}
	return &players[player_index];
}

// BW1W120 00550a60 BW1M100 inlined GGame::GetPlayer(PLAYER_NAME)
GPlayer* GGame::GetPlayer(PLAYER_NAME player_name)
{
	return &players[player_name];
}

// BW1W120 00550dd0 BW1M100 1055efd0 GGame::SetPacket(PACKET_TYPE)
void GGame::SetPacket(PACKET_TYPE type)
{
	Packet.Type = (uint8_t)type;
	SendPacketCompressed(type, SETPACKET_FUNCTION_NUMBER_0xc);
}

// BW1W120 00552f80 BW1M100 100369c0 GGame::IsMultiplayerGame(void) const
bool32_t GGame::IsMultiplayerGame() const
{
	if (network.session == NULL)
	{
		return 0;
	}
	return !network.session->IsSinglePlayer();
}

// BW1W120 00552fa0 BW1M100 10423f90 GGame::FindTownWithID(unsigned long)
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

// BW1W120 00554090 BW1M100 104935a0 GGame::Save(GameOSFile &)
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
	CHand* hand = GGame::g_game->MyInterface()->hand;
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

// BW1W120 00554830 BW1M100 10354cc0 GGame::Load(GameOSFile &)
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
	CHand* hand = GGame::g_game->MyInterface()->hand;
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

// BW1W120 00555080 BW1M100 100c76b0 GGame::ResolveLoad(void)
void GGame::ResolveLoad()
{
	CHand* hand = GGame::g_game->MyInterface()->hand;
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

// BW1W120 00555850 BW1M100 10051560 GGame::MyInterface(void)
GInterface* GGame::MyInterface()
{
	return players[PlayerIndex].GetRealInterface(field_0x205a5a);
}

// BW1W120 00555880 BW1M100 1005fec0 GGame::MyInterfaceStatus(void)
GInterfaceStatus* GGame::MyInterfaceStatus()
{
	return MyInterface()->status;
}
