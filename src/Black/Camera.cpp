#include <float.h> /* For _isnan */
#include <math.h>  /* For sqrt, sin, cos, fabs */
#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DAtmos.h>  /* For LH3DAtmos::GetWeatherSmooth */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For atan360, heading_from_direction_vector */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For LH3DTech */
#include <Lionhead/LHLib/ver5.0/LHWin.h>             /* For operator new(size_t, const char*, uint32_t) */

#include "Camera.h"
#include "CameraModeFollow.h"
#include "CameraModeFollowHeading.h"
#include "CameraModeFree.h"
#include "CameraModeNew3.h"
#include "CameraModePath.h"
#include "ColourConstants.h" /* For White */
#include "Game.h"
#include "GameOSFile.h"
#ifdef VERSION_BW1WCI
#include "HelpSystem.h" /* For HelpSystem::IsInScriptWideScreen */
#endif
#include "Interface.h"
#include "LandFeature.h"
#include "Landscape.h"
#include "LandAlignement.h"
#include "Utils.h"

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) + 2)
#endif

const float MetresPerMapCell = 10.0f;
const float CameraStartDistance = 120.0f;
const float CameraStartPitch = PI_F / 14;
const float ThingViewingDistanceScale = 8.0f;

static char DebugText[100];
static int  Unused = 0;

#define CAMERA_MODE_SAVE_ID_NONE           0
#define CAMERA_MODE_SAVE_ID_FOLLOW         70
#define CAMERA_MODE_SAVE_ID_FOLLOW_HEADING 72
#define CAMERA_MODE_SAVE_ID_FREE           101

#define CAMERA_MAP_CENTRE              (MAP_COORDS_METRES_PER_CELL * LAND_MAP_SIZE * 0.5f)
#define CAMERA_ORIGIN_MAX_RADIUS       3500.0f
#define CAMERA_ORIGIN_MAX_DISTANCE_SQ  (CAMERA_ORIGIN_MAX_RADIUS * CAMERA_ORIGIN_MAX_RADIUS)
#define CAMERA_ORIGIN_MAX_DISTANCE     (CAMERA_ORIGIN_MAX_RADIUS - 1.0f)
#define CAMERA_ORIGIN_RETURN_TIME      3.0f
#define CAMERA_START_ORIGIN_DISTANCE   70.0f
#define CAMERA_START_ORIGIN_PITCH      (30.0f * DEGREES_TO_RADIANS)
#define CAMERA_START_ORIGIN_HEADING    (2.749f + QUARTER_PI_F)
#define CAMERA_START_HEADING           2.749f
#define CAMERA_START_ZOOM_TIME         2.5f
#define CAMERA_DEFAULT_FOV             (70.0f * DEGREES_TO_RADIANS)
#define CAMERA_HEADING_FLAT_TOLERANCE  0.01
#define CAMERA_FLAT_PITCH              (88.2f * DEGREES_TO_RADIANS)
#define CAMERA_MIN_SEPARATION_SQ       0.001f
#define CAMERA_MIN_HEIGHT_ABOVE_LAND   1.0f
#define CAMERA_SEPARATION_NUDGE        1.0f
#define CAMERA_RADIUS_CELLS            (LAND_MAP_SIZE * 3)
#define CAMERA_FALLBACK_POSITION       1000.0f
#define CAMERA_MAX_TIME_DELTA          0.1f
#define CAMERA_MILLISECONDS_PER_SECOND 1000.0f
#define CAMERA_OVERCAST_PER_CLOUD      0.01f
#define CAMERA_ARRIVED_TOLERANCE_SQ    0.001f

// BW1W120 00441650
CameraMode* CreateModeFromSaveID(int save_id, GCamera* camera);

CameraMode* CreateModeFromSaveID(int save_id, GCamera* camera)
{
	switch (save_id)
	{
	case CAMERA_MODE_SAVE_ID_FOLLOW:
		return NEW(32) CameraModeFollow(camera, NULL, 1.0f, false, false);
	case CAMERA_MODE_SAVE_ID_FOLLOW_HEADING:
		return NEW(33) CameraModeFollowHeading(camera, NULL, 1.0f, 1.0f, 1.0f, 1.0f);
	case CAMERA_MODE_SAVE_ID_FREE:
		return NEW(34) CameraModeFree(camera);
	}
	return NULL;
}

