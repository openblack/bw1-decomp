#include "Rock.h"
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */

GPlayer* Rock::GetPlayer()
{
	return player;
}

RESOURCE_TYPE Rock::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

SCRIPT_OBJECT_TYPE Rock::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_ROCK;
}

PHYSICS_CONSTANTS_TYPE Rock::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_ROCK;
}

uint32_t Rock::GetOverwriteTapToolTip()
{
	return HELP_TEXT_TOOLTIP_125;
}
