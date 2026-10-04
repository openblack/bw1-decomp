#include "CameraModeNew1.h"

#include <windows.h> /* For GetTickCount */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h>
#include <Lionhead/LH3DLib/development/LH3DMath.h>
#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LHLib/ver5.0/LHKey.h> /* For LH_MOD_ALT, LH_MOD_CTRL, LH_MOD_SHIFT */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#include "BindableAction.h"
#include "Camera.h"
#include "CameraFollowConstants.h"
#include "ControlMap.h"
#include "Game.h"
#include "Interface.h"
#include "Landscape.h"
#include "Object.h"

float CameraModeNew1::KeyHeldTime;

void CameraSmoother::WrapAngle()
{
	while (Destination < -PI_F)
	{
		Destination += TWO_PI;
	}
	while (Destination > PI_F)
	{
		Destination -= TWO_PI;
	}
	while (Current < -PI_F)
	{
		Current += TWO_PI;
	}
	while (Current > PI_F)
	{
		Current -= TWO_PI;
	}
	if (Current - Destination > PI_F)
	{
		Current -= TWO_PI;
	}
	if (Current - Destination < -PI_F)
	{
		Current += TWO_PI;
	}
}

void CameraSmoother::Update(float dt)
{
	float step = (1.0 - exp(dt * Rate)) * (Destination - Current);
	if (Blending && Blend < 1.0f)
	{
		step *= Blend;
		Blend += dt * BlendSpeed;
	}
	Current += step;
}

void CameraSmoother3d::Update(float dt)
{
	LHPoint delta = Destination - Current;
	float   factor = 1.0 - exp(dt * Rate);
	LHPoint step = delta * factor;
	if (Blending && Blend < 1.0f)
	{
		step *= Blend;
		Blend += dt * BlendSpeed;
	}
	Current.Add(step);
}

CameraModeNew1Controller::~CameraModeNew1Controller()
{
	LHCoord margin;
	LHSys::TheSystem.mouse.MouseWheelAccum = 0;
	margin.x = 0;
	margin.y = 0;
	LHSys::GetMouse().SetMouseMargin(margin);
}

bool CameraModeNew1Controller::IsPositionValid(const LHPoint& position)
{
	return false;
}

bool32_t CameraModeNew1Controller::CheckClearance(float heading, float pitch)
{
	float   cosPitch = cos(pitch);
	LHPoint dir(cosPitch * cos(heading), sin(pitch), cosPitch * sin(heading));
	LHPoint side(sin(heading) * ViewDistance * -0.3, 0.0f, cos(heading) * ViewDistance * (double)0.4f);
	LHPoint position = dir * ViewDistance + Focus;
	for (int i = -1; i < 2; i++)
	{
		LHPoint offset = side * (float)i;
		LHPoint target = offset + Focus;
		LHPoint hit;
		if (LH3DIsland::RayCast(position, target, &hit.x, &hit.z))
		{
			hit.y = LH3DIsland::GetAltitude(hit);
			LHPoint toHit = hit - position;
			LHPoint toTarget = target - position;
			if (toHit.GetNormeSq() < toTarget.GetNormeSq() * 0.25f)
			{
				return true;
			}
		}
	}
	return false;
}

void CameraModeNew1Controller::SetViewMatrix(const LHPoint& origin, const LHPoint& focus)
{
	LHPoint forward = focus - origin;
	forward.FastNormalizeInline();
	LHPoint up(0.0f, 1.0f, 0.0f);
	LHPoint side = forward ^ up;
	side.FastNormalizeInline();
	LHPoint top = side ^ forward;
	ViewMatrix._11 = forward.x;
	ViewMatrix._21 = forward.y;
	ViewMatrix._31 = forward.z;
	ViewMatrix._12 = top.x;
	ViewMatrix._22 = top.y;
	ViewMatrix._32 = top.z;
	ViewMatrix._13 = side.x;
	ViewMatrix._23 = side.y;
	ViewMatrix._33 = side.z;
	ViewMatrix._41 = 0.0f;
	ViewMatrix._42 = 0.0f;
	ViewMatrix._43 = 0.0f;
	LHPoint translation = ViewMatrix * origin;
	ViewMatrix._41 = -translation.x;
	ViewMatrix._42 = -translation.y;
	ViewMatrix._43 = -translation.z;
}

