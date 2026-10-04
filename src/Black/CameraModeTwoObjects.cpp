#include "CameraModeTwoObjects.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For heading_from_direction_vector */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "CameraModeNew3.h"
#include "ControlMap.h"
#include "Game.h"
#include "Interface.h"
#include "Landscape.h"
#include "Object.h"

#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHKey.h>    /* For LH_MOD_CTRL */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */

const float MinPitch = -QUARTER_PI_F;
const float MaxPitch = PI_F * 7 / 16;
const float PitchSpeed = 0.002f;
const float StartTime = 2.0f;
const float EndTime = 1.0f;
const float TimeLimit = 1.5f;
const float MaxZoom = 20.0f;

CameraModeTwoObjects::CameraModeTwoObjects(GCamera* camera, GameThingWithPos* thing1, GameThingWithPos* thing2)
	: CameraMode(camera)
{
	Thing1 = thing1;
	Thing2 = thing2;
	HasThing2 = true;
	CameraModeTwoObjects* currentMode = dynamic_cast<CameraModeTwoObjects*>(
		camera->ModeCurrentIndex < 0 ? NULL : camera->modes[camera->ModeCurrentIndex]);
	if (currentMode != NULL && currentMode->Thing1 == Thing1 && currentMode->Thing2 == Thing2)
	{
		delete this;
		return;
	}
	Valid = true;
	Zoom = 1.0f;
	Heading = QUARTER_PI_F;
	Pitch = EIGHTH_PI_F;
	this->camera->SwitchToViewMode(this);
}

void CameraModeTwoObjects::SetObjects(GameThingWithPos* thing1, GameThingWithPos* thing2)
{
	Thing1 = thing1;
	Thing2 = thing2;
	HasThing2 = true;
}

CameraModeTwoObjects::CameraModeTwoObjects(GCamera* camera, GameThingWithPos* thing, LHPoint* point)
	: CameraMode(camera)
{
	Thing1 = thing;
	Point = *point;
	HasThing2 = false;
	CameraModeTwoObjects* currentMode = dynamic_cast<CameraModeTwoObjects*>(
		camera->ModeCurrentIndex < 0 ? NULL : camera->modes[camera->ModeCurrentIndex]);
	if (currentMode != NULL && currentMode->Thing1 == Thing1 && currentMode->Point == Point)
	{
		delete this;
		return;
	}
	Valid = true;
	Zoom = 1.2f;
	Heading = QUARTER_PI_F;
	Pitch = EIGHTH_PI_F;
	this->camera->SwitchToViewMode(this);
}

bool32_t CameraModeTwoObjects::IsStillValid()
{
	if (HasThing2)
	{
		if (Thing1 == NULL || Thing1->IsAvailable() != 1 || Thing2 == NULL || Thing2->IsAvailable() != 1)
		{
			return false;
		}
	}
	else if (Thing1 == NULL || Thing1->IsAvailable() != 1)
	{
		return false;
	}
	return Valid;
}

void CameraModeTwoObjects::Update()
{
	float time;
	if (camera->time > TimeLimit)
	{
		time = EndTime;
	}
	else
	{
		time = (EndTime - StartTime) * (camera->time / TimeLimit) + StartTime;
	}

	LHPoint pos1;
	GLandscape::ConvertMapCoordToLandscapePoint(Thing1->Pos, pos1);
	LHPoint pos2;
	if (HasThing2)
	{
		GLandscape::ConvertMapCoordToLandscapePoint(Thing2->Pos, pos2);
	}
	else
	{
		pos2 = Point;
	}

	LHPoint focus;
	focus = (pos1 + pos2) * 0.5f;
	float height2 = HasThing2 ? Thing2->GetHeight() : 1.0f;
	float averageHeight = (Thing1->GetHeight() + height2) * 0.5f;
	float maxHeight = max(Thing1->GetHeight(), HasThing2 ? Thing2->GetHeight() : 0.0f);
	focus.y += averageHeight * 0.5f;
	camera->CameraHeadingZoomer.SetDestinationWithTime(focus, time);

	Pitch = max(Pitch, PI_F / 13);

	Object* object1 = dynamic_cast<Object*>(Thing1);
	float   radius1 = object1 != NULL ? object1->Get2DRadius() : 30.0f;
	Object* object2;
	float   radius2 = HasThing2 && (object2 = dynamic_cast<Object*>(Thing2)) != NULL ? object2->Get2DRadius() : 30.0f;
	float   separation = pos1.GetDistance2D(pos2);
	float   distance = (separation + radius1 + radius2) * Zoom + maxHeight * 1.4f;

	LHPoint direction = pos2 - pos1;
	float   heading;
	if (fabs(direction.x) > 0.01f || fabs(direction.z) > 0.01f)
	{
		heading = Heading - heading_from_direction_vector(direction);
	}
	else
	{
		heading = Heading;
	}

	LHPoint origin;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&origin, focus, distance, heading, Pitch);
	camera->CameraOriginZoomer.SetDestinationWithTime(origin, time);
}

void CameraModeTwoObjects::ProcessKeyMovement(uint16_t key)
{
	float timeDelta = camera->TimeDelta;
	int   horizontal = 0;
	int   vertical = 0;

	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		vertical = timeDelta * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		vertical = timeDelta * 400.0f;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
	{
		horizontal = timeDelta * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
	{
		horizontal = timeDelta * 400.0f;
	}

	if (horizontal != 0 || vertical != 0)
	{
		if (key & LH_MOD_CTRL)
		{
			Heading -= horizontal * PI_F / LHSys::TheSystem.screen.width;
			Zoom = Zoom * ((vertical + 500.0f) / 500.0f);
			if (Zoom > MaxZoom)
			{
				Zoom = MaxZoom;
			}
		}
		else
		{
			Heading -= horizontal * PI_F / LHSys::TheSystem.screen.width;
			float pitch = Pitch - vertical * PitchSpeed;
			Pitch = pitch > MinPitch ? (pitch < MaxPitch ? pitch : MaxPitch) : MinPitch;
		}
	}

	if (GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE)
	{
		new ("C:\\dev\\MP\\Black\\CameraModeTwoObjects.cpp", 209) CameraModeNew3(camera);
	}
}
