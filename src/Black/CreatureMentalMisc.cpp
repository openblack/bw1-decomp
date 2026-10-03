#include "MultiMapFixed.h"

bool32_t MultiMapFixed::IsBuildingWhichIsBeingBuilt(Creature* creature)
{
	if (GetPercentBuilt() < 1.0f || (Damaged == true && GetLife() < 1.0f))
	{
		return true;
	}
	return false;
}
