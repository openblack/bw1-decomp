#include "GameTimeConstants.h"
#include "Creature.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "ColourConstants.h"    /* For White */
#include "CreatureInfo.h"
#include "CreaturePhysical.h"
#include "DifferentCreatureInfo.h"
#include "Utils.h" /* For GUtils */

uint32_t Creature::GetSaveType()
{
	return GAME_THING_TYPE_CREATURE;
}

bool32_t Living::DecideWhatToDo()
{
	return false;
}

uint32_t Creature::GetCreatureBeliefType()
{
	return CREATURE_BELIEF_TYPE_CREATURE;
}

uint32_t Creature::GetCreatureMimicType()
{
	return CREATURE_MIMIC_TYPE_CREATURE;
}

void Creature::SetAnim(int anim) {}

uint32_t Creature::GetCreatureBeliefListType()
{
	return 0;
}

PHYSICS_CONSTANTS_TYPE Creature::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_DEFAULT_UNMOVABLE;
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
	return &DestPos;
}

LH3DCreature* Creature::GetCreature3D()
{
	return physical->Creature3d;
}

uint32_t Creature::GetAge()
{
	return physical->Age;
}

float Creature::GetMaxAlignmentChangePerGameTurn()
{
	return GetInfo()->MaxAlignmentChangePerGameTurn[0];
}

float Creature::GetRunningSpeedInMetres()
{
	return physical->RunningSpeedInMetres;
}

float Creature::GetDefaultSpeedInMetres()
{
	return physical->DefaultSpeedInMetres;
}

uint32_t Creature::CallExitStateFunction(uint8_t state)
{
	return 1;
}

bool32_t Creature::IsActivityObjectWhichCompassionAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Creature::IsActivityObjectWhichPlayfulnessAppliesTo(Creature* creature)
{
	return true;
}

bool32_t Creature::CanBeSleptNextToByCreature(Creature* param_1)
{
	return true;
}

bool32_t Creature::CanBeBefriendedByCreature(Creature* param_1)
{
	return true;
}

bool32_t Creature::CanBePlayedWithByCreature(Creature* param_1)
{
	return true;
}

bool32_t Creature::IsCreature(Creature* creature)
{
	return true;
}

bool32_t Creature::CanBeFrighteningToCreature(Creature* creature)
{
	return true;
}

bool32_t Creature::NetworkUnfriendlyLockedSelect(ControlHandUpdateInfo* param_1)
{
	return true;
}

uint32_t Creature::CallEntryStateFunction(uint8_t current, uint8_t destination)
{
	return 1;
}

uint32_t Creature::CallEntryStateFunction(uint8_t state)
{
	return 1;
}

bool32_t Creature::IsReachable()
{
	return false;
}

bool32_t Creature::ValidForPlaceInHand(GInterfaceStatus* param_1)
{
	return false;
}

bool32_t Creature::IsSuitableForCreatureActivity()
{
	return true;
}

bool32_t Creature::CanBePickedUp()
{
	return true;
}

bool32_t Creature::CanBeExaminedByCreature(Creature* param_1)
{
	return false;
}

bool32_t Creature::CanBeEatenByCreature(Creature* param_1)
{
	return false;
}

bool32_t Creature::NetworkUnfriendlyEndLockedSelect()
{
	return true;
}

bool32_t Creature::CanBecomeAPhysicsObject()
{
	return false;
}

bool Creature::InteractsWithPhysicsObjects()
{
	return true;
}

GBaseInfo* DifferentCreatureInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return Infos;
}

SCRIPT_OBJECT_TYPE Creature::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_CREATURE;
}

bool32_t Creature::IsPosOutsideConfinedArea(const MapCoords& pos)
{
	if (IsConfinedToArea() && GUtils::GetDistanceInMetres(pos, ConfinementCentre) > ConfinementRadius)
	{
		return true;
	}
	return false;
}

char* Creature::GetDebugText()
{
	return "Creature:";
}

GBaseInfo* CreatureInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return Infos;
}