bool32_t CameraModeNew1Controller::GetGroundPointFromScreen(const LHCoord& screen, float* x, float* z)
{
	LHPoint normal(ViewMatrix._12, ViewMatrix._22, ViewMatrix._32);
	float   planeDistance = -ViewMatrix._42;
	LHPoint dir;
	LH3DTech::Get3DPointFromScreen(screen, dir, 0.0f);
	dir.Sub(Origin);
	float t = dir.x * normal.x + dir.z * normal.z + normal.y * dir.y;
	if (t != 0.0f)
	{
		t = (planeDistance - normal.DotProductInline(Origin)) / t;
	}
	if (t <= 0.0f)
	{
		return false;
	}
	LHPoint point = dir * t + Origin;
	LHPoint local = ViewMatrix * point;
	*x = local.x;
	*z = local.z;
	return true;
}

float CameraModeNew1Controller::GetDistance(const LHPoint& origin, const LHPoint& focus)
{
	return (origin - focus).GetNorme();
}

float CameraModeNew1Controller::GetPitch(const LHPoint& origin, const LHPoint& focus)
{
	float dx = origin.x - focus.x;
	float dz = origin.z - focus.z;
	return atan360(sqrt(dx * dx + dz * dz), origin.y - focus.y);
}

float CameraModeNew1Controller::GetHeading(const LHPoint& origin, const LHPoint& focus)
{
	return atan360(origin.x - focus.x, origin.z - focus.z);
}

void CameraModeNew1Controller::StartBlend(bool32_t enable, float speed)
{
	if (!enable)
	{
		FocusSmoother.Blending = false;
		Heading.Blending = false;
		Pitch.Blending = false;
		Distance.Blending = false;
		FocusMoving = false;
		return;
	}
	float blendSpeed = speed * 0.425f;
	FocusSmoother.Blend = 0.0f;
	FocusSmoother.BlendSpeed = blendSpeed;
	FocusSmoother.Blending = true;
	Heading.Blend = 0.0f;
	Heading.BlendSpeed = blendSpeed;
	Heading.Blending = true;
	Heading.WrapAngle();
	Pitch.Blend = 0.0f;
	Pitch.BlendSpeed = blendSpeed;
	Pitch.Blending = true;
	Pitch.WrapAngle();
	Distance.Blending = true;
	Distance.Blend = 0.0f;
	Distance.BlendSpeed = blendSpeed;
}

void CameraModeNew1Controller::Init(LHPoint& origin, const LHPoint& focus)
{
	GGame::g_game->MyInterface()->flags.ClearDoubleClicked();
	if (fabs(origin.x - focus.x) < 0.0001f && fabs(origin.z - focus.z) < 0.0001f)
	{
		origin.x += 0.01f;
	}
	FocusMoving = false;
	LHPoint ground = focus;
	ground.y = LH3DIsland::GetAltitude(LH3DMapCoords(ground.x, ground.z)) + 0.5f;
	LHSys::TheSystem.mouse.AccumDelta.x = 0;
	LHSys::TheSystem.mouse.AccumDelta.y = 0;
	DragFrames = 0;
	FlyingToTarget = false;
	ScreenScale = 800.0f / LHSys::TheSystem.screen.width;
	LHSys::TheSystem.mouse.MouseWheelAccum = 0;
	SkipNextUpdate = true;
	State = 1;
	Distance.Current = Distance.Destination = ViewDistance = GetDistance(origin, focus);
	Focus = focus;
	Origin = origin;
	ForwardSpeed = SideSpeed = 0;
	LastTick = GetTickCount() - 1;
	Heading.Current = Heading.Destination = GetHeading(origin, focus);
	FocusSmoother.Set(Focus, ground);
	Pitch.Rate = Heading.Rate = FocusSmoother.Rate = -10.0f;
	ClearancePitch.Rate = -4.0f;
	Pitch.Current = Pitch.Destination = GetPitch(origin, focus);
	ClearancePitch.Current = ClearancePitch.Destination = PI_F / 32;
	WrapHeading();
}

