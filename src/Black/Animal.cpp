#include "GameTimeConstants.h"
#include "Animal.h"

#include "ColourConstants.h" /* For White */
#include "Flock.h"
#include "Utils.h"

void Animal::SetStateSpeed() {}

uint32_t Animal::KeepFlockMemberWithinFlockArea()
{
	MapCoords& flockPos = *flock->GetFlockPos();

	if (PosWithinDomain(coords, 1.0f) != 0)
	{
		float distToFlock = GUtils::GetDistanceInMetres(flockPos, coords);
		if (distToFlock <= (float)GetFlockDistance())
		{
			return 1;
		}
	}

	float     flockDistance = (float)GetFlockDistance();
	MapCoords randomPos = CalcRandomPos(flockPos, 0.0f, flockDistance);
	int       flockPosInDomain = PosWithinDomain(flockPos, 1.0f);
	int       randomPosInDomain = PosWithinDomain(randomPos, 1.0f);
	if (randomPosInDomain != 0 || flockPosInDomain == 0)
	{
		SetupMoveToPos(randomPos, ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	}
	return 0x23;
}

RESOURCE_TYPE Animal::GetResourceType()
{
	return RESOURCE_TYPE_FOOD;
}

HOLD_TYPE Animal::GetHoldType()
{
	return HOLD_TYPE_VILLAGER;
}

SCRIPT_OBJECT_TYPE Animal::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_ANIMAL;
}
