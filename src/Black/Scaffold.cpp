#include "GameTimeConstants.h"
#include "Scaffold.h"

SCRIPT_OBJECT_TYPE Scaffold::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_SCAFFOLD;
}

uint32_t Scaffold::GetPhysicsConstantsType()
{
	return 17;
}

void Scaffold::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

uint32_t Scaffold::GetOverwritePickUpToolTip()
{
	return 3815;
}
