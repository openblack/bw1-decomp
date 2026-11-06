#include "ColourConstants.h" /* For White */
#include "Script.h"
#include "ScriptConstants.h"
#include "GameTimeConstants.h"

#include <fstream.h> /* For fstream */
#include <stdio.h>   /* For fgets, fopen, sprintf */
#include <string.h>  /* For memset, strlen */

#include <Lionhead/LH3DLib/development/LH3DDivers.h>    /* For LH3DWideScreen */
#include <Lionhead/LH3DLib/development/LH3DFade.h>      /* For LH3DFade */
#include <Lionhead/LH3DLib/development/LH3DSky.h>       /* For LH3DSky */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For g_b_grosse_merde */
#include <Lionhead/LH3DLib/development/SuperVillager.h> /* For SuperVillager */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>             /* For enum LH_RETURN */
#include <Lionhead/LHLib/ver5.0/LHScreen.h>             /* For LHResetFPU */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>            /* For LHSPrintf */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h>    /* For LHSession */

#include "Audio.h"
#include "Bookmark.h"
#include "Camera.h"
#include "CameraExclusion.h"
#include "camerahelp.h"
#include "ChallengeRoom.h"
#include "ControlHand.h"
#include "ControlMap.h"
#include "Creature.h"
#include "CreditText.h"
#include "Game.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "Global.h"
#include "HelpSystem.h"
#include "Interface.h"
#include "Intro.h"
#include "ScriptDLL.h"
#include "ScriptFunctionTable.h"
#include "ScriptManage.h"
#include "Settings.h"
#include "SoundConfirmation.h"
#include "Utils.h"

// BW1W120 00d1a2f8
extern bool32_t ForceMinimumNearClipping;
#ifdef VERSION_BW1WCI
// BW1WCI 00d9e6f4 BW1MCI119 null
extern bool32_t LandscapeLoaded;
// BW1WCI 0090fc64 BW1MCI119 null
extern const float DefaultVisualTimeCycle[3];
#endif

#ifdef VERSION_BW1W100
#define SCRIPT_QUEST_PATH ".\\Scripts\\Quests\\"
#else
#define SCRIPT_QUEST_PATH GGame::g_game->settings->QuestPath
#endif

ScriptDLL*      GScript::g_scriptDLL;
bool32_t        GScript::ScriptsLoaded;
uint32_t        ScriptManage::NextFreeSlot;
static uint32_t UnusedStatic = 0;

GScript* GScript::Create()
{
#ifdef VERSION_BW1W100
	GScript* script = new (FILEPATH, 46) GScript();
#else
	GScript* script = new (FILEPATH, 47) GScript();
#endif
	if (script != NULL)
	{
		script->Initialise();
	}
	return script;
}

// BW1W120 006eb180 BW1M119 014de710
void LibraryMessage(LH_RETURN result, char* message);

void LibraryMessage(LH_RETURN result, char* message)
{
	static uint32_t lastTurn = 0;
	static uint32_t errorCount = 0;

	if (lastTurn != GGame::g_game->data.GetGameTurn())
	{
		errorCount = 0;
		lastTurn = GGame::g_game->data.GetGameTurn();
	}
	if (result == LH_ERROR || result == LH_FAIL)
	{
		if (errorCount < SCRIPT_LIBRARY_MESSAGE_ERROR_LIMIT)
		{
			errorCount++;
		}
	}
}

void GScript::Initialise()
{
	g_scriptDLL = ScriptDLL::Create(".\\Plug Ins\\ScriptLibrary");
	g_scriptDLL->Load(NULL);
	g_scriptDLL->Initialise(g_scriptFunctionTable, LibraryMessage, VMStartCall, NULL, VMDebugCallBack,
	                        CleanupOnScriptTask);
	LHResetFPU();
}

