#include "CellSize.h" /* For CellSize, ahead of PI in .rdata */
#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "Game3DObject.h"

#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For LH3DMesh::GetPackedMesh */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DTech.h>      /* For LH3DTech::g_game_time_inc */

#include "Game.h"       /* For GGame */
#include "HelpSystem.h" /* For HelpSystem::SendFOVObject */
#include "Interface.h"  /* For GInterface::SendObjectDrawCollision */
#include "Landscape.h"  /* For GLandscape::ConvertMapCoordToLandscapePoint */
#include "MapCoords.h"  /* For struct MapCoords */

static float unused;

Game3DObject* Game3DObject::Create(LH3DObject::ObjectType type)
{
	return (Game3DObject*)LH3DObject::Create(type);
}

float Game3DObject::GetAltitudeFondation() const
{
	const LH3DBoundingBox& box = GetMesh()->BoundingBox;
	float                  baseAltitude = LH3DIsland::GetAltitude(LH3DMapCoords(matrix.GetPos().x, matrix.GetPos().z));
	float                  minAltitude = baseAltitude;
	for (uint32_t i = 0; i < 8; i++)
	{
		LHPoint corner;
		switch (i)
		{
		case 0:
			corner.x = box.centre.x + box.size.x;
			corner.y = box.centre.y + box.size.y;
			corner.z = box.centre.z + box.size.z;
			break;
		case 1:
			corner.x = box.centre.x - box.size.x;
			corner.y = box.centre.y + box.size.y;
			corner.z = box.centre.z + box.size.z;
			break;
		case 2:
			corner.x = box.centre.x + box.size.x;
			corner.y = box.centre.y + box.size.y;
			corner.z = box.centre.z - box.size.z;
			break;
		case 3:
			corner.x = box.centre.x + box.size.x;
			corner.y = box.centre.y - box.size.y;
			corner.z = box.centre.z + box.size.z;
			break;
		case 4:
			corner.x = box.centre.x - box.size.x;
			corner.y = box.centre.y + box.size.y;
			corner.z = box.centre.z - box.size.z;
			break;
		case 5:
			corner.x = box.centre.x + box.size.x;
			corner.y = box.centre.y - box.size.y;
			corner.z = box.centre.z - box.size.z;
			break;
		case 6:
			corner.x = box.centre.x - box.size.x;
			corner.y = box.centre.y - box.size.y;
			corner.z = box.centre.z - box.size.z;
			break;
		default:
			corner.x = box.centre.x - box.size.x;
			corner.y = box.centre.y - box.size.y;
			corner.z = box.centre.z + box.size.z;
			break;
		}
		matrix.TransformPoint(corner);
		float altitude = LH3DIsland::GetAltitude(LH3DMapCoords(corner.x, corner.z));
		minAltitude = min(altitude, minAltitude);
	}
	return minAltitude - baseAltitude;
}

Game3DObject* Game3DObject::Create(const MapCoords& coords, LH3DObject::ObjectType type, MESH_LIST mesh, float y_angle,
                                   float scale)
{
	Game3DObject* object = Create(type);
	if (object != NULL)
	{
		object->SetMesh(LH3DMesh::GetPackedMesh(mesh), NULL, NULL);
		LHPoint point;
		LHPoint unused0;
		LHPoint unused1;
		GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
		LH3DObject* object3d = object;
		object3d->LH3DObject::SetPosition(point, y_angle, scale);
	}
	return object;
}

bool32_t Game3DObject::GetDoorPosition(LHPoint* position) const
{
	return GetDoorPos(position) != 0;
}

bool32_t Game3DObject::GetDoorPosition(MapCoords* position) const
{
	LHPoint point;
	if (GetDoorPosition(&point) == TRUE)
	{
		GLandscape::ConvertLandscapePointToMapCoord(point, *position);
		return TRUE;
	}
	return FALSE;
}

bool32_t Game3DObject::GetSpecialPos(unsigned long index, LHPoint& point) const
{
	return GetExtraPos(index, &point) != 0;
}

bool32_t Game3DObject::GetSpecialPos(unsigned long index, MapCoords& coords) const
{
	LHPoint point;
	if (GetSpecialPos(index, point))
	{
		coords = MapCoords(point);
		return TRUE;
	}
	return FALSE;
}

bool32_t Game3DObject::GetSpecialPos(unsigned long index, MapCoords& coords, float& y_angle)
{
	LHMatrix extra;
	float    xAngle;
	float    zAngle;
	if (GetExtraPos(index, &extra))
	{
		LHPoint pos(extra.m[9], extra.m[10], extra.m[11]);
		extra.GetYXZ(&y_angle, &xAngle, &zAngle);
		coords = MapCoords(pos);
		if (IsStaticMorphable())
		{
			coords.altitude += LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z)) - matrix.GetPos().y;
		}
		return TRUE;
	}
	return FALSE;
}

