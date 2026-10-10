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
