#include "CameraModeFlyAndClick.h"

// ClickDistance precedes the GameTimeConstants.h pair in this unit's .rdata (BW1W120 008c77e8), so it is
// defined before that header is included.
// TODO: the original was probably a constant from an earlier header rather than a static member.
const float CameraModeFlyAndClick::ClickDistance = 120.0f;

#include "GameTimeConstants.h"

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland::RayCastFrom2DPoint */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DMath.h>      /* For PI_F, EIGHTH_PI_F */
#include <Lionhead/LH3DLib/development/LHCoord.h>       /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHMatrix.h>      /* For struct LHMatrix */

#include "Camera.h"
#include "CameraModeNew3.h"
#include "Citadel.h"
#include "ControlMap.h"
#include "Game.h"
#include "Interface.h"
#include "Landscape.h"

#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For LH_MOD_ALT, LH_MOD_CTRL, LH_MOD_SHIFT */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

const float CameraModeFlyAndClick::Pitch = EIGHTH_PI_F;
const float CameraModeFlyAndClick::DefaultDistance = 2200.0f;
const float CameraModeFlyAndClick::MoveSpeed = 0.01f;
const float CameraModeFlyAndClick::ZoomTimes[3] = {1.0f, 1.5f, 2.5f};
const float CameraModeFlyAndClick::CameraDistanceScale = 1.0f / 12.0f;

CameraModeFlyAndClick::CameraModeFlyAndClick(GCamera* camera, FLY_AND_CLICK_TYPE type) : CameraMode(camera)
{
	if (camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	Type = type;
	CameraMode* currentMode =
		this->camera->ModeCurrentIndex < 0 ? NULL : this->camera->modes[this->camera->ModeCurrentIndex];
	CameraModeFlyAndClick* current = dynamic_cast<CameraModeFlyAndClick*>(currentMode);
	if (current != NULL)
	{
		if (current->Type == Type)
		{
			// Selecting the same view again toggles it off.
			this->camera->PopViewMode();
			delete this;
			return;
		}
		this->camera->PopViewMode();
	}
	Valid = true;
	switch (Type)
	{
	case FLY_AND_CLICK_TYPE_CAMERA:
		Distance = CameraDistanceScale * DefaultDistance;
		Focus = this->camera->pos;
		break;
	case FLY_AND_CLICK_TYPE_ISLAND:
		Distance = DefaultDistance;
		GLandscape::GetIslandCentre(Focus);
		break;
	case FLY_AND_CLICK_TYPE_CITADEL: {
		Distance = DefaultDistance * 0.25f;
		Citadel* citadel = GGame::g_game->players[GGame::g_game->PlayerIndex].citadel.Get();
		GLandscape::ConvertMapCoordToLandscapePoint(citadel->Pos, Focus);
		break;
	}
	}
	Heading = this->camera->CalculateRotationAngleY();
	Restart();
	this->camera->SwitchToViewMode(this);
}

void CameraModeFlyAndClick::Update()
{
	if (GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE)
	{
		LHCoord mouse = LHSys::TheSystem.mouse.Pos();
		LHPoint pos;
		if (LH3DIsland::RayCastFrom2DPoint(mouse, &pos.x, &pos.z, false, 0.0f))
		{
			LH3DMapCoords coords(pos.x, pos.z);
			pos.y = LH3DIsland::GetAltitude(coords);
			GCamera* camera = this->camera;
			camera->PopViewMode();
			new ("C:\\dev\\MP\\Black\\CameraModeFlyAndClick.cpp", 96) CameraModeNew3(camera, pos, ClickDistance);
		}
	}
}

void CameraModeFlyAndClick::Restart()
{
	LHPoint position;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&position, Focus, Distance, Heading, Pitch);
	camera->CameraHeadingZoomer.SetDestinationWithTime(Focus, ZoomTimes[Type]);
	camera->CameraOriginZoomer.SetDestinationWithTime(position, ZoomTimes[Type]);
}

void CameraModeFlyAndClick::MoveToDestination()
{
	LHPoint position;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&position, Focus, Distance, Heading, Pitch);
	camera->CameraHeadingZoomer.SetDestinationWithTime(Focus, 0.5f);
	camera->CameraOriginZoomer.SetDestinationWithTime(position, 0.5f);
}

void CameraModeFlyAndClick::ProcessKeyMovement(uint16_t key)
{
	float timeDelta = camera->TimeDelta;
	int   rotate = 0;
	int   zoom = 0;
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
	if (rotate == 0 && zoom == 0)
	{
		return;
	}
	float height = camera->CameraOriginZoomer.GetDestination().y;
	if (key & LH_MOD_CTRL)
	{
		if (zoom != 0)
		{
			Valid = false;
			return;
		}
		if (rotate != 0)
		{
			Heading -= rotate * PI_F / LHSys::TheSystem.screen.width;
			MoveToDestination();
		}
	}
	else if (key & LH_MOD_SHIFT)
	{
		Heading -= rotate * PI_F / LHSys::TheSystem.screen.width;
		MoveToDestination();
	}
	else if (!(key & LH_MOD_ALT))
	{
		LHPoint  move(-rotate * MoveSpeed * height, 0.0f, zoom * MoveSpeed * height);
		LHMatrix rotation;
		rotation.SetRotationY(-Heading);
		rotation.TransformPoint(move);
		Focus.Add(move);
		MoveToDestination();
	}
}
