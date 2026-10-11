#include "GameTimeConstants.h"
#include "Pot.h"

#include "ColourConstants.h" /* For White */
#include "PileFood.h"
#include "PileWood.h"

uint32_t PileFood::GetSaveType()
{
	return GAME_THING_TYPE_PILE_FOOD;
}

LH3DObject::ObjectType PileFood::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

RESOURCE_TYPE PileFood::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}

RESOURCE_TYPE PileWood::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

SCRIPT_OBJECT_TYPE Pot::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_STORE;
}

bool32_t Pot::IsResourceStore(RESOURCE_TYPE param_1)
{
	return false;
}

PileResource::PileResource(const MapCoords& param_1, const GPotInfo* info, uint32_t param_3, MultiMapFixed* param_4,
                           Town* param_5, int param_6, float param_7, float param_8)
	: PotStructure(param_1, info, param_3, param_4, param_5, param_6, param_7, param_8)
{
}

bool32_t PileResource::IsTuggable()
{
	return false;
}

bool32_t PileResource::IsField(Creature* creature)
{
	return false;
}

bool32_t PileResource::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
	return true;
}

bool32_t PileResource::NetworkUnfriendlyEndLockedSelect()
{
	return true;
}
