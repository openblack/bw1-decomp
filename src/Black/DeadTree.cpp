#include "GameTimeConstants.h"
#include "DeadTree.h"

#include "ColourConstants.h" /* For White */
#include "FelledTree.h"
#include "Reaction.h"
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */

uint32_t DeadTree::GetSaveType()
{
	return GAME_THING_TYPE_DEAD_TREE;
}

uint32_t FelledTree::GetSaveType()
{
	return GAME_THING_TYPE_FELLED_TREE;
}

PHYSICS_CONSTANTS_TYPE FelledTree::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_TREE;
}

bool32_t DeadTree::HandShouldFeelWithMeshIntersect()
{
	return false;
}

bool DeadTree::InteractsWithPhysicsObjects()
{
	return true;
}

bool32_t DeadTree::IsARootedObject()
{
	return false;
}

bool32_t DeadTree::CanBecomeAPhysicsObject()
{
	return true;
}

bool32_t FelledTree::IsARootedObject()
{
	return false;
}

char* FelledTree::GetDebugText()
{
	return "FelledTree:";
}

RESOURCE_TYPE DeadTree::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

HOLD_TYPE DeadTree::GetHoldType()
{
	return HOLD_TYPE_TREE;
}

SCRIPT_OBJECT_TYPE DeadTree::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_DEAD_TREE;
}

bool32_t DeadTree::IsAnyKindOfTree()
{
	return true;
}

bool32_t DeadTree::IsDeadTree()
{
	return true;
}

uint32_t DeadTree::InterfaceValidToTap(GInterfaceStatus* param_1)
{
	return 0;
}

uint32_t DeadTree::InterfaceTap(GInterfaceStatus* param_1)
{
	return 1;
}

bool32_t DeadTree::IsRock()
{
	return false;
}

void DeadTree::StartOnFire()
{
	Reaction::RemoveAllReactionsInitiatedByObject(this);
}

IMMERSION_EFFECT_TYPE DeadTree::GetInHandImmersionTexture()
{
	return Object::GetInHandImmersionTexture();
}

char* DeadTree::GetDebugText()
{
	return "DeadTree:";
}
