#include "CameraModeDance.h"

#include <Lionhead/LHLib/ver5.0/LHWin.h> /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "Game.h"
#include "GroupBehaviour.h"
#include "Interface.h"

CameraModeDance* CameraModeDance::Create(GCamera* camera, GroupBehaviour* group)
{
	if (camera->CantExitCurrentMode())
	{
		return NULL;
	}
	return new (__FILE__, 16) CameraModeDance(camera, group);
}

CameraModeDance::CameraModeDance(GCamera* camera, GroupBehaviour* group) : CameraMode(camera)
{
	Valid = true;
	Group = group;
	camera->SwitchToViewMode(this);
}

CameraModeDance::~CameraModeDance() {}

bool32_t CameraModeDance::IsStillValid()
{
	if (!Valid)
	{
		return false;
	}
	if (!Group->IsAvailable())
	{
		return false;
	}
	if (Group->MarkedForDeletion)
	{
		Group->MarkedForDeletion = false;
		Group->DanceCameraCreated = false;
		return false;
	}
	return true;
}

void CameraModeDance::Update()
{
	if (Group->MarkedForDeletion)
	{
		Group->MarkedForDeletion = false;
		Group->DanceCameraCreated = false;
		Valid = false;
	}
	if (!Group->UseDanceCamera)
	{
		Valid = false;
		camera->ClearCameraStack();
	}
}

void CameraModeDance::ProcessKeyMovement(uint16_t key)
{
	if (GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE)
	{
		Valid = false;
	}
}
