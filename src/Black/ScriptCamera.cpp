#include "ColourConstants.h" /* For White */
#ifdef VERSION_BW1WCI
#include "GameTimeConstants.h"
#endif
#include "Script.h"

#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For DEGREES_TO_RADIANS */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech */
#include <Lionhead/LH3DLib/development/SuperVillager.h> /* For SuperVillager */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h>      /* For LHReleasedFile */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>            /* For LHSPrintf */

#include "Audio.h"
#include "Camera.h"
#include "CameraEditor.h"
#include "CameraExclusion.h"
#include "CameraModeNew3.h"
#include "CameraModeScript.h"
#include "CameraModeTwoObjects.h"
#include "Game.h"
#include "Global.h"
#include "Landscape.h"
#include "PSysGlobal.h"
#include "ScriptConstants.h"
#include "ScriptDLL.h"
#ifdef VERSION_BW1WCI
#include "CameraModeCannon.h"
#include "Creature.h"
#include "HelpSystem.h"
#include "Interface.h"
#endif

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + ((line) < 331 ? 78 : (line) < 377 ? 80 : 83))
#endif

#define SCRIPT_CAMERA_DEFAULT_FOV_TIME  0.5f
#define SCRIPT_CAMERA_FACE_OBJECT_PITCH 0.1f
#ifdef VERSION_BW1WCI
#define SCRIPT_CAMERA_HOLD_WIDESCREEN_TASK    0xFFFFFFFF
#define SCRIPT_DRAW_FLAGS_SCOREBOARD          1
#define CANNON_MIN_PITCH                      (-PI_F / 3.0f)
#define CANNON_MAX_PITCH                      1.5f
#define SCRIPT_CAMERA_FOLLOW_ZOOM_TIME        0.3f
#define SCRIPT_CAMERA_FOLLOW_HEADING_VELOCITY 2
#endif

// BW1W120 006ecf40 BW1M119 null
float GetCameraMoveTime(const LHPoint& from, const LHPoint& to, float start_speed, float end_speed);
// BW1W120 006ecfb0 BW1M119 null
float GetCameraEndSpeed(const LHPoint& from, const LHPoint& to, float start_speed, float time);
// BW1W120 006ed710 BW1M119 inlined
static void GetFaceObjectCamera(GameThingWithPos* thing, float distance, LHPoint* position, LHPoint* focus);

const float FacingDirectionLimit = 4.0f * TWO_PI;

#ifdef VERSION_BW1WCI
void GScript::SetWideScreen()
{
	bool32_t widescreen = g_scriptDLL->ULONG_POP();
	int      control = GGame::g_game->help_system->WideScreenControl;
	uint32_t task = g_scriptDLL->TaskNumber();
	SCRIPT_ASSERT(!widescreen || control != task, "Script asking for Widescreen it has control of! Bad");
	if (control > 0)
	{
		if (control != task)
		{
			return;
		}
	}
	else if (!widescreen)
	{
		return;
	}
	GGame::g_game->help_system->SetWideScreen(widescreen, g_scriptDLL->TaskNumber());
	if (widescreen)
	{
		for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
		{
			Creature* creature = node->payload;
			if (creature != NULL)
			{
				creature->ClearCreatureForScriptActing();
			}
		}
	}
}

void GScript::HoldWideScreen()
{
	int      control = GGame::g_game->help_system->WideScreenControl;
	uint32_t task = g_scriptDLL->TaskNumber();
	if (control <= 0)
	{
		GGame::g_game->help_system->SetWideScreen(true, SCRIPT_CAMERA_HOLD_WIDESCREEN_TASK);
	}
}
#endif

void GScript::SetCameraPos()
{
	LHPoint position;
	g_scriptDLL->POINT_POP(position);
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	if (mode != NULL)
	{
#ifdef VERSION_BW1WCI
		if (mode->IsCameraModeScript())
		{
			((CameraModeScript*)mode)->SetCameraPosition(position);
		}
		else
		{
			GGame::g_game->GetCamera()->CameraOriginZoomer.SetPosition(position);
		}
		GLandscape::DrawListRebuildCount = 1;
#else
		CameraModeScript* script = dynamic_cast<CameraModeScript*>(mode);
		if (script != NULL)
		{
			script->SetCameraPosition(position);
			GLandscape::DrawListRebuildCount = 1;
		}
#endif
	}
}