void GScript::Load(char* file_name)
{
	if (GGame::g_game->network.session->IsSinglePlayer())
	{
		Reset(false);
		char path[MAX_PATH];
		sprintf(path, "%s%s", SCRIPT_QUEST_PATH, file_name);
		if (g_scriptDLL->ParseFile(path, GGame::g_game->path_creator.GameDir) == LH_OK)
		{
			g_scriptDLL->AutoStart();
		}
	}
}

void GScript::SetToZero()
{
	g_scriptDLL = NULL;
	Reset(true);
}

void GScript::Reset(bool32_t load_challenge)
{
	LoopSetControlledByScript = false;
	HitObject = NULL;
	ObjectWhichHit = NULL;
#ifdef VERSION_BW1WCI
	ObjectHitLand = NULL;
#endif
	ScriptsLoaded = false;
	CountDownTimerEnabled = false;
	ScriptManage::NextFreeSlot = SCRIPT_MANAGE_FIRST_SLOT;
#ifdef VERSION_BW1WCI
	PlayVillagerSounds = true;
	PlayCreatureSounds = true;
#else
	PlayCreatureSounds = true;
	DrawHighlight = true;
#endif
	DrawLeash = true;
#ifdef VERSION_BW1WCI
	DrawFlags = SCRIPT_DRAW_FLAGS_ALL;
#endif
	UnusedCameraControlFlag = false;
	LastMusicLine = 0;
	LastMusicWord = 0;
	CitadelInteract = true;
	InterfaceLevel = SCRIPT_INTERFACE_LEVEL_NORMAL;
#ifdef VERSION_BW1WCI
	FightLock = false;
	FightQueueOnly = false;
	StayInFightCamera = false;
#endif

	if (GGame::g_game != NULL && GGame::g_game->help_system != NULL)
	{
		CleanGameForScriptReboot();
		GGame::g_game->help_system->Reset();
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_EVIL, false);
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_GOOD, false);
#ifdef VERSION_BW1WCI
		GGameInfo::Info.SetVisualTimeCycle(DefaultVisualTimeCycle[0], DefaultVisualTimeCycle[1],
		                                   DefaultVisualTimeCycle[2]);
#endif
	}

	if (g_scriptDLL != NULL)
	{
		g_scriptDLL->Reboot();
		DeleteAllScriptCreatedGameThings();
		GGame::g_game->script->ValidateScriptVariables();
		ClearVariableTable();
	}

	if (GGame::g_game != NULL && GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->GetCreature() != NULL)
	{
		GGame::g_game->MyPlayer()->GetCreature()->IsShowingDevelopmentHelpScript = false;
	}

#ifdef VERSION_BW1WCI
	if (LandscapeLoaded)
	{
		GGameInfo::Info.ForceVisualTime(LH3DSky::OldSkoolTime2Time(SCRIPT_RESET_VISUAL_TIME));
		GGameInfo::Info.SetVisualTimeScale(1.0f);
	}
#endif

	FadeColour.Set(0, 0, 0, 0);
	CountDownTimerVisible = false;
#ifdef VERSION_BW1WCI
	CountDownTimerEnabled = false;
#endif
	StopList = NULL;
	StopFileList = NULL;
	LoopDance = NULL;
	LoopTown = NULL;
	LoopCallback = NULL;
	HandDemoTrigger = false;
	GameSoundDisabled = false;
	AlignmentMusic = true;

	CreditTextItem::ResetClip(0.0f);
	for (CreditTextItem* item = CreditTextItem::FirstItem; item != NULL; item = item->Next)
	{
		item->Reset(0.0f);
	}

	FadeSpeed = 0.0f;
	FadeValue = 0.0f;

	if (GGame::g_game != NULL && load_challenge)
	{
		GGame::g_game->script->LoadBinary("Challenge.chl");
	}
}