bool32_t CameraMode::Arrived()
{
	LHPoint originDestination = GGame::g_game->GetCamera()->CameraOriginZoomer.GetDestination();
	LHPoint originCurrent = GGame::g_game->GetCamera()->CameraOriginZoomer.GetCurrentValue();
	float   originDistanceSq = originCurrent.GetDistanceSq(originDestination);
	LHPoint headingDestination = GGame::g_game->GetCamera()->CameraHeadingZoomer.GetDestination();
	LHPoint headingCurrent = GGame::g_game->GetCamera()->CameraHeadingZoomer.GetCurrentValue();
	float   headingDistanceSq = headingCurrent.GetDistanceSq(headingDestination);
	if (originDistanceSq < CAMERA_ARRIVED_TOLERANCE_SQ && headingDistanceSq < CAMERA_ARRIVED_TOLERANCE_SQ)
	{
		return true;
	}
	return false;
}

void CameraStore::Set(LHPoint& position, LHPoint& focus)
{
	Position.Set(position);
	Focus.Set(focus);
}

GCamera::GCamera(MapCoords& coords)
{
	if (false)
	{
		BLACK_PCH_REPEAT_8(TimeDelta = 0.0f;)
		BLACK_PCH_REPEAT_8(TimeDelta = 0.0f;)
		BLACK_PCH_REPEAT_8(TimeDelta = 0.0f;)
		BLACK_PCH_REPEAT_8(TimeDelta = 0.0f;)
		BLACK_PCH_REPEAT_8(TimeDelta = 0.0f;)
		TimeDelta = 0.0f;
	}
	IgnoreLandHeight = false;
	TimeDelta = 0.0f;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, pos);
	LHPoint origin;
	SetPointFromPointDistanceHeadingAndPitch(&origin, pos, CAMERA_START_ORIGIN_DISTANCE, CAMERA_START_ORIGIN_HEADING,
	                                         CAMERA_START_ORIGIN_PITCH);
	CameraOriginZoomer.SetPosition(origin);
	CameraHeadingZoomer.SetPosition(pos);
	SetPointFromPointDistanceHeadingAndPitch(&origin, pos, CameraStartDistance, CAMERA_START_HEADING, CameraStartPitch);
	CameraOriginZoomer.SetPosition(origin);
	CameraOriginZoomer.SetDestinationWithTime(origin, CAMERA_START_ZOOM_TIME);
	ModeCurrentIndex = -1;
	ScriptSlomoControl = false;
	SetCameraFov(GetDefaultFov(), 0.0f);
	NEW(116) CameraModeNew3(this);
}

bool32_t GCamera::CantExitCurrentMode()
{
	if (ModeCurrentIndex == -1)
	{
		return false;
	}
	return !modes[ModeCurrentIndex]->CanExit();
}

void GCamera::GetCameraStore(CameraStore& store)
{
	store.Position = CameraOriginZoomer.GetDestination();
	store.Focus = CameraHeadingZoomer.GetDestination();
}

void GCamera::SetCameraStore(CameraStore& store)
{
	CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(modes[ModeCurrentIndex]);
	if (mode)
	{
		mode->CameraView = store;
		mode->Restart();
	}
}

void GCamera::PopViewMode()
{
	modes[ModeCurrentIndex]->Cleanup();
	if (modes[ModeCurrentIndex])
	{
		delete modes[ModeCurrentIndex];
	}
	if (ModeCurrentIndex > 0)
	{
		ModeCurrentIndex--;
		modes[ModeCurrentIndex]->Restart();
		time = 0.0f;
		return;
	}
	ModeCurrentIndex = -1;
	NEW(159) CameraModeNew3(this);
	time = 0.0f;
}

void GCamera::SwitchToViewMode(CameraMode* mode)
{
	if (ModeCurrentIndex >= 0)
	{
		modes[ModeCurrentIndex]->Cleanup();
	}
	ModeCurrentIndex++;
	if (ModeCurrentIndex == CAMERA_MODE_STACK_SIZE)
	{
		ModeCurrentIndex = CAMERA_MODE_STACK_SIZE - 1;
		if (modes[0])
		{
			delete modes[0];
		}
		for (int i = 0; i < ModeCurrentIndex; i++)
		{
			modes[i] = modes[i + 1];
		}
	}
	modes[ModeCurrentIndex] = mode;
	time = 0.0f;
}

