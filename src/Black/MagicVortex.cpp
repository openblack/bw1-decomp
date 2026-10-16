#include "GameTimeConstants.h"
#include "MagicVortex.h"

#include "ColourConstants.h"      /* For White */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "VortexInfo.h"

GVortexInfo GVortexInfo::Infos[VORTEX_TYPE_LAST];

uint32_t LandscapeVortexIn::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_IN;
}

uint32_t LandscapeVortexOut::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_OUT;
}

char* LandscapeVortexOut::GetDebugText()
{
	return "MagicVortexOut:";
}

uint32_t LandscapeVortexVolc::GetSaveType()
{
	return GAME_THING_TYPE_LANDSCAPE_VORTEX_VOLC;
}

char* LandscapeVortexVolc::GetDebugText()
{
	return "MagicVortexVolc:";
}

PHYSICS_CONSTANTS_TYPE LandscapeVortexIn::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_VORTEX;
}

char* LandscapeVortexIn::GetDebugText()
{
	return "MagicVortexIn:";
}

SCRIPT_OBJECT_TYPE LandscapeVortex::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_VORTEX;
}

void LandscapeVortex::PhysicsEditorCreate(int param_1) {}

bool32_t LandscapeVortex::CanBePickedUpByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeSetOnFire(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeStompedOnByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeThrownByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBePutInAStoragePit(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeDestroyedByStoning(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeStonedAndEatenByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeExaminedByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBeFoughtByCreature(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanActAsAContainer(Creature* creature)
{
	return false;
}

bool32_t LandscapeVortex::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t LandscapeVortex::HandShouldFeelWithMeshIntersect()
{
	return false;
}

bool32_t LandscapeVortex::IsEffectReceiver(EffectValues* effect)
{
	return false;
}

bool32_t LandscapeVortex::ValidForPlaceInHand(GInterfaceStatus* status)
{
	return false;
}

GBaseInfo* GVortexInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = VORTEX_TYPE_LAST;
	return Infos;
}