LH_RETURN GScript::CompileScriptList(char* file_name)
{
	static char path[MAX_PATH];
	LH_RETURN   result;
	char        line[MAX_PATH];
	char        scriptPath[MAX_PATH];

	if (!GGame::g_game->network.session->IsSinglePlayer())
	{
		return LH_OK;
	}

	sprintf(path, "%s%s", SCRIPT_QUEST_PATH, file_name);
	FILE* file = fopen(path, "rt");
	if (file == NULL)
	{
		return LH_FAIL;
	}

	if (fgets(line, sizeof(line), file) != NULL)
	{
		do
		{
			if (strlen(line) >= SCRIPT_LIST_MIN_LINE_LENGTH && (line[0] != '/' || line[1] != '/'))
			{
				line[strlen(line) - 1] = '\0';
				sprintf(scriptPath, "%s\\%s", SCRIPT_QUEST_PATH, line);
				result = g_scriptDLL->ParseFile(scriptPath, GGame::g_game->path_creator.GameDir);
				if (result != LH_OK)
				{
					if (result == LH_ERROR)
					{
						return LH_FAIL;
					}
					ScriptWarningMessage(LHSPrintf("Compilation Skipped: Script %s \n", line));
				}
			}
		} while (fgets(line, sizeof(line), file) != NULL);
	}
	fclose(file);
	return result;
}

LH_RETURN GScript::LoadGlobalChallenges()
{
	ScriptsLoaded = true;
	return CompileScriptList("GlobalChallenges.txt");
}

void GScript::LoadBinary(char* binary)
{
	Reset(false);
	char path[MAX_PATH];
	sprintf(path, "%s%s", SCRIPT_QUEST_PATH, binary);
	if (g_scriptDLL->LoadBinary(path) == LH_OK)
	{
		ScriptsLoaded = true;
		g_scriptDLL->AutoStart();
	}
}

void GScript::ValidateHitObjects()
{
	if (HitObject != NULL && !HitObject->IsAvailable())
	{
		HitObject = NULL;
	}
	if (ObjectWhichHit != NULL && !ObjectWhichHit->IsAvailable())
	{
		ObjectWhichHit = NULL;
	}
#ifdef VERSION_BW1WCI
	if (ObjectHitLand != NULL && !ObjectHitLand->IsAvailable())
	{
		ObjectHitLand = NULL;
	}
#endif
}

void GScript::Process()
{
	ValidateHitObjects();
	ProcessCountDownTimer();
	if (!(GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP))
	{
		g_scriptDLL->LookIn(VMScriptType_All);
	}
	ProcessReferenceTable();
	ProcessFade(false);
}

void GScript::ValidateScriptVariables()
{
	ValidateHitObjects();
	ProcessReferenceTable();
}

int GScript::StartScript(char* name)
{
	if (g_scriptDLL == NULL)
	{
		return SCRIPT_TASK_NONE;
	}
	if (!GGame::g_game->IsMultiplayerGame())
	{
		return g_scriptDLL->StartScript(name, VMScriptType_All);
	}
	return g_scriptDLL->StartScript(name, VMScriptType_Multiplayer);
}

#ifndef VERSION_BW1W100
bool32_t GScript::IsScriptRunning(char* name) const
{
	if (g_scriptDLL == NULL)
	{
		return false;
	}
	return g_scriptDLL->FindFirstRunningTaskID(name) != SCRIPT_TASK_NONE;
}

float GScript::GetGlobalVariableValue(char* name)
{
	if (g_scriptDLL == NULL)
	{
		return 0.0f;
	}
	return g_scriptDLL->GetGlobalVariableValue(name);
}

float GScript::GetLocalVariableValue(char* script_name, char* name)
{
	if (g_scriptDLL == NULL)
	{
		return 0.0f;
	}
	return g_scriptDLL->GetLocalVariableValue(script_name, name);
}
#endif