void CameraModeNew1Controller::Update(float dt, bool search_clear)
{
	if (dt <= 0.0f)
	{
		return;
	}
	if (SkipNextUpdate)
	{
		dt = 0.0f;
	}
	SkipNextUpdate = false;
	FocusMoving = false;
	if (FocusSmoother.Blending)
	{
		LHPoint remaining = FocusSmoother.Destination - FocusSmoother.Current;
		if (remaining.GetNorme() > 10.0f)
		{
			FocusMoving = true;
		}
	}
	if (search_clear && !IsPositionValid(Origin))
	{
		for (int i = 0; i < 400; i++)
		{
			float   angle = (i / 50) * QUARTER_PI_F + Heading.Current;
			float   radius = (i % 50) * 20;
			LHPoint offset(cos(angle) * radius, 0.0f, sin(angle) * radius);
			LHPoint position(offset.x + Origin.x, Origin.y, offset.z + Origin.z);
			if (IsPositionValid(position))
			{
				Origin = LHPoint(offset.x + Origin.x, Origin.y, offset.z + Origin.z);
				LHPoint focus(offset.x + Focus.x, Focus.y, offset.z + Focus.z);
				FocusSmoother.Destination = focus;
				FocusSmoother.Current = focus;
				break;
			}
		}
	}

	LHPoint previousOrigin = Origin;
	LHCoord mousePos = LHSys::TheSystem.mouse.EffectivePos;
	LHSys::TheSystem.mouse.UpdateDeltaPos();
	LHCoord delta;
	delta.x = -LHSys::TheSystem.mouse.AccumDelta.x;
	delta.y = -LHSys::TheSystem.mouse.AccumDelta.y;
	LHSys::TheSystem.mouse.AccumDelta.x = 0;
	LHSys::TheSystem.mouse.AccumDelta.y = 0;
	LHPoint  hitPoint;
	bool32_t hit = LH3DIsland::RayCastFrom2DPoint(mousePos, &hitPoint.x, &hitPoint.z, false, 0.0f);
	bool32_t grabbing = GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_GRIP_LANDSCAPE;
	bool32_t zooming = GGame::g_game->MyInterface()->HandState.hand_state == HAND_STATE_ZOOM_LANDSCAPE;
	float    mouseX = (float)mousePos.x / LHSys::TheSystem.screen.width - 0.5f;
	float    mouseY = (float)mousePos.y / LHSys::TheSystem.screen.height - 0.5f - 0.01f;
	float    absMouseX = fabs(mouseX);
	float    absMouseY = fabs(mouseY);
	if (hit)
	{
		hitPoint.y = LH3DIsland::GetAltitude(LH3DMapCoords(hitPoint.x, hitPoint.z)) + 0.5f;
	}
	if (!grabbing)
	{
		State = 1;
		DragFrames = 0;
	}
	if (State == 1)
	{
		if (hit)
		{
			State = 5;
		}
		float radius = absMouseY * absMouseY * 0.5625f + absMouseX * absMouseX;
		if (absMouseX < absMouseY)
		{
			if (mouseY > 0.47f || mouseY < -0.49f)
			{
				State = 9;
			}
			else if (mouseY > 0.4f || mouseY < -0.45f)
			{
				State = 13;
			}
		}
		if (absMouseX > 0.47f)
		{
			State = 3;
		}
		else if (absMouseX > 0.4f || radius > 0.2116f)
		{
			State = 7;
		}
		if (!hit)
		{
			State = 9;
		}
	}
	if (grabbing)
	{
		int dragX = 0;
		int dragY = 0;
		if (DragFrames == 0)
		{
			DragMousePos = mousePos;
			DragHeading = Heading.Destination;
			DragPoint = hitPoint;
		}
		else
		{
			dragX = delta.x * ScreenScale;
			dragY = delta.y * ScreenScale;
			if (mouseX > 0.0f)
			{
				dragX = -dragX;
			}
			if (mouseY > 0.0f)
			{
				dragY = -dragY;
			}
		}
		DragFrames++;
		if (State & 1)
		{
			if (hit)
			{
				SetViewMatrix(Focus, hitPoint);
			}
			switch (State)
			{
			case 3:
				State = 2;
				break;
			case 9:
				State = mouseY < 0.0f ? 8 : 0x88;
				break;
			case 13:
				if (DragFrames > 1 && (dragX != 0 || dragY != 0))
				{
					State = mouseY < 0.0f ? 8 : 0x88;
					if (dragY > 0)
					{
						State = 4;
					}
				}
				break;
			case 7:
				if (DragFrames > 1 && (dragX != 0 || dragY != 0))
				{
					State = 2;
					if (dragX > 0 && (float)fabs(atan((float)dragY / dragX)) < QUARTER_PI_F)
					{
						State = 4;
					}
				}
				break;
			case 5:
				State = 4;
				break;
			}
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
			float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(target.x, target.z));
			if (altitude > 0.0f)
			{
				target.y = altitude + 0.5f;
				LHPoint toTarget = target - Focus;
				if ((float)sqrt(toTarget.x * toTarget.x + toTarget.z * toTarget.z + toTarget.y * toTarget.y) < 100.0f &&
				    Distance.Destination > 50.0f)
				{
					Distance.Destination = 50.0f;
				}
				FocusSmoother.Destination = target;
				StartBlend(true, 2.0f);
				if (Distance.Destination > 100.0f)
				{
					Distance.Destination = 100.0f;
				}
			}
		}
	}
	if (zooming)
	{
		State = 0x10;
	}

	int      state = State;
	bool32_t moved = false;
	float    zoom = 0.0f;
	float    turn = 0;
	switch (state)
	{
	case 0x10:
		zoom = delta.y * ScreenScale * 5.0f;
		if (fabs(zoom) > 25.0)
		{
			moved = true;
		}
		DragMousePos = mousePos;
		break;
	case 8:
	case 0x88: {
		float pitch = delta.y * ScreenScale * 0.006f;
		turn = delta.x * mouseY * 2 * ScreenScale * 0.004f;
		if (fabs(pitch) > 0.03)
		{
			moved = true;
		}
		if (fabs(turn) > 0.02)
		{
			moved = true;
		}
		if (state == 8)
		{
			Pitch.Destination += pitch;
		}
		else
		{
			Pitch.Destination -= pitch;
		}
		Heading.Destination += turn;
		DragMousePos = mousePos;
		if (Heading.Blending)
		{
			Heading.Blending = false;
		}
		if (Pitch.Blending)
		{
			Pitch.Blending = false;
		}
		if (Distance.Blending)
		{
			Distance.Blending = false;
		}
		break;
	}
	case 2: {
		float x;
		float z;
		GetGroundPointFromScreen(mousePos, &x, &z);
		float dragX;
		float dragZ;
		GetGroundPointFromScreen(DragMousePos, &dragX, &dragZ);
		int   halfWidth = LHSys::TheSystem.screen.width / 2;
		int   halfHeight = LHSys::TheSystem.screen.height / 2;
		float angle = atan2((float)(mousePos.x - halfWidth), (float)(mousePos.y - halfHeight)) -
		              atan2((float)(DragMousePos.x - halfWidth), (float)(DragMousePos.y - halfHeight));
		if (angle > PI_F)
		{
			angle -= TWO_PI;
		}
		if (angle < -PI_F)
		{
			angle += TWO_PI;
		}
		float heading = DragHeading - angle;
		Heading.Destination = heading;
		if (fabs(angle) > (PI_F / 180))
		{
			moved = true;
		}
		if (Heading.Blending)
		{
			Heading.Blending = false;
		}
		if (Pitch.Blending)
		{
			Pitch.Blending = false;
		}
		if (Distance.Blending)
		{
			Distance.Blending = false;
		}
		DragMousePos = mousePos;
		DragHeading = heading;
		break;
	}
	case 4: {
		float x;
		float z;
		if (LH3DIsland::RayCastFrom2DPoint(DragMousePos, &x, &z, false, 0.0f) && hit)
		{
			float limit = ViewDistance * 0.5f;
			float moveX = hitPoint.x - x;
			float moveZ = hitPoint.z - z;
			if (delta.x == 0 && delta.y == 0)
			{
				DragPoint.Add((hitPoint - DragPoint) * 0.5f);
			}
			float lagX = FocusSmoother.Destination.x - FocusSmoother.Current.x + (hitPoint.x - DragPoint.x);
			float lagZ = hitPoint.z - DragPoint.z + (FocusSmoother.Destination.z - FocusSmoother.Current.z);
			float cosAngle =
				(lagZ * moveZ + lagX * moveX) / (sqrt(lagZ * lagZ + lagX * lagX) * sqrt(moveZ * moveZ + moveX * moveX));
			if (cosAngle < 0.0f)
			{
				DragPoint.Add((hitPoint - DragPoint) * 0.5f);
			}
			else
			{
				moveX = (lagX - moveX) * cosAngle + moveX;
				moveZ = (lagZ - moveZ) * cosAngle + moveZ;
			}
			float length = moveZ * moveZ + moveX * moveX;
			if (length > limit * limit)
			{
				length = limit / sqrt(length);
				moveX *= length;
				moveZ *= length;
			}
			if (fabs(length) > 1.0)
			{
				moved = true;
			}
			FocusSmoother.Destination.x -= moveX;
			FocusSmoother.Destination.z -= moveZ;
		}
		DragMousePos = mousePos;
		DragHeading = Heading.Destination;
		if (FocusSmoother.Blending)
		{
			FocusSmoother.Blending = false;
		}
		break;
	}
	}

	SideSpeed = 0.0f;
	ForwardSpeed = 0.0f;
	WheelDelta = LHSys::TheSystem.mouse.MouseWheelAccum;
	LHSys::TheSystem.mouse.MouseWheelAccum = 0;
	if (!GGame::g_game->MyInterface()->IsActive())
	{
		WheelDelta = 0;
	}
	zoom += WheelDelta * 30 * dt;
	if (zoom < 0.0f)
	{
		zoom *= 1.3f;
	}
	Distance.Destination -= sqrt(Distance.Destination) * zoom * 0.01f;
	if (zoom > 0.0f && Pitch.Current < (PI_F / 12))
	{
		float speed = (1.0 - fabs(Pitch.Current) * 0.026525823) * (zoom / dt / Distance.Current);
		SideSpeed -= speed * 0.025f;
	}
	if (Distance.Destination < 0.5f)
	{
		Distance.Destination = 0.5f;
	}
	if (Distance.Destination > 4000.0f)
	{
		Distance.Destination = 4000.0f;
	}
	LHPoint move(Distance.Current * ForwardSpeed * -0.25f * dt, 0.0f, -(Distance.Current * SideSpeed * -0.25f * dt));
	float   angle = -(HALF_PI_F - Heading.Current);
	float   cosAngle = cos(angle);
	float   sinAngle = sin(angle);
	float   x = move.x;
	move.x = cosAngle * x + -sinAngle * move.z;
	move.z = cosAngle * move.z + sinAngle * x;
	FocusSmoother.Destination.Add(move);
	if (moved)
	{
		GGame::g_game->MyInterface()->CameraMoved = true;
	}
	if (Pitch.Destination > (HALF_PI_F - PI_F / 64))
	{
		Pitch.Destination = HALF_PI_F - PI_F / 64;
	}
	FocusSmoother.Destination.y =
		LH3DIsland::GetAltitude(LH3DMapCoords(FocusSmoother.Destination.x, FocusSmoother.Destination.z)) + 0.5f;
	FocusSmoother.Update(dt);
	Focus = FocusSmoother.Current;
	Heading.Update(dt);
	Pitch.Update(dt);
	Distance.Update(dt);
	ViewDistance = Distance.Current;
	if (CheckClearance(Heading.Current, ClearancePitch.Destination))
	{
		ClearancePitch.Destination += 0.05f;
	}
	else if (!CheckClearance(Heading.Current, ClearancePitch.Destination - 0.025f))
	{
		ClearancePitch.Destination -= 0.025f;
	}
	if (ClearancePitch.Destination < -QUARTER_PI_F)
	{
		ClearancePitch.Destination = -QUARTER_PI_F;
	}
	if (ClearancePitch.Destination > (PI_F / 3))
	{
		ClearancePitch.Destination = PI_F / 3;
	}
	ClearancePitch.Update(dt);
	float minimum = asin(0.5f / ViewDistance);
	float minPitch = minimum + ClearancePitch.Current;
	float heading = Heading.Current;
	float pitch = Pitch.Current;
	if (pitch < minPitch)
	{
		pitch = minPitch;
	}
	if (minPitch > Pitch.Destination)
	{
		Pitch.Destination = minPitch;
	}
	float cosPitch = cos(pitch);
	Origin = LHPoint(cos(heading) * cosPitch, sin(pitch), sin(heading) * cosPitch) * ViewDistance + Focus;
	GetPitch(Origin, Focus);
	float ground = LH3DIsland::GetAltitude(LH3DMapCoords(Origin.x, Origin.z)) + 0.5f;
	if (ground > Origin.y)
	{
		Origin.y = ground;
		ClearancePitch.Current = ClearancePitch.Destination = GetPitch(Origin, Focus) - minimum;
	}
	if (search_clear)
	{
		LHPoint step = (previousOrigin - Origin) * 0.25f;
		for (int i = 0; i < 4; i++)
		{
			if (IsPositionValid(Origin))
			{
				break;
			}
			Origin.Add(step);
			Focus.Add(step);
			FocusSmoother.Destination = Focus;
			FocusSmoother.Current = Focus;
		}
	}
}

