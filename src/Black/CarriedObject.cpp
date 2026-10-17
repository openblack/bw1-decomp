#include "CarriedObject.h"

#include <Lionhead/LH3DLib/development/LH3DMesh.h>   /* For LH3DMesh::GetPackedMesh */
#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For class LH3DObject */
#include <chlasm/AllMeshes.h>                        /* For enum MESH_LIST */

LH3DObject* CarriedObject::Objects[CARRIED_OBJECT_LAST];

void CarriedObject::Init()
{
	LH3DObject* object;

	Objects[CARRIED_OBJECT_NONE] = NULL;
	Objects[CARRIED_OBJECT_NO_CHANGE] = NULL;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_AXE), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_AXE] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_FISHINGROD), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_FISHING_ROD] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_CROOK), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_CROOK] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_SAW), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_SAW] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BAG), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_BAG] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BALL), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_BALL] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_HAMMER), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_HAMMER] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_MALLET_HEAVY), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_MALLET_HEAVY] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_SCYTHE), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_SCYTHE] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_SPADE), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_SPADE] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_WOOD_INHAND), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_WOOD] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BRANCH_EVERGREEN_INHAND), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_TREE_1] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BRANCH_FRUIT_INHAND), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_TREE_2] = object;

	object = LH3DObject::Create(LH3DObject::STATIC);
	object->SetMesh(LH3DMesh::GetPackedMesh(MSH_O_BRANCH_HARDWOOD_INHAND), NULL, NULL);
	object->SetDynamicLighting(true);
	Objects[CARRIED_OBJECT_TREE_3] = object;
}

void CarriedObject::Reset()
{
	for (LH3DObject** object = Objects; object < &Objects[CARRIED_OBJECT_LAST]; object++)
	{
		if (*object != NULL)
		{
			(*object)->Release();
		}
		*object = NULL;
	}
}

LH3DObject* CarriedObject::Get3DCarriedObject(CARRIED_OBJECT type)
{
	if (type < CARRIED_OBJECT_LAST)
	{
		return Objects[type];
	}
	return NULL;
}