void GScript::SetCameraFocus()
{
	LHPoint focus;
	g_scriptDLL->POINT_POP(focus);
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Script moving camera in citadel");
	if (mode != NULL)
	{
#ifdef VERSION_BW1WCI
		if (mode->IsCameraModeScript())
		{
			((CameraModeScript*)mode)->SetCameraFocus(focus);
			GLandscape::DrawListRebuildCount = 1;
		}
		else
		{
			GGame::g_game->GetCamera()->CameraOriginZoomer.SetPosition(focus);
		}
#else
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->SetCameraFocus(focus);
			GLandscape::DrawListRebuildCount = 1;
		}
#endif
	}
}

void GScript::MoveCameraPos()
{
	float   time = g_scriptDLL->FLOAT_POP();
	LHPoint position;
	g_scriptDLL->POINT_POP(position);
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Script moving camera in citadel");
	if (mode != NULL)
	{
#ifdef VERSION_BW1WCI
		if (mode->IsCameraModeScript())
		{
			((CameraModeScript*)mode)->MoveCameraPosition(position, time);
		}
		else
		{
			GGame::g_game->GetCamera()->CameraOriginZoomer.SetDestinationWithTime(position, time);
		}
#else
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->MoveCameraPosition(position, time);
		}
#endif
	}
}

void GScript::MoveCameraFocus()
{
	float   time = g_scriptDLL->FLOAT_POP();
	LHPoint focus;
	g_scriptDLL->POINT_POP(focus);
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Script moving camera in citadel");
	if (mode != NULL)
	{
#ifdef VERSION_BW1WCI
		if (mode->IsCameraModeScript())
		{
			((CameraModeScript*)mode)->MoveCameraFocus(focus, time);
		}
		else
		{
			GGame::g_game->GetCamera()->CameraHeadingZoomer.SetDestinationWithTime(focus, time);
		}
#else
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->MoveCameraFocus(focus, time);
		}
#endif
	}
}

void GScript::StartCameraControl()
{
	CameraModeScript* mode = NULL;
	if (GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		mode = CameraModeScript::Create(GGame::g_game->GetCamera());
		if (mode != NULL)
		{
			GGame::g_game->script->CameraControlTask = g_scriptDLL->TaskNumber();
#ifdef VERSION_BW1WCI
			GGame::g_game->script->DrawLeash = false;
			GGame::g_game->script->DrawFlags = SCRIPT_DRAW_FLAGS_SCOREBOARD;
#else
			GGame::g_game->script->DrawHighlight = false;
			GGame::g_game->script->DrawLeash = false;
#endif
		}
		SCRIPT_ASSERT(mode != NULL, "Note-Camera control Failed");
	}
	else if (g_scriptDLL->GetCurrentTaskScriptType() & VMScriptType_RunWhilePaused)
	{
		GGame::g_game->script->CameraControlTask = g_scriptDLL->TaskNumber();
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)(mode != NULL), VMType_BOOLEAN);
}

void GScript::ActualEndCameraControl()
{
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	float       fov = GGame::g_game->GetCamera()->GetDefaultFov();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	if (mode != NULL)
	{
		ReleaseDualCamera();
		mode = GGame::g_game->GetCamera()->GetCurrentMode();
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			mode->Delete();
			NEW(171) CameraModeNew3(GGame::g_game->GetCamera());
		}
		else
		{
			ScriptWarningMessage("We are in the wrong camera mode! - exception happened?");
		}
	}
	GGame::g_game->GetCamera()->SetCameraFov(fov, SCRIPT_CAMERA_DEFAULT_FOV_TIME);
	GGame::g_game->script->CameraControlTask = SCRIPT_TASK_NONE;
#ifdef VERSION_BW1WCI
	GGame::g_game->script->PlayVillagerSounds = true;
	GGame::g_game->script->PlayCreatureSounds = true;
	GGame::g_game->script->DrawLeash = true;
	GGame::g_game->script->DrawFlags = SCRIPT_DRAW_FLAGS_ALL;
#else
	GGame::g_game->script->PlayCreatureSounds = true;
	GGame::g_game->script->DrawHighlight = true;
	GGame::g_game->script->DrawLeash = true;
#endif
	GGlobal::Global.audio->SetGameSFX(true);
	SuperVillager* villager = SuperVillager::g_first;
	while (villager != NULL)
	{
		SuperVillager* current = villager;
		villager = villager->Next;
		current->Release();
	}
	SuperVillager::g_first = NULL;
	GLandscape::DrawListRebuildCount = 1;
	GGame::g_game->script->UnusedCameraControlFlag = false;