void CameraModeNew1Controller::WrapHeading()
{
	Heading.WrapAngle();
}

void CameraModeNew1Controller::SetFocus(const LHPoint& focus)
{
	FocusSmoother.Destination = focus;
	WrapHeading();
	StartBlend(true, 1.0f);
}

void CameraModeNew1Controller::SetOriginAndFocus(const LHPoint& origin, const LHPoint& focus)
{
	LHPoint ground = focus;
	ground.y = LH3DIsland::GetAltitude(LH3DMapCoords(ground.x, ground.z)) + 0.5f;
	FocusSmoother.Destination = ground;
	Heading.Destination = GetHeading(origin, ground);
	Pitch.Destination = GetPitch(origin, ground);
	Distance.Destination = GetDistance(origin, ground);
	WrapHeading();
	StartBlend(true, 1.0f);
}

CameraModeNew1::CameraModeNew1(GCamera* camera, int param_2) : CameraModeNew(camera)
{
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	RotateAboutOrigin = false;
	Controller.Init(this->camera->CameraOriginZoomer.GetCurrentValue(),
	                this->camera->CameraHeadingZoomer.GetCurrentValue());
	Controller.SetOriginAndFocus(Origin, Focus);
	Controller.WrapHeading();
	this->camera->SwitchToViewMode(this);
}