void GCamera::CheckStackedModesForValidity()
{
	bool32_t removed = false;
	for (int i = 0; i <= ModeCurrentIndex;)
	{
		CameraMode* mode = modes[i];
		if (mode->IsStillValid())
		{
			i++;
			continue;
		}
		if (i == ModeCurrentIndex)
		{
			removed = true;
			mode->Cleanup();
		}
		if (modes[i])
		{
			delete modes[i];
		}
		for (int j = i; j < ModeCurrentIndex; j++)
		{
			modes[j] = modes[j + 1];
		}
		ModeCurrentIndex--;
	}
	if (ModeCurrentIndex < 0)
	{
		NEW(219) CameraModeNew3(this);
	}
	else if (removed)
	{
		modes[ModeCurrentIndex]->Restart();
	}
}

void GCamera::InvalidatePathMode(Particle3DAnimWithCamera* anim)
{
	for (int i = 0; i <= ModeCurrentIndex; i++)
	{
		CameraModePath* path = dynamic_cast<CameraModePath*>(modes[i]);
		if (path && path->Anim == anim)
		{
			path->Valid = false;
		}
	}
}

float GCamera::CalculateRotationAngleY()
{
	return GetHeadingFromPoints(CameraOriginZoomer.GetCurrentValue(), CameraHeadingZoomer.GetCurrentValue());
}

void GCamera::GetPos(LHPoint& result)
{
	result = pos;
}

void GCamera::ToBeDeleted(bool32_t delete_now)
{
	for (int i = 0; i <= ModeCurrentIndex; i++)
	{
		if (modes[i])
		{
			delete modes[i];
		}
	}
	GameThingWithPos::ToBeDeleted(delete_now);
}

float GCamera::GetThingViewingDistance(GameThingWithPos* target)
{
	return target->GetHeight() * ThingViewingDistanceScale;
}

void GCamera::SetScriptSlomoControl(int control)
{
	ScriptSlomoControl = control;
}

void GCamera::Validate()
{
	for (int i = 0; i <= ModeCurrentIndex;)
	{
		modes[i++]->Validate();
	}
}

