#include "HelpDude.h"

#include <math.h>
#include <string.h>
#include <windows.h>

#include <Lionhead/LH3DLib/development/LH3DTech.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#include "Audio.h"
#include "Game.h"
#include "Global.h"
#include "HelpSystem.h"

float HoverZone::Feel(float x, float y)
{
	float result = 0.0f;
	if (Strength != 0.0f)
	{
		x -= X;
		if (fabs(x) <= OuterRadius)
		{
			y -= Y;
			if (fabs(y) <= OuterRadius)
			{
				x = x * x + y * y;
				if (x <= OuterRadius * OuterRadius)
				{
					if (x < InnerRadius * InnerRadius)
					{
						return Strength;
					}
					result = (1.0f - (sqrt(x) - InnerRadius) / (OuterRadius - InnerRadius)) * Strength;
				}
			}
		}
	}
	return result;
}

void HelpDude::Sethoverx(float x, float time, bool clamp)
{
	if (!HoverLocked)
	{
		if (clamp)
		{
			x = x > -0.75f ? (x < 0.75f ? x : 0.75f) : -0.75f;
		}
		// TODO: The target inlines both Zoomer methods, including the inverse-matrix calculation.
		if (time < 0.001f)
		{
			HoverX.SetPosition(x);
		}
		else
		{
			HoverX.SetDestinationWithSpeedAndTime(x, 0.0f, time);
		}
	}
}

void HelpDude::Sethovery(float y, float time, bool clamp)
{
	if (!HoverLocked)
	{
		if (clamp)
		{
			y = y > -0.6f ? (y < 0.6f ? y : 0.6f) : -0.6f;
		}
		// TODO: Restore the original Zoomer inlines in its owning header.
		if (time < 0.001f)
		{
			HoverY.SetPosition(y);
		}
		else
		{
			HoverY.SetDestinationWithSpeedAndTime(y, 0.0f, time);
		}
	}
}

float HelpDude::Feel(float x, float y)
{
	float verticalLimit = 0.6f;
	if (GGame::g_game->help_system->field_0x45e8 != 0)
	{
		verticalLimit = 0.6f - 0.15f;
	}
	float result = 0.0f;
	if (fabs(x) > 0.75f)
	{
		result = fabs(x) - 0.75f;
	}
	if (fabs(y) * 1.3333334f > verticalLimit)
	{
		verticalLimit = fabs(y) * 1.3333334f - verticalLimit;
		result += verticalLimit + verticalLimit;
	}
	result = result * result * -250.0f;
	for (int i = 0; i < 6; ++i)
	{
		result += HoverAreas[i].Feel(x, y);
	}
	return result;
}

void HelpDude::UpdateHoverZ(float min_z)
{
	if (FlyingToGimme != 0 || (AnimFlags & 0x40) != 0)
	{
		HoverZ.SetDestinationWithSpeedAndTime(0.0f, 0.0f, 0.5f);
		return;
	}
	if (OtherDude != NULL)
	{
		float x = HoverX.CurrentValue - OtherDude->HoverX.CurrentValue;
		float y = HoverY.CurrentValue - OtherDude->HoverY.CurrentValue;
		float distanceSquared = x * x + y * y;
		OtherDudeDistance = sqrt(distanceSquared);
		OtherDude->OtherDudeDistance = OtherDudeDistance;
		// Rounded constants from 00900c58 / 00900c54; the original defining expression is unknown.
		if (distanceSquared < 0.81000006f)
		{
			float scaledDistance = OtherDudeDistance * 1.111111f;
			float z = 1.0f - scaledDistance * scaledDistance;
			OtherDude->HoverZ.SetDestinationWithSpeedAndTime(z * -0.5f, 0.0f, 1.0f);
			if (z < min_z)
			{
				z = min_z;
			}
			HoverZ.SetDestinationWithSpeedAndTime(z, 0.0f, 1.0f);
			return;
		}
	}
	// TODO: Target inlines this call at both the no-other-dude and distant-dude branches.
	HoverZ.SetDestinationWithSpeedAndTime(0.0f, 0.0f, 1.0f);
}

