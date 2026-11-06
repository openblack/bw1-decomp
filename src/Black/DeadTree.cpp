#include "GameTimeConstants.h"
#include "DeadTree.h"

#include "ColourConstants.h" /* For White */
#include "FelledTree.h"
#include "Reaction.h"
#include "WorshipTotem.h"
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

void FelledTree::SetUpPhysOb(PhysOb* phys_ob)
{
	SetUpPhysObAsATree(phys_ob, GetWeight(), GetHeight(), Get2DRadius(), GetScale());
}

Object* FelledTree::EndPhysics(PhysicsObject* physics_object, bool insert_back_into_map)
{
	return Fixed::EndPhysics(physics_object, insert_back_into_map);
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

float DeadTree::GetHoldRadius()
{
	return Get2DRadius() * 0.2f;
}

float DeadTree::GetHoldLoweringMultiplier()
{
	return 0.1f;
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

void DeadTree::ToBeDeleted(bool32_t delete_now)
{
	MobileStatic::ToBeDeleted(delete_now);
}

void DeadTree::StartOnFire()
{
	Reaction::RemoveAllReactionsInitiatedByObject(this);
}

uint32_t DeadTree::ValidToApplyThisToObject(GInterfaceStatus* status, Object* object)
{
	if (dynamic_cast<WorshipTotem*>(object) != NULL)
	{
		return true;
	}
	if (object != NULL && object->IsResourceStore(RESOURCE_TYPE_WOOD))
	{
		return true;
	}
	return false;
}

uint32_t DeadTree::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords, GestureSystemPacketData* data)
{
	Object* site = Pos.IsWithinBuilingSite();
	if (site != NULL && site->IsResourceStore(GetResourceType()) && site->DeleteObjectAndTakeResource(this, status))
	{
		return GAME_RETURNS_RESOURCE_TAKEN;
	}
	return MobileStatic::ApplyThisToMapCoord(status, coords, data);
}

IMMERSION_EFFECT_TYPE DeadTree::GetInHandImmersionTexture()
{
	return Object::GetInHandImmersionTexture();
}

char* DeadTree::GetDebugText()
{
	return "DeadTree:";
}
