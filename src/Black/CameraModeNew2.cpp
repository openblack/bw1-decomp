#include "CameraModeNew2.h"

#include <stdio.h>   /* For fopen, fread, fwrite, fclose */
#include <windows.h> /* For LHSystem.h */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#include "BindableAction.h"
#include "Camera.h"
#include "ControlMap.h"
#include "Game.h"
#include "Interface.h"
#include "Landscape.h"
#include "Object.h"

CameraModeNew2Param CameraModeNew2Controller::ParamTable[_CAMERA_NEW2_PARAM_COUNT] = {
	{CAMERA_NEW2_PARAM_FLY_PITCH_BALANCE, "Fly pitch balance", 0.7f, 0.0f, 1.0f},
	{CAMERA_NEW2_PARAM_VELOCITY_DAMPING, "V elocity damping", -3.0f, -20.0f, -0.1f},
	{CAMERA_NEW2_PARAM_POSITION_SMOOTHING, "Position smoothing", -10.0f, -40.0f, -1.0f},
	{CAMERA_NEW2_PARAM_TIME_FOR_MAX_SPEED, "Time for max speed", 10.0f, 1.0f, 20.0f},
	{CAMERA_NEW2_PARAM_CAMERA_SIZE, "Camera Size", 5.0f, 1.0f, 20.0f},
	{CAMERA_NEW2_PARAM_CLOSEST_ZOOM, "Closest Zoom", 20.0f, 1.0f, 150.0f},
	{CAMERA_NEW2_PARAM_DOUBLE_CLICK_ZOOM, "DoubleClick Zoom", 100.0f, 1.0f, 700.0f},
	{CAMERA_NEW2_PARAM_DOUBLE_CLICK_FLY_SPEED, "DoubleClick fly speed", 0.425f, 0.1f, 200.0f},
	{CAMERA_NEW2_PARAM_AI_LOOK_DOWN_AMOUNT, "AI Look-down amount", 0.06f, 0.001f, 0.1f},
	{CAMERA_NEW2_PARAM_LOOKAHEAD_FOR_HILLS, "Lookahead for hills", 20.0f, 5.0f, 200.0f},
	{CAMERA_NEW2_PARAM_AUTO_STRAFE_AMOUNT, "AutoStrafe amount", 0.0001f, 0.0f, 0.01f},
	{CAMERA_NEW2_PARAM_PITCH_SENS, "Pitch Sens", 2.0f, 0.5f, 8.0f},
	{CAMERA_NEW2_PARAM_KB_ZOOM_SENS, "KB Zoom Sens", 0.7f, 0.1f, 5.0f},
	{CAMERA_NEW2_PARAM_KB_SPIN_SENS, "KB Spin Sens", 1.5f, 0.2f, 8.0f},
	{CAMERA_NEW2_PARAM_FORWARD_SPEED, "Forward speed", 1.0f, 0.1f, 5.0f},
	{CAMERA_NEW2_PARAM_BACKWARD_SPEED, "Backward speed", 300.0f, 50.0f, 800.0f},
	{CAMERA_NEW2_PARAM_STRAFE_SPEED, "Strafe speed", 400.0f, 50.0f, 1200.0f},
	{CAMERA_NEW2_PARAM_TURN_SENS, "Turn sens", 0.04f, 0.01f, 0.2f},
	{CAMERA_NEW2_PARAM_MAX_DRAG_SPEED, "Max drag speed", 2.5f, 0.5f, 8.0f},
	{CAMERA_NEW2_PARAM_INTO_FLY_SPEED, "Into fly speed", 2.0f, 0.1f, 5.0f},
	{CAMERA_NEW2_PARAM_OUT_OF_FLY_SPEED, "Out of fly speed", 0.5f, 0.1f, 5.0f},
	{CAMERA_NEW2_PARAM_INTO_BACKUP_SPEED, "Into backup speed", 1.0f, 0.1f, 5.0f},
	{CAMERA_NEW2_PARAM_LIFT_RATE_WHEN_BACKING, "Lift rate when backing", 120.0f, 50.0f, 400.0f},
};

void CameraModeNew2Controller::ResetParams()
{
	for (int i = 0; i < _CAMERA_NEW2_PARAM_COUNT; i++)
	{
		Params[ParamTable[i].Index] = ParamTable[i].Default;
	}
}