CameraModeNew1::CameraModeNew1(GCamera* camera, const LHPoint& focus, float distance) : CameraModeNew(camera)
{
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	RotateAboutOrigin = false;
	Controller.Init(this->camera->CameraOriginZoomer.GetCurrentValue(),
	                this->camera->CameraHeadingZoomer.GetCurrentValue());
	Controller.Distance.Destination = distance;
	Controller.FocusSmoother.Destination = focus;
	Controller.WrapHeading();
	Origin = Controller.Origin;
	Focus = Controller.Focus;
	this->camera->SwitchToViewMode(this);
}

CameraModeNew1::CameraModeNew1(GCamera* camera) : CameraModeNew(camera)
{
	if (this->camera->CantExitCurrentMode())
	{
		delete this;
		return;
	}
	RotateAboutOrigin = false;
	Controller.Init(this->camera->CameraOriginZoomer.GetCurrentValue(),
	                this->camera->CameraHeadingZoomer.GetCurrentValue());
	Origin = Controller.Origin;
	Focus = Controller.Focus;
	Controller.WrapHeading();
	this->camera->SwitchToViewMode(this);
}

void CameraModeNew1::Update()
{
	Controller.Update(GetTimeDelta(), SearchClear);
	camera->CameraOriginZoomer.SetPosition(Controller.Origin);
	camera->CameraHeadingZoomer.SetPosition(Controller.Focus);
	Origin = Controller.Origin;
	Focus = Controller.Focus;
}

