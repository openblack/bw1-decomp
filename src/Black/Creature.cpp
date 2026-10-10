#include "GameTimeConstants.h"
#include "Creature.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "ColourConstants.h" /* For White */
#include "CreatureInfo.h"
#include "CreaturePhysical.h"

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

LH3DCreature* Creature::GetCreature3D()
{
	return physical->Creature3d;
}

uint32_t Creature::GetAge()
{
	return physical->field_0x8;
}

float Creature::GetMaxAlignmentChangePerGameTurn()
{
	return GetInfo()->field_0x348[0];
}

float Creature::GetRunningSpeedInMetres()
{
	return physical->field_0x40;
}

float Creature::GetDefaultSpeedInMetres()
{
	return physical->field_0x3c;
}