void CameraModeNew2Controller::LoadParams(const char* filename)
{
	FILE* file = fopen(filename, "rb");
	if (file != NULL)
	{
		int count = 0;
		fread(&count, 1, sizeof(count), file);
		for (int i = 0; i < count; i++)
		{
			fread(&Params[i], 1, sizeof(Params[i]), file);
		}
		fclose(file);
	}
}

void CameraModeNew2Controller::SaveParams(const char* filename)
{
	FILE* file = fopen(filename, "wb");
	if (file != NULL)
	{
		int count = _CAMERA_NEW2_PARAM_COUNT;
		fwrite(&count, 1, sizeof(count), file);
		for (int i = 0; i < count; i++)
		{
			fwrite(&Params[i], 1, sizeof(Params[i]), file);
		}
		fclose(file);
	}
}

void CameraModeNew2Controller::StartBlend(bool32_t enable, float speed)
{
	if (!enable)
	{
		OriginSmoother.Blending = false;
		return;
	}
	OriginSmoother.Blend = 0.0f;
	OriginSmoother.BlendSpeed = speed * Params[CAMERA_NEW2_PARAM_DOUBLE_CLICK_FLY_SPEED];
	OriginSmoother.Blending = true;
	Heading.Blend = 0.0f;
	Heading.BlendSpeed = speed * Params[CAMERA_NEW2_PARAM_DOUBLE_CLICK_FLY_SPEED];
	Heading.Blending = true;
	Heading.WrapAngle();
	Pitch.Blend = 0.0f;
	Pitch.BlendSpeed = speed * Params[CAMERA_NEW2_PARAM_DOUBLE_CLICK_FLY_SPEED];
	Pitch.Blending = true;
	Pitch.WrapAngle();
}

void CameraModeNew2Controller::Init(const LHPoint& origin, const LHPoint& focus)
{
	GGame::g_game->MyInterface()->flags.ClearDoubleClicked();
	LHSys::TheSystem.mouse.AccumDelta.x = 0;
	LHSys::TheSystem.mouse.AccumDelta.y = 0;
	ResetParams();
	FlyingToTarget = false;
	OriginSmoother.Reset(origin);
	FlyBlend = 0.0f;
	FlyPitch = 0.0f;
	AutoPitch = true;
	UpdatePitchForHills(0.0f);
	MouseY = 0.0f;
	MouseX = 0.0f;
	InvertPitch = true;
	Focus = focus;
	Velocity = LHPoint(0.0f, 0.0f, 0.0f);
	SpeedRamp = 0.0f;
	DragState = 0;
	StartBlend(false, 1.0f);
	UpdateAnglesFromFocus();
	Heading.Current = Heading.Destination;
	Pitch.Current = Pitch.Destination;
	GetDirections(Heading.Current, Pitch.Current, &Forward, &FlatForward);
}

void CameraModeNew2Controller::UpdatePitchForHills(float dt)
{
	float height = Origin.y - LH3DIsland::GetAltitude(LH3DMapCoords(Origin.x, Origin.z));
	if (height < 0.0f)
	{
		height = 0.0f;
	}
	float   lookahead = Params[CAMERA_NEW2_PARAM_LOOKAHEAD_FOR_HILLS];
	LHPoint ahead = FlatForward * lookahead + Origin;
	float   altitude = LH3DIsland::GetAltitude(LH3DMapCoords(Origin.x, Origin.z));
	float   slope = atan((LH3DIsland::GetAltitude(LH3DMapCoords(ahead.x, ahead.z)) + 5.0f - altitude) /
	                     Params[CAMERA_NEW2_PARAM_LOOKAHEAD_FOR_HILLS]);
	if (AutoPitch)
	{
		BackupPitch = -(PI_F * 2 / 9);
		float rate = 1.0 - exp(dt * -3.0f);
		float target = atan(height * Params[CAMERA_NEW2_PARAM_AI_LOOK_DOWN_AMOUNT]) * (-(PI_F * 2 / 9) - slope) *
		                   (1.0 / HALF_PI_F) +
		               slope;
		BasePitch += (target - BasePitch) * rate;
	}
	else
	{
		BackupPitch = -(PI_F * 2 / 9);
	}
}

