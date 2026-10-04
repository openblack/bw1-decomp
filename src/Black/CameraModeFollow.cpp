#include "CameraFollowConstants.h"
#include "GameTimeConstants.h"
#include "CameraModeFollow.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For TWO_PI, PI_F, HALF_PI_F */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHKey.h>    /* For LH_MOD_CTRL, LH_MOD_SHIFT */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */

#include "CameraExclusion.h"
#include "CameraModeNew3.h"
#include "CameraModeScript.h"
#include "Creature.h"
#include "CreatureStatsDisplay.h"
#include "CreaturePhysical.h"
#include "Camera.h"
#include "ColourConstants.h" /* For White */
#include "ControlMap.h"
#include "Game.h"
#include "Interface.h"
#include "Landscape.h"
#include "Living.h"
#include "MobileWallHug.h"
#include "Player.h"
#include "PlayerComputer.h"
#include "Flock.h"
#include "Game3DObject.h"
#include "GameOSFile.h"
#include "Object.h"

CameraModeFollow* CameraModeFollow::Create(GCamera* camera, GameThingWithPos* target, float zoom_time_scale,
                                           bool32_t relative_heading, bool32_t use_offsets)
{
	if (camera->CantExitCurrentMode())
	{
		return NULL;
	}
	if (target && camera->IsFollowing(target))
	{
		return NULL;
	}
	return new ("C:\\dev\\MP\\Black\\CameraModeFollow.cpp", 30)
		CameraModeFollow(camera, target, zoom_time_scale, relative_heading, use_offsets);
}

CameraModeFollow::CameraModeFollow(GCamera* camera, GameThingWithPos* target, float zoom_time_scale,
                                   bool32_t relative_heading, bool32_t use_offsets)
	: CameraMode(camera)
{
	if (camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}

	KeyMoveY = 0;
	KeyMoveX = 0;
	AutoReposition = true;
	UseOffsets = use_offsets;
	ZoomTimeScale = zoom_time_scale;
	RelativeHeading = relative_heading;
	Set(target);

	if (UseOffsets && target)
	{
		Object* object = dynamic_cast<Object*>(target);
		if (object && object->Game3dObject)
		{
			LHPoint origin(camera->CameraOriginZoomer.x.GetCurrentValue(),
			               camera->CameraOriginZoomer.y.GetCurrentValue(),
			               camera->CameraOriginZoomer.z.GetCurrentValue());
			LHPoint delta = object->Game3dObject->matrix.GetPos() - origin;
			float   distance = sqrt(delta.z * delta.z + delta.x * delta.x + delta.y * delta.y);
			float   maxDistance = GCamera::GetThingViewingDistance(Target);
			float   minDistance = Target->GetHeight() * 2.0f;
			if (distance > minDistance)
			{
				if (distance >= maxDistance)
				{
					distance = maxDistance;
				}
			}
			else
			{
				distance = minDistance;
			}
			ViewingDistance = distance;
		}
	}

	UseOffsets = false;

	this->camera->SwitchToViewMode(this);
}

void CameraModeFollow::Set(GameThingWithPos* target)
{
	Target = target;
	if (target)
	{
		LHPoint focus(camera->CameraHeadingZoomer.x.GetDestination(), camera->CameraHeadingZoomer.y.GetDestination(),
		              camera->CameraHeadingZoomer.z.GetDestination());
		LHPoint origin(camera->CameraOriginZoomer.x.GetDestination(), camera->CameraOriginZoomer.y.GetDestination(),
		               camera->CameraOriginZoomer.z.GetDestination());
		GCamera::GetHeadingAndPitchFromPoints(origin, focus, &Heading, &Pitch);
		ViewingDistance = GCamera::GetThingViewingDistance(Target);
	}
	if (RelativeHeading)
	{
		Heading = 0.0f;
	}
}

