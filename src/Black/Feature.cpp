#include "Feature.h"
#include "Flowers.h"

SCRIPT_OBJECT_TYPE Feature::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_FEATURE;
}

LH3DObject::ObjectType Flowers::Get3DType()
{
	return LH3DObject::MORPHABLE;
}
