#include "GameTimeConstants.h"
#include "Pot.h"

#include "ColourConstants.h" /* For White */
#include "PileFood.h"
#include "PileWood.h"

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