void CameraModeNew2Controller::GetDirections(float heading, float pitch, LHPoint* forward, LHPoint* flat_forward)
{
	float   cosPitch = cos(pitch);
	LHPoint flat(sin(heading), 0.0f, cos(heading));
	if (forward != NULL)
	{
		*forward = LHPoint(flat.x * cosPitch, sin(pitch), flat.z * cosPitch);
	}
	if (flat_forward != NULL)
	{
		*flat_forward = flat;
	}
}

void CameraModeNew2Controller::UpdateAnglesFromFocus()
{
	Origin = OriginSmoother.Current;
	Heading.Destination = GetHeading(OriginSmoother.Destination, Focus);
	Pitch.Destination = GetPitch(OriginSmoother.Destination, Focus);
	FlyBlend = 0.0f;
	AutoPitch = false;
	BasePitch = Pitch.Destination;
	GetDirections(Heading.Current, Pitch.Current, &Forward, &FlatForward);
}

void CameraModeNew2Controller::UpdateFocusFromAngles()
{
	Origin = OriginSmoother.Current;
	if (FlyBlend > 1.0f)
	{
		FlyBlend = 1.0f;
	}
	if (FlyBlend < -1.0f)
	{
		FlyBlend = -1.0f;
	}
	if (FlyBlend >= 0.0f)
	{
		Pitch.Destination = (FlyPitch - BasePitch) * FlyBlend + BasePitch;
	}
	else
	{
		Pitch.Destination = BasePitch - (BackupPitch - BasePitch) * FlyBlend;
	}
	GetDirections(Heading.Current, Pitch.Current, &Forward, &FlatForward);
	Focus = Forward * 10.0f + Origin;
}

CameraModeNew2Controller::~CameraModeNew2Controller() {}

void CameraModeNew2Controller::Collide(LHPoint& position)
{
	float ground = LH3DIsland::GetAltitude(LH3DMapCoords(position.x, position.z));
	if (position.y < ground)
	{
		LHPoint normal;
		LH3DIsland::GetNormal(LH3DMapCoords(position.x, position.z), &normal);
		float push = (ground - position.y) / normal.y;
		if (push > 3.0f)
		{
			push = 3.0f;
		}
		position.Add(normal * push);
	}
	CameraModeNew2Sphere* sphere = Spheres;
	for (int i = 0; i < SphereCount; i++, sphere++)
	{
		LHPoint away = position - sphere->Position;
		float   distance = away.Normalise();
		if (distance < sphere->Radius && distance > 0.0f)
		{
			float push = sphere->Radius - distance;
			if (push > 3.0f)
			{
				push = 3.0f;
			}
			position.Add(away * push);
		}
	}
}

void CameraModeNew2Controller::ClearSpheres()
{
	SphereCount = 0;
}

void CameraModeNew2Controller::UpdatePhysics(float dt)
{
	ClearSpheres();
	UpdatePitchForHills(dt);
	UpdateFocusFromAngles();
	while (dt > 0.0f)
	{
		float step = 0.01f;
		if (step > dt)
		{
			step = dt;
		}
		dt -= step;
		LHPoint total(0.0f, 0.0f, 0.0f);
		float   damping = exp(step * Params[CAMERA_NEW2_PARAM_VELOCITY_DAMPING]);
		Velocity *= damping;
		OriginSmoother.Destination.Add(Velocity * step);
		float radius = Params[CAMERA_NEW2_PARAM_CAMERA_SIZE];
		for (int i = 0; i < 4; i++)
		{
			float angle = PI_F * ((i + 0.5f) / 4);
			float cosAngle = cos(angle);
			float sinAngle = sin(angle);
			for (int j = 0; j < 4; j++)
			{
				float   spin = TWO_PI * ((j + 0.5f) / 4);
				LHPoint offset = LHPoint(sin(spin) * sinAngle, cosAngle, cos(spin) * sinAngle) * radius;
				LHPoint probe = offset + OriginSmoother.Destination;
				LHPoint pushed = probe;
				Collide(pushed);
				total.Add(pushed - probe);
			}
		}
		OriginSmoother.Destination.Add(total);
	}
	UpdateFocusFromAngles();
}

