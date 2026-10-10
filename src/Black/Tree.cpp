#include "GameTimeConstants.h"
#include "Tree.h"

#include "ColourConstants.h" /* For White */

bool32_t Tree::CanBecomeAPhysicsObject()
{
	return true;
}

bool Tree::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t Tree::IsARootedObject()
{
	return true;
}

bool32_t Tree::BlocksTownClearArea() const
{
	return false;
}

HOLD_TYPE Tree::GetHoldType()
{
	return HOLD_TYPE_TREE;
}

RESOURCE_TYPE Tree::GetResourceType()
{
	return RESOURCE_TYPE_WOOD;
}

SCRIPT_OBJECT_TYPE Tree::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_TREE;
}
