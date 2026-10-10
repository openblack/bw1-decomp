#include "Feature.h"
#include "Flowers.h"
#include "PlannedFeature.h"

uint32_t Flowers::GetSaveType()
{
	return GAME_THING_TYPE_FLOWERS;
}

uint32_t PlannedFeature::GetSaveType()
{
	return GAME_THING_TYPE_PLANNED_FEATURE;
}

SCRIPT_OBJECT_TYPE Feature::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_FEATURE;
}

LH3DObject::ObjectType Flowers::Get3DType()
{
	return LH3DObject::MORPHABLE;
}