#ifdef VERSION_BW1WCI
	GGame::g_game->MyInterface()->SetActive(true);
#endif
}

void GScript::EndCameraControl()
{
	uint32_t task = GGame::g_game->script->CameraControlTask;
	if (task == g_scriptDLL->TaskNumber())
	{
		ActualEndCameraControl();
	}
}

void GScript::ClearCameraControl(unsigned long task)
{
	if (CameraControlTask == task)
	{
		ActualEndCameraControl();
	}
}

float GetCameraMoveTime(const LHPoint& from, const LHPoint& to, float start_speed, float end_speed)
{
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	return from.GetDistance(to) / ((start_speed + end_speed) * 0.5f);
}

float GetCameraEndSpeed(const LHPoint& from, const LHPoint& to, float start_speed, float time)
{
	return from.GetDistance(to) / time * 2.0f - start_speed;
}

void GScript::GetCameraPos()
{
	LHPoint position;
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		SetPointOutOfWorld(&position);
	}
	else
	{
		GGame::g_game->GetCamera()->GetPosition(position);
	}
	g_scriptDLL->POINT_PUSH(position);
}

void GScript::GetCameraFocus()
{
	LHPoint focus;
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		SetPointOutOfWorld(&focus);
	}
	else
	{
		GGame::g_game->GetCamera()->GetFocus(focus);
	}
	g_scriptDLL->POINT_PUSH(focus);
}

void GScript::HasCameraArrived()
{
	if (GGame::g_game->IsMultiplayerGame())
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	if (GGame::g_game->IsMultiplayerGame())
	{
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
		return;
	}
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Script camera in citadel");
	if (GGame::g_game->GetCamera()->Arrived())
	{
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::ConvertCameraEditorPosition()
{
	long                     index = g_scriptDLL->ULONG_POP();
	GCameraEditor::CameraBin bin;
	GCameraEditor::LoadCameraFromHD(index, bin);
	g_scriptDLL->POINT_PUSH(bin.Position);
}

void GScript::ConvertCameraEditorFocus()
{
	long                     index = g_scriptDLL->ULONG_POP();
	GCameraEditor::CameraBin bin;
	GCameraEditor::LoadCameraFromHD(index, bin);
	g_scriptDLL->POINT_PUSH(bin.Focus);
}

void GScript::CreateDualCamera()
{
	GameThingWithPos* thing2 = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing1 = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing1 != NULL && thing2 != NULL, "Thing invalid for dual cam");
	if (thing2 != NULL && thing1 != NULL)
	{
		NEW(331) CameraModeTwoObjects(GGame::g_game->GetCamera(), thing1, thing2);
	}
}

void GScript::UpdateDualCamera()
{
	GameThingWithPos* thing2 = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing1 = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(thing1 != NULL && thing2 != NULL, "Thing invalid for dual cam");
	if (thing2 != NULL && thing1 != NULL)
	{
		CameraModeTwoObjects* dual = dynamic_cast<CameraModeTwoObjects*>(mode);
		if (dual != NULL)
		{
			dual->SetObjects(thing1, thing2);
		}
	}
}

void GScript::ReleaseDualCamera()
{
	GCamera*    camera = GGame::g_game->GetCamera();
	CameraMode* mode = camera->GetCurrentMode();
#ifdef VERSION_BW1WCI
	LHPoint position;
	LHPoint focus;
#endif
	if (dynamic_cast<CameraModeTwoObjects*>(mode) != NULL)
	{
#ifdef VERSION_BW1WCI
		camera->GetPosition(position);
		camera->GetFocus(focus);
		mode->Delete();
		camera->PopViewMode();
		camera->SetPositionAndFocus(position, focus);
#else
		mode->Delete();
		camera->PopViewMode();
#endif
	}
}

void GScript::CreateCameraBetweenObjectAndPoint()
{
	LHPoint point;
	g_scriptDLL->POINT_POP(point);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	NEW(377) CameraModeTwoObjects(GGame::g_game->GetCamera(), thing, &point);
}

void GScript::SetCameraToFaceObject()
{
	float             distance = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Script moving camera in citadel");
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			LHPoint position;
			LHPoint focus;
			GetFaceObjectCamera(thing, distance, &position, &focus);
			((CameraModeScript*)mode)->SetCameraPosition(position);
			((CameraModeScript*)mode)->SetCameraFocus(focus);
			GLandscape::DrawListRebuildCount = 1;
		}
	}
}

