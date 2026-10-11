#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Living.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "DataPath.h"

uint32_t DataForScriptRemind::GetSaveType()
{
	return GAME_THING_TYPE_DATA_FOR_SCRIPT_REMIND;
}

uint32_t DataPath::GetSaveType()
{
	return GAME_THING_TYPE_DATA_PATH;
}

bool32_t Living::CanBecomeAPhysicsObject()
{
	return true;
}

bool32_t Living::InvalidState()
{
	return false;
}

bool32_t Living::Flying()
{
	return true;
}

bool32_t Living::InHand()
{
	return true;
}

void Living::Birthday() {}

bool32_t Living::ExitInLanded(uint8_t state)
{
	return true;
}

bool32_t Living::CreatureMustAvoid(Creature* param_1)
{
	return false;
}

uint32_t Living::EnterMoveToPos(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
	return 1;
}

bool32_t Living::ExitBeingEaten(uint8_t state)
{
	return true;
}

bool32_t Living::EnterMoveOnPath(uint8_t current, uint8_t destination)
{
	return true;
}

IMMERSION_EFFECT_TYPE Living::GetInHandImmersionTexture()
{
	return IMMERSION_EFFECT_TYPE_ANIMATING_IN_HAND;
}

#ifndef VERSION_BW1W100
bool32_t Living::IsMovingForAnimation()
{
	return IsMoving();
}
#endif
