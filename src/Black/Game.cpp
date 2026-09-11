#include "Game.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For CellSizeXGridDim */

#include "Audio.h"
#include "Belief.h"
#include "Bookmark.h"
#include "Camera.h"
#include "CameraExclusion.h"
#include "CameraHelp.h"
#include "ChallengeRoom.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "Climate.h"
#include "ControlHand.h"
#include "Creature.h"
#include "CreatureRoom.h"
#include "CreditsRoom.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "GameStats.h"
#include "GestureSystem.h"
#include "Global.h"
#include "HelpProfile.h"
#include "HelpSystem.h"
#include "Interface.h"
#include "LandBalance.h"
#include "LandAlignement.h"
#include "MusicMood.h"
#include "PhysicsObject.h"
#include "PSysEditor.h"
#include "PSysGlobal.h"
#include "Script.h"
#include "ScriptDLL.h"
#include "SoundConfirmation.h"
#include "SoundGuidance.h"
#include "SoundMap.h"
#include "SoundTag.h"
#include "SpookyVoices.h"
#include "Temple.h"
#include "WorldRoom.h"
#include "WeatherInfo.h"
#include <Lionhead/LH3DLib/development/LH3DAtmos.h>
#include <Lionhead/LH3DLib/development/LH3DRender.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LH3DLib/development/Prss.h>
#include <Lionhead/LH3DLib/development/SnowCover.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>
#include <Lionhead/LHLib/ver5.0/LHHeap2.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>
#include <windows.h>
#include <mmsystem.h>
#include <stdlib.h>
#include <string.h>

GGame*    GGame::g_game;
uint32_t  GGame::TutorialState;
uint32_t  GGame::StartTime;
uint32_t  GGame::MemoryState;
uint8_t   GGame::ScriptRebootRequested;
GGameInfo GGameInfo::Info;

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
	field_0x205a61 = (uint8_t)type;
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
	SoundMap->CalculateRadiusPointAndDistance();
	SoundMap->UpdateFromMap(MapCoords(SoundMap->GetReceiverPos()));
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