void CameraModeNew2Controller::Update(float dt)
{
	dt = (1.0f / 6) * ((int)LH3DTech::g_game_time_inc * 0.001f);
	if (dt <= 0.0f)
	{
		return;
	}
	LHCoord mousePos = LHSys::TheSystem.mouse.EffectivePos;
	LHSys::TheSystem.mouse.UpdateDeltaPos();
	float zoom = LHSys::TheSystem.mouse.MouseWheelAccum * -0.0006f;
	int   deltaY = -LHSys::TheSystem.mouse.AccumDelta.y;
	int   deltaX = LHSys::TheSystem.mouse.AccumDelta.x;
	LHSys::TheSystem.mouse.AccumDelta.x = 0;
	LHSys::TheSystem.mouse.AccumDelta.y = 0;
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		zoom -= dt;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		zoom += dt;
	}
	LHSys::TheSystem.mouse.MouseWheelAccum = 0;

	LHPoint  hitPoint;
	bool32_t hit = LH3DIsland::RayCastFrom2DPoint(mousePos, &hitPoint.x, &hitPoint.z, false, 0.0f);
	if (hit)
	{
		hitPoint.y = LH3DIsland::GetAltitude(LH3DMapCoords(hitPoint.x, hitPoint.z));
	}
	float hitDistance = 100.0f;
	if (hit)
	{
		hitDistance = (Origin - hitPoint).GetNorme();
	}
	bool32_t handGrabbing = GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE;
	bool32_t handZooming = GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_ZOOM_LANDSCAPE;
	MouseX = (float)mousePos.x / LHSys::TheSystem.screen.width - 0.5f;
	MouseY = (float)mousePos.y / LHSys::TheSystem.screen.height - 0.5f;

	LHPoint flyDirection;
	GetDirections(Heading.Destination, FlyPitch, &flyDirection, NULL);
	LHPoint sideDirection;
	GetDirections(Heading.Destination + HALF_PI_F, 0.0f, &sideDirection, NULL);
	float blend = fabs(FlyBlend);
	if (blend < 0.0f)
	{
		blend = 0.0f;
	}
	else if (blend > 1.0f)
	{
		blend = 1.0f;
	}

	if (DragState != 0)
	{
		if (hit)
		{
			LHPoint away = Origin - hitPoint;
			float   distance = away.Normalise();
			DragDepth *=
				exp((HALF_PI_F - fabs(Pitch.Destination)) * ((float)deltaY / LHSys::TheSystem.screen.height) * 2);
			float turn = 0.0f;
			float minDistance = fabs(Pitch.Destination) * 500.0 + 100.0;
			if (distance < minDistance)
			{
				distance = minDistance;
			}
			if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
			{
				turn = -(minDistance * Params[CAMERA_NEW2_PARAM_KB_SPIN_SENS] * dt / distance);
			}
			if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
			{
				turn = minDistance * Params[CAMERA_NEW2_PARAM_KB_SPIN_SENS] * dt / distance;
			}
			Heading.Destination -= turn;
		}
	}
	else
	{
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
		{
			OriginSmoother.Blending = false;
			Velocity.Sub(sideDirection * dt * Params[CAMERA_NEW2_PARAM_STRAFE_SPEED]);
		}
		if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
		{
			OriginSmoother.Blending = false;
			Velocity.Add(sideDirection * dt * Params[CAMERA_NEW2_PARAM_STRAFE_SPEED]);
		}
	}

	float speedDistance = 200.0f;
	if (hit && hitDistance > 200.0f)
	{
		speedDistance = hitDistance;
		if (hitDistance > 1200.0f)
		{
			speedDistance = 1200.0f;
		}
	}

	if (zoom < 0.0f && DragState == 0)
	{
		// Flying forward.
		FlyPitch = Params[CAMERA_NEW2_PARAM_PITCH_SENS] * MouseY;
		if (InvertPitch)
		{
			FlyPitch = -FlyPitch;
		}
		FlyPitch = (1.0f - Params[CAMERA_NEW2_PARAM_FLY_PITCH_BALANCE]) * BasePitch +
		           FlyPitch * Params[CAMERA_NEW2_PARAM_FLY_PITCH_BALANCE];
		if (FlyBlend < 0.0f)
		{
			BasePitch = Pitch.Destination;
			FlyBlend = 0.0f;
			AutoPitch = false;
		}
		OriginSmoother.Blending = false;
		if (SpeedRamp < 0.0f)
		{
			SpeedRamp = 0.0f;
		}
		SpeedRamp -= zoom / Params[CAMERA_NEW2_PARAM_TIME_FOR_MAX_SPEED];
		if (SpeedRamp > 1.0f)
		{
			SpeedRamp = 1.0f;
		}
		Velocity.Add(flyDirection * -zoom * (SpeedRamp + 1.0f) * (speedDistance * (1.0f / 6) + 200.0f) *
		             Params[CAMERA_NEW2_PARAM_FORWARD_SPEED] * blend);
		FlyBlend -= zoom * Params[CAMERA_NEW2_PARAM_INTO_FLY_SPEED];
		if (FlyBlend > 1.0f)
		{
			AutoPitch = true;
		}
	}
	else if (zoom > 0.0f && DragState == 0)
	{
		// Backing up.
		OriginSmoother.Blending = false;
		if (FlyBlend < 1.0f)
		{
			if (FlyBlend > 0.0f)
			{
				BasePitch = Pitch.Destination;
				FlyBlend = 0.0f;
				AutoPitch = false;
			}
			FlyBlend -= zoom * Params[CAMERA_NEW2_PARAM_INTO_BACKUP_SPEED];
			if (FlyBlend < -1.0f)
			{
				FlyBlend = -1.0f;
				Velocity.Sub(Forward * zoom * Params[CAMERA_NEW2_PARAM_BACKWARD_SPEED] * blend);
			}
			else
			{
				Velocity.Sub(Forward * zoom * Params[CAMERA_NEW2_PARAM_BACKWARD_SPEED] * blend);
				Velocity.y += zoom * Params[CAMERA_NEW2_PARAM_LIFT_RATE_WHEN_BACKING];
			}
		}
		else
		{
			Velocity.Sub(flyDirection * zoom * Params[CAMERA_NEW2_PARAM_BACKWARD_SPEED] * blend);
		}
	}
	else
	{
		SpeedRamp -= dt;
		if (SpeedRamp < 0.0f)
		{
			SpeedRamp = 0.0f;
		}
		if (FlyBlend > 0.0f)
		{
			AutoPitch = true;
			FlyBlend -= dt * Params[CAMERA_NEW2_PARAM_OUT_OF_FLY_SPEED];
			if (FlyBlend < 0.0f)
			{
				FlyBlend = 0.0f;
			}
		}
	}
	if (FlyBlend > 1.0f)
	{
		FlyBlend = 1.0f;
	}
	else if (FlyBlend < -1.0f)
	{
		FlyBlend = -1.0f;
	}

	int     dragState = DragState;
	LHPoint focus;
	switch (DragState)
	{
	case 0:
		if (handGrabbing && hit)
		{
			DragPoint = hitPoint;
			dragState = 1;
			LHPoint toHit = hitPoint - Origin;
			DragDistance = sqrt(toHit.x * toHit.x + toHit.z * toHit.z + toHit.y * toHit.y);
			DragDepth = LH3DTech::g_world_to_clipping._23 * DragPoint.y +
			            LH3DTech::g_world_to_clipping._33 * DragPoint.z +
			            LH3DTech::g_world_to_clipping._13 * DragPoint.x + LH3DTech::g_world_to_clipping._43;
			DragMousePos = mousePos;
			OriginSmoother.Blending = false;
		}
		else
		{
			float speed = fabs(Velocity.DotProductInline(Forward));
			Heading.Destination += Params[CAMERA_NEW2_PARAM_TURN_SENS] * MouseX * blend * dt * speed * 2;
			Velocity.Sub(sideDirection * blend * speed * MouseX * Params[CAMERA_NEW2_PARAM_AUTO_STRAFE_AMOUNT] * dt);
		}
		break;
	case 1: {
		if (!handGrabbing)
		{
			dragState = 0;
		}
		LHCoord centre;
		centre.x = LHSys::TheSystem.screen.width / 2;
		centre.y = LHSys::TheSystem.screen.height / 2;
		LHPoint centreRay;
		LH3DTech::Get3DPointFromScreen(centre, centreRay, 10.0f);
		LHCoord edge;
		edge.x = LHSys::TheSystem.screen.width;
		edge.y = LHSys::TheSystem.screen.height / 2;
		LHPoint edgeRay;
		LH3DTech::Get3DPointFromScreen(edge, edgeRay, 10.0f);
		centreRay.Sub(LHPoint(LH3DTech::g_camera.pos));
		edgeRay.Sub(LHPoint(LH3DTech::g_camera.pos));
		centreRay.FastNormalizeInline();
		edgeRay.FastNormalizeInline();
		float halfWidth = tan(acos(edgeRay.x * centreRay.x + edgeRay.y * centreRay.y + edgeRay.z * centreRay.z));
		float halfHeight = LHSys::TheSystem.screen.height * halfWidth / LHSys::TheSystem.screen.width;
		DragDepth += hitDistance * Params[CAMERA_NEW2_PARAM_KB_ZOOM_SENS] * zoom;
		if (DragDepth < 5.0f)
		{
			DragDepth = 5.0f;
		}
		LHPoint look;
		GetDirections(Heading.Destination, Pitch.Destination, &look, NULL);
		look.FastNormalizeInline();
		LHPoint up(0.0f, 1.0f, 0.0f);
		LHPoint side;
		side.CrossProduct(up, look);
		side.FastNormalizeInline();
		LHPoint top;
		top.CrossProduct(look, side);
		float   distance = DragDepth;
		LHPoint vertical = top * distance * halfHeight * MouseY * 2.0f;
		focus = DragPoint - side * distance * halfWidth * MouseX * 2.0f + vertical;
		Focus = focus;
		OriginSmoother.Destination = Focus - look * DragDepth;
		if (DragDepth < 250.0f)
		{
			Velocity.y += zoom * Params[CAMERA_NEW2_PARAM_LIFT_RATE_WHEN_BACKING];
		}
		break;
	}
	}

	if (GGame::g_game->MyInterface()->flags.DoubleClicked)
	{
		Object* object = GGame::g_game->MyInterface()->interface_collide.object;
		GGame::g_game->MyInterface()->flags.ClearDoubleClicked();
		LHPoint  target;
		bool32_t found;
		if (object != NULL)
		{
			GLandscape::ConvertMapCoordToLandscapePoint(object->Pos, target);
			found = true;
		}
		else
		{
			found = LH3DIsland::RayCastFrom2DPoint(mousePos, &target.x, &target.z, false, 0.0f);
		}
		if (found)
		{
			target.y = LH3DIsland::GetAltitude(target);
			if (target.y >= 0.0f)
			{
				float zoomDistance = hitDistance;
				if (hitDistance > Params[CAMERA_NEW2_PARAM_DOUBLE_CLICK_ZOOM])
				{
					zoomDistance = Params[CAMERA_NEW2_PARAM_DOUBLE_CLICK_ZOOM];
				}
				else if (hitDistance > Params[CAMERA_NEW2_PARAM_CLOSEST_ZOOM])
				{
					zoomDistance = (hitDistance - Params[CAMERA_NEW2_PARAM_CLOSEST_ZOOM]) * 0.75f +
					               Params[CAMERA_NEW2_PARAM_CLOSEST_ZOOM];
				}
				float pitch = -(PI_F / 5);
				if (pitch > Pitch.Destination)
				{
					pitch = Pitch.Destination;
				}
				LHPoint direction;
				GetDirections(Heading.Destination, pitch, &direction, NULL);
				OriginSmoother.Destination = target - direction * zoomDistance;
				StartBlend(true, 2.0f);
			}
		}
	}

	Pitch.Rate = Params[CAMERA_NEW2_PARAM_POSITION_SMOOTHING] * 0.5f;
	OriginSmoother.Rate = Params[CAMERA_NEW2_PARAM_POSITION_SMOOTHING];
	Heading.Rate = Params[CAMERA_NEW2_PARAM_POSITION_SMOOTHING];
	Heading.WrapAngle();
	Pitch.WrapAngle();
	OriginSmoother.Update(dt);
	Heading.Update(dt);
	Pitch.Update(dt);
	UpdatePhysics(dt);

	if (DragState != 0)
	{
		LHPoint toFocus = OriginSmoother.Destination - focus;
		Pitch.Destination =
			-atan360(sqrt(toFocus.z * toFocus.z + toFocus.x * toFocus.x), OriginSmoother.Destination.y - focus.y);
		Heading.Destination = atan360(focus.z - OriginSmoother.Destination.z, focus.x - OriginSmoother.Destination.x);
		LHPoint look;
		GetDirections(Heading.Destination, Pitch.Destination, &look, NULL);
		look.FastNormalizeInline();
		DragDepth = fabs((DragPoint - OriginSmoother.Destination).DotProduct(look));
		if (Pitch.Destination < -(PI_F / 2.3f))
		{
			Pitch.Destination = -(PI_F / 2.3f);
		}
		BasePitch = Pitch.Destination;
		FlyBlend = 0.0f;
		AutoPitch = false;
	}
	DragState = dragState;
}

