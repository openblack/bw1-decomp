#include "GameTimeConstants.h"
#include "MagicTree.h"
#include "GameOSFile.h" /* For class GameOSFile */

uint32_t MagicTree::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_TREE;
}

IMPRESSIVE_TYPE MagicTree::GetImpressiveType()
{
	return IMPRESSIVE_TYPE_MAGIC_TREE;
}

char* MagicTree::GetDebugText()
{
	return "MagicTree:";
}

bool32_t MagicTree::Load(GameOSFile& file)
{
	if (Tree::Load(file))
	{
		file.ReadIt(field_0x6c);
		file.ReadIt(field_0x70);
		return true;
	}
	return false;
}

bool32_t MagicTree::Save(GameOSFile& file)
{
	if (Tree::Save(file))
	{
		file.WriteIt(field_0x6c);
		file.WriteIt(field_0x70);
		return true;
	}
	return false;
}
