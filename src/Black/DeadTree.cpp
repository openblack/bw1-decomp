#include "GameTimeConstants.h"
#include "DeadTree.h"

#include "ColourConstants.h" /* For White */
#include "FelledTree.h"

uint32_t DeadTree::GetSaveType()
{
	return GAME_THING_TYPE_DEAD_TREE;
}

uint32_t FelledTree::GetSaveType()
{
	return GAME_THING_TYPE_FELLED_TREE;
}
