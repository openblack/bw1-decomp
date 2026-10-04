#include "CameraModeScript.h"

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "ColourConstants.h" /* For White */
#include "Game.h"
#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::g_game_time_inc */
#include "ScriptedCamera.h"

#if defined(VERSION_BW1W100)
#define CAMERA_MODE_SCRIPT_FILE "C:\\dev\\black\\CameraModeScript.cpp"
#elif defined(VERSION_BW1W110)
#define CAMERA_MODE_SCRIPT_FILE "C:\\dev\\Black\\CameraModeScript.cpp"
#else
#define CAMERA_MODE_SCRIPT_FILE "C:\\dev\\MP\\Black\\CameraModeScript.cpp"
#endif

CameraModeScript* CameraModeScript::Create(GCamera* camera)
{
	if (camera->CantExitCurrentMode())
	{
		return NULL;
	}
	return new (CAMERA_MODE_SCRIPT_FILE, 18) CameraModeScript(camera);
}

CameraModeScript::CameraModeScript(GCamera* camera) : CameraModeFollow(camera, NULL, 0.2f, true, false)
{
	FocusThing = NULL;
	Valid = true;
	Path = NULL;
	AutoReposition = false;
	Reset();
}

void CameraModeScript::Validate()
{
	if (FocusThing && !FocusThing->IsAvailable())
	{
		FocusThing = NULL;
	}
	CameraModeFollow::Validate();
}

void CameraModeScript::Update()
{
	if (Path)
	{
		UpdatePath();
	}
	CameraModeFollow::Update();
}

void CameraModeScript::SetCameraFocus(const LHPoint& focus)
{
	ReleasePath();
	SetCameraFocus((GameThingWithPos*)NULL);
	ComputerPlayerFocus = -1;
	GGame::g_game->GetCamera()->CameraHeadingZoomer.SetPosition(focus);
}

void CameraModeScript::SetCameraPosition(const LHPoint& position)
{
	ReleasePath();
	Set(NULL);
	ComputerPlayerFollow = -1;
	GGame::g_game->GetCamera()->CameraOriginZoomer.SetPosition(position);
}

void CameraModeScript::MoveCameraFocus(const LHPoint& focus, float time)
{
	ReleasePath();
	SetCameraFocus((GameThingWithPos*)NULL);
	ComputerPlayerFocus = -1;
	GGame::g_game->GetCamera()->CameraHeadingZoomer.SetDestinationWithTime(focus, time);
}

void CameraModeScript::MoveCameraPosition(const LHPoint& position, float time)
{
	ReleasePath();
	Set(NULL);
	ComputerPlayerFollow = -1;
	GGame::g_game->GetCamera()->CameraOriginZoomer.SetDestinationWithTime(position, time);
}

void CameraModeScript::SetCameraFocus(GameThingWithPos* thing)
{
	ReleasePath();
	ComputerPlayerFocus = -1;
	if (thing && thing->IsAvailable())
	{
		FocusThing = thing;
	}
	else
	{
		FocusThing = NULL;
	}
}

void CameraModeScript::SetCameraFocusComputerPlayer(long player)
{
	ReleasePath();
	SetCameraFocus((GameThingWithPos*)NULL);
	ComputerPlayerFocus = player;
}

void CameraModeScript::SetCameraPositionComputerPlayer(long player)
{
	ReleasePath();
	Set(NULL);
	ComputerPlayerFollow = player;
}

void CameraModeScript::Reset()
{
	FocusThing = NULL;
	Valid = true;
	ReleasePath();
	ComputerPlayerFocus = -1;
	ComputerPlayerFollow = -1;
}

void CameraModeScript::ReleasePath()
{
	if (Path)
	{
		Path->Release();
		Path = NULL;
	}
}

void CameraModeScript::SetCameraPath(SCRIPT_PATH path)
{
	Reset();
	Path = ScriptedCamera::Create(path);
	PathTime = 0;
}

void CameraModeScript::UpdatePath()
{
	PathTime += LH3DTech::g_game_time_inc;
	LHPoint position;
	LHPoint focus;
	Path->GetPositionAndFocus(PathTime, &position, &focus);
	GGame::g_game->GetCamera()->SetPositionAndFocus(position, focus);
}

bool32_t CameraModeScript::Arrived()
{
	if (Path)
	{
		return Path->GetDuration() <= PathTime;
	}
	return CameraMode::Arrived();
}

bool32_t CameraModeScript::CanExit()
{
	return !Valid;
}