void CameraModeFollow::Set(GameThingWithPos* target, float viewing_distance)
{
	Target = target;
	if (target)
	{
		LHPoint focus(camera->CameraHeadingZoomer.x.GetDestination(), camera->CameraHeadingZoomer.y.GetDestination(),
		              camera->CameraHeadingZoomer.z.GetDestination());
		LHPoint origin(camera->CameraOriginZoomer.x.GetDestination(), camera->CameraOriginZoomer.y.GetDestination(),
		               camera->CameraOriginZoomer.z.GetDestination());
		GCamera::GetHeadingAndPitchFromPoints(origin, focus, &Heading, &Pitch);
		ViewingDistance = viewing_distance;
	}
}

void CameraModeFollow::Validate()
{
	if (Target && !Target->IsAvailable())
	{
		Target = NULL;
	}
}

void CameraModeFollow::Load(GameOSFile* file)
{
	file->ReadIt(Heading);
	file->ReadIt(Pitch);
	file->ReadIt(ViewingDistance);
	file->ReadIt(ZoomTimeScale);
	file->ReadIt(RelativeHeading);
	file->ReadIt(UseOffsets);
	file->ReadIt(FocusOffset);
	file->ReadIt(OriginOffset);
	file->ReadPtr((GameThing**)&Target);
	file->ReadIt(AutoReposition);
	KeyMoveY = 0;
	KeyMoveX = 0;
}

void CameraModeFollow::Save(GameOSFile* file)
{
	WRITE_IT(*file, Heading);
	WRITE_IT(*file, Pitch);
	WRITE_IT(*file, ViewingDistance);
	WRITE_IT(*file, ZoomTimeScale);
	WRITE_IT(*file, RelativeHeading);
	WRITE_IT(*file, UseOffsets);
	WRITE_IT(*file, FocusOffset);
	WRITE_IT(*file, OriginOffset);
	file->WritePtr(Target);
	WRITE_IT(*file, AutoReposition);
}

void CameraModeFollow::SetToDestinationPosition()
{
	GameThingWithPos* focus = GetFocusThing();
	if (UseOffsets && focus)
	{
		Object* object = dynamic_cast<Object*>(focus);
		if (object && object->Game3dObject)
		{
			LHPoint pos;
			pos = object->Game3dObject->matrix.GetPos();
			camera->CameraHeadingZoomer.SetDestinationWithTime(pos + FocusOffset, 0.0f);
			camera->CameraOriginZoomer.SetDestinationWithTime(pos + OriginOffset, 0.0f);
			camera->time = CameraFollowBlendDuration;
			return;
		}
	}

	LHPoint point;
	LHPoint targetPoint;
	if (focus)
	{
		if (focus->IsFlock())
		{
			Flock*    flock = (Flock*)focus;
			Living*   leader = flock->leader ? flock->leader->payload : NULL;
			MapCoords flockPos = *flock->GetFlockPos();
			GLandscape::ConvertMapCoordToLandscapePoint(flockPos, point);
			if (leader)
			{
				point.y += leader->GetHeight() * 0.5f;
			}
		}
		else
		{
			GLandscape::ConvertMapCoordToLandscapePoint(focus->Pos, point);
			point.y += focus->GetHeight() * 0.5f;
		}
		camera->CameraHeadingZoomer.SetPosition(point);
	}
	else if (GetComputerPlayerFocus() != -1)
	{
		GComputerPlayer* computer = GGame::g_game->GetPlayer(GetComputerPlayerFocus())->ComputerPlayer;
		GLandscape::ConvertMapCoordToLandscapePoint(computer->GetHandPos(), point);
		camera->CameraHeadingZoomer.SetPosition(point);
	}

	if (Target)
	{
		if (Target->IsFlock())
		{
			Flock*    flock = (Flock*)Target;
			Living*   leader = flock->leader ? flock->leader->payload : NULL;
			MapCoords flockPos = *flock->GetFlockPos();
			GLandscape::ConvertMapCoordToLandscapePoint(flockPos, targetPoint);
			if (leader)
			{
				targetPoint.y += leader->GetHeight() * 0.5f;
			}
		}
		else
		{
			GLandscape::ConvertMapCoordToLandscapePoint(Target->Pos, targetPoint);
			targetPoint.y += Target->GetHeight() * 0.5f;
		}
	}
	else if (GetComputerPlayerFollow() != -1)
	{
		GComputerPlayer* computer = GGame::g_game->GetPlayer(GetComputerPlayerFollow())->ComputerPlayer;
		GLandscape::ConvertMapCoordToLandscapePoint(computer->GetHandPos(), targetPoint);
	}
	else
	{
		targetPoint = camera->CameraOriginZoomer.GetCurrentValue();
	}

	if (Target)
	{
		Pitch = Pitch > (PI_F / 13) ? Pitch : PI_F / 13;
		float heading = Heading;
		if (RelativeHeading)
		{
			MobileWallHug* wallHug = dynamic_cast<MobileWallHug*>(Target);
			if (wallHug)
			{
				heading -= wallHug->GameAngle * 2 * (PI_F / 2048) - HALF_PI_F;
			}
		}
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&point, targetPoint, ViewingDistance, heading, Pitch);
		camera->CameraOriginZoomer.SetPosition(point);
	}
	else if (GetComputerPlayerFollow() != -1)
	{
		Pitch = Pitch > (PI_F / 13) ? Pitch : PI_F / 13;
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&point, targetPoint, ViewingDistance, Heading, Pitch);
		camera->CameraOriginZoomer.SetPosition(point);
	}
	camera->time = CameraFollowBlendDuration;
}