bool32_t Game3DObject::GetSpecialPos(unsigned long index, MapCoords& coords, float& y_angle, float& x_angle,
                                     float& z_angle)
{
	LHMatrix extra;
	if (GetExtraPos(index, &extra))
	{
		LHPoint pos(extra.m[9], extra.m[10], extra.m[11]);
		extra.GetYXZ(&y_angle, &x_angle, &z_angle);
		coords = MapCoords(pos);
		if (IsStaticMorphable())
		{
			coords.altitude += LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z)) - matrix.GetPos().y;
		}
		return TRUE;
	}
	return FALSE;
}

#ifndef VERSION_BW1W100
bool32_t Game3DObject::IsPointInsideXZ(const LHPoint& point)
{
	LHPoint local;
	local.x = point.x;
	local.z = point.z;
	const LH3DBoundingBox& box = GetMesh()->BoundingBox;
	local.x -= matrix.GetPos().x;
	local.z -= matrix.GetPos().z;
	local.x -= box.centre.x;
	local.z -= box.centre.z;
	if (local.x <= box.size.x && local.x >= -box.size.x && local.z <= box.size.z && -box.size.z <= local.z)
	{
		return true;
	}
	return false;
}

void __fastcall Game3DObject::SetPositionAndXZYScale(const MapCoords& coords, float y_angle, float scale,
                                                     float xz_scale, float y_scale)
{
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
	SetPositionAndXZYScale(point, y_angle, scale, xz_scale, y_scale);
}

void __fastcall Game3DObject::SetPositionAndXZYScale(const LHPoint& point, float y_angle, float scale, float xz_scale,
                                                     float y_scale)
{
	LH3DMesh::GetPackedMesh(0);
	scale *= xz_scale;
	if (y_angle != 0.0f)
	{
		if (scale != 1.0f)
		{
			matrix.SetScale(scale);
			matrix.PostTranslation(point);
			matrix.RotateY(y_angle);
		}
		else
		{
			matrix.Translation(point);
			matrix.RotateY(y_angle);
		}
	}
	else
	{
		if (scale != 1.0f)
		{
			matrix.SetScale(scale);
			matrix.PostTranslation(point);
		}
		else
		{
			matrix.Translation(point);
		}
	}
	this->scale = scale;
	this->y_angle = y_angle;
	float ratio = y_scale / xz_scale;
	matrix.m[3] *= ratio;
	matrix.m[4] *= ratio;
	matrix.m[5] *= ratio;
}

void Game3DObject::FUN_0063b5c0(int param_1) {}
#endif

void __fastcall Game3DObject::AddForDrawing(Object* object)
{
	int snowLevel = SnowLevel;
	// TODO: name the Flags2 bits 0x20 and 0x40
	if (Flags2 & 0x20)
	{
		SetSnowlevel(0);
	}
	else
	{
		if (!(Flags2 & 0x40))
		{
			SetSnowlevel(*(LHPoint*)&matrix.m[9]);
		}
		int step = (int)LH3DTech::g_game_time_inc >> 4;
		if (SnowLevel > snowLevel + step)
		{
			SetSnowlevel(snowLevel + step);
		}
		if (SnowLevel < snowLevel - step)
		{
			SetSnowlevel(snowLevel - step);
		}
	}
	AddDrawing();
	if (g_b_last_on_screen && object != NULL)
	{
		GGame::g_game->help_system->SendFOVObject(object, g_last_distance);
		if (g_last_selected_box)
		{
			GGame::g_game->MyInterface()->SendObjectDrawCollision(object, 0.0f, NULL);
		}
	}
}

void __fastcall Game3DObject::SetPosition(const MapCoords& coords, float x_angle, float y_angle, float z_angle,
                                          float scale)
{
	this->scale = scale;
	this->y_angle = y_angle;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, *(LHPoint*)&matrix.m[9]);
	matrix.SetYXZMatrixOnly(y_angle, x_angle, z_angle);
	matrix.PreScale(scale, scale, scale);
}

void __fastcall Game3DObject::SetPosition(LHPoint& point, float x_angle, float y_angle, float z_angle, float scale)
{
	this->scale = scale;
	this->y_angle = y_angle;
	*(LHPoint*)&matrix.m[9] = point;
	matrix.SetYXZMatrixOnly(y_angle, x_angle, z_angle);
	matrix.PreScale(scale, scale, scale);
}

void __fastcall Game3DObject::AddJustForCollide(Object* object)
{
	g_last_selected_box = FALSE;
	LH3DMesh* mesh = GetMesh();
	mesh->BoundingBox.CheckRegionOnScreen(this);
	if (g_b_last_on_screen && object != NULL)
	{
		GGame::g_game->help_system->SendFOVObject(object, g_last_distance);
		if (g_last_selected_box)
		{
			GGame::g_game->MyInterface()->SendObjectDrawCollision(object, 0.0f, NULL);
		}
	}
}
