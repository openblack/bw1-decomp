#include "Collide.h"

#include <Lionhead/LH3DLib/development/LH3DMem.h>
#include <Lionhead/LH3DLib/development/LH3DMesh.h> /* For LHPoint */

#include "Game3DObject.h"
#include "Game.h"
#include "Landscape.h"
#include "Object.h"

NewCollideDescriptor::NewCollideDescriptor(Object* obj)
{
	LHMatrix backup = obj->game_3d_object->matrix;

	float scale = obj->GetScale();
	float y_angle = obj->GetYAngle();

	LHPoint point;

	point = GLandscape::ConvertMapCoordToLandscapePoint(obj->coords);
	obj->game_3d_object->SetPosition(point, y_angle, scale);
	Init(obj->game_3d_object);

	obj->game_3d_object->matrix = backup;
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

	float radius = mesh->bounding_box.diagonal_length * obj->scale + 1.0f;

	min_x = (int)((collide.obj->position.x - radius) * 0.1f);
	max_x = (int)((collide.obj->position.x + radius) * 0.1f);
	min_z = (int)((collide.obj->position.z - radius) * 0.1f);
	max_z = (int)((collide.obj->position.z + radius) * 0.1f);

	if (min_x < 0)
	{
		min_x = 0;
		max_x = max(0, max_x);
	}
	if (min_z < 0)
	{
		min_z = 0;
		max_z = max(0, max_z);
	}

	array_index = 0;
	current_x = min_x;
	current_z = min_z;

	LHPoint local_c;
	local_c.SetNull();
	NewCollide::Obj collide_obj(7.1f, &local_c);

	int      extent_x = max_x - min_x + 1;
	int      extent_z = max_z - min_z + 1;
	uint32_t size = (uint32_t)(extent_x * extent_z);
	array = LH3DMem::Alloc(size);
	// memset(array, 0, size);

	for (int x = 0; x < extent_x; ++x)
	{
		if (x + min_x >= GGame::g_game->map.cell_extent_zx[1])
		{
			continue;
		}

		collide_obj.position.x = (float)(5 + (x + min_x) * 10);

		for (int z = 0; z < extent_z; ++z)
		{
			if (z + min_z >= GGame::g_game->map.cell_extent_zx[0])
			{
				continue;
			}
			collide_obj.position.z = (float)(5 + (z + min_z) * 10);

			if (collide_obj.Collide(collide.obj))
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
	if (array_index >= count)
	{
		return NULL;
	}

	while (current_x <= max_x)
	{
		while (current_z <= max_z)
		{
			// if (array[current_z + current_x * (max_z - min_z + 1)] != 0)
			{
				MapCell* cell = &GGame::g_game->map.cells[current_x][current_z];
				++array_index;
				++current_z;
				return cell;
			}
			++current_z;
		}
		++current_x;
		current_z = min_z;
	}

	return NULL;
}