void CameraModeFollow::Update()
{
	ViewingDistance = ViewingDistance > CameraFollowMinViewingDistance ? min(ViewingDistance, 1500.0f)
	                                                                   : CameraFollowMinViewingDistance;

	float time = camera->time > CameraFollowBlendDuration ? CameraFollowEndZoomTime
	                                                      : (CameraFollowEndZoomTime - CameraFollowStartZoomTime) *
	                                                                (camera->time / CameraFollowBlendDuration) +
	                                                            CameraFollowStartZoomTime;
	time *= ZoomTimeScale;

	GameThingWithPos* focus = GetFocusThing();
	if (focus && focus->IsCreature())
	{
		Creature* creature = (Creature*)focus;
		CreatureStatsDisplay::Interacting = FALSE;
		CreatureStatsDisplay::Alpha = 0xff;
		CreatureStatsDisplay::LifeLoss = 1.0f - creature->GetLife();
		CreatureStatsDisplay::EnergyLoss = 1.0f - creature->physical->GetEnergy();
		CreatureStatsDisplay::Exhaustion = creature->physical->GetExhaustion();
	}

	if (UseOffsets && focus)
	{
		Object* object = dynamic_cast<Object*>(focus);
		float   dx = FocusOffset.x - OriginOffset.x;
		float   dy = FocusOffset.y - OriginOffset.y;
		float   dz = FocusOffset.z - OriginOffset.z;
		ViewingDistance = sqrt(dz * dz + dy * dy + dx * dx);
		if (object && object->Game3dObject)
		{
			LHPoint pos;
			pos = object->Game3dObject->matrix.GetPos();
			LHPoint focusPoint = pos + FocusOffset;
			LHPoint origin = pos + OriginOffset;
			camera->CameraHeadingZoomer.SetDestinationWithTime(focusPoint, time);
			camera->CameraOriginZoomer.SetDestinationWithTime(origin, time);
			LHPoint closest;
			if (!CameraExclusion::InsideInclusion(origin, focusPoint - origin, &closest, NULL) &&
			    !dynamic_cast<CameraModeScript*>(this))
			{
				origin = closest;
				camera->CameraOriginZoomer.SetDestinationWithTime(origin, time);
				new ("C:\\dev\\MP\\Black\\CameraModeFollow.cpp", 363) CameraModeNew3(camera);
			}
			return;
		}
	}

	LHPoint point;
	if (focus)
	{
		if (focus->IsFlock())
		{
			Flock*    flock = (Flock*)focus;
			Living*   leader = flock->leader ? flock->leader->payload : NULL;
			MapCoords flockPos = *flock->GetFlockPos();
			GLandscape::ConvertMapCoordToLandscapePoint(flockPos, point);
			if (leader)
			{
				point.y += leader->GetHeight() * 0.5f;
			}
		}
		else
		{
			GLandscape::ConvertMapCoordToLandscapePoint(focus->Pos, point);
			Object* object = dynamic_cast<Object*>(focus);
			if (object && object->Game3dObject)
			{
				point = object->Game3dObject->matrix.GetPos();
			}
			point.y += focus->GetHeight() * 0.5f;
		}
		camera->CameraHeadingZoomer.SetDestinationWithTime(point, time);
	}
	else if (GetComputerPlayerFocus() != -1)
	{
		GComputerPlayer* computer = GGame::g_game->GetPlayer(GetComputerPlayerFocus())->ComputerPlayer;
		GLandscape::ConvertMapCoordToLandscapePoint(computer->GetHandPos(), point);
		camera->CameraHeadingZoomer.SetDestinationWithTime(point, time);
	}

	LHPoint origin;
	if (Target)
	{
		if (Target->IsFlock())
		{
			Flock*    flock = (Flock*)Target;
			Living*   leader = flock->leader ? flock->leader->payload : NULL;
			MapCoords flockPos = *flock->GetFlockPos();
			GLandscape::ConvertMapCoordToLandscapePoint(flockPos, point);
			if (leader)
			{
				point.y += leader->GetHeight() * 0.5f;
			}
		}
		else
		{
			GLandscape::ConvertMapCoordToLandscapePoint(Target->Pos, point);
			Object* object = dynamic_cast<Object*>(Target);
			if (object && object->Game3dObject)
			{
				point = object->Game3dObject->matrix.GetPos();
			}
			point.y += Target->GetHeight() * 0.5f;
		}

		Pitch = Pitch > (PI_F / 13) ? Pitch : PI_F / 13;
		float heading = Heading;
		if (RelativeHeading)
		{
			MobileWallHug* wallHug = dynamic_cast<MobileWallHug*>(Target);
			if (wallHug)
			{
				heading -= wallHug->GameAngle * 2 * (PI_F / 2048) - HALF_PI_F;
			}
		}
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&origin, point, ViewingDistance, heading, Pitch);
		if (!RelativeHeading && AutoReposition && !KeyMoveX && !KeyMoveY &&
		    GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ROTATE_ON) &&
		    GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_ON))
		{
			LHPoint bestOrigin;
			LHPoint bestFocus;
			CameraModeNew3::SuggestBestCameraPos(origin, point, bestOrigin, bestFocus);
			GCamera::GetHeadingAndPitchFromPoints(bestOrigin, bestFocus, &Heading, &Pitch);
			Pitch = Pitch > (PI_F / 13) ? Pitch : PI_F / 13;
			GCamera::SetPointFromPointDistanceHeadingAndPitch(&origin, point, ViewingDistance, heading, Pitch);
		}
		camera->CameraOriginZoomer.SetDestinationWithTime(origin, time);
	}
	else if (GetComputerPlayerFollow() != -1)
	{
		Pitch = Pitch > (PI_F / 13) ? Pitch : PI_F / 13;
		float            heading = Heading;
		GComputerPlayer* computer = GGame::g_game->GetPlayer(GetComputerPlayerFollow())->ComputerPlayer;
		GLandscape::ConvertMapCoordToLandscapePoint(computer->GetHandPos(), origin);
		GCamera::SetPointFromPointDistanceHeadingAndPitch(&origin, point, ViewingDistance, heading, Pitch);
		camera->CameraOriginZoomer.SetDestinationWithTime(origin, time);
	}

	LHPoint closest;
	if (!CameraExclusion::InsideInclusion(origin, point - origin, &closest, NULL) &&
	    !dynamic_cast<CameraModeScript*>(this))
	{
		origin = closest;
		camera->CameraOriginZoomer.SetDestinationWithTime(origin, time);
		new ("C:\\dev\\MP\\Black\\CameraModeFollow.cpp", 479) CameraModeNew3(camera);
	}
}