bool32_t GScript::StartScriptStoppingHelpScriptsInControl(char* name)
{
	uint32_t task = GGame::g_game->help_system->DialogueControlTask;
	if (task != SCRIPT_TASK_NONE)
	{
		if (g_scriptDLL->GetScriptType(task) == VMScriptType_Help)
		{
			StopHelpScripts();
		}
		task = GGame::g_game->help_system->DialogueControlTask;
	}
	if (task == SCRIPT_TASK_NONE)
	{
		StartScript(name);
		return true;
	}
	return false;
}

GScript::~GScript()
{
	if (g_scriptDLL != NULL)
	{
		UnloadScriptDLL();
	}
}

void GScript::UnloadScriptDLL()
{
	if (g_scriptDLL != NULL)
	{
		g_scriptDLL->Reboot();
		g_scriptDLL->UnInitialise();
		g_scriptDLL->UnLoad();
		g_scriptDLL = NULL;
	}
}

void GScript::SetPointOutOfWorld(LHPoint* point)
{
	point->Set(PointOutOfWorld, PointOutOfWorld, PointOutOfWorld);
}

#ifndef VERSION_BW1WCI
void GScript::InitialiseCountDownTimer(float seconds)
{
	CountDownTimerEnabled = true;
	CountDownTimerVisible = true;
	if (seconds <= 0.0f)
	{
		ScriptErrorMessage("Invalid time for timer");
	}
	if (seconds < 0.0f)
	{
		seconds = 0.0f;
	}
	CountDownTimerRemaining = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(seconds);
}

void GScript::ProcessCountDownTimer()
{
	if (CountDownTimerEnabled)
	{
		if (--CountDownTimerRemaining == 0)
		{
			CountDownTimerEnabled = false;
		}
	}
}

float GScript::GetCountDownTimerRemainingTime()
{
	return CountDownTimerRemaining / GGameInfo::Info.NumGameTicksPerSecond();
}
#endif

void GScript::SaveState(char* path)
{
	g_scriptDLL->SaveState(path);
}

uint32_t GScript::ConvertScriptPlayerToGamePlayer(unsigned long player)
{
	if (player != SCRIPT_PLAYER_NEUTRAL)
	{
		return player - 1;
	}
	return GGame::g_game->GetNeutralPlayer()->GetPlayerNumber();
}

void GScript::ProcessFade(bool paused)
{
	if (FadeSpeed != 0.0f && !paused)
	{
		float value = FadeValue + FadeSpeed;
		if (value > LH3D_COLOR_OPAQUE)
		{
			FadeColour.a = LH3D_COLOR_OPAQUE;
			FadeSpeed = 0.0f;
		}
		else if (value < 0.0f)
		{
			FadeColour.a = 0;
			FadeSpeed = 0.0f;
		}
		else
		{
			FadeValue = value;
			FadeColour.a = (uint8_t)value;
		}
	}
	LH3DFade::SetColor(FadeColour);
}

void GScript::SetupScreenFadeTo(uint8_t red, uint8_t green, uint8_t blue, signed char time)
{
#ifdef VERSION_BW1WCI
	if (FadeSpeed != 0.0f ||
	    (FadeColour.a == LH3D_COLOR_OPAQUE && FadeColour.r == red && FadeColour.g == green && FadeColour.b == blue))
	{
		return;
	}
#endif
	FadeColour.r = red;
	FadeColour.g = green;
	FadeColour.b = blue;
	if (time <= 0)
	{
		FadeColour.a = LH3D_COLOR_OPAQUE;
		LH3DFade::SetColor(FadeColour);
		FadeSpeed = 0.0f;
	}
	else
	{
		FadeSpeed = LH3D_COLOR_OPAQUE / (time * SCRIPT_FADE_TICKS_PER_SECOND);
		FadeValue = 0.0f;
	}
}

