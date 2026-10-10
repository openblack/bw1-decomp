#include "GameTimeConstants.h"
#include "DeadTree.h"

#include "ColourConstants.h" /* For White */
#include "FelledTree.h"

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