void GScript::MoveCameraToFaceObject()
{
	float             time = g_scriptDLL->FLOAT_POP();
	float             distance = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Script moving camera in citadel");
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			LHPoint position;
			LHPoint focus;
			GetFaceObjectCamera(thing, distance, &position, &focus);
			((CameraModeScript*)mode)->MoveCameraPosition(position, time);
			((CameraModeScript*)mode)->MoveCameraFocus(focus, time);
		}
	}
}

static void GetFaceObjectCamera(GameThingWithPos* thing, float distance, LHPoint* position, LHPoint* focus)
{
	SCRIPT_ASSERT(thing != NULL, "no object to face");
	GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, *focus);
	focus->y += thing->GetHeight() * 0.5f;
	float heading = thing->GetFacingDirection();
	SCRIPT_ASSERT(heading < FacingDirectionLimit, "Invalid heading");
	while (heading > TWO_PI)
	{
		heading -= TWO_PI;
	}
	GCamera::SetPointFromPointDistanceHeadingAndPitch(position, *focus, distance, heading,
	                                                  SCRIPT_CAMERA_FACE_OBJECT_PITCH);
}

void GScript::SetCameraPath()
{
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_PATH path = (SCRIPT_PATH)g_scriptDLL->ULONG_POP();
	if (mode == NULL)
	{
		ScriptErrorMessage("Script camera has been removed!");
		return;
	}
	if (dynamic_cast<CameraModeScript*>(mode) == NULL)
	{
		ScriptErrorMessage("We are in the wrong camera mode!");
	}
	if (dynamic_cast<CameraModeScript*>(mode) != NULL)
	{
		((CameraModeScript*)mode)->SetCameraPath(path);
	}
}

void GScript::SetCameraZone()
{
	ScriptDLL*     dll = g_scriptDLL;
	char*          name = dll->STRING(dll->ULONG_POP());
	LHReleasedFile file;
	CameraExclusion::ResetExclusionFile(CAMERA_EXCLUSION_ID_SCRIPT);
	char path[MAX_PATH];
	sprintf(path, ".\\Data\\Zones\\%s", name);
	file.SetName(path);
	if (file.Open(LH_FILE_MODE_READ_ONLY) == LH_FILE_RESULT_OK)
	{
		CameraExclusion::LoadExclusionFile(&file, CAMERA_EXCLUSION_ID_SCRIPT);
		CameraExclusion::UseExclusions = true;
		CameraModeNew3::DrawForceField = true;
		return;
	}
	else
	{
		ScriptErrorMessage(LHSPrintf("Couldn't load zone file-%s", path));
		return;
	}
}

void GScript::GetCameraInclusionDistance()
{
	g_scriptDLL->FLOAT_PUSH(CameraExclusion::GetDistanceFromInclusionEdge());
}

void GScript::SetCameraPosFocFollow()
{
	float             distance = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->Set(thing, distance);
			((CameraModeScript*)mode)->SetToDestinationPosition();
		}
	}
}

void GScript::SetCameraThingFollow()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed! ESC key?");
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->Set(thing);
			((CameraModeScript*)mode)->SetToDestinationPosition();
		}
	}
}

void GScript::SetCameraFocusFollow()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed! ESC key?");
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (mode != NULL && thing != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->SetCameraFocus(thing);
		}
	}
}

void GScript::FocusFollowComputerPlayer()
{
	float       player = ConvertScriptPlayerToGamePlayer(g_scriptDLL->FLOAT_POP());
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	if (mode == NULL)
	{
		ScriptErrorMessage("Script camera has been removed!");
		return;
	}
	if (dynamic_cast<CameraModeScript*>(mode) == NULL)
	{
		ScriptErrorMessage("We are in the wrong camera mode!");
	}
	if (dynamic_cast<CameraModeScript*>(mode) != NULL)
	{
		((CameraModeScript*)mode)->SetCameraFocusComputerPlayer(player);
	}
}

void GScript::PositionFollowComputerPlayer()
{
	float       player = ConvertScriptPlayerToGamePlayer(g_scriptDLL->FLOAT_POP());
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	if (mode == NULL)
	{
		ScriptErrorMessage("Script camera has been removed!");
		return;
	}
	if (dynamic_cast<CameraModeScript*>(mode) == NULL)
	{
		ScriptErrorMessage("We are in the wrong camera mode!");
	}
	if (dynamic_cast<CameraModeScript*>(mode) != NULL)
	{
		((CameraModeScript*)mode)->SetCameraPositionComputerPlayer(player);
	}
}

