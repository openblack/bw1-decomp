#include "GameTimeConstants.h"
#include "Pot.h"

#include "ColourConstants.h" /* For White */
#include "PileFood.h"
#include "PileWood.h"
#include "GameOSFile.h" /* For class GameOSFile */

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

PileResource::PileResource(const MapCoords& coords, const GPotInfo* info, uint32_t resource, MultiMapFixed* parent,
                           Town* town, int param_6, float y_angle, float scale)
	: PotStructure(coords, info, resource, parent, town, param_6, y_angle, scale)
{
}

bool32_t PileResource::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* info)
{
	return true;
}

bool32_t PileResource::NetworkUnfriendlyEndLockedSelect()
{
	return true;
}

int PileResource::IsTuggable()
{
	return false;
}

bool32_t PileResource::IsField(Creature* creature)
{
	return false;
}

bool32_t PileResource::Load(GameOSFile& file)
{
	if (PotStructure::Load(file))
	{
		file.ReadIt(AltitudeZoomer);
		return true;
	}
	return false;
}

bool32_t PileResource::Save(GameOSFile& file)
{
	if (PotStructure::Save(file))
	{
		file.WriteIt(AltitudeZoomer);
		return true;
	}
	return false;
}