void GScript::SetupScreenFadeBackToNormal(signed char time)
{
	if (time <= 0)
	{
		FadeColour.a = 0;
		LH3DFade::SetColor(FadeColour);
		FadeSpeed = 0.0f;
	}
#ifdef VERSION_BW1WCI
	else if (FadeSpeed > 0.0f || FadeColour.a == LH3D_COLOR_OPAQUE)
#else
	else
#endif
	{
		FadeSpeed = -((double)LH3D_COLOR_OPAQUE / (float)(time * SCRIPT_FADE_TICKS_PER_SECOND));
		FadeValue = LH3D_COLOR_OPAQUE;
	}
}

bool32_t GScript::IsScreenFaded()
{
	return FadeSpeed == 0.0f ? true : false;
}

uint32_t GScript::ConvertGamePlayerToScriptPlayer(unsigned long player)
{
	if (GGame::g_game->GetNeutralPlayer()->GetPlayerNumber() == player)
	{
		return SCRIPT_PLAYER_NEUTRAL;
	}
	return player + 1;
}

void GScript::CleanGameForScriptReboot()
{
	LH3DWideScreen::g_fvalue = 0.0f;
	SuperVillager* villager = SuperVillager::g_first;
	while (villager != NULL)
	{
		SuperVillager* current = villager;
		villager = villager->Next;
		current->Release();
	}
	SuperVillager::g_first = NULL;
	ForceMinimumNearClipping = false;
	LH3DSky::g_b_we_are_inside_citadel = false;
	Intro::ReleaseAll();
	ChallengeRoom::ChallengeClear();
	g_b_grosse_merde = GROSSE_MERDE_OFF;
	if (GGame::g_game != NULL)
	{
		if (GGame::g_game->help_system != NULL)
		{
			GGame::g_game->help_system->ClearDialogueControl();
			GGame::g_game->help_system->HelpSystemOn = true;
		}
		if (GGame::g_game->MyPlayer() != NULL)
		{
			GGame::g_game->MyInterface()->InterfaceActionForceToNormal();
			GGame::g_game->MyInterface()->Limits.Clear();
			GGame::g_game->MyInterface()->GetRenderHand()->SetMaxDistanceFromUser(CHAND_DEFAULT_MAX_DISTANCE_FROM_USER);
			GGame::g_game->MyInterface()->EndPlayBack();
		}
		CameraHelp::EnableCameraFeatures(CAMERA_FEATURES_NORMAL, CAMERA_FEATURES_ALL);
		CameraExclusion::ResetExclusionFile(CAMERA_EXCLUSION_ID_SCRIPT);
		if (GGame::g_game->GetCamera() != NULL)
		{
			GGame::g_game->GetCamera()->ClearCameraStack();
		}
		if (GGame::g_game->control_map != NULL)
		{
			GGame::g_game->control_map->CameraControlEnabled = true;
			GGame::g_game->control_map->NormalInterface = true;
		}
		Bookmark::ShowBookmarks = true;
		ActualEndGameSpeed();
		SetInterfaceInteraction(SCRIPT_INTERFACE_LEVEL_NORMAL);
		GConfirmation::Stop();
		if (GGlobal::Global.audio != NULL)
		{
			GGlobal::Global.audio->ScriptMusicType = MUSIC_TYPE_NONE;
		}
		GameSoundDisabled = false;
		AlignmentMusic = true;
#ifdef VERSION_BW1WCI
		GGameInfo::Info.SetVisualTimeScale(1.0f);
#endif
	}
}

#ifndef VERSION_BW1W100
void GScript::LoadScriptState(char* name)
{
	char path[256];

	sprintf(path, "%s.stb", name);
	fstream file;
	file.open(path, ios::in | ios::binary, filebuf::openprot);
	file.read((char*)ScriptManage::VariableTable, sizeof(ScriptManage::VariableTable));
	file.close();
	sprintf(path, "%s.ss", name);
	g_scriptDLL->RestoreState(path);
	ValidateVariableTable();
}

