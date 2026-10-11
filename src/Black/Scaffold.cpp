#include "GameTimeConstants.h"
#include "Scaffold.h"
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */

SCRIPT_OBJECT_TYPE Scaffold::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_SCAFFOLD;
}

uint32_t Scaffold::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_MOVABLE_SCAFFOLD;
}

bool32_t Scaffold::IsAvailableToBeBuiltWith()
{
	return field_0x68 == 0;
}

void Scaffold::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

uint32_t Scaffold::GetOverwritePickUpToolTip()
{
	return HELP_TEXT_TOOLTIP_109;
}

float Scaffold::GetUpdateOfBoredomValue(Reaction* param_1, GameThingWithPos* param_2)
{
	return -1.0f;
}
