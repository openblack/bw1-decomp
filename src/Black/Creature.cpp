#include "GameTimeConstants.h"
#include "Creature.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

uint32_t Creature::GetSaveType()
{
	return GAME_THING_TYPE_CREATURE;
}

uint32_t Creature::GetCreatureBeliefType()
{
	return 8;
}

uint32_t Creature::GetCreatureMimicType()
{
	return 9;
}

void Creature::SetAnim(int anim) {}

uint32_t Creature::GetCreatureBeliefListType()
{
	return 0;
}

uint32_t Creature::GetPhysicsConstantsType()
{
	return 0;
}

uint32_t Creature::InterfaceGiveObject(GInterfaceStatus* param_1, Object* param_2)
{
	return 22;
}


GPlayer* Creature::GetPlayer()
{
	return owner;
}

MapCoords* Creature::GetDestPos()
{
	return &field_0x1214;
}