void GScript::MoveCameraPosFocFollow()
{
	float             distance = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->Set(thing, distance);
		}
	}
}

void GScript::MoveCameraThingFollow()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed! ESC key?");
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->Set(thing);
		}
	}
}

void GScript::MoveCameraFocusFollow()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed! ESC key?");
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (mode != NULL && thing != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->SetCameraFocus(thing);
		}
	}
}

void GScript::SetFollowCameraProperties()
{
	bool32_t    relative_heading = g_scriptDLL->ULONG_POP();
	float       heading = g_scriptDLL->FLOAT_POP() * DEGREES_TO_RADIANS;
	float       zoom_time_scale = g_scriptDLL->FLOAT_POP();
	float       distance = g_scriptDLL->FLOAT_POP();
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	if (mode == NULL)
	{
		ScriptErrorMessage("Script camera has been removed! ESC key?");
		return;
	}
	if (dynamic_cast<CameraModeScript*>(mode) == NULL)
	{
		ScriptErrorMessage("We are in the wrong camera mode!");
	}
	if (dynamic_cast<CameraModeScript*>(mode) != NULL)
	{
		CameraModeScript* script = (CameraModeScript*)mode;
		script->ViewingDistance = distance;
		script->ZoomTimeScale = zoom_time_scale;
		script->RelativeHeading = relative_heading;
		script->Heading = heading;
		script->UseOffsets = false;
	}
}

void GScript::ShakeCamera()
{
	float   duration = g_scriptDLL->FLOAT_POP();
	float   amplitude = g_scriptDLL->FLOAT_POP();
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint position;
	g_scriptDLL->POINT_POP(position);
	PSysGlobal::StartCameraShake(position, radius, amplitude, duration);
}

void GScript::SetFixedCamRotation()
{
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	LHPoint     point;
	g_scriptDLL->POINT_POP(point);
	bool32_t rotate = g_scriptDLL->ULONG_POP();
	if (mode == NULL)
	{
		ScriptErrorMessage("Script camera has been removed!");
		return;
	}
	CameraModeNew3* new3 = dynamic_cast<CameraModeNew3*>(mode);
	if (new3 == NULL)
	{
		ScriptErrorMessage("Wrong camera mode");
		return;
	}
	if (rotate)
	{
		new3->ForceRotateAboutPoint(&point);
	}
	else
	{
		new3->ForceRotateAboutPoint(NULL);
	}
}

void GScript::SetCameraLens()
{
	float time = g_scriptDLL->FLOAT_POP();
	float fov = g_scriptDLL->FLOAT_POP();
	GGame::g_game->GetCamera()->SetCameraFov(fov * DEGREES_TO_RADIANS, time);
}

void GScript::ResetCameraLens()
{
	float time = g_scriptDLL->FLOAT_POP();
	float fov = GGame::g_game->GetCamera()->GetDefaultFov();
	GGame::g_game->GetCamera()->SetCameraFov(fov, time);
}

void GScript::StoreCameraDetails()
{
	LHPoint& focus = GGame::g_game->script->StoredCameraFocus;
	LHPoint& position = GGame::g_game->script->StoredCameraPosition;
	GCamera* camera = GGame::g_game->GetCamera();
	camera->GetPosition(position);
	camera->GetFocus(focus);
}

void GScript::RestoreCameraDetails()
{
	GGame::g_game->GetCamera()->SetPositionAndFocus(GGame::g_game->script->StoredCameraPosition,
	                                                GGame::g_game->script->StoredCameraFocus);
	GLandscape::DrawListRebuildCount = 1;
}

void GScript::SetCameraPosFocLens()
{
	float   fov = g_scriptDLL->FLOAT_POP();
	LHPoint focus;
	g_scriptDLL->POINT_POP(focus);
	LHPoint position;
	g_scriptDLL->POINT_POP(position);
	GGame::g_game->GetCamera()->SetPositionAndFocus(position, focus);
	GGame::g_game->GetCamera()->SetCameraFov(fov, 0.0f);
	GLandscape::DrawListRebuildCount = 1;
}