void EyePositions::Interp(EyePositions* start, EyePositions* end, float amount)
{
	for (int i = 0; i < 2; ++i)
	{
		field_0x0[i] = (end->field_0x0[i] - start->field_0x0[i]) * amount + start->field_0x0[i];
		field_0x8[i] = (end->field_0x8[i] - start->field_0x8[i]) * amount + start->field_0x8[i];
		field_0x10[i] = (end->field_0x10[i] - start->field_0x10[i]) * amount + start->field_0x10[i];
		Closure[i] = (end->Closure[i] - start->Closure[i]) * amount + start->Closure[i];
	}
}

void HelpDudeEmotion::Interp(HelpDudeEmotion* start, HelpDudeEmotion* end, float amount)
{
	Eyes.Interp(&start->Eyes, &end->Eyes, amount);
	Blink.Interp(&start->Blink, &end->Blink, amount);
	field_0x2c = (end->field_0x2c - start->field_0x2c) * amount + start->field_0x2c;
	field_0x30 = (end->field_0x30 - start->field_0x30) * amount + start->field_0x30;
	field_0x34 = (end->field_0x34 - start->field_0x34) * amount + start->field_0x34;
	field_0x38 = (end->field_0x38 - start->field_0x38) * amount + start->field_0x38;
	field_0x3c = (end->field_0x3c - start->field_0x3c) * amount + start->field_0x3c;
}

void EyeBlinker::Interp(EyeBlinker* start, EyeBlinker* end, float amount)
{
	MinDelay = (end->MinDelay - start->MinDelay) * amount + start->MinDelay;
	MaxDelay = (end->MaxDelay - start->MaxDelay) * amount + start->MaxDelay;
	Duration = (end->Duration - start->Duration) * amount + start->Duration;
}

int HelpDude::IsTalkingWithDelay()
{
	if (IsTalking())
	{
		return 1;
	}
	return GetTickCount() - LastTalkingTime < 200;
}

void HelpDude::CheckSmokeTrigger(float position)
{
	if (DudeType == 0)
	{
		if (position > 0.16f && position < 0.25f)
		{
			SmokeTriggered = 1;
		}
	}
	else
	{
		if (position > 0.13f && position < 0.25f)
		{
			SmokeTriggered = 1;
		}
		if (position > 0.55f && position < 0.7f)
		{
			SmokeTriggered = 1;
		}
	}
}

void HelpDude::SetPos(const LHCoord& position)
{
	int halfWidth = LHSys::GetScreen().width >> 1;
	int halfHeight = LHSys::GetScreen().height >> 1;
	HoverX.SetPosition((float)(position.x - halfWidth) / (float)halfWidth);
	HoverY.SetPosition((float)(position.y - halfHeight) / (float)halfWidth);
	ResetTrail();
	SetState(HELPDUDESTATE_0x4, 0);
}

void HelpDude::ResetTrail()
{
	Trail.Positions[0].x = HoverX.CurrentValue;
	Trail.Positions[0].y = HoverY.CurrentValue;
	Trail.Positions[0].z = HoverZ.CurrentValue;
	// The original forward copy repeats the first point through all 32 history entries.
	// An overlapping memcpy is undefined C++; express the propagation explicitly.
	for (int i = 1; i < 32; ++i)
	{
		Trail.Positions[i] = Trail.Positions[i - 1];
	}
}

void HelpDude::UpdateClingEdge()
{
	if (State != HELPDUDESTATE_0x120)
	{
		if (fabs(ClingY * 1.2820513f) < fabs(ClingX))
		{
			if (ClingX > 0.0f)
			{
				ClingEdge = 3;
				ClingX = 1.04f;
			}
			else
			{
				ClingEdge = 1;
				ClingX = -1.04f;
			}
		}
		else if (ClingY > 0.0f)
		{
			ClingEdge = 0;
			ClingY = 0.78f;
		}
		else
		{
			ClingEdge = 2;
			ClingY = -0.78f;
		}
	}
}

void HelpDude::FlyTo2D(const LHCoord& position, float time, bool clamp)
{
	int   halfWidth = LHSys::GetScreen().width >> 1;
	int   halfHeight = LHSys::GetScreen().height >> 1;
	float x = (float)(position.x - halfWidth) / (float)halfWidth;
	float y = (float)(position.y - halfHeight) / (float)halfWidth;
	Sethoverx(x, time, clamp);
	Sethovery(y, time, clamp);
	ClingX = x;
	ClingY = y;
	UpdateClingEdge();
	SetState(HELPDUDESTATE_0x4, 0);
}

