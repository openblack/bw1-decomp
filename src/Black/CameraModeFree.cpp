#include "CameraModeFree.h"

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For PI_F */
#include <Lionhead/LH3DLib/development/LH3DTech.h>

#include "Camera.h"
#include "CameraFollowConstants.h" /* For CameraFollowKeySpeed */
#include "ControlMap.h"
#include "Game.h"
#include "GameOSFile.h"
#include "Interface.h"

#include <windows.h>

#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For LH_MOD_CTRL, LH_MOD_SHIFT */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

CameraModeFree::CameraModeFree(GCamera* camera) : CameraMode(camera)
{
	if (camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	this->camera->SwitchToViewMode(this);
	Speed = 0.0f;
	KeyModifiers = 0;
	KeyMoveY = 0;
	KeyMoveX = 0;
}

void CameraModeFree::Validate() {}

void CameraModeFree::Update()
{
	LHPoint pos;
	LHPoint focus;
	pos = camera->CameraOriginZoomer.GetCurrentValue();
	focus = camera->CameraHeadingZoomer.GetCurrentValue();
	float distance = pos.GetRange(focus);
	float heading;
	float pitch;
	GCamera::GetHeadingAndPitchFromPoints(focus, pos, &heading, &pitch);

	LHPoint dir = focus - pos;
	dir.FastNormalizeInline();
	LHPoint up(0.0f, 1.0f, 0.0f);
	LHPoint side;
	side.CrossProduct(up, dir);
	side.FastNormalizeInline();
	up.CrossProduct(dir, side);
	up.FastNormalizeInline();

	float dt = (int)LH3DTech::g_delta_time * 0.001f;
	Speed *= exp(dt * -5.0f);
	LHCoord mouse = LHSys::TheSystem.mouse.Pos();
	if (GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE)
	{
		heading += ((float)mouse.x / LHSys::TheSystem.screen.width - 0.5f) * dt * 1.1f;
		pitch -= ((float)mouse.y / LHSys::TheSystem.screen.height - 0.5f) * dt * 1.1f;
		Speed += dt;
	}

	LHPoint move = dir * Speed * 5.0f;
	pos.Add(move);
	focus.Add(move);

	if (KeyModifiers & LH_MOD_CTRL)
	{
		LHPoint delta = side * (float)KeyMoveX - up * (float)KeyMoveY;
		delta.Mul(0.05f);
		pos.Add(delta);
		focus.Add(delta);
	}
	else if (KeyModifiers & LH_MOD_SHIFT)
	{
		heading -= KeyMoveX * -PI_F / LHSys::TheSystem.screen.width;
		float newPitch = pitch - KeyMoveY * CameraFollowKeySpeed;
		pitch = newPitch > -3.0f ? (newPitch < 3.0f ? newPitch : 3.0f) : -3.0f;
	}
	else
	{
		LHPoint delta = side * (float)KeyMoveX - dir * (float)KeyMoveY;
		delta.Mul(0.05f);
		pos.Add(delta);
		focus.Add(delta);
	}

	KeyMoveY = 0;
	KeyMoveX = 0;
	GCamera::SetPointFromPointDistanceHeadingAndPitch(&focus, pos, distance, heading, pitch);
	camera->CameraHeadingZoomer.SetDestinationWithTime(focus, 0.2f);
	camera->CameraOriginZoomer.SetDestinationWithTime(pos, 0.2f);
	camera->CameraHeadingZoomer.SetPosition(focus);
	camera->CameraOriginZoomer.SetPosition(pos);
}

void CameraModeFree::ProcessKeyMovement(uint16_t key)
{
	float speed = (int)LH3DTech::g_delta_time * 0.001f;
	KeyMoveX = 0;
	KeyMoveY = 0;
	KeyModifiers = key;
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		KeyMoveY = speed * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		KeyMoveY = speed * 400.0f;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
	{
		KeyMoveX = speed * -400.0f;
	}
	else if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
	{
		KeyMoveX = speed * 400.0f;
	}
}

void CameraModeFree::Save(GameOSFile* file)
{
	WRITE_IT(*file, Speed);
	WRITE_IT(*file, KeyMoveX);
	WRITE_IT(*file, KeyMoveY);
	WRITE_IT(*file, KeyModifiers);
}

void CameraModeFree::Load(GameOSFile* file)
{
	file->ReadIt(Speed);
	file->ReadIt(KeyMoveX);
	file->ReadIt(KeyMoveY);
	file->ReadIt(KeyModifiers);
}