void CameraModeFollow::ProcessKeyMovement(uint16_t key)
{
	float dt = camera->TimeDelta;
	KeyMoveY = 0;
	KeyMoveX = 0;
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		KeyMoveY = dt * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		KeyMoveY = dt * 400.0f;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
	{
		KeyMoveX = dt * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
	{
		KeyMoveX = dt * 400.0f;
	}

	int wheel = 0;
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_OUT))
	{
		wheel = ControlMap::MouseWheelDelta ? ControlMap::MouseWheelDelta : -120;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_ZOOM_IN))
	{
		wheel = ControlMap::MouseWheelDelta ? ControlMap::MouseWheelDelta : 120;
	}
	ControlMap::MouseWheelDelta = 0;

	float zoomDelta = wheel * -0.15f;
	float zoom = (zoomDelta + 500.0f) / 500.0f;
	ViewingDistance = max(CameraFollowMinViewingDistance, ViewingDistance * zoom);

	if (KeyMoveX || KeyMoveY)
	{
		if (UseOffsets)
		{
			UseOffsets = false;
			GCamera::GetHeadingAndPitchFromPoints(OriginOffset, FocusOffset, &Heading, &Pitch);
			ViewingDistance = OriginOffset.GetRange(FocusOffset);
		}

		float distanceScale = (KeyMoveY + 500.0f) / 500.0f;
		if (key & LH_MOD_CTRL)
		{
			Heading -= KeyMoveX * PI_F / LHSys::TheSystem.screen.width;
			ViewingDistance = max(CameraFollowMinViewingDistance, ViewingDistance * distanceScale);
		}
		else if (key & LH_MOD_SHIFT)
		{
			Heading -= KeyMoveX * PI_F / LHSys::TheSystem.screen.width;
			float pitch = Pitch - KeyMoveY * CameraFollowKeySpeed;
			if (pitch > CameraFollowMinPitch)
			{
				if (pitch >= CameraFollowMaxPitch)
				{
					pitch = CameraFollowMaxPitch;
				}
			}
			else
			{
				pitch = CameraFollowMinPitch;
			}
			Pitch = pitch;
		}
		else
		{
			new ("C:\\dev\\MP\\Black\\CameraModeFollow.cpp", 548) CameraModeNew3(camera);
		}
	}

	float distance = zoom * ViewingDistance;
	if (distance > CameraFollowMinViewingDistance)
	{
		if (distance >= 1000.0f)
		{
			distance = 1000.0f;
		}
	}
	else
	{
		distance = CameraFollowMinViewingDistance;
	}
	ViewingDistance = distance;

	if (UseOffsets)
	{
		OriginOffset.Sub(FocusOffset);
		float px = OriginOffset.x;
		float py = OriginOffset.y;
		float pz = OriginOffset.z;
		if (px != 0.0f || py != 0.0f || pz != 0.0f)
		{
			float inv = 1.0f / (float)sqrt(px * px + py * py + pz * pz);
			OriginOffset.x = px * inv;
			OriginOffset.y = py * inv;
			OriginOffset.z = pz * inv;
		}
		OriginOffset *= ViewingDistance;
		OriginOffset.Add(FocusOffset);
	}

	if (GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE)
	{
		new ("C:\\dev\\MP\\Black\\CameraModeFollow.cpp", 565) CameraModeNew3(camera);
	}
}