void CameraModeNew1::FlyTo(float x, float z, float distance, float pitch)
{
	if (Controller.FlyingToTarget == 1)
	{
		float dx = x - Controller.Focus.x;
		float dz = z - Controller.Focus.z;
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
		Controller.Distance.Destination = distance;
		Controller.Pitch.Destination = pitch;
		LHPoint focus;
		focus.x = x;
		focus.z = z;
		focus.y = LH3DIsland::GetAltitude(LH3DMapCoords(focus.x, focus.z)) + 0.5f;
		Controller.FocusSmoother.Destination = focus;
		Controller.FlyingToTarget = true;
	}
	Controller.WrapHeading();
	Controller.StartBlend(true, 1.0f);
}

void CameraModeNew1::SetHeadingAndPitch(float heading, float pitch)
{
	Controller.Pitch.Destination = pitch;
	Controller.Heading.Destination = -heading - HALF_PI_F;
	Controller.WrapHeading();
}

void CameraModeNew1::SetFocus(const LHPoint& focus)
{
	Controller.FocusSmoother = CameraSmoother3d(focus);
	Controller.WrapHeading();
}

void CameraModeNew1::ProcessKeyMovement(uint16_t key)
{
	if (!Controller.KeyMoving)
	{
		KeyHeldTime = 0.0f;
	}
	float   timeDelta = camera->TimeDelta;
	int     horizontal = 0;
	int     vertical = 0;
	uint8_t moved = false;
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_FORWARDS))
	{
		vertical = timeDelta * -400.0f;
		moved = true;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_BACKWARDS))
	{
		vertical += timeDelta * 400.0f;
		moved = true;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_LEFT))
	{
		horizontal = timeDelta * -400.0f;
		moved = true;
	}
	if (GGame::g_game->control_map->IsActionPerformed(BINDABLE_ACTION_MOVE_RIGHT))
	{
		horizontal += timeDelta * 400.0f;
		moved = true;
	}
	if (Controller.FocusMoving)
	{
		vertical = 0;
		horizontal = 0;
	}
	if (moved)
	{
		KeyHeldTime += timeDelta;
		if (KeyHeldTime > 3.0f)
		{
			KeyHeldTime = 3.0f;
		}
	}
	if (horizontal != 0 || vertical != 0)
	{
		float   forward = vertical;
		float   zoom = (forward + 300.0f) * (1.0f / 300);
		LHPoint origin = Controller.Origin;
		LHPoint focus = Controller.FocusSmoother.Destination;
		float   heading = Controller.Heading.Destination;
		float   distance = Controller.Distance.Destination;
		float   pitch = Controller.Pitch.Destination;
		if (key & LH_MOD_CTRL)
		{
			heading += horizontal * PI_F / LHSys::TheSystem.screen.width;
			distance = max(CameraFollowMinViewingDistance, zoom * distance);
			focus = Controller.FocusSmoother.Destination;
		}
		else if (key & LH_MOD_SHIFT)
		{
			heading += horizontal * PI_F / LHSys::TheSystem.screen.width;
			float newPitch = pitch - forward * CameraFollowKeySpeed;
			pitch = newPitch > CameraFollowMinPitch
			            ? (newPitch < CameraFollowMaxPitch ? newPitch : CameraFollowMaxPitch)
			            : CameraFollowMinPitch;
			focus = Controller.FocusSmoother.Destination;
		}
		else if (!(key & LH_MOD_ALT))
		{
			float height = (origin.y - LH3DIsland::GetAltitude(LH3DMapCoords(origin.x, origin.z))) * 3.0f;
			if (height < 30.0f)
			{
				height = 30.0f;
			}
			double slope = tan(pitch);
			slope = slope > 0.2f ? (slope < 2.0 ? slope : 2.0) : 0.2f;
			LHPoint move(-horizontal * height * 0.001f, 0.0f, forward * height * 0.001f / slope);
			float   angle = -(HALF_PI_F - heading);
			float   cosAngle = cos(angle);
			float   sinAngle = sin(angle);
			float   x = move.x;
			move.x = cosAngle * x + -sinAngle * move.z;
			move.z = cosAngle * move.z + sinAngle * x;
			origin.Add(move);
			focus.Add(move);
		}
		focus.y = max(focus.y, LH3DIsland::GetAltitude(LH3DMapCoords(focus.x, focus.z)) + 1.0f);
		if (RotateAboutOrigin)
		{
			float turn = heading - Controller.Heading.Destination;
			heading -= turn + turn;
			float   angle = -turn;
			float   cosAngle = cos(angle);
			float   sinAngle = sin(angle);
			LHPoint offset = focus - origin;
			float   x = offset.x;
			offset.x = cosAngle * x + -sinAngle * offset.z;
			offset.z = cosAngle * offset.z + sinAngle * x;
			focus = origin + offset;
		}
		Controller.FocusSmoother.Destination = focus;
		Controller.Distance.Destination = distance;
		Controller.Heading.Destination = heading;
		Controller.Pitch.Destination = pitch;
	}
	Controller.KeyMoving = moved;
}