void CameraModeNew2Controller::SetFocus(const LHPoint& focus)
{
	Focus = focus;
	UpdateAnglesFromFocus();
	Heading.WrapAngle();
	StartBlend(true, 1.0f);
}

void CameraModeNew2Controller::SetOriginAndFocus(const LHPoint& origin, const LHPoint& focus)
{
	Origin = origin;
	OriginSmoother.Destination = origin;
	Focus = focus;
	UpdateAnglesFromFocus();
	Heading.WrapAngle();
	StartBlend(true, 1.0f);
}

CameraModeNew2::CameraModeNew2(GCamera* camera, int param_2) : CameraModeNew(camera)
{
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	Controller.Init(this->camera->CameraOriginZoomer.GetCurrentValue(),
	                this->camera->CameraHeadingZoomer.GetCurrentValue());
	Controller.SetOriginAndFocus(Origin, Focus);
	this->camera->SwitchToViewMode(this);
}

CameraModeNew2::CameraModeNew2(GCamera* camera, const LHPoint& focus, float distance) : CameraModeNew(camera)
{
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	Controller.Init(this->camera->CameraOriginZoomer.GetCurrentValue(),
	                this->camera->CameraHeadingZoomer.GetCurrentValue());
	this->camera->SwitchToViewMode(this);
}

