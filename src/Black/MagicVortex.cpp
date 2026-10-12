#include "GameTimeConstants.h"
#include "MagicVortex.h"

#include "ColourConstants.h"      /* For White */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */

uint32_t LandscapeVortexIn::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_IN;
}

uint32_t LandscapeVortexOut::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_OUT;
}

uint32_t LandscapeVortexVolc::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_VOLC;
}

uint32_t LandscapeVortexIn::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_VORTEX;
}

SCRIPT_OBJECT_TYPE LandscapeVortex::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_VORTEX;
}

void LandscapeVortex::PhysicsEditorCreate(int param_1) {}

bool32_t LandscapeVortex::CanBePickedUpByCreature(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBeSetOnFire(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBeStompedOnByCreature(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBeThrownByCreature(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBePutInAStoragePit(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBeDestroyedByStoning(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBeStonedAndEatenByCreature(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBeExaminedByCreature(Creature* creature)
{
	return 0;
}

bool32_t LandscapeVortex::CanBeFoughtByCreature(Creature* creature)
{
	return 0;
}