void GCamera::Update()
{
	float dt = GGame::g_game->GetCameraTimeInc() / CAMERA_MILLISECONDS_PER_SECOND;
	TimeDelta = min(CAMERA_MAX_TIME_DELTA, dt);
	time += TimeDelta;
	modes[ModeCurrentIndex]->Update();
	CameraOriginZoomer.Update(TimeDelta);
	CameraHeadingZoomer.Update(TimeDelta);

	LHPoint        origin = CameraOriginZoomer.GetCurrentValue();
	LHPoint        focus = CameraHeadingZoomer.GetCurrentValue();
	static LHPoint lastOrigin(CAMERA_FALLBACK_POSITION, 0.0f, CAMERA_FALLBACK_POSITION);
	static LHPoint lastFocus(CAMERA_FALLBACK_POSITION, 0.0f, CAMERA_FALLBACK_POSITION);
	if (!_isnan(origin.x) && !_isnan(origin.y) && !_isnan(origin.z))
	{
		lastOrigin = origin;
	}
	else
	{
		origin = lastOrigin;
	}
	if (!_isnan(focus.x) && !_isnan(focus.y) && !_isnan(focus.z))
	{
		lastFocus = focus;
	}
	else
	{
		focus = lastFocus;
	}
	float separationSq = origin.GetDistanceSq(focus);
	if (separationSq < CAMERA_MIN_SEPARATION_SQ)
	{
		origin.x -= CAMERA_SEPARATION_NUDGE;
		origin.y += CAMERA_SEPARATION_NUDGE;
	}

	LHPoint destination = CameraOriginZoomer.GetDestination();
	LHPoint centre(CAMERA_MAP_CENTRE, 0.0f, CAMERA_MAP_CENTRE);
	destination -= centre;
	float distanceSq = destination.GetNormeSq();
	if (distanceSq > CAMERA_ORIGIN_MAX_DISTANCE_SQ)
	{
		destination *= 1.0f / (destination.GetNorme() / CAMERA_ORIGIN_MAX_DISTANCE);
		destination += centre;
		CameraOriginZoomer.SetDestinationWithTime(destination, CAMERA_ORIGIN_RETURN_TIME);
	}

	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		origin = LHPoint(LH3DTech::GetCameraPosition());
		focus = LHPoint(LH3DTech::GetCameraTarget());
	}
	else if (GGame::g_game->ViewMode == GAME_VIEW_MODE_FALLING_SPELL_VIDEO)
	{
		origin = LHPoint(LH3DTech::GetCameraPosition());
		focus = LHPoint(LH3DTech::GetCameraTarget());
	}
	else if (LH3DIsland::RayCast(origin, focus, &pos.x, &pos.z))
	{
		pos.y = LH3DIsland::GetAltitude(pos);
	}
	float landHeight = LH3DIsland::GetAltitude(origin) + CAMERA_MIN_HEIGHT_ABOVE_LAND;
	landHeight -= origin.y;
	if (!dynamic_cast<CameraModeFree*>(ModeCurrentIndex < 0 ? NULL : modes[ModeCurrentIndex]) && !IgnoreLandHeight &&
	    landHeight > 0.0f)
	{
		origin.y += landHeight;
		focus.y += landHeight;
	}
	LH3DTech::SetNearClipping(LandFeature::GetNearClipping());
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_WORLD)
	{
		FovZoomer.Update(LH3DTech::GetGameTimeInc() / CAMERA_MILLISECONDS_PER_SECOND);
		LH3DTech::ChangeFov(FovZoomer.GetCurrentValue());
	}
	LHPoint oldPosition = *LH3DTech::GetCameraPosition();
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_WORLD)
	{
		if (!GGame::g_game->MyInterface()->IsPlayBack(0))
		{
			LH3DTech::UpdateCamera(origin, focus);
			CameraDirty = !(oldPosition == origin);
		}
	}
	else
	{
		CameraDirty = !(oldPosition == origin);
	}
	Weather = LH3DAtmos::GetWeatherSmooth(origin, true);
	GLandAlignement::Overcast = Weather.Cloud * CAMERA_OVERCAST_PER_CLOUD;
	UpdateGameThingWithPosData();
}

void GCamera::SetPointFromPointDistanceHeadingAndPitch(LHPoint* result, const LHPoint& point, float distance,
                                                       float heading, float pitch)
{
	float horizontal = cos(pitch);
	float z = cos(heading) * horizontal * distance + point.z;
	float y = sin(pitch) * distance + point.y;
	float x = sin(heading) * horizontal * distance + point.x;
	result->x = x;
	result->y = y;
	result->z = z;
}

float GCamera::GetHeadingFromPoints(const LHPoint& origin, const LHPoint& focus)
{
	LHPoint direction = origin - focus;
	if (fabs(direction.x) < CAMERA_HEADING_FLAT_TOLERANCE && fabs(direction.z) < CAMERA_HEADING_FLAT_TOLERANCE)
	{
		return 0.0f;
	}
	return PI_F - heading_from_direction_vector(direction);
}

void GCamera::GetHeadingAndPitchFromPoints(const LHPoint& origin, const LHPoint& focus, float* heading, float* pitch)
{
	LHPoint direction = origin - focus;
	if (fabs(direction.x) < CAMERA_HEADING_FLAT_TOLERANCE && fabs(direction.z) < CAMERA_HEADING_FLAT_TOLERANCE)
	{
		*heading = 0.0f;
		*pitch = CAMERA_FLAT_PITCH;
		return;
	}
	*heading = PI_F - heading_from_direction_vector(direction);
	float horizontal = sqrt(direction.x * direction.x + direction.z * direction.z);
	*pitch = atan360(horizontal, direction.y);
}

void GCamera::RotateOriginAroundFocus(LHPoint& origin, const LHPoint& focus, float heading_delta, float pitch_delta)
{
	LHPoint direction = focus - origin;
	float   heading;
	float   pitch;
	GetHeadingAndPitchFromPoints(origin, focus, &heading, &pitch);
	heading += heading_delta;
	pitch += pitch_delta;
	SetPointFromPointDistanceHeadingAndPitch(&origin, focus, direction.GetNorme(), heading, pitch);
}

