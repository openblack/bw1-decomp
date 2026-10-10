#include "Rock.h"

RESOURCE_TYPE Rock::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

SCRIPT_OBJECT_TYPE Rock::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_ROCK;
}
