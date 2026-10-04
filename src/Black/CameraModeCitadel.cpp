#include "GameTimeConstants.h"
#include "CameraModeCitadel.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "CameraModeNew3.h"
#include "Citadel.h"
#include "ControlMap.h"
#include "Game.h"
#include "Landscape.h"

#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHSystem.h>

const float CameraModeCitadel::DefaultDistance = 100.0f;
const float CameraModeCitadel::Pitch = PI_F / 10;
const float CameraModeCitadel::ZoomTime = 0.8f;

CameraModeCitadel::CameraModeCitadel(GCamera* camera) : CameraMode(camera)
{
	if (camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	CameraMode* currentMode =
		this->camera->ModeCurrentIndex < 0 ? NULL : this->camera->modes[this->camera->ModeCurrentIndex];
	if (dynamic_cast<CameraModeCitadel*>(currentMode))
	{
		// Selecting the citadel view again toggles it off.
		this->camera->PopViewMode();
		delete this;
		return;
	}
	Citadel* citadel = GGame::g_game->players[GGame::g_game->PlayerIndex].citadel.Get();
	GLandscape::ConvertMapCoordToLandscapePoint(citadel->Pos, Focus);
	Distance = DefaultDistance;
	Heading = this->camera->CalculateRotationAngleY();
	Restart();
	this->camera->SwitchToViewMode(this);
}

void CameraModeCitadel::Restart()
{
	LHPoint position;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&position, Focus, Distance, Heading, Pitch);
	camera->CameraHeadingZoomer.SetDestinationWithTime(Focus, ZoomTime);
	camera->CameraOriginZoomer.SetDestinationWithTime(position, ZoomTime);
}

void CameraModeCitadel::ProcessKeyMovement(uint16_t key)
{
	float timeDelta = camera->TimeDelta;
	int   zoom = 0;
	int   rotate = 0;
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		zoom = timeDelta * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		zoom = timeDelta * 400.0f;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
	{
		rotate = timeDelta * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
	{
		rotate = timeDelta * 400.0f;
	}
	if (rotate != 0)
	{
		Heading -= rotate * PI_F / LHSys::TheSystem.screen.width;
		Restart();
	}
	if (zoom != 0)
	{
		// Zooming hands the camera over to the free-roaming mode.
		new ("C:\\dev\\MP\\Black\\CameraModeCitadel.cpp", 80) CameraModeNew3(camera);
	}
}