void GCamera::SetPointAtUnitDistance(LHPoint& point, const LHPoint& origin)
{
	LHPoint direction = point - origin;
	direction.Normalise();
	point.Set(direction.x + origin.x, direction.y + origin.y, direction.z + origin.z);
}

float GCamera::GetDistanceFromOrigin()
{
	LHPoint current = CameraOriginZoomer.GetCurrentValue();
	LHPoint delta = pos - current;
	return delta.GetNorme();
}

void GCamera::ClipToCameraRadius(LHPoint* point)
{
	float   middle = (MetresPerMapCell * LAND_MAP_SIZE) * 0.5f;
	LHPoint centre(middle, 0.0f, middle);
	LHPoint offset = *point - centre;
	if (offset.GetNorme() > (MetresPerMapCell * CAMERA_RADIUS_CELLS) * 0.5f)
	{
		offset.SetSize((MetresPerMapCell * CAMERA_RADIUS_CELLS) * 0.5f);
		*point = centre + offset;
	}
}

bool32_t GCamera::TranslatePointToScreen(float* x, float* y, LHPoint* point)
{
	LHMatrix& matrix = LH3DTech::g_copy_of_world_to_clipping;
	*x = matrix._31 * point->z + matrix._11 * point->x + matrix._21 * point->y + matrix._41;
	*y = matrix._32 * point->z + matrix._12 * point->x + matrix._22 * point->y + matrix._42;
	float depth = matrix._33 * point->z + matrix._13 * point->x + matrix._23 * point->y + matrix._43;
	if (depth < LH3DTech::g_info_transform.NearClip)
	{
		return false;
	}
	float inverse = 1.0f / depth;
	*x = (inverse * *x + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
	*y = LH3DTech::g_info_transform.HalfRes.y - LH3DTech::g_info_transform.HalfRes.y * *y * inverse;
	return true;
}

void GCamera::GetFocusVector(LHPoint& vector)
{
	vector.x = LH3DTech::g_camera.LookAtVector.x;
	vector.y = LH3DTech::g_camera.LookAtVector.y;
	vector.z = LH3DTech::g_camera.LookAtVector.z;
}

float GCamera::GetDistanceSq(const LHPoint& point)
{
	return LH3DTech::g_camera.pos.GetDistanceSq(point);
}

float GCamera::GetDistance(const LHPoint& point)
{
	LHPoint cameraPosition;
	GetPosition(cameraPosition);
	return point.GetDistance(cameraPosition);
}

void GCamera::SetHeadingAndPitch(float heading, float pitch)
{
	CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(modes[ModeCurrentIndex]);
	if (mode)
	{
		mode->SetHeadingAndPitch(heading, pitch);
	}
}

uint32_t GCamera::GetGameAngle()
{
	return GUtils::ConvertAngle3DToGame(CalculateRotationAngleY());
}

void GCamera::SetFocus(const LHPoint& focus, float time)
{
	CameraModeNew3* mode = dynamic_cast<CameraModeNew3*>(modes[ModeCurrentIndex]);
	if (mode)
	{
		mode->SetFocus(focus);
	}
}

void GCamera::SetFocus(const MapCoords& coords, float time)
{
	LHPoint focus;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, focus);
	SetFocus(focus, time);
}

bool32_t GCamera::IsFollowing(GameThingWithPos* thing)
{
	CameraModeFollow* follow = dynamic_cast<CameraModeFollow*>(GetCurrentMode());
	if (follow && follow->Target == thing)
	{
		return true;
	}
	return false;
}

void GCamera::UpdateGameThingWithPosData()
{
	LHPoint position;
	GetPosition(position);
	GLandscape::ConvertLandscapePointToMapCoord(position, Pos);
	Pos.SetAltitude(position.y - LH3DIsland::GetHeightAsFloat(Pos.MapX(), Pos.MapZ()));
}

