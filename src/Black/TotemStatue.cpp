#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "TotemStatue.h"

#include "ColourConstants.h" /* For White */

bool TotemStatue::InteractsWithPhysicsObjects()
{
	return false;
}

SCRIPT_OBJECT_TYPE TotemStatue::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_TOTEM_STATUE;
}

void TotemStatue::ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2) {}

float TotemStatue::GetWorshipSpeed()
{
	return WorshipSpeed;
}

bool32_t TotemStatue::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
	return true;
}