void HelpDude::SetCling(float x, float y, bool instant)
{
	ClingX = x;
	TargetX = x;
	ClingY = y;
	TargetY = y;
	UpdateClingEdge();
	if (instant)
	{
		SetPos(GetHomeIdx(ClingEdge));
		ResetTrail();
	}
	SetState(HELPDUDESTATE_0x100, 0);
}

bool HelpDude::IsAnimPlaying()
{
	return ((State == HELPDUDESTATE_0x80 || PreviousState == HELPDUDESTATE_0x80) && NextState == HELPDUDESTATE_0x200) ||
	       State == HELPDUDESTATE_0x200 || PreviousState == HELPDUDESTATE_0x200;
}

void HelpDude::PlayAnimAtPos(float x, float y, ANIMLIST anim, float speed)
{
	if (anim == ANIM_STAND && IsAnimPlaying())
	{
		SetState(HELPDUDESTATE_0x4, 0);
		return;
	}
	TargetY = y;
	TargetX = x;
	NextState = HELPDUDESTATE_0x200;
	AnimSpeed = speed;
	Anim = anim;
	SetState(HELPDUDESTATE_0x80, 0);
}

void HelpDude::PointAt2D(const LHCoord& position)
{
	field_0x35a4 = false;
	int halfWidth = LHSys::GetScreen().width >> 1;
	int halfHeight = LHSys::GetScreen().height >> 1;
	PointX = (float)(position.x - halfWidth) / (float)halfWidth;
	PointY = (float)(position.y - halfHeight) / (float)halfWidth;
	SetState(HELPDUDESTATE_0x8, 0);
}

void HelpDude::LookAt(LHPoint* point)
{
	HasLookPoint = 0;
	if (point != NULL)
	{
		LookPoint = *point;
		HasLookPoint = 1;
	}
}

void HelpDude::LookAtCamera()
{
	LookAt(&LH3DTech::g_camera);
	EyeLookAt(NULL);
}

void HelpDude::LookAtOtherGuy()
{
	if (OtherDude != NULL)
	{
		LHPoint point;
		point.x = OtherDude->Matrix.m[9];
		point.y = OtherDude->Matrix.m[10];
		point.z = OtherDude->Matrix.m[11];
		// TODO: Original passes the matrix translation directly; LHMatrix currently exposes only m[].
		LookAt(&point);
		EyeLookAt(NULL);
	}
}

void HelpDude::EyeLookAt(LHPoint* point)
{
	HasEyeLookPoint = 0;
	if (point != NULL)
	{
		EyeLookPoint = *point;
		HasEyeLookPoint = 1;
	}
}

void HelpDude::EyeLookAtCamera()
{
	EyeLookAt(&LH3DTech::g_camera);
}

void HelpDude::EyeLookAtOtherGuy()
{
	if (OtherDude != NULL)
	{
		LHPoint point;
		point.x = OtherDude->Matrix.m[9];
		point.y = OtherDude->Matrix.m[10];
		point.z = OtherDude->Matrix.m[11];
		EyeLookAt(&point);
	}
}

LH_AudioBank* HelpDude::GetSoundFXBank()
{
	return GGlobal::Global.audio->AudioBanks[1];
}

void HelpDude::ResetLipSyncAnimList()
{
	memset(LipSyncAnimList, 0, sizeof(LipSyncAnimList));
}

void HelpDude::FlyToGimme()
{
	if (DudeType != 0)
	{
		Sethoverx(0.15f, 0.4f, true);
		Sethovery(0.0f, 0.4f, true);
	}
	else
	{
		Sethoverx(-0.15f, 0.4f, true);
		Sethovery(0.1f, 0.4f, true);
	}
	FlyingToGimme = 1;
}

void HelpDude::SetEmotion(int emotion, float time)
{
	field_0x3488 = 0;
	EmotionDuration = time > 0.0f ? time : 0.0f;
	Emotion = emotion;
}

float HelpDude::Smoothify(float amount)
{
	if (amount < 0.0f)
	{
		return 0.0f;
	}
	if (amount > 1.0f)
	{
		return 1.0f;
	}
	return (1.0f - cos(amount * 3.1415927f)) * 0.5f;
}