void GCamera::ClearCameraStack()
{
	while (ModeCurrentIndex >= 0)
	{
		CameraMode* mode = modes[0];
		if (ModeCurrentIndex == 0)
		{
			mode->Cleanup();
		}
		if (modes[0])
		{
			delete modes[0];
		}
		for (int i = 0; i < ModeCurrentIndex; i++)
		{
			modes[i] = modes[i + 1];
		}
		ModeCurrentIndex--;
	}
	NEW(647) CameraModeNew3(this);
}

bool32_t GCamera::Arrived()
{
	CameraMode* mode = GetCurrentMode();
	if (mode)
	{
		return mode->Arrived();
	}
	return true;
}

float GCamera::CalculatePitch()
{
	LHPoint origin;
	LHPoint focus;
	GetPosition(origin);
	GetFocus(focus);
	float heading;
	float pitch;
	GetHeadingAndPitchFromPoints(origin, focus, &heading, &pitch);
	return pitch;
}

bool32_t GCamera::Save(GameOSFile& file)
{
	CameraMode* currentMode = GGame::g_game->GetCamera()->GetCurrentMode();
	if (GameThingWithPos::Save(file))
	{
		WRITE_IT(file, pos);
		WRITE_IT(file, time);
		WRITE_IT(file, TimeDelta);
		WRITE_IT(file, ScriptSlomoControl);
		WRITE_IT(file, CameraDirty);
		WRITE_IT(file, Weather);
		WRITE_IT(file, CameraHeadingZoomer);
		WRITE_IT(file, CameraOriginZoomer);
		WRITE_IT(file, FovZoomer);
		WRITE_IT(file, IgnoreLandHeight);
		uint32_t saveId = modes[ModeCurrentIndex]->GetSaveID();
		file.WriteIt(saveId);
		modes[ModeCurrentIndex]->Save(&file);
		return true;
	}
	return false;
}

bool32_t GCamera::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadIt(pos);
		file.ReadIt(time);
		file.ReadIt(TimeDelta);
		file.ReadIt(ScriptSlomoControl);
		file.ReadIt(CameraDirty);
		file.ReadIt(Weather);
		file.ReadIt(CameraHeadingZoomer);
		file.ReadIt(CameraOriginZoomer);
		file.ReadIt(FovZoomer);
		file.ReadIt(IgnoreLandHeight);
		ClearCameraStack();
		uint32_t saveId;
		file.ReadIt(saveId);
		if (saveId != CAMERA_MODE_SAVE_ID_NONE)
		{
			CameraMode* mode = CreateModeFromSaveID(saveId, this);
			if (mode)
			{
				mode->Load(&file);
			}
		}
		return true;
	}
	return false;
}

float GCamera::GetDefaultFov()
{
	return CAMERA_DEFAULT_FOV;
}

void GCamera::SetCameraFov(float fov, float time)
{
	if (time != 0.0f)
	{
		FovZoomer.SetDestination(fov, time);
	}
	else
	{
		FovZoomer.SetPosition(fov);
	}
}

char* GCamera::GetDebugText()
{
	sprintf(DebugText, "Camera Pos(%.2f,%.2f,%.2f), Foc(%.2f,%.2f,%.2f)",
	        Pos.WholeX() * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL, Pos.Altitude(),
	        Pos.WholeZ() * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL, CameraHeadingZoomer.x.GetCurrentValue(),
	        CameraHeadingZoomer.y.GetCurrentValue(), CameraHeadingZoomer.z.GetCurrentValue());
	return DebugText;
}

void GCamera::SetPositionAndFocus(const LHPoint& position, const LHPoint& focus)
{
	LHPoint cameraPosition;
	LHPoint cameraFocus;
	GetPosition(cameraPosition);
	GetFocus(cameraFocus);
	if (cameraPosition == position && focus == cameraFocus)
	{
		CameraDirty = false;
		return;
	}
	CameraOriginZoomer.SetPosition(position);
	CameraHeadingZoomer.SetPosition(focus);
	CameraDirty = true;
}

#ifdef VERSION_BW1WCI
IMMERSION_EFFECT_TYPE CameraMode::GetCameraImmersion()
{
	return IMMERSION_EFFECT_TYPE_NONE;
}

bool32_t CameraMode::IsScriptedMode()
{
	return GGame::g_game->help_system->IsInScriptWideScreen();
}
#endif
