#include "GameTimeConstants.h"
#include "Tree.h"

#include "ColourConstants.h"      /* For White */
#include "ColourConstants.h"      /* For White */
#include <chlasm/HelpTextEnums.h> /* For HELP_TEXT_* */
#include "PhysicsConstantsType.h" /* For enum PHYSICS_CONSTANTS_TYPE */
#include "TreeInfo.h"

GTreeInfo GTreeInfo::Infos[TREE_INFO_LAST];

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

PHYSICS_CONSTANTS_TYPE Tree::GetPhysicsConstantsType()
{
	return PHYSICS_CONSTANTS_TYPE_TREE;
}

uint32_t Tree::GetOverwriteDropToolTip()
{
	return HELP_TEXT_TOOLTIP_117;
}

bool32_t Tree::IsOkToCreateAtPos(MapCoords& coords)
{
	if ((coords.CollideCollideWithFixe() & 8) && !coords.IsWater())
	{
		return false;
	}
	return true;
}

float Tree::Decay(float amount)
{
	float scale = GetScale() - amount;
	if (scale <= 0.0f)
	{
		ToBeDeleted(0);
		return 0.0f;
	}
	SetScale(scale);
	return amount;
}