CameraModeNew2::CameraModeNew2(GCamera* camera) : CameraModeNew(camera)
{
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	Controller.Init(this->camera->CameraOriginZoomer.GetCurrentValue(),
	                this->camera->CameraHeadingZoomer.GetCurrentValue());
	this->camera->SwitchToViewMode(this);
}

void CameraModeNew2::Update()
{
	Controller.Update(GetTimeDelta());
	camera->CameraOriginZoomer.SetPosition(Controller.Origin);
	camera->CameraHeadingZoomer.SetPosition(Controller.Focus);
	Origin = Controller.Origin;
	Focus = Controller.Focus;
}

void CameraModeNew2::FlyTo(float x, float z, float distance, float pitch)
{
	if (Controller.FlyingToTarget == true)
	{
		float dx = x - Controller.Origin.x;
		float dz = z - Controller.Origin.z;
		if (dx * dx + dz * dz > 10000.0f)
		{
			Controller.FlyingToTarget = false;
		}
	}
	if (Controller.FlyingToTarget == true)
	{
		Controller.SetOriginAndFocus(SavedOrigin, SavedFocus);
		Controller.FlyingToTarget = false;
	}
	else
	{
		SavedOrigin = Controller.Origin;
		SavedFocus = Controller.Focus;
		LHPoint focus(x, 0.0f, z);
		focus.y = LH3DIsland::GetAltitude(LH3DMapCoords(focus.x, focus.z));
		LHPoint direction;
		Controller.GetDirections(Controller.Heading.Destination, -fabs(pitch), &direction, NULL);
		LHPoint origin = focus - direction * distance;
		Controller.SetOriginAndFocus(origin, focus);
		Controller.FlyingToTarget = true;
	}
	Controller.Heading.WrapAngle();
	Controller.StartBlend(true, 1.0f);
}

void CameraModeNew2::SetHeadingAndPitch(float heading, float pitch) {}

void CameraModeNew2::SetFocus(const LHPoint& focus) {}

void CameraModeNew2::ProcessKeyMovement(uint16_t key) {}

void CameraModeNew2::Restart()
{
	Controller.Init(camera->CameraOriginZoomer.GetCurrentValue(), camera->CameraHeadingZoomer.GetCurrentValue());
	Controller.SetOriginAndFocus(Origin, Focus);
}