LHCoord HelpDude::GetHomeIdx(int edge)
{
	int     halfWidth = LHSys::GetScreen().width >> 1;
	int     halfHeight = LHSys::GetScreen().height >> 1;
	LHCoord result;
	switch (edge)
	{
	case 0:
		result.x = halfWidth;
		result.y = halfHeight * 3;
		break;
	case 1:
		result.x = -halfWidth;
		result.y = halfHeight;
		break;
	case 2:
		result.x = halfWidth;
		result.y = -halfHeight;
		break;
	default:
		result.x = halfWidth * 3;
		result.y = halfHeight;
		break;
	}
	return result;
}

void HelpDude::UpdateHoverZones(float time, int param_2)
{
	for (int i = 0; i < 4; ++i)
	{
		HelpDudeHoverZone& zone = HoverZones[i];
		zone.InnerRadius += time * zone.InnerSpeed;
		if (zone.InnerRadius < 0.0f)
		{
			zone.InnerRadius = 0.0f;
		}
		zone.OuterRadius += time * zone.OuterSpeed;
		if (zone.OuterRadius < 0.0f)
		{
			zone.OuterRadius = 0.0f;
		}
	}
}

void HelpDude::Update(float time, int param_2, float param_3, int param_4, int param_5)
{
	Update1(time, param_2, param_3, param_4, param_5);
	Update2(time, param_2, param_3, param_4, param_5);
}

void HelpDude::Update2(float time, int param_2, float param_3, int param_4, int param_5)
{
	if (HasLookPoint != 0 && (AnimFlags & 1) == 0)
	{
		CalcHeadPos(Matrix, LookPoint, HeadBone);
	}
	else
	{
		field_0x34bc.x = 0.0f;
		field_0x34bc.y = 0.0f;
		field_0x34bc.z = 0.0f;
	}
	float speed = 4.5f;
	if (DudeType == 0)
	{
		speed = 1.35f;
	}
	LHPoint delta;
	delta.x = (field_0x34bc.x - field_0x34b0.x) * 0.95f;
	delta.y = (field_0x34bc.y - field_0x34b0.y) * 0.95f;
	delta.z = (field_0x34bc.z - field_0x34b0.z) * 0.95f;
	time *= speed;
	if (delta.x > time)
	{
		delta.x = time;
	}
	else if (delta.x < -time)
	{
		delta.x = -time;
	}
	if (delta.y > time)
	{
		delta.y = time;
	}
	else if (delta.y < -time)
	{
		delta.y = -time;
	}
	if (delta.z > time)
	{
		delta.z = time;
	}
	else if (delta.z < -time)
	{
		delta.z = -time;
	}
	field_0x34b0.x += delta.x;
	field_0x34b0.y += delta.y;
	field_0x34b0.z += delta.z;
	if (field_0x35dc == 0.0f)
	{
		ApplyHeadMovement((State & 8) != 0);
	}
	if (param_5 != 0)
	{
		FinishUpdate();
	}
}

void HelpDude::FinishUpdate()
{
	FinishAnimStack(Matrix);
}

void HelpDude::SetHoverArea(float x, float y, float inner_radius, float outer_radius, float strength, int index)
{
	HoverAreas[index].Strength = strength;
	HoverAreas[index].OuterRadius = outer_radius;
	HoverAreas[index].InnerRadius = inner_radius;
	HoverAreas[index].X = x;
	HoverAreas[index].Y = y;
}

EyePositions::EyePositions()
{
	field_0x0[1] = field_0x0[0] = 1.0f;
	field_0x8[1] = field_0x8[0] = 1.0f;
	field_0x10[1] = field_0x10[0] = 0.0f;
	Closure[1] = Closure[0] = 0.0f;
}

EyeBlinker::EyeBlinker()
{
	MinDelay = 5.0f;
	MaxDelay = 10.0f;
	Duration = 0.5f;
}

HelpDudeEmotion::HelpDudeEmotion()
{
	field_0x2c = 1.0f;
	field_0x30 = 1.0f;
	field_0x34 = 0.0f;
	field_0x38 = 0.0f;
	field_0x3c = 0.0f;
}

int HelpDude::Get3DSoundPos(LHPoint* position)
{
	position->x = Matrix.m[9];
	position->y = Matrix.m[10];
	position->z = Matrix.m[11];
	return 1;
}

HelpDude::~HelpDude()
{
	Uninit(false);
}
