#include "GameTimeConstants.h"
#include "CameraModePath.h"

#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech::SetMeterScreen */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "CameraModeNew3.h"
#include "ControlHand.h"
#include "ControlMap.h"
#include "Game.h"
#include "Interface.h"
#include "PSysLightMaps.h"
#include "Particle3DAnimWithCamera.h"

#if defined(VERSION_BW1W100)
#define CAMERA_MODE_PATH_FILE "C:\\dev\\black\\CameraModePath.cpp"
#elif defined(VERSION_BW1W110)
#define CAMERA_MODE_PATH_FILE "C:\\dev\\Black\\CameraModePath.cpp"
#else
#define CAMERA_MODE_PATH_FILE "C:\\dev\\MP\\Black\\CameraModePath.cpp"
#endif

CameraModePath::CameraModePath(GCamera* camera, Particle3DAnimWithCamera* anim) : CameraMode(camera)
{
	CameraMode* currentMode = camera->ModeCurrentIndex < 0 ? NULL : camera->modes[camera->ModeCurrentIndex];
	if (!currentMode->CanExit())
	{
		delete this;
		return;
	}
	CameraModePath* currentPath = dynamic_cast<CameraModePath*>(currentMode);
	Anim = anim;
	Valid = true;
	SetUpNearClipping();
	this->camera->SwitchToViewMode(this);
}

void CameraModePath::SetUpNearClipping()
{
	SavedNearClip = LH3DTech::GetNearClipping();
	LH3DTech::SetNearClipping(0.1f);
}

void CameraModePath::Restart()
{
	SetUpNearClipping();
}

void CameraModePath::Cleanup()
{
	LH3DTech::SetNearClipping(SavedNearClip);
	GInterface* playerInterface = GGame::g_game->MyInterface();
	playerInterface->hand.Get()->Show(true);
	PSysLightMaps::List.StopBlur();
}

void CameraModePath::Update()
{
	if (Anim != NULL)
	{
		Anim->UpdateCamera(&camera->CameraOriginZoomer, &camera->CameraHeadingZoomer);
	}
}

void CameraModePath::ProcessKeyMovement(uint16_t key)
{
	float timeDelta = camera->TimeDelta;
	int   turn = 0;
	int   move = 0;

	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		turn = timeDelta * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		turn = timeDelta * 400.0f;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
	{
		move = timeDelta * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
	{
		move = timeDelta * 400.0f;
	}

	if (move != 0 || turn != 0)
	{
		new (CAMERA_MODE_PATH_FILE, 93) CameraModeNew3(camera);
	}
	if (GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE)
	{
		new (CAMERA_MODE_PATH_FILE, 100) CameraModeNew3(camera);
	}
}
