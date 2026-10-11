#include "GameTimeConstants.h"
#include "TownDesire.h"
#include "TownDesireFlags.h"

bool TownDesireFlags::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t TownDesireFlags::CreatureMustAvoid(Creature* creature)
{
	return 0;
}
