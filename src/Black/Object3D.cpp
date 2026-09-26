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
			corner = LHPoint(box.centre.x + box.size.x, box.centre.y + box.size.y, box.centre.z + box.size.z);
			break;
		case 1:
			corner = LHPoint(box.centre.x - box.size.x, box.centre.y + box.size.y, box.centre.z + box.size.z);
			break;
		case 2:
			corner = LHPoint(box.centre.x + box.size.x, box.centre.y + box.size.y, box.centre.z - box.size.z);
			break;
		case 3:
			corner = LHPoint(box.centre.x + box.size.x, box.centre.y - box.size.y, box.centre.z + box.size.z);
			break;
		case 4:
			corner = LHPoint(box.centre.x - box.size.x, box.centre.y + box.size.y, box.centre.z - box.size.z);
			break;
		case 5:
			corner = LHPoint(box.centre.x + box.size.x, box.centre.y - box.size.y, box.centre.z - box.size.z);
			break;
		case 6:
			corner = LHPoint(box.centre.x - box.size.x, box.centre.y - box.size.y, box.centre.z - box.size.z);
			break;
		default:
			corner = LHPoint(box.centre.x - box.size.x, box.centre.y - box.size.y, box.centre.z + box.size.z);
			break;
		}
		LHPoint world = matrix * corner;
		float   altitude = LH3DIsland::GetAltitude(LH3DMapCoords(world.x, world.z));
		if (altitude < minAltitude)
		{
			minAltitude = altitude;
		}
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
		GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
		LH3DObject* object3d = object;
		object3d->SetPosition(point, y_angle, scale);
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
	if (!GetExtraPos(index, &extra))
	{
		return FALSE;
	}
	LHPoint pos = extra.GetPos();
	float   xAngle;
	float   zAngle;
	extra.GetYXZ(&y_angle, &xAngle, &zAngle);
	coords = MapCoords(pos);
	if (IsStaticMorphable())
	{
		coords.altitude += LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z)) - matrix.GetPos().y;
	}
	return TRUE;
}

bool32_t Game3DObject::GetSpecialPos(unsigned long index, MapCoords& coords, float& y_angle, float& x_angle,
                                     float& z_angle)
{
	LHMatrix extra;
	if (!GetExtraPos(index, &extra))
	{
		return FALSE;
	}
	LHPoint pos = extra.GetPos();
	extra.GetYXZ(&y_angle, &x_angle, &z_angle);
	coords = MapCoords(pos);
	if (IsStaticMorphable())
	{
		coords.altitude += LH3DIsland::GetAltitude(LH3DMapCoords(pos.x, pos.z)) - matrix.GetPos().y;
	}
	return TRUE;
}

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
	scale *= xz_scale;
	LH3DObject::SetPosition(point, y_angle, scale);
	float ratio = y_scale / xz_scale;
	matrix.m[3] *= ratio;
	matrix.m[4] *= ratio;
	matrix.m[5] *= ratio;
}

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
	matrix.m[0] *= scale;
	matrix.m[1] *= scale;
	matrix.m[2] *= scale;
	matrix.m[3] *= scale;
	matrix.m[4] *= scale;
	matrix.m[5] *= scale;
	matrix.m[6] *= scale;
	matrix.m[7] *= scale;
	matrix.m[8] *= scale;
}

void __fastcall Game3DObject::SetPosition(LHPoint& point, float x_angle, float y_angle, float z_angle, float scale)
{
	this->scale = scale;
	this->y_angle = y_angle;
	*(LHPoint*)&matrix.m[9] = point;
	matrix.SetYXZMatrixOnly(y_angle, x_angle, z_angle);
	matrix.m[0] *= scale;
	matrix.m[1] *= scale;
	matrix.m[2] *= scale;
	matrix.m[3] *= scale;
	matrix.m[4] *= scale;
	matrix.m[5] *= scale;
	matrix.m[6] *= scale;
	matrix.m[7] *= scale;
	matrix.m[8] *= scale;
}

void __fastcall Game3DObject::AddJustForCollide(Object* object)
{
	g_last_selected_box = FALSE;
	GetMesh()->BoundingBox.CheckRegionOnScreen(this);
	if (g_b_last_on_screen && object != NULL)
	{
		GGame::g_game->help_system->SendFOVObject(object, g_last_distance);
		if (g_last_selected_box)
		{
			GGame::g_game->MyInterface()->SendObjectDrawCollision(object, 0.0f, NULL);
		}
	}
}
