#include "GameTimeConstants.h"
#include "BigForest.h"

bool BigForest::InteractsWithPhysicsObjects()
{
	return false;
}

LH3DObject::ObjectType BigForest::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

bool32_t BigForest::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return true;
}

bool32_t BigForest::IsTuggable()
{
	return false;
}

bool32_t BigForest::VillagerMustAvoid(Villager* param_1)
{
	return false;
}

MESH_LIST BigForest::GetMesh() const
{
	return info->GetMesh();
}

bool32_t BigForest::CreatureMustAvoid(Creature* param_1)
{
	return IsOnFire();
}