void CameraModeNew1::Restart()
{
	Controller.Init(camera->CameraOriginZoomer.GetCurrentValue(), camera->CameraHeadingZoomer.GetCurrentValue());
	RotateAboutOrigin = false;
	Controller.SetOriginAndFocus(Origin, Focus);
	Controller.WrapHeading();
	Controller.StartBlend(true, 0.75f);
}

void CameraModeNew1Controller::FindBestFocus()
{
	int     range = 1 - (int)(-Distance.Current / 10.0f) / 2;
	int     cellX = (int)(FocusSmoother.Current.x / 10.0f);
	int     cellZ = (int)(FocusSmoother.Current.z / 10.0f);
	LHPoint best = FocusSmoother.Current;
	float   width = LHSys::TheSystem.screen.width;
	float   worst = width * width;
	float   bestScore = worst;
	float   count = 0.0f;
	for (int x = cellX - range; x < cellX + range; x++)
	{
		for (int z = cellZ - range; z < cellZ + range; z++)
		{
			EvaluateFocus(x, z, &bestScore, &best, &count);
		}
	}
	if (bestScore < worst && count > 0.0f)
	{
		FocusSmoother.Destination = best;
		Distance.Destination = (best - Origin).GetNorme();
	}
}

void CameraModeNew1Controller::EvaluateFocus(int x, int z, float* best_score, LHPoint* best_point, float* best_count) {}
