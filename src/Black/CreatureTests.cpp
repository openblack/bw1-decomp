#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureMental.h"
#include "CreaturePhysical.h"

bool32_t Creature::IsCreatureNotSelected()
{
	return true;
}

bool32_t Creature::DoesCreatureKnowHowToRun()
{
	return DevelopmentPhase >= DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP;
}

bool32_t Creature::True()
{
	return true;
}

bool32_t Creature::IsCreatureSelected()
{
	return false;
}

bool32_t Creature::DoesCreatureWantToBuildHisHome()
{
	return mind->desires.FindDominantDesire(NUM_CREATURE_DESIRES) == CREATURE_DESIRE_TO_BUILD_HOME;
}

bool32_t Creature::DoesCreatureKnowHowToPickUp()
{
	return true;
}

bool32_t Creature::IsCreatureHoldingSomething()
{
	return physical->ObjectCarried != NULL;
}

bool32_t Creature::IsCreatureThirsty()
{
	return mind->desires.FindDominantDesire(NUM_CREATURE_DESIRES) == CREATURE_DESIRE_FOR_WATER;
}

bool32_t Creature::DoesCreatureNeedAPoo()
{
	return mind->desires.FindDominantDesire(NUM_CREATURE_DESIRES) == CREATURE_DESIRE_TO_POO;
}
