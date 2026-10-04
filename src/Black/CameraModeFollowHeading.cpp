#include "CameraFollowConstants.h"
#include "CameraModeFollowHeading.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For TWO_PI, PI_F */
#include <Lionhead/LHLib/ver5.0/LHWin.h>           /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "GameOSFile.h"
#include "Global.h"
#include "Landscape.h"

#if defined(VERSION_BW1W100)
#define CAMERA_MODE_FOLLOW_HEADING_FILE "C:\\dev\\black\\CameraModeFollowHeading.cpp"
#elif defined(VERSION_BW1W110)
#define CAMERA_MODE_FOLLOW_HEADING_FILE "C:\\dev\\Black\\CameraModeFollowHeading.cpp"
#else
#define CAMERA_MODE_FOLLOW_HEADING_FILE "C:\\dev\\MP\\Black\\CameraModeFollowHeading.cpp"
#endif

#if !defined(VERSION_BW1W100)
CameraModeFollowHeading* CameraModeFollowHeading::Create(GCamera* camera, Object* target, float heading, float pitch,
                                                         float distance, float heading_speed)
{
	if (camera->CantExitCurrentMode())
	{
		return NULL;
	}
	if (camera->IsFollowing(target))
	{
		return NULL;
	}
	return new (CAMERA_MODE_FOLLOW_HEADING_FILE, 20)
		CameraModeFollowHeading(camera, target, heading, pitch, distance, heading_speed);
}
#endif

CameraModeFollowHeading::CameraModeFollowHeading(GCamera* camera, Object* target, float heading, float pitch,
                                                 float distance, float heading_speed)
	: CameraMode(camera)
{
	Target = target;
	Heading = heading;
	Pitch = pitch;
	Distance = distance;
	HeadingSpeed = heading_speed;
	camera->SwitchToViewMode(this);
}

void CameraModeFollowHeading::Update()
{
	static float lastHeading = 0.0f;

	if (!Target)
	{
		return;
	}

	LHPoint focus;
	GLandscape::ConvertMapCoordToLandscapePoint(Target->Pos, focus);
	focus.y += Target->GetHeight() * 0.5f;

	Heading += HeadingSpeed;
	if (Heading > TWO_PI)
	{
		Heading -= TWO_PI;
	}

	float heading = Target->GetFacingDirection();
	if (heading > TWO_PI)
	{
		heading -= TWO_PI;
	}
	if (Target->IsObjectTurningTooFastForCameraToFollowSmoothly())
	{
		heading = lastHeading;
	}
	else
	{
		float total = heading + Heading;
		if (total > TWO_PI)
		{
			total -= TWO_PI;
		}
		heading = TWO_PI - total;
		lastHeading = heading;
	}
	GGlobal::Global.debug.SetMessage(4, "heading: %.3f", heading);

	Target->GetFacingPitch();
	float pitch = Pitch;
	if (pitch <= (TWO_PI / 100))
	{
		pitch = TWO_PI / 100;
	}

	LHPoint origin;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&origin, focus, Distance, heading, pitch);

	float time = camera->time > CameraFollowBlendDuration ? CameraFollowEndZoomTime
	                                                      : (CameraFollowEndZoomTime - CameraFollowStartZoomTime) *
	                                                                (camera->time / CameraFollowBlendDuration) +
	                                                            CameraFollowStartZoomTime;
	camera->CameraOriginZoomer.SetDestinationWithTime(origin, time);
	camera->CameraHeadingZoomer.SetDestinationWithTime(focus, time);
}

void CameraModeFollowHeading::Load(GameOSFile* file)
{
	file->ReadIt(Heading);
	file->ReadIt(Pitch);
	file->ReadIt(Distance);
	file->ReadIt(HeadingSpeed);
	file->ReadPtr((GameThing**)&Target);
}

void CameraModeFollowHeading::Save(GameOSFile* file)
{
	WRITE_IT(*file, Heading);
	WRITE_IT(*file, Pitch);
	WRITE_IT(*file, Distance);
	WRITE_IT(*file, HeadingSpeed);
	file->WritePtr(Target);
}