void GScript::MoveCameraPosFocLens()
{
	float   time = g_scriptDLL->FLOAT_POP();
	float   fov = g_scriptDLL->FLOAT_POP();
	LHPoint focus;
	g_scriptDLL->POINT_POP(focus);
	LHPoint position;
	g_scriptDLL->POINT_POP(position);
	CameraMode* mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	SCRIPT_ASSERT(GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL, "Script moving camera in citadel");
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			((CameraModeScript*)mode)->MoveCameraPosition(position, time);
			((CameraModeScript*)mode)->MoveCameraFocus(focus, time);
			GGame::g_game->GetCamera()->SetCameraFov(fov, time);
		}
	}
}

void GScript::GetStoredCameraPosition()
{
	LHPoint position = GGame::g_game->script->StoredCameraPosition;
	g_scriptDLL->POINT_PUSH(position);
}

void GScript::GetStoredCameraFocus()
{
	LHPoint focus = GGame::g_game->script->StoredCameraFocus;
	g_scriptDLL->POINT_PUSH(focus);
}

void GScript::GetFacingCameraPosition()
{
	float   distance = g_scriptDLL->FLOAT_POP();
	LHPoint direction = *LH3DTech::GetTargetVector();
	LHPoint position;
	GGame::g_game->GetCamera()->GetPosition(position);
	position += direction * distance;
	g_scriptDLL->POINT_PUSH(position);
}

#ifdef VERSION_BW1WCI
void GScript::StartCannonCamera()
{
	NEW(818) CameraModeCannon(GGame::g_game->GetCamera(), CANNON_MIN_PITCH, CANNON_MAX_PITCH, -PI_F, PI_F);
}

void GScript::EndCannonCamera()
{
	GCamera*    camera = GGame::g_game->GetCamera();
	CameraMode* mode = camera->GetCurrentMode();
	if (dynamic_cast<CameraModeCannon*>(mode) != NULL)
	{
		LHPoint position;
		camera->GetPosition(position);
		LHPoint focus;
		camera->GetFocus(focus);
		mode->Delete();
		camera->PopViewMode();
		camera->SetPositionAndFocus(position, focus);
	}
}

void GScript::SetCannonSize()
{
	float size = g_scriptDLL->FLOAT_POP();
	if (dynamic_cast<CameraModeCannon*>(GGame::g_game->GetCamera()->GetCurrentMode()) != NULL)
	{
		float clamped = size;
		if (clamped < 0.0f)
		{
			clamped = 0.0f;
		}
		CameraModeCannon::CannonSize = clamped;
	}
}

void GScript::SetCannonStrength()
{
	float strength = g_scriptDLL->FLOAT_POP();
	if (dynamic_cast<CameraModeCannon*>(GGame::g_game->GetCamera()->GetCurrentMode()) != NULL)
	{
		if (strength > 0.0f)
		{
			if (strength < 1.0f)
			{
				CameraModeCannon::CannonStrength = strength;
			}
			else
			{
				CameraModeCannon::CannonStrength = 1.0f;
			}
		}
		else
		{
			CameraModeCannon::CannonStrength = 0.0f;
		}
	}
}

void GScript::SetCameraHeadingFollow()
{
	float             distance = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			CameraModeScript* script = (CameraModeScript*)mode;
			script->Set(thing);
			script->Heading = script->GetHeading();
			script->ViewingDistance = distance;
			script->ZoomTimeScale = SCRIPT_CAMERA_FOLLOW_ZOOM_TIME;
			script->RelativeHeading = SCRIPT_CAMERA_FOLLOW_HEADING_VELOCITY;
			script->UseOffsets = false;
		}
	}
}

void GScript::SetCameraAutoTrackFollow()
{
	float             distance = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CameraMode*       mode = GGame::g_game->GetCamera()->GetCurrentMode();
	SCRIPT_ASSERT(mode != NULL, "Script camera has been removed!");
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (mode != NULL)
	{
		if (dynamic_cast<CameraModeScript*>(mode) == NULL)
		{
			ScriptErrorMessage("We are in the wrong camera mode!");
		}
		if (dynamic_cast<CameraModeScript*>(mode) != NULL)
		{
			CameraModeScript* script = (CameraModeScript*)mode;
			script->Set(thing);
			script->Heading = script->GetHeading();
			script->ViewingDistance = distance;
			script->ZoomTimeScale = SCRIPT_CAMERA_FOLLOW_ZOOM_TIME;
			script->RelativeHeading = SCRIPT_CAMERA_FOLLOW_HEADING_VELOCITY;
			script->UseOffsets = false;
		}
	}
}
#endif