void GScript::SaveScriptState(char* name)
{
	char path[256];

	sprintf(path, "%s.ss", name);
	g_scriptDLL->SaveState(path);
	fstream file;
	sprintf(path, "%s.stb", name);
	file.open(path, ios::out | ios::binary, filebuf::openprot);
	file.write((char*)ScriptManage::VariableTable, sizeof(ScriptManage::VariableTable));
	file.close();
	ValidateVariableTable();
}
#endif

bool32_t GScript::Save(GameOSFile& file)
{
	char directory[MAX_PATH];
	memset(directory, 0, sizeof(directory));
	char* fileName = GUtils::GetFilenameFromPath(file.Filename);
	GUtils::GetPathFromPath(file.Filename, directory);
	char path[MAX_PATH];
	sprintf(path, "%sScript_%s", directory, fileName);
	SaveState(path);

	for (uint32_t i = SCRIPT_MANAGE_FIRST_SLOT; i < SCRIPT_MANAGE_TABLE_SIZE; i++)
	{
		ScriptManage::VariableTable[i].Save(file);
	}

	file.WriteIt(ScriptManage::NextFreeSlot);
	file.WriteIt(ScriptsLoaded);
	file.WriteIt(CountDownTimerEnabled);
#ifdef VERSION_BW1WCI
	file.WriteIt(CountDownTimerCountsUp);
#endif
	file.WriteIt(CountDownTimerRemaining);
	file.WriteIt(CountDownTimerVisible);
	file.WriteIt(StoredCameraPosition);
	file.WriteIt(StoredCameraFocus);
	file.WriteIt(DrawLeash);
	file.WriteIt(UnusedCameraControlFlag);
#ifdef VERSION_BW1WCI
	file.WriteIt(DrawFlags);
	file.WriteIt(PlayCreatureSounds);
	file.WriteIt(FightLock);
	file.WriteIt(FightQueueOnly);
	file.WriteIt(StayInFightCamera);
	file.WriteIt(PlayVillagerSounds);
#else
	file.WriteIt(DrawHighlight);
	file.WriteIt(PlayCreatureSounds);
#endif
	file.WriteIt(LoopSetControlledByScript);
	file.WriteIt(ScriptManage::TotalReferences);
	file.WriteIt(CameraControlTask);
	file.WriteIt(GameSpeedTask);
	file.WritePtr(HitObject);
	file.WritePtr(ObjectWhichHit);
#ifdef VERSION_BW1WCI
	file.WritePtr(ObjectHitLand);
#endif
	file.WriteIt(LastMusicLine);
	file.WriteIt(LastMusicWord);
	file.WriteIt(CitadelInteract);
	file.WriteIt(HandDemoTrigger);
	file.WriteIt(InterfaceLevel);
	file.WriteIt(GameSoundDisabled);
	file.WriteIt(AlignmentMusic);
	return true;
}

