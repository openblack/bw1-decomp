#include "Collide.h"

#include <Lionhead/LH3DLib/development/LH3DMem.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For LHPoint */

#include "Game3DObject.h"
#include "Game.h"
#include "Landscape.h"
#include "Object.h"

NewCollideDescriptor::NewCollideDescriptor(Object* obj)
{
	LHMatrix backup = obj->Game3dObject->matrix;

	float scale = obj->GetScale();
	float y_angle = obj->GetYAngle();

	LHPoint point;

	point = GLandscape::ConvertMapCoordToLandscapePoint(obj->coords);
	obj->Game3dObject->SetPosition(point, y_angle, scale);
	Init(obj->Game3dObject);

	obj->Game3dObject->matrix = backup;
}

NewCollideDescriptor::~NewCollideDescriptor()
{
	if (array != NULL)
	{
		array->Free();
	}
	array = NULL;
}

void NewCollideDescriptor::Init(Game3DObject* obj)
{
	count = 0;
	array = NULL;

	NewCollide collide(obj);
	LH3DMesh*  mesh = obj->GetMesh();

	float radius = mesh->BoundingBox.DiagonalLength * obj->scale + 1.0f;

	MinX = (int)((collide.obj->position.x - radius) * 0.1f);
	MaxX = (int)((collide.obj->position.x + radius) * 0.1f);
	MinZ = (int)((collide.obj->position.z - radius) * 0.1f);
	MaxZ = (int)((collide.obj->position.z + radius) * 0.1f);

	if (MinX < 0)
	{
		MinX = 0;
		MaxX = max(0, MaxX);
	}
	if (MinZ < 0)
	{
		MinZ = 0;
		MaxZ = max(0, MaxZ);
	}

	ArrayIndex = 0;
	CurrentX = MinX;
	CurrentZ = MinZ;

	LHPoint local_c;
	local_c.SetNull();
	NewCollide::Obj CollideObj(7.1f, &local_c);

	int      extent_x = MaxX - MinX + 1;
	int      extent_z = MaxZ - MinZ + 1;
	uint32_t size = (uint32_t)(extent_x * extent_z);
	array = LH3DMem::Alloc(size);
	// memset(array, 0, size);

	for (int x = 0; x < extent_x; ++x)
	{
		if (x + MinX >= GGame::g_game->map.CellExtentZx[1])
		{
			continue;
		}

		CollideObj.position.x = (float)(5 + (x + MinX) * 10);

		for (int z = 0; z < extent_z; ++z)
		{
			if (z + MinZ >= GGame::g_game->map.CellExtentZx[0])
			{
				continue;
			}
			CollideObj.position.z = (float)(5 + (z + MinZ) * 10);

			if (CollideObj.Collide(collide.obj))
			{
				// array[z + x * extent_z] = 0xff;
				++count;
			}
		}
	}

	if (count == 0)
	{
		// array[extent_x / 2 * extent_z + extent_z / 2] = 0xff;
		count = 1;
	}
}

MapCell* NewCollideDescriptor::GetNext()
{
	if (ArrayIndex >= count)
	{
		return NULL;
	}

	while (CurrentX <= MaxX)
	{
		while (CurrentZ <= MaxZ)
		{
			// if (array[CurrentZ + CurrentX * (MaxZ - MinZ + 1)] != 0)
			{
				MapCell* cell = &GGame::g_game->map.cells[CurrentX][CurrentZ];
				++ArrayIndex;
				++CurrentZ;
				return cell;
			}
			++CurrentZ;
		}
		++CurrentX;
		CurrentZ = MinZ;
	}

	return NULL;
}