bool32_t GScript::Load(GameOSFile& file)
{
	g_scriptDLL->Reboot();
	ValidateScriptVariables();

	for (uint32_t i = SCRIPT_MANAGE_FIRST_SLOT; i < SCRIPT_MANAGE_TABLE_SIZE; i++)
	{
		ScriptManage::VariableTable[i].Load(file);
	}

	file.ReadIt(ScriptManage::NextFreeSlot);
	file.ReadIt(ScriptsLoaded);
	file.ReadIt(CountDownTimerEnabled);
#ifdef VERSION_BW1WCI
	file.ReadIt(CountDownTimerCountsUp);
#endif
	file.ReadIt(CountDownTimerRemaining);
	file.ReadIt(CountDownTimerVisible);
	file.ReadIt(StoredCameraPosition);
	file.ReadIt(StoredCameraFocus);
	file.ReadIt(DrawLeash);
	file.ReadIt(UnusedCameraControlFlag);
#ifdef VERSION_BW1WCI
	file.ReadIt(DrawFlags);
	file.ReadIt(PlayCreatureSounds);
	file.ReadIt(FightLock);
	file.ReadIt(FightQueueOnly);
	file.ReadIt(StayInFightCamera);
	file.ReadIt(PlayVillagerSounds);
#else
	file.ReadIt(DrawHighlight);
	file.ReadIt(PlayCreatureSounds);
#endif
	file.ReadIt(LoopSetControlledByScript);
	file.ReadIt(ScriptManage::TotalReferences);
	file.ReadIt(CameraControlTask);
	file.ReadIt(GameSpeedTask);
	file.ReadPtr((GameThing**)&HitObject);
	file.ReadPtr((GameThing**)&ObjectWhichHit);
#ifdef VERSION_BW1WCI
	file.ReadPtr((GameThing**)&ObjectHitLand);
#endif
	file.ReadIt(LastMusicLine);
	file.ReadIt(LastMusicWord);
	file.ReadIt(CitadelInteract);
	file.ReadIt(HandDemoTrigger);
	file.ReadIt(InterfaceLevel);
	file.ReadIt(GameSoundDisabled);
	file.ReadIt(AlignmentMusic);

	char directory[MAX_PATH];
	memset(directory, 0, sizeof(directory));
	char* fileName = GUtils::GetFilenameFromPath(file.Filename);
	GUtils::GetPathFromPath(file.Filename, directory);
	char path[MAX_PATH];
	sprintf(path, "%sScript_%s", directory, fileName);
	g_scriptDLL->RestoreState(path);
	SetInterfaceInteraction(InterfaceLevel);
	return true;
}

bool32_t GScript::InterruptRunningScript()
{
	if (GGame::g_game->help_system->DialogueControlTask != SCRIPT_TASK_NONE &&
	    g_scriptDLL->GetScriptType(GGame::g_game->help_system->DialogueControlTask) == VMScriptType_Help)
	{
		StopHelpScripts();
		GGame::g_game->help_system->SpiritInterruptTalking(HELP_SPIRIT_TYPE_GOOD, false);
		GGame::g_game->help_system->SpiritInterruptTalking(HELP_SPIRIT_TYPE_EVIL, false);
	}
	return true;
}

void GScript::CleanupOnScriptTask(unsigned long task)
{
	if (GGame::g_game != NULL && GGame::g_game->help_system != NULL)
	{
		GGame::g_game->help_system->ReleaseDialogueControl(task);
		GGame::g_game->help_system->ClearWideScreen(task);
		GGame::g_game->script->ClearCameraControl(task);
		GGame::g_game->script->ClearGameSpeedControl(task);
		if (GGame::g_game->MyInterface()->IsPlayBack(task))
		{
			GGame::g_game->MyInterface()->EndPlayBack();
		}
	}
}

void GScript::VMStartCall(unsigned long function)
{
	GGame::g_game->script->LoopSetControlledByScript = g_scriptFunctionTable[function].TakesControl;
}

void GScript::VMEndCall(unsigned long function) {}

void GScript::StopHelpScripts()
{
	StopScriptsOfType(VMScriptType_StoppableHelp);
}

void GScript::PUSH(void* value, VMType type)
{
	g_scriptDLL->PUSH(value, type);
}

void GScript::SetHitObject(GameThingWithPos* hit_object, GameThingWithPos* object_which_hit)
{
	if (hit_object != NULL && hit_object->IsAvailable())
	{
		HitObject = hit_object;
	}
	else
	{
		HitObject = NULL;
	}
	if (object_which_hit != NULL && object_which_hit->IsAvailable())
	{
		ObjectWhichHit = object_which_hit;
	}
	else
	{
		ObjectWhichHit = NULL;
	}
}

#ifdef VERSION_BW1WCI
void GScript::SetObjectHitLand(GameThingWithPos* thing)
{
	if (thing != NULL && thing->IsAvailable())
	{
		ObjectHitLand = thing;
	}
	else
	{
		ObjectHitLand = NULL;
	}
}
#endif
